//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract ConstructorWithArg {
    address owner;

    constructor(address _owner) {
        owner = _owner;
    }

    function whoisTheOWner() public view returns (address) {
        return owner;
    }
}