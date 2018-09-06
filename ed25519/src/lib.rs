extern crate ed25519_dalek;
extern crate ewasm_api;
extern crate sha2;

mod verify;

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn main() {
    ewasm_api::consume_gas(2000);

    let length = ewasm_api::calldata_size();

    // NOTE: EIP-665 doesn't clarify what should happen if the input is shorter or longer.
    // This seems to be the best approach, consider it an error.
    if length != 128 {
        ewasm_api::revert();
    }

    // FIXME: use ewasm-rust-api 0.6.x to have slices
    let input = ewasm_api::unsafe_calldata_copy(0, length);
    let mut tmp = [0u8; 128];
    tmp.copy_from_slice(&input);
    match verify::verify(&tmp) {
        Ok(true) => {
            ewasm_api::finish_data(&[0x00u8; 4]);
        }
        Ok(false) => {
            ewasm_api::finish_data(&[0xffu8; 4]);
        }
        Err(_) => {
            // FIXME: send the error message?
            ewasm_api::revert();
        }
    }
}
