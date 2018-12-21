TARGETS=blake2 bls12pairing ecadd ecmul ecpairing ecrecover ed25519 identity keccak256 ripemd160 sha1 sha256

all:
	@cargo build --release --target wasm32-unknown-unknown
	@$(foreach i,$(TARGETS),echo Snipping $(i) && wasm-snip --snip-rust-panicking-code --snip-rust-fmt-code target/wasm32-unknown-unknown/release/ewasm_precompile_$(i).wasm -o target/wasm32-unknown-unknown/release/ewasm_precompile_$(i).wasm;)
	@$(foreach i,$(TARGETS),echo GCing $(i) && wasm-gc target/wasm32-unknown-unknown/release/ewasm_precompile_$(i).wasm;)
	@$(foreach i,$(TARGETS),echo Chiseling $(i) && chisel target/wasm32-unknown-unknown/release/ewasm_precompile_$(i).wasm target/wasm32-unknown-unknown/release/ewasm_precompile_$(i).wasm;)
