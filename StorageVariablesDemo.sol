//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract StorageVariablesDemo {
    // internal implies that other smart contracts cannot see this variable.
    uint256 internal x;

    function setX(uint256 newValue) public {
        x = newValue;
    }

    function getX() public view returns (uint256) {
        return x;
    }
}