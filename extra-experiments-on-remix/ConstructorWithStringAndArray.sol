//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract ConstructorWithStringAndArray {
    string internal s;
    uint256[] internal arr;

    constructor (string memory _s, uint256[] memory _arr) {
        s = _s;
        arr = _arr;
    }
}