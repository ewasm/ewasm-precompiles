extern crate ethereum_bn128;
extern crate ewasm_api;
extern crate parity_bytes as bytes;

use bytes::BytesRef;

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn ecadd_benchmark() {
    let mut output = [0u8; 64];
    let inputs = [[ 71u8, 146u8, 38u8, 53u8, 5u8, 131u8, 117u8, 81u8, 54u8, 50u8, 36u8, 65u8, 4u8, 83u8, 9u8, 20u8, 21u8, 48u8, 128u8, 144u8, 83u8, 99u8, 55u8, 72u8, 25u8, 5u8, 68u8, 131u8, 18u8, 41u8, 114u8, 51u8, 117u8, 98u8, 32u8, 150u8, 54u8, 16u8, 128u8, 1u8, 67u8, 87u8, 68u8, 87u8, 83u8, 105u8, 134u8, 49u8, 81u8, 131u8, 21u8, 9u8, 137u8, 113u8, 103u8, 24u8, 130u8, 146u8, 20u8, 117u8, 36u8, 20u8, 135u8, 24u8, 131u8, 73u8, 101u8, 4u8, 24u8, 150u8, 100u8, 145u8, 41u8, 7u8, 114u8, 152u8 ]];

    for input in inputs.iter() {
        match ethereum_bn128::bn128_add(&input[..], &mut BytesRef::Fixed(&mut output[..])) {
            Err(_) => { panic!("bn128 add failed"); }
            Ok(_) => { }
        }
    }
}
