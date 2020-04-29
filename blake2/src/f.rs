///! Implementation of blake2 compression function F.
///!
///! This was copied from https://gist.github.com/seunlanlege/fa848401d316c52919f6e554fba6870b
///! with some modifications. It was initially written by Seun Lanlege and has no explicit license.

/// Message word schedule permutations for each round of both BLAKE2b and BLAKE2s are defined by
/// SIGMA.  For BLAKE2b, the two extra permutations for rounds 10 and 11 are
/// SIGMA[10..11] = SIGMA[0..1].
///
/// https://tools.ietf.org/html/rfc7693#section-2.7
const SIGMA: [[usize; 16]; 10] = [
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15],
    [14, 10, 4, 8, 9, 15, 13, 6, 1, 12, 0, 2, 11, 7, 5, 3],
    [11, 8, 12, 0, 5, 2, 15, 13, 10, 14, 3, 6, 7, 1, 9, 4],
    [7, 9, 3, 1, 13, 12, 11, 14, 2, 6, 5, 10, 4, 0, 15, 8],
    [9, 0, 5, 7, 2, 4, 10, 15, 14, 1, 11, 12, 6, 8, 3, 13],
    [2, 12, 6, 10, 0, 11, 8, 3, 4, 13, 7, 5, 15, 14, 1, 9],
    [12, 5, 1, 15, 14, 13, 4, 10, 0, 7, 6, 3, 9, 2, 8, 11],
    [13, 11, 7, 14, 12, 1, 3, 9, 5, 0, 15, 4, 8, 6, 2, 10],
    [6, 15, 14, 9, 11, 3, 0, 8, 12, 2, 13, 7, 1, 4, 10, 5],
    [10, 2, 8, 4, 7, 6, 1, 5, 15, 11, 9, 14, 3, 12, 13, 0],
];

/// IV[i] = floor(2**w * frac(sqrt(prime(i+1)))), where prime(i) is the i:th prime number
/// ( 2, 3, 5, 7, 11, 13, 17, 19 ) and sqrt(x) is the square root of x.
///
/// https://tools.ietf.org/html/rfc7693#section-2.6
const IV: [u64; 8] = [
    0x6a09e667f3bcc908,
    0xbb67ae8584caa73b,
    0x3c6ef372fe94f82b,
    0xa54ff53a5f1d36f1,
    0x510e527fade682d1,
    0x9b05688c2b3e6c1f,
    0x1f83d9abfb41bd6b,
    0x5be0cd19137e2179,
];

/// Compression function F takes as an argument the state vector "h", message block vector "m"
/// (last block is padded with zeros to full block size, if required), 2w-bit offset counter "t",
/// and final block indicator flag "f".  Local vector v[0..15] is used in processing. F returns a
/// new state vector.  The number of rounds, "r", is 12 for BLAKE2b and 10 for BLAKE2s.
/// Rounds are numbered from 0 to r - 1.
///
/// https://tools.ietf.org/html/rfc7693#section-3.2
pub fn compress(rounds: u32, h: &mut [u64; 8], m: [u64; 16], t: [u64; 2], f: bool) {
    let mut v = Vec::new();
    v.extend(h.iter().cloned());
    v.extend_from_slice(&IV);

    v[12] ^= t[0];
    v[13] ^= t[1];

    if f {
        v[14] = !v[14]
    }

    for i in 0..rounds as usize {
        let s = &SIGMA[i % 10];
        v[0] = v[0].wrapping_add(v[4]).wrapping_add(m[s[0]]);
        v[12] = (v[12] ^ v[0]).rotate_right(32);
        v[8] = v[8].wrapping_add(v[12]);
        v[4] = (v[4] ^ v[8]).rotate_right(24);
        v[0] = v[0].wrapping_add(v[4]).wrapping_add(m[s[1]]);
        v[12] = (v[12] ^ v[0]).rotate_right(16);
        v[8] = v[8].wrapping_add(v[12]);
        v[4] = (v[4] ^ v[8]).rotate_right(63);
        v[1] = v[1].wrapping_add(v[5]).wrapping_add(m[s[2]]);
        v[13] = (v[13] ^ v[1]).rotate_right(32);
        v[9] = v[9].wrapping_add(v[13]);
        v[5] = (v[5] ^ v[9]).rotate_right(24);
        v[1] = v[1].wrapping_add(v[5]).wrapping_add(m[s[3]]);
        v[13] = (v[13] ^ v[1]).rotate_right(16);
        v[9] = v[9].wrapping_add(v[13]);
        v[5] = (v[5] ^ v[9]).rotate_right(63);
        v[2] = v[2].wrapping_add(v[6]).wrapping_add(m[s[4]]);
        v[14] = (v[14] ^ v[2]).rotate_right(32);
        v[10] = v[10].wrapping_add(v[14]);
        v[6] = (v[6] ^ v[10]).rotate_right(24);
        v[2] = v[2].wrapping_add(v[6]).wrapping_add(m[s[5]]);
        v[14] = (v[14] ^ v[2]).rotate_right(16);
        v[10] = v[10].wrapping_add(v[14]);
        v[6] = (v[6] ^ v[10]).rotate_right(63);
        v[3] = v[3].wrapping_add(v[7]).wrapping_add(m[s[6]]);
        v[15] = (v[15] ^ v[3]).rotate_right(32);
        v[11] = v[11].wrapping_add(v[15]);
        v[7] = (v[7] ^ v[11]).rotate_right(24);
        v[3] = v[3].wrapping_add(v[7]).wrapping_add(m[s[7]]);
        v[15] = (v[15] ^ v[3]).rotate_right(16);
        v[11] = v[11].wrapping_add(v[15]);
        v[7] = (v[7] ^ v[11]).rotate_right(63);
        v[0] = v[0].wrapping_add(v[5]).wrapping_add(m[s[8]]);
        v[15] = (v[15] ^ v[0]).rotate_right(32);
        v[10] = v[10].wrapping_add(v[15]);
        v[5] = (v[5] ^ v[10]).rotate_right(24);
        v[0] = v[0].wrapping_add(v[5]).wrapping_add(m[s[9]]);
        v[15] = (v[15] ^ v[0]).rotate_right(16);
        v[10] = v[10].wrapping_add(v[15]);
        v[5] = (v[5] ^ v[10]).rotate_right(63);
        v[1] = v[1].wrapping_add(v[6]).wrapping_add(m[s[10]]);
        v[12] = (v[12] ^ v[1]).rotate_right(32);
        v[11] = v[11].wrapping_add(v[12]);
        v[6] = (v[6] ^ v[11]).rotate_right(24);
        v[1] = v[1].wrapping_add(v[6]).wrapping_add(m[s[11]]);
        v[12] = (v[12] ^ v[1]).rotate_right(16);
        v[11] = v[11].wrapping_add(v[12]);
        v[6] = (v[6] ^ v[11]).rotate_right(63);
        v[2] = v[2].wrapping_add(v[7]).wrapping_add(m[s[12]]);
        v[13] = (v[13] ^ v[2]).rotate_right(32);
        v[8] = v[8].wrapping_add(v[13]);
        v[7] = (v[7] ^ v[8]).rotate_right(24);
        v[2] = v[2].wrapping_add(v[7]).wrapping_add(m[s[13]]);
        v[13] = (v[13] ^ v[2]).rotate_right(16);
        v[8] = v[8].wrapping_add(v[13]);
        v[7] = (v[7] ^ v[8]).rotate_right(63);
        v[3] = v[3].wrapping_add(v[4]).wrapping_add(m[s[14]]);
        v[14] = (v[14] ^ v[3]).rotate_right(32);
        v[9] = v[9].wrapping_add(v[14]);
        v[4] = (v[4] ^ v[9]).rotate_right(24);
        v[3] = v[3].wrapping_add(v[4]).wrapping_add(m[s[15]]);
        v[14] = (v[14] ^ v[3]).rotate_right(16);
        v[9] = v[9].wrapping_add(v[14]);
        v[4] = (v[4] ^ v[9]).rotate_right(63);
    }

    for i in 0..8 {
        h[i] ^= v[i] ^ v[i + 8];
    }
}
