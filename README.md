# ewasm-precompiles

Implementation of the Ethereum precompiled contracts in Rust.

## Build

Each of them be compiled using in their appropriate directory:

```sh
$ cargo build --release
```

The resulting files must be processed via [chisel](https://github.com/wasmx/wasm-chisel) to have the proper imports.

This can be done via:

```sh
$ chisel run
```

## Author(s)

Alex Beregszaszi

## License

Apache 2.0
