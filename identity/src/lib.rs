extern crate ewasm_api;

#[no_mangle]
pub extern fn main() {
  let length = ewasm_api::calldata_size();
  let data = ewasm_api::calldata_copy(0, length);

  // charge a base fee plus a word fee for every 256-bit word
  let base_fee = 15;
  let word_fee = 3;
  let total_cost = base_fee + ((length + 31) / 32) * word_fee;

  ewasm_api::consume_gas(total_cost as u64);

  ewasm_api::finish_data(&data);
}
