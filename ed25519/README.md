# ed25519

This is the precompile for enabling Ed25519 signature verification according to [EIP-665](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-665.md)

## Notes on the EIP

The EIP seems to avoid comprehensive specification. At least the following two questions are not specified:
1) What happens if the input is too short or too long?
2) What is the canonical return value in case of an error. The EIP says *any non-zero value indicates a signature verification failure*, which can lead to issues.
