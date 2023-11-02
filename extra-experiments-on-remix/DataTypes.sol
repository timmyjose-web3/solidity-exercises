//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract DataTypes {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function getNumber() public pure returns (uint256) {
        uint256 x  = 12456;
        return x;
    }

    function getBool() public pure returns (bool) {
        bool b = false;
        return b;
    }

    function getAddress() public pure returns (address) {
        address vitalik = 0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045;
        return vitalik;
    }

    function getAnotherAddress() public view returns (address) {
        return owner;
    }
}