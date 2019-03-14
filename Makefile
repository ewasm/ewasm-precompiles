TARGETS=blake2 bls12pairing ecadd ecmul ecpairing ecrecover ed25519 identity keccak256 modexp ripemd160 sha1 sha256

all:
	@cargo build --release --target wasm32-unknown-unknown
	@$(foreach i,$(TARGETS),echo Chiseling $(i) && chisel target/wasm32-unknown-unknown/release/ewasm_precompile_$(i).wasm target/wasm32-unknown-unknown/release/ewasm_precompile_$(i).wasm;)
