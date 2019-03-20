extern crate ewasm_api;
extern crate sha2;

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn main() {
    use sha2::{Digest, Sha256};

    let length = ewasm_api::calldata_size();

    // charge a base fee plus a word fee for every 256-bit word
    let base_fee = 60;
    let word_fee = 12;
    let total_cost = base_fee + ((length + 31) / 32) * word_fee;

    // ewasm_api::consume_gas(total_cost as u64);

    let data = ewasm_api::unsafe_calldata_copy(0, length);

    let mut hasher = Sha256::default();
    hasher.input(&data);
    let hash = hasher.result();

    ewasm_api::finish_data(&hash)
}
