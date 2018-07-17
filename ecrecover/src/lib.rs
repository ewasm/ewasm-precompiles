use std::vec::Vec;

extern crate ewasm_api;

extern crate secp256k1;
use secp256k1::curve::*;
use secp256k1::*;

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn main() {
    let length = ewasm_api::calldata_size();
    let data = ewasm_api::calldata_copy(0, length);

    let secp256k1 = Secp256k1::new();

    let ctx_sig = Signature::parse(&signature_a);
    let ctx_pubkey = recover(
        &ctx_message,
        &ctx_sig,
        &RecoveryId::parse(rec_id.to_i32() as u8).unwrap(),
    )
    .unwrap();
    let sp = ctx_pubkey.serialize();

    // charge a base fee plus a word fee for every 256-bit word
    let base_fee = 60;
    let word_fee = 12;
    let total_cost = base_fee + ((length + 31) / 32) * word_fee;

    ewasm_api::consume_gas(total_cost as u64);

    let mut hasher = Sha256::default();
    hasher.input(&data);
    let hash = hasher.result();

    ewasm_api::finish_data(hash.to_vec());
}
