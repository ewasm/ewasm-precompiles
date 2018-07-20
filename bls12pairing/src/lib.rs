extern crate ewasm_api;
extern crate pairing;
extern crate rand;

use rand::{Rand, SeedableRng, XorShiftRng};

use pairing::bls12_381::*;
use pairing::{CurveAffine, Engine};

#[no_mangle]
pub extern "C" fn main() {
    let length = ewasm_api::calldata_size();
    let input = ewasm_api::calldata_copy(0, length);

    ewasm_api::consume_gas(4000);

    let mut rng = XorShiftRng::from_seed([0x5dbe6259, 0x8d313d76, 0x3237db17, 0xe5bc0654]);

    Bls12::pairing(G1::rand(&mut rng), G2::rand(&mut rng));
}
