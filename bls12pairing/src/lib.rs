extern crate ethereum_bls12;
extern crate ewasm_api;
extern crate parity_bytes as bytes;

use bytes::BytesRef;

#[no_mangle]
pub extern "C" fn main() {
    let length = ewasm_api::calldata_size();

    // NOTE: this validation will also be done by bls12_pairing

    if length % 144 != 0 {
        ewasm_api::revert();
    }

    // charge a base fee plus a word fee for every element
    let base_fee = 100000;
    let element_fee = 80000;
    let total_cost = base_fee + (length / 144) * element_fee;

    ewasm_api::consume_gas(total_cost as u64);

    let input = ewasm_api::calldata_copy(0, length);

    let mut output = vec![0u8; 32];
    match ethereum_bls12::bls12_pairing(&input[..], &mut BytesRef::Fixed(&mut output[..])) {
        Ok(_) => {
            ewasm_api::finish_data(&output.to_vec());
        }
        Err(_) => {
            ewasm_api::revert();
        }
    }
}
