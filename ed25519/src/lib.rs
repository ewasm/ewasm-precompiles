extern crate ed25519_dalek;
extern crate ewasm_api;
extern crate sha2;

mod verify;

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn main() {
    ewasm_api::consume_gas(2000);

    // NOTE: EIP-665 doesn't clarify what should happen if the input is shorter or longer.
    // This seems to be the best approach, consider it an error.
    if ewasm_api::calldata_size() != 128 {
        ewasm_api::revert();
    }

    let mut tmp = [0u8; 128];
    ewasm_api::unsafe_calldata_copy(0, 128, &mut tmp);
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
