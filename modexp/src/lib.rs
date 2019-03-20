extern crate ewasm_api;
extern crate num_bigint;

use num::{One, Zero};
use num_bigint::{BigInt, Sign};
use std::cmp;
#[cfg(not(test))]
use std::io::{self, Read};
use std::ops::{Rem, Shl};

#[cfg(not(test))]
const LENGTH_LENGTH: usize = 32;
const G_QUAD_DIVISOR: u64 = 20;

fn f(x: u64) -> u64 {
    match x {
        0...64 => x * x,
        65...1024 => (x * x / 4) + 96 * x - 3072,
        _ => (x * x / 16) + 480 * x - 199680,
    }
}

fn calculate_cost(lm: usize, lb: usize, exp: &BigInt) -> u64 {
    let le = exp.to_bytes_be().1.len();
    let lep: u64 = match le {
        0...32 => {
            if exp.is_zero() {
                0u64
            } else {
                // Number of bits == ⌊log2()⌋ + 1
                exp.bits() as u64 - 1
            }
        }
        _ => {
            let nbits = exp.bits();
            let (loglow32bytes, low32bytes) = if nbits > 256 {
                let x = exp.rem(&BigInt::one().shl(256));
                (x.bits() - 1, x)
            } else {
                (nbits - 1, exp.clone())
            };

            if low32bytes > BigInt::zero() {
                8 * (le as u64 - 32) + loglow32bytes as u64
            } else {
                8 * (le as u64 - 32)
            }
        }
    };

    (f(cmp::max(lm, lb) as u64) * cmp::max(lep, 1 as u64)) / G_QUAD_DIVISOR
}

fn modexp(base: &BigInt, exp: &BigInt, modulus: &BigInt) -> Vec<u8> {
    let x = if modulus.is_zero() {
        BigInt::zero()
    } else {
        base.modpow(exp, modulus)
    };
    let (_, mut data) = x.to_bytes_be();

    /* padded on 32 bytes */
    let mut padded = vec![0u8; (32 - (data.len() % 32)) % 32];
    padded.append(&mut data);
    padded
}

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn main() {
    use num::cast::ToPrimitive;

    let input_size = ewasm_api::calldata_size();
    // Geth will consider the input size to be 0 if it's less than
    // 96 bytes.
    let input = if input_size >= 96 {
        ewasm_api::unsafe_calldata_copy(0 as usize, input_size)
    } else {
        vec![0u8; 0]
    };

    let mut reader = input.chain(io::repeat(0));

    let mut length_bytes = [0u8; LENGTH_LENGTH];
    reader
        .read_exact(&mut length_bytes)
        .expect("Should be able to read 32 bytes from input");
    let base_length = BigInt::from_bytes_be(Sign::Plus, &length_bytes[..])
        .to_usize() // Get the `usize` version of base_length, as it won't
        .unwrap(); // be possible to read more anyway.

    reader
        .read_exact(&mut length_bytes)
        .expect("Should be able to read 32 bytes from input");
    let exp_length = BigInt::from_bytes_be(Sign::Plus, &length_bytes[..])
        .to_usize() // Same thing with exponent
        .unwrap();

    reader
        .read_exact(&mut length_bytes)
        .expect("Should be able to read 32 bytes from input");
    let mod_length = BigInt::from_bytes_be(Sign::Plus, &length_bytes[..])
        .to_usize()
        .unwrap();

    let mut base_bytes = vec![0u8; base_length];
    reader
        .read_exact(&mut base_bytes[..])
        .expect("Should be able to read base bytes from input");
    let base = BigInt::from_bytes_be(Sign::Plus, &base_bytes[..]);
    let mut exp_bytes = vec![0u8; exp_length];
    reader
        .read_exact(&mut exp_bytes[..])
        .expect("Should be able to read exp bytes from input");
    let exp = BigInt::from_bytes_be(Sign::Plus, &exp_bytes[..]);
    let mut mod_bytes = vec![0u8; mod_length];
    reader
        .read_exact(&mut mod_bytes[..])
        .expect("Should be able to read modulus bytes from input");
    let modulus = BigInt::from_bytes_be(Sign::Plus, &mod_bytes[..]);

    // ewasm_api::consume_gas(calculate_cost(mod_length, base_length, &exp));

    // Geth's returns an empty array when base and mod both have
    // zero length.
    if base_length == 0 && mod_length == 0 {
        ewasm_api::finish();
    }

    let output = modexp(&base, &exp, &modulus);
    ewasm_api::finish_data(&output[..])
}

#[cfg(test)]
mod tests {
    use super::*;
    use num::FromPrimitive;
    use std::ops::Shl;

    #[test]
    fn simple_modexp() {
        let output = modexp(
            &BigInt::from_i64(0xdeadbeef).unwrap(),
            &BigInt::one(),
            &BigInt::from_i32(10i32).unwrap(),
        );
        assert_eq!(
            output,
            vec![
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                0, 0, 0, 9
            ]
        );
    }

    #[test]
    fn big_exponent_big_modulus_zero() {
        let output = modexp(
            &(BigInt::from_i8(2i8).unwrap()),
            &BigInt::from_u8(128u8).unwrap(),
            &BigInt::one().shl(64),
        );
        assert_eq!(output, vec![0u8; 32]);
    }

    #[test]
    fn big_exponent_big_modulus() {
        let output = modexp(
            &(BigInt::from_i8(3i8).unwrap()),
            &BigInt::from_u8(128u8).unwrap(),
            &BigInt::one().shl(67),
        );
        assert_eq!(
            output,
            vec![
                0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8,
                0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 4u8, 128u8, 66u8, 20u8, 129u8, 138u8, 134u8,
                122u8, 1u8
            ]
        );
    }

    #[test]
    fn big_exponent_small_modulus() {
        let output = modexp(
            &BigInt::from_i8(2i8).unwrap(),
            &BigInt::from_u8(128u8).unwrap(),
            &BigInt::from_i8(10i8).unwrap(),
        );
        assert_eq!(
            output,
            vec![
                0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8,
                0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 6u8
            ]
        );
    }

    #[test]
    fn check_mod_zero() {
        let output = modexp(&BigInt::one(), &BigInt::one(), &BigInt::zero());
        assert_eq!(output, vec![0u8; 32]);
    }

    #[test]
    fn check_zero_exp_zero() {
        let output = modexp(
            &BigInt::zero(),
            &BigInt::zero(),
            &BigInt::from_i8(3).unwrap(),
        );
        assert_eq!(
            output,
            vec![
                0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8,
                0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 1u8
            ]
        );
    }

    #[test]
    fn check_rinkeby_972222() {
        /* Validate that values bigger than 32 bytes can be returned */
        let output = modexp(
            &BigInt::from_bytes_be(
                Sign::Plus,
                &[
                    105u8, 244u8, 148u8, 17u8, 230u8, 162u8, 38u8, 226u8, 21u8, 123u8, 99u8, 173u8,
                    92u8, 154u8, 225u8, 98u8, 221u8, 178u8, 13u8, 54u8, 142u8, 147u8, 227u8, 219u8,
                    150u8, 131u8, 6u8, 199u8, 20u8, 249u8, 189u8, 163u8, 10u8, 56u8, 142u8, 74u8,
                    160u8, 10u8, 23u8, 22u8, 133u8, 219u8, 196u8, 237u8, 209u8, 230u8, 181u8,
                    148u8, 170u8, 136u8, 152u8, 109u8, 145u8, 62u8, 113u8, 35u8, 177u8, 70u8, 90u8,
                    254u8, 242u8, 241u8, 37u8, 193u8, 137u8, 34u8, 80u8, 63u8, 201u8, 219u8, 98u8,
                    68u8, 242u8, 229u8, 107u8, 41u8, 194u8, 61u8, 241u8, 15u8, 186u8, 12u8, 61u8,
                    121u8, 166u8, 99u8, 226u8, 51u8, 245u8, 19u8, 98u8, 0u8, 231u8, 66u8, 220u8,
                    25u8, 113u8, 116u8, 46u8, 94u8, 215u8, 214u8, 68u8, 212u8, 24u8, 96u8, 201u8,
                    47u8, 67u8, 161u8, 233u8, 119u8, 20u8, 115u8, 28u8, 119u8, 60u8, 46u8, 206u8,
                    8u8, 59u8, 243u8, 245u8, 178u8, 177u8, 123u8, 131u8, 65u8,
                ],
            ),
            &BigInt::from_bytes_be(
                Sign::Plus,
                &[
                    0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8,
                    0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 0u8, 1u8, 0u8, 1u8,
                ],
            ),
            &BigInt::from_bytes_be(
                Sign::Plus,
                &[
                    132u8, 63u8, 73u8, 203u8, 78u8, 27u8, 50u8, 102u8, 66u8, 138u8, 185u8, 34u8,
                    220u8, 161u8, 134u8, 52u8, 173u8, 16u8, 83u8, 166u8, 181u8, 82u8, 151u8, 245u8,
                    166u8, 158u8, 136u8, 110u8, 61u8, 191u8, 138u8, 213u8, 72u8, 170u8, 180u8,
                    26u8, 170u8, 159u8, 62u8, 89u8, 236u8, 155u8, 217u8, 242u8, 130u8, 160u8, 23u8,
                    193u8, 205u8, 210u8, 69u8, 52u8, 141u8, 166u8, 173u8, 203u8, 220u8, 93u8,
                    101u8, 86u8, 158u8, 107u8, 181u8, 184u8, 207u8, 171u8, 57u8, 103u8, 67u8,
                    243u8, 102u8, 12u8, 159u8, 44u8, 122u8, 105u8, 76u8, 152u8, 164u8, 7u8, 96u8,
                    175u8, 192u8, 144u8, 139u8, 76u8, 117u8, 90u8, 26u8, 188u8, 138u8, 149u8,
                    200u8, 175u8, 108u8, 201u8, 17u8, 211u8, 247u8, 177u8, 92u8, 214u8, 65u8,
                    243u8, 35u8, 10u8, 106u8, 79u8, 218u8, 176u8, 18u8, 106u8, 2u8, 71u8, 3u8,
                    174u8, 218u8, 178u8, 16u8, 244u8, 244u8, 89u8, 165u8, 195u8, 179u8, 247u8,
                    120u8, 47u8,
                ],
            ),
        );
        assert_eq!(
            output,
            vec![
                0u8, 1u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8,
                255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8,
                255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8,
                255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8,
                255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8,
                255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8, 255u8,
                255u8, 255u8, 255u8, 255u8, 0u8, 48u8, 49u8, 48u8, 13u8, 6u8, 9u8, 96u8, 134u8,
                72u8, 1u8, 101u8, 3u8, 4u8, 2u8, 1u8, 5u8, 0u8, 4u8, 32u8, 152u8, 203u8, 93u8,
                245u8, 45u8, 169u8, 18u8, 4u8, 171u8, 193u8, 131u8, 35u8, 108u8, 212u8, 190u8,
                245u8, 181u8, 170u8, 134u8, 108u8, 120u8, 170u8, 237u8, 179u8, 241u8, 226u8, 128u8,
                212u8, 149u8, 52u8, 51u8, 151u8
            ]
        );
    }

    #[test]
    fn check_zero_exp_cost() {
        assert_eq!(calculate_cost(0 as usize, 0 as usize, &BigInt::zero()), 0);
        assert_eq!(calculate_cost(0 as usize, 0 as usize, &BigInt::zero()), 0);
    }

    #[test]
    fn check_exp_costs() {
        assert_eq!(
            calculate_cost(56 as usize, 25 as usize, &BigInt::from_i16(1024).unwrap()),
            ((56 * 56) * 10) / G_QUAD_DIVISOR
        );

        assert_eq!(
            calculate_cost(65 as usize, 25 as usize, &BigInt::from_i16(1024).unwrap()),
            ((((65 * 65) / 4) + 96 * 65 - 3072) * 10) / G_QUAD_DIVISOR
        );

        assert_eq!(
            calculate_cost(1025 as usize, 25 as usize, &BigInt::from_i16(1024).unwrap()),
            ((((1025 * 1025) / 16) + 480 * 1025 - 199680) * 10) / G_QUAD_DIVISOR
        );

        assert_eq!(
            calculate_cost(
                1 as usize,
                20 as usize,
                &(BigInt::one().shl(257) + BigInt::one())
            ),
            ((20 * 20) * 8) / G_QUAD_DIVISOR
        );

        assert_eq!(
            calculate_cost(
                1 as usize,
                20 as usize,
                &(BigInt::one().shl(257) + BigInt::from_i8(10).unwrap())
            ),
            ((20 * 20) * (8 + 3)) / G_QUAD_DIVISOR
        );

        assert_eq!(
            calculate_cost(56 as usize, 25 as usize, &BigInt::zero()),
            ((56 * 56) * 1) / G_QUAD_DIVISOR
        );
    }

    #[test]
    fn check_rinkeby_cost_972222() {
        assert_eq!(
            calculate_cost(
                128 as usize,
                128 as usize,
                &BigInt::from_u64(65537).unwrap()
            ),
            10649
        );
    }
}
