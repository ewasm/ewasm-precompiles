
const SIGMA: [[usize; 16]; 10] = [
	[0, 2, 4, 6, 1, 3, 5, 7, 8, 10, 12, 14, 9, 11, 13, 15],
	[14, 4, 9, 13, 10, 8, 15, 6, 1, 0, 11, 5, 12, 2, 7, 3],
	[11, 12, 5, 15, 8, 0, 2, 13, 10, 3, 7, 9, 14, 6, 1, 4],
	[7, 3, 13, 11, 9, 1, 12, 14, 2, 5, 4, 15, 6, 10, 0, 8],
	[9, 5, 2, 10, 0, 7, 4, 15, 14, 11, 6, 3, 1, 12, 8, 13],
	[2, 6, 0, 8, 12, 10, 11, 3, 4, 7, 15, 1, 13, 5, 14, 9],
	[12, 1, 14, 4, 5, 15, 13, 10, 0, 6, 9, 8, 7, 3, 2, 11],
	[13, 7, 12, 3, 11, 14, 1, 9, 5, 15, 8, 2, 0, 4, 6, 10],
	[6, 14, 11, 0, 15, 9, 3, 8, 12, 13, 1, 10, 2, 7, 4, 5],
	[10, 8, 7, 1, 2, 4, 6, 5, 15, 9, 3, 13, 11, 14, 12, 0],
];


/// IV is an initialization vector for BLAKE2b
const IV: [u64; 8] = [
	0x6a09e667f3bcc908, 0xbb67ae8584caa73b, 0x3c6ef372fe94f82b, 0xa54ff53a5f1d36f1,
	0x510e527fade682d1, 0x9b05688c2b3e6c1f, 0x1f83d9abfb41bd6b, 0x5be0cd19137e2179,
];

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