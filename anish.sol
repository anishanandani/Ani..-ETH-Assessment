// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/*
       REQUIREMENTS
    1. This contract will contain public variables that store information about the token (Token Name, Token Abbreviation, Total Supply).
    2. It will have a mapping of addresses to token balances (address => uint).
    3. A minting function will be implemented, which takes two parameters: an address and a value. 
       Upon invocation, this function will increase the total token supply by the specified value and increase the balance 
       of the specified address by that amount.
    4. Additionally, a burning function will be included, which will operate in the opposite manner of the minting function. 
       It will take an address and a value as parameters, decrease the total token supply by the specified value, 
       and decrease the balance of the specified address by that amount.
    5. The burning function will include conditionals to ensure that the balance of the specified address is greater than 
       or equal to the amount intended to be burned.
*/

contract MyCustomToken {

    // Public variables to store token details
    string public tokenName = "Anish";
    string public tokenAbbreviation = "Ani";
    uint public totalTokenSupply = 0;

    // Mapping to track token balances for each address
    mapping (address => uint) public tokenBalances;

    // Minting function
    function mintTokens(address _recipient, uint _amount) public {
        totalTokenSupply += _amount;
        tokenBalances[_recipient] += _amount;
    }

    // Burning function
    function burnTokens(address _holder, uint _amount) public {
        if (tokenBalances[_holder] >= _amount) {
            totalTokenSupply -= _amount;
            tokenBalances[_holder] -= _amount;
        }
    }
}
