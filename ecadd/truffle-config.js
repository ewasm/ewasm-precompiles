/*
 * NB: since truffle-hdwallet-provider 0.0.5 you must wrap HDWallet providers in a 
 * function when declaring them. Failure to do so will cause commands to hang. ex:
 * ```
 * mainnet: {
 *     provider: function() { 
 *       return new HDWalletProvider(mnemonic, 'https://mainnet.infura.io/<infura-key>') 
 *     },
 *     network_id: '1',
 *     gas: 4500000,
 *     gasPrice: 10000000000,
 *   },
 */

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  compilers: {
    external: {
      command: "cargo build --release --target wasm32-unknown-unknown",
    },
    targets: [{
      properties: {
        contractName: "ecadd"
      },
      fileProperties: {
        bytecode: "target/wasm32-unknown-unknown/release/ewasm_precompile_ecadd.wasm"
      }
    }]
  }
};
