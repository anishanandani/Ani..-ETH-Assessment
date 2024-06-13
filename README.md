# ETH Proof Solidity

A simple Ethereum token contract implementing basic minting and burning functionalities.

## Description

Anish.sol is a basic Ethereum token contract written in Solidity. It provides functionalities for minting new tokens and burning existing ones. The contract keeps track of token balances for each Ethereum address and maintains the total token supply. This project serves as a starting point for building custom ERC-20 compliant tokens on the Ethereum blockchain.

## Getting Started

### Installing

To use this contract, follow these steps:

1. Clone this repository to your local machine.
2. Make any necessary modifications to the contract according to your requirements.

### Executing program

Follow these steps to deploy and interact with the contract:

1. Deploy the contract to an Ethereum network using a development environment like Remix or Truffle.
2. Interact with the deployed contract using tools like Remix IDE, Truffle console, or web3.js.
3. Use the provided functions to mint new tokens and burn existing ones as needed.
   
First to open any Browser and to open Remix IDE, it's an online Solidity Platform. link - https://remix.ethereum.org/.

then create a new file and file extension is .sol and save it. then copy and paste the code into the file:

// SPDX-License-Identifier: MIT pragma solidity 0.8.26; contract MyCustomToken {
// public variables here
string public tokenName = "Anish";
string public tokenAbbrs = "Ani";
uint public totalSupply = 0;


// mapping variable here

mapping (address => uint) public balance;

// mint function
function mint (address _address, uint _value) public {
    totalSupply += _value;
    balance[_address] += _value;

}

// burn function

function burn(address _address, uint _value) public {
    if (balance[_address] >= _value) {
         totalSupply -= _value;
        balance[_address] -= _value;

    }
}
## Help

If you encounter any issues or have questions, consider the following:

- Check the contract documentation for details on function usage and parameters.
- Reach out to the contract authors or contributors for further assistance.

## Authors

- Anish Anand (mailto:anishanand803@gmail.com)

## License

This project is licensed under the MIT License.
