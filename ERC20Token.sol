//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract ERC20Token {
    address banker;

    mapping(address => uint256) balances;

    constructor() {
        banker = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
        balances[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4] = 100;
        balances[0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db] = 0;
    }

    function transfer(address sender, address receiver, uint256 amount) public {
        require(balances[sender] >= amount, "Insufficient funds");

        balances[sender] -= amount;
        balances[receiver] += amount;
    }
}