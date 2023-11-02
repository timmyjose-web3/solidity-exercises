//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract ConstructorDemo {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function whoIsTheOwner() public view returns (address) {
        return owner;
    }
}