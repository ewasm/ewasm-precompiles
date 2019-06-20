extern crate ewasm_api;
extern crate secp256k1;
extern crate tiny_keccak;

#[cfg(test)]
use secp256k1::Error::InvalidSignature;
use secp256k1::{recover, Message, RecoveryId, Signature};
use std::cmp::min;

const HASH_OFFSET: usize = 0;
const HASH_LENGTH: usize = 32;
const REC_ID_OFFSET: usize = HASH_LENGTH;
const REC_ID_LENGTH: usize = 32;
const COORD_OFFSET: usize = REC_ID_OFFSET + REC_ID_LENGTH;
const COORD_LENGTH: usize = 32;
const SIG_OFFSET: usize = COORD_OFFSET + COORD_LENGTH;
const SIG_LENGTH: usize = 32;

fn keccak(input: &[u8]) -> [u8; 32] {
    let mut hash = [0u8; 32];
    tiny_keccak::Keccak::keccak256(&input, &mut hash);
    hash
}

fn ecrecover(input: &[u8]) -> Result<Vec<u8>, secp256k1::Error> {
    let hash_start = min(HASH_OFFSET, input.len());
    let hash_end = min(HASH_OFFSET + HASH_LENGTH, input.len());
    let mut h = [0u8; HASH_LENGTH];
    for (i, val) in (&input[hash_start..hash_end]).iter().enumerate() {
        h[i] = *val;
    }

    /* Recovery id is the last big-endian byte. */
    let v = if input.len() > REC_ID_OFFSET + REC_ID_LENGTH - 1 {
        (input[REC_ID_OFFSET + REC_ID_LENGTH - 1] as i8 - 27) as u8
    } else {
        (256 - 27) as u8 /* Assume the padding would yield 0 */
    };
    if v != 0 && v != 1 {
        return Ok(vec![0u8; 0]);
    }

    let sig_start = min(COORD_OFFSET, input.len());
    let sig_end = min(SIG_OFFSET + SIG_LENGTH, input.len());
    let mut s = [0u8; 64];
    for (i, val) in (&input[sig_start..sig_end]).iter().enumerate() {
        s[i] = *val;
    }

    let message = Message::parse(&h);
    let rec_id = RecoveryId::parse(v)?;
    let sig = Signature::parse(&s);

    let key = recover(&message, &sig, &rec_id)?;
    let ret = key.serialize();
    let ret = keccak(&ret[1..65]);
    let mut output = vec![0u8; 12];
    output.extend_from_slice(&ret[12..32]);
    Ok(output)
}

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn main() {
    use std::cmp;

    const G_EC_RECOVER_GAS: u64 = 3000;

    ewasm_api::consume_gas(G_EC_RECOVER_GAS);

    // Make sure that the input is 128 bytes
    let mut input = vec![0u8; HASH_LENGTH + REC_ID_LENGTH + COORD_LENGTH + SIG_LENGTH];
    let common_length = cmp::min(input.len(), ewasm_api::calldata_size());
    ewasm_api::unsafe_calldata_copy(
        HASH_OFFSET as usize,
        common_length,
        &mut input[..common_length],
    );

    match ecrecover(&input) {
        Ok(ret) => ewasm_api::finish_data(&ret[..]),
        // NOTE: this should not result in an error, but return empty data.
        Err(_) => ewasm_api::finish(),
    }
}

#[cfg(test)]
mod tests {
    extern crate rustc_hex;
    use super::*;
    use rustc_hex::FromHex;

    #[test]
    fn geth_test() {
        let input = FromHex::from_hex(&"38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e000000000000000000000000000000000000000000000000000000000000001b38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e789d1dd423d25f0772d2748d60f7e4b81bb14d086eba8e8e8efb6dcff8a4ae02"[..])
            .unwrap();
        let expected = FromHex::from_hex(
            &"000000000000000000000000ceaccac640adf55b2028469bd36ba501f28b699d"[..],
        )
        .unwrap();

        let output = ecrecover(&input).unwrap();

        assert_eq!(expected, output);
    }

    #[test]
    fn empty_input() {
        // An empty input should yield a 0-filled 128-bit vector
        let input = vec![0u8; 128];
        let expected = vec![0u8; 0];

        let output = ecrecover(&input).unwrap();

        assert_eq!(expected, output);
    }

    #[test]
    fn input_tooshort() {
        // Remove 3 bytes from the thing. Input should be padded.
        let input = FromHex::from_hex(&"38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e000000000000000000000000000000000000000000000000000000000000001b38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e789d1dd423d25f0772d2748d60f7e4b81bb14d086eba8e8e8efb6dcff8"[..])
            .unwrap();
        let expected = vec![
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 107, 134, 29, 243, 69, 239, 34, 88, 56, 58, 179,
            196, 62, 105, 206, 213, 175, 96, 118, 1,
        ];

        let output = ecrecover(&input).unwrap();

        assert_eq!(expected, output);
    }

    #[test]
    fn input_toolong() {
        // Add 3 bytes at the end of the input. The extra stuff is ignored.
        let input = FromHex::from_hex(&"38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e000000000000000000000000000000000000000000000000000000000000001b38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e789d1dd423d25f0772d2748d60f7e4b81bb14d086eba8e8e8efb6dcff8a4ae02ffffff"[..])
            .unwrap();
        let expected = FromHex::from_hex(
            &"000000000000000000000000ceaccac640adf55b2028469bd36ba501f28b699d"[..],
        )
        .unwrap();

        let output = ecrecover(&input).unwrap();

        assert_eq!(expected, output);
    }

    #[test]
    fn invalid_recid() {
        // Same thing as the geth test, with an invalid '-1' recovery id
        let input = FromHex::from_hex(&"38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e00000000000000000000000000000000000000000000000000000000000000ff38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e789d1dd423d25f0772d2748d60f7e4b81bb14d086eba8e8e8efb6dcff8a4ae02"[..])
            .unwrap();
        let expected = vec![0u8; 0];

        let output = ecrecover(&input).unwrap();

        assert_eq!(expected, output);

        // Same thing as the geth test, with an invalid 'infinite' recovery id
        let input = FromHex::from_hex(&"38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e000000000000000000000000000000000000000000000000000000000000001e38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e789d1dd423d25f0772d2748d60f7e4b81bb14d086eba8e8e8efb6dcff8a4ae02"[..])
            .unwrap();
        let expected = vec![0u8; 0];

        let output = ecrecover(&input).unwrap();

        assert_eq!(expected, output);
    }

    #[test]
    fn invalid_signature() {
        // Same thing as the geth test, with a corrupt signature
        let input = FromHex::from_hex(&"38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e000000000000000000000000000000000000000000000000000000000000001bffffffffffffffffffffffffffffffffffffffffffffd4295423adf9ed98873e789d1dd423d25f0772d2748d60f7e4b81bb14d086eba8e8e8efb6dcff8a4ae02"[..])
            .unwrap();

        let output = ecrecover(&input);

        let error = output.expect_err("Expected an error because of an invalid signature");
        assert_eq!(InvalidSignature, error);

        // Set s = 0
        let input = FromHex::from_hex(&"38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e000000000000000000000000000000000000000000000000000000000000001b38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e0000000000000000000000000000000000000000000000000000000000000000"[..])
            .unwrap();

        let output = ecrecover(&input);
        let error = output.expect_err("Expected an error because of an invalid signature");
        assert_eq!(InvalidSignature, error);
    }

    #[test]
    fn large_signature() {
        // Same thing as the geth test, making sure that the s field is
        // greater than secp256k1n/2.
        let input = FromHex::from_hex(&"38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e000000000000000000000000000000000000000000000000000000000000001b38d18acb67d25c8bb9942764b62f18e17054f66a817bd4295423adf9ed98873e7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0"[..])
            .unwrap();

        let output = ecrecover(&input).unwrap();

        // The yellow paper says that the signature is invalid if:
        //
        // (281) `0 < s < secp256k1n ÷ 2 + 1`
        //
        // but this isn't enforced for precompiles, only for external
        // transactions. Check that this contract doesn't enforce it.
        let expected = vec![
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 88, 198, 174, 93, 17, 93, 119, 163, 216, 169, 239,
            54, 214, 164, 45, 35, 105, 43, 170, 127,
        ];

        assert_eq!(expected, output);
    }

    #[test]
    fn rinkeby_block_922696() {
        let input = vec![
            18, 29, 74, 146, 225, 18, 73, 146, 175, 38, 117, 160, 255, 236, 4, 34, 146, 162, 98,
            186, 197, 121, 106, 188, 25, 142, 20, 96, 130, 129, 57, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 31, 103, 111, 23,
            112, 203, 66, 38, 98, 36, 34, 85, 11, 110, 114, 222, 119, 5, 222, 193, 55, 172, 122, 0,
            200, 103, 130, 10, 169, 226, 46, 168, 75, 46, 205, 130, 46, 74, 151, 64, 88, 183, 130,
            253, 126, 146, 11, 157, 188, 140, 127, 44, 33, 28, 243, 111, 91, 147, 100, 29, 141, 81,
            137, 25,
        ];
        let output = ecrecover(&input);
        let expected = Err(InvalidSignature);
        assert_eq!(expected, output);
    }
}
