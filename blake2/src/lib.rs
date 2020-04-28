extern crate ewasm_api;

mod f;

use std::io::Cursor;
use byteorder::{BigEndian, LittleEndian, ReadBytesExt, WriteBytesExt};
use arr_macro::arr;

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn main() {
    if ewasm_api::calldata_size() != 213 {
        ewasm_api::revert()
    }

    let mut data = Cursor::new(ewasm_api::calldata_acquire());
    let rounds = data.read_u32::<BigEndian>().expect("Calldata size is invalid.");
    let mut h = arr![data.read_u64::<LittleEndian>().expect("Calldata size is invalid."); 8];
    let m = arr![data.read_u64::<LittleEndian>().expect("Calldata size is invalid."); 16];
    let t = arr![data.read_u64::<LittleEndian>().expect("Calldata size is invalid."); 2];
    let f = data.read_u8().expect("Calldata size is invalid.") == 1;

    ewasm_api::consume_gas(rounds as u64);

    f::compress(rounds, &mut h, m, t, f);

    let mut h_bytes = vec![];
    for i in 0..8 {
        h_bytes.write_u64::<LittleEndian>(h[i]).expect("Unable to write h.")
    }

    ewasm_api::finish_data(h_bytes.as_slice())
}
