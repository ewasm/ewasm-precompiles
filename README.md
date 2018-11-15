# ewasm-precompiles

Implementation of the Ethereum precompiled contracts in Rust.

## Build

Each of them be compiled using in their appropriate directory:

```sh
$ cargo build --release --target wasm32-unknown-unknown
```

The resulting files must be processed via [chisel](https://github.com/wasmx/wasm-chisel) to have the proper imports.

Alternatively `make` can be used to automate this process. The resulting precompiles will be placed in `target/wasm32-unknown-unknown/release`.

```sh
$ cargo install chisel
$ make
```

## Author(s)

Alex Beregszaszi

## License

Apache 2.0
