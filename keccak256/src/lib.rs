extern crate ewasm_api;
extern crate tiny_keccak;

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn main() {
    let length = ewasm_api::calldata_size();

    // charge a base fee plus a word fee for every 256-bit word
    let base_fee = 60;
    let word_fee = 12;
    let total_cost = base_fee + ((length + 31) / 32) * word_fee;

    ewasm_api::consume_gas(total_cost as u64);

    let data = ewasm_api::calldata_acquire();

    let mut hash = [0u8; 32];
    tiny_keccak::Keccak::keccak256(&data[..], &mut hash);

    ewasm_api::finish_data(&hash[..])
}
