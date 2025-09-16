# NFT-Based Access Pass for Study Materials

This repository contains a simple Move smart contract for the Aptos blockchain that implements an NFT-based access pass system for study materials.

## Overview

The smart contract allows users to create an NFT collection representing access passes and mint NFTs that grant access to specific study materials. This provides a decentralized and verifiable way to control access to educational content.

## Features

- Create an NFT collection for access passes
- Mint NFT access passes tied to specific study material IDs
- Simple and lightweight contract (~45 lines)
- Based on Aptos Framework and Aptos Token modules

## Usage

1. Deploy the contract on the Aptos blockchain.
2. Use the `create_collection` function to create a new NFT collection for access passes.
3. Use the `mint_access_pass` function to mint an NFT that grants access to a specific study material.

## Reference

The contract is inspired by the Aptos Crowdfunding example and adapted for NFT-based access control.

## Files

- `sources/nft_access_pass.move`: The Move smart contract source code.
- `Move.toml`: Aptos package configuration file.

## Testing

Testing is recommended to verify contract functionality and edge cases.

## License

This project is open source and available under the MIT License.
