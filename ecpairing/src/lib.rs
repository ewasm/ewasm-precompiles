extern crate ethereum_bn128;
extern crate ewasm_api;

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn main() {
    let length = ewasm_api::calldata_size();

    // NOTE: this validation will also be done by bn128_pairing

    if length % 192 != 0 {
        ewasm_api::abort();
    }

    // charge a base fee plus a word fee for every element
    let base_fee = 100000;
    let element_fee = 80000;
    let total_cost = base_fee + (length / 192) * element_fee;

    ewasm_api::consume_gas(total_cost as u64);

    let input = ewasm_api::calldata_acquire();

    let mut output = [0u8; 32];
    match ethereum_bn128::bn128_pairing(&input[..], &mut output) {
        Ok(_) => ewasm_api::finish_data(&output),
        Err(_) => ewasm_api::abort(),
    }
}
