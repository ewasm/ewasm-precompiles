extern crate ewasm_api;

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn main() {
    let input = ewasm_api::calldata_acquire();

    let gas_cost = eth_pairings::gas_meter::GasMeter::meter(&input);
    let gas_cost = if gas_cost.is_err() {
        ewasm_api::abort();
    } else {
        gas_cost.unwrap()
    };

    ewasm_api::consume_gas(gas_cost);

    let result = eth_pairings::public_interface::API::run(&input);
    let result = if result.is_err() {
        ewasm_api::abort();
    } else {
        result.unwrap()
    };

    ewasm_api::finish_data(&result);
}
