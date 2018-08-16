extern crate ethereum_bn128;
extern crate ewasm_api;
extern crate parity_bytes as bytes;

use bytes::BytesRef;

#[no_mangle]
pub extern "C" fn main() {
    let length = ewasm_api::calldata_size();
    let input = ewasm_api::calldata_copy(0, length);

    // NOTE: no need to validate the input length as bn128_add will behave like EVM1.0 calldatacopy
    // add keep imaginary zeroes.

    ewasm_api::consume_gas(500);

    let mut output = vec![0u8; 64];
    match ethereum_bn128::bn128_add(&input[..], &mut BytesRef::Fixed(&mut output[..])) {
        Ok(_) => {
            ewasm_api::finish_data(&output.to_vec());
        }
        Err(_) => {
            ewasm_api::revert();
        }
    }
}
