## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
forge script script/FSU.s.sol:FSUScript --rpc-url <your_rpc_url> --private-key <your_private_key> --legacy --broadcast
forge script script/FSU.s.sol:FSUScript --rpc-url https://rpc.scfchain.io --legacy --broadcast

forge script script/BTK.s.sol:BTKScript --rpc-url <your_rpc_url> --private-key <your_private_key> --legacy --broadcast
```

#### Deploying to ftcmain chain
```shell
forge script script/BTK.s.sol:BTKScript --rpc-url https://rpc.scfchain.io
forge script script/FSU.s.sol:FSUScript --rpc-url https://rpc.scfchain.io
```

### Cast

```shell
$ cast <subcommand>
```

#### check balance
```shell
cast call <contract_address> --rpc-url <your_rpc_url> "balanceOf(address)(uint256)" <user_address>
cast call 0xD4D62eC43F77Fe6eE54c228fA9f58Ab246f14843 --rpc-url https://rpc.scfchain.io/ "balanceOf(address)(uint256)" 0x98F915F20E1F338c32dFF8a55b307960C24d1b7C

cast balance --rpc-url <your_rpc_url> <user_address>
cast balance --rpc-url https://rpc.scfchain.io/ 0x98F915F20E1F338c32dFF8a55b307960C24d1b7C
```

#### check nonce
```shell
cast nonce --rpc-url <your_rpc_url> <user_address>
cast nonce --rpc-url https://rpc.scfchain.io/ 0x98F915F20E1F338c32dFF8a55b307960C24d1b7C
```

#### transfer
```shell
cast send <contract_address> --rpc-url <your_rpc_url> --private-key <your_private_key> --gas-price <your_gas_price> --nonce <your_nonce> --gas-limit <your_gas_limit> "transfer(address,uint256)(bool)" <to_address> <amount>
cast send 0xD4D62eC43F77Fe6eE54c228fA9f58Ab246f14843 --rpc-url https://rpc.scfchain.io/ --legacy --private-key 68a267efd48f58ef250be855477779a8875fcbc8a9b7c0d6639c668cde4f3dc7 --gas-price 500000000000 --nonce 3 --gas-limit 150000 "transfer(address,uint256)(bool)" 0xa3bdac83327ff0dcd7550d88c33f71e9d09dd3e5 10000
```

#### tranfer ownership
```shell
cast send <contract_address> --rpc-url <your_rpc_url> --private-key <your_private_key> --gas-price <your_gas_price> --nonce <your_nonce> --gas-limit <your_gas_limit> "transferOwnership(address)" <new_owner_address>
cast send 0xD4D62eC43F77Fe6eE54c228fA9f58Ab246f14843 --rpc-url https://rpc.scfchain.io/ --legacy --private-key 68a267efd48f58ef250be855477779a8875fcbc8a9b7c0d6639c668cde4f3dc7 --gas-price 500000000000 --nonce 3 --gas-limit 150000 "transferOwnership(address)" 0xa3bdac83327ff0dcd7550d88c33f71e9d09dd3e5
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
