extern crate ethereum_bn128;
extern crate ewasm_api;
extern crate parity_bytes as bytes;

use bytes::BytesRef;

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn main() {
    // NOTE: no need to validate the input length as bn128_add will behave like EVM1.0 calldatacopy
    // add keep imaginary zeroes.

    ewasm_api::consume_gas(500);

    let input = ewasm_api::calldata_acquire();

    let mut output = [0u8; 64];
    match ethereum_bn128::bn128_add(&input[..], &mut BytesRef::Fixed(&mut output[..])) {
        Ok(_) => ewasm_api::finish_data(&output),
        Err(_) => panic!(),
    }
}
