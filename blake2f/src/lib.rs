extern crate ewasm_api;

mod f;

use arr_macro::arr;
use byteorder::{BigEndian, LittleEndian, ReadBytesExt, WriteBytesExt};
use std::io::Cursor;

#[cfg(not(test))]
#[no_mangle]
pub extern "C" fn main() {
    match blake2_f(ewasm_api::calldata_acquire()) {
        Ok((gas_used, data)) => {
            ewasm_api::consume_gas(gas_used);
            ewasm_api::finish_data(data.as_slice())
        }
        Err(err) => ewasm_api::revert_data(err.as_bytes()),
    }
}

/// The Blake2F precompile written as a Result returning function.
pub fn blake2_f(data: Vec<u8>) -> Result<(u64, Vec<u8>), &'static str> {
    if data.len() == 213 {
        let (rounds, mut h, m, t, f) = read_data(data)?;
        f::compress(rounds, &mut h, m, t, f);

        return Ok((rounds as u64, write_data(h)));
    }

    Err("input length for BLAKE2 F precompile should be exactly 213 bytes")
}

fn read_data(data: Vec<u8>) -> Result<(u32, [u64; 8], [u64; 16], [u64; 2], bool), &'static str> {
    let mut reader = Cursor::new(data);

    let rounds = reader
        .read_u32::<BigEndian>()
        .expect("Unable to read data.");
    let h = arr![reader.read_u64::<LittleEndian>().expect("Unable to read data."); 8];
    let m = arr![reader.read_u64::<LittleEndian>().expect("Unable to read data."); 16];
    let t = arr![reader.read_u64::<LittleEndian>().expect("Unable to read data."); 2];
    let f = match reader.read_u8().expect("Unable to read data.") {
        0 => false,
        1 => true,
        _ => return Err("incorrect final block indicator flag"),
    };

    Ok((rounds, h, m, t, f))
}

fn write_data(h: [u64; 8]) -> Vec<u8> {
    let mut data = vec![];

    for i in 0..8 {
        data.write_u64::<LittleEndian>(h[i])
            .expect("Unable to write data.")
    }

    data
}

/// See test cases at https://eips.ethereum.org/EIPS/eip-152.
///
/// You will most likely need to override the default target like so:
/// Example: `cargo test --target x86_64-unknown-linux-gnu --release`
#[cfg(test)]
mod tests {
    extern crate hex;

    use crate::blake2_f;
    use std::time::Instant;

    const INPUTS: [&str; 9] = [
        "",
        "00000c48c9bdf267e6096a3ba7ca8485ae67bb2bf894fe72f36e3cf1361d5f3af54fa5d182e6ad7f520e511f6c3e2b8c68059b6bbd41fbabd9831f79217e1319cde05b61626300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000001",
        "000000000c48c9bdf267e6096a3ba7ca8485ae67bb2bf894fe72f36e3cf1361d5f3af54fa5d182e6ad7f520e511f6c3e2b8c68059b6bbd41fbabd9831f79217e1319cde05b61626300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000001",
        "0000000c48c9bdf267e6096a3ba7ca8485ae67bb2bf894fe72f36e3cf1361d5f3af54fa5d182e6ad7f520e511f6c3e2b8c68059b6bbd41fbabd9831f79217e1319cde05b61626300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000002",
        "0000000048c9bdf267e6096a3ba7ca8485ae67bb2bf894fe72f36e3cf1361d5f3af54fa5d182e6ad7f520e511f6c3e2b8c68059b6bbd41fbabd9831f79217e1319cde05b61626300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000001",
        "0000000c48c9bdf267e6096a3ba7ca8485ae67bb2bf894fe72f36e3cf1361d5f3af54fa5d182e6ad7f520e511f6c3e2b8c68059b6bbd41fbabd9831f79217e1319cde05b61626300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000001",
        "0000000c48c9bdf267e6096a3ba7ca8485ae67bb2bf894fe72f36e3cf1361d5f3af54fa5d182e6ad7f520e511f6c3e2b8c68059b6bbd41fbabd9831f79217e1319cde05b61626300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000000",
        "0000000148c9bdf267e6096a3ba7ca8485ae67bb2bf894fe72f36e3cf1361d5f3af54fa5d182e6ad7f520e511f6c3e2b8c68059b6bbd41fbabd9831f79217e1319cde05b61626300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000001",
        "ffffffff48c9bdf267e6096a3ba7ca8485ae67bb2bf894fe72f36e3cf1361d5f3af54fa5d182e6ad7f520e511f6c3e2b8c68059b6bbd41fbabd9831f79217e1319cde05b61626300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000001",
    ];

    const OUTPUTS: [&str; 9] = [
        "",
        "",
        "",
        "",
        "08c9bcf367e6096a3ba7ca8485ae67bb2bf894fe72f36e3cf1361d5f3af54fa5d282e6ad7f520e511f6c3e2b8c68059b9442be0454267ce079217e1319cde05b",
        "ba80a53f981c4d0d6a2797b69f12f6e94c212f14685ac4b74b12bb6fdbffa2d17d87c5392aab792dc252d5de4533cc9518d38aa8dbf1925ab92386edd4009923",
        "75ab69d3190a562c51aef8d88f1c2775876944407270c42c9844252c26d2875298743e7f6d5ea2f2d3e8d226039cd31b4e426ac4f2d3d666a610c2116fde4735",
        "b63a380cb2897d521994a85234ee2c181b5f844d2c624c002677e9703449d2fba551b3a8333bcdf5f2f7e08993d53923de3d64fcc68c034e717b9293fed7a421",
        "fc59093aafa9ab43daae0e914c57635c5402d8e3d2130eb9b3cc181de7f0ecf9b22bf99a7815ce16419e200e01846e6b5df8cc7703041bbceb571de6631d2615",
    ];

    /// 1200 rounds
    const BENCH_INPUT: &str = "000004B048c9bdf267e6096a3ba7ca8485ae67bb2bf894fe72f36e3cf1361d5f3af54fa5d182e6ad7f520e511f6c3e2b8c68059b6bbd41fbabd9831f79217e1319cde05b61626300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000001";

    #[test]
    fn case0() {
        assert_eq!(
            blake2_f(hex::decode(INPUTS[0]).unwrap()),
            Err("input length for BLAKE2 F precompile should be exactly 213 bytes"),
        )
    }

    #[test]
    fn case1() {
        assert_eq!(
            blake2_f(hex::decode(INPUTS[1]).unwrap()),
            Err("input length for BLAKE2 F precompile should be exactly 213 bytes"),
        )
    }

    #[test]
    fn case2() {
        assert_eq!(
            blake2_f(hex::decode(INPUTS[2]).unwrap()),
            Err("input length for BLAKE2 F precompile should be exactly 213 bytes"),
        )
    }

    #[test]
    fn case3() {
        assert_eq!(
            blake2_f(hex::decode(INPUTS[3]).unwrap()),
            Err("incorrect final block indicator flag"),
        )
    }

    #[test]
    fn case4() {
        assert_eq!(
            blake2_f(hex::decode(INPUTS[4]).unwrap()),
            Ok((0, hex::decode(OUTPUTS[4]).unwrap())),
        )
    }

    #[test]
    fn case5() {
        assert_eq!(
            blake2_f(hex::decode(INPUTS[5]).unwrap()),
            Ok((12, hex::decode(OUTPUTS[5]).unwrap())),
        )
    }

    #[test]
    fn case6() {
        assert_eq!(
            blake2_f(hex::decode(INPUTS[6]).unwrap()),
            Ok((12, hex::decode(OUTPUTS[6]).unwrap())),
        )
    }

    #[test]
    fn case7() {
        assert_eq!(
            blake2_f(hex::decode(INPUTS[7]).unwrap()),
            Ok((1, hex::decode(OUTPUTS[7]).unwrap())),
        )
    }

    // This test takes excessively long.
    //
    // #[test]
    // fn case8() {
    //     assert_eq!(
    //         blake2_f(hex::decode(INPUTS[8]).unwrap()),
    //         Ok((4294967295, hex::decode(OUTPUTS[8]).unwrap())),
    //     );
    // }

    /// run with `-- --nocapture`
    #[test]
    fn benchmark() {
        let n = 1000;
        let mut sum = 0;

        for _ in 0..n {
            let now = Instant::now();
            blake2_f(hex::decode(BENCH_INPUT).unwrap()).expect("Couldn't compress BENCH_INPUT.");
            sum += now.elapsed().as_nanos();
        }

        println!("Average elapsed time for 1200 rounds: {}ns", sum / n)
    }
}
