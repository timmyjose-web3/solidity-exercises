//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract ArraysOps {
    uint256[] internal arr;

    function setArray(uint256[] calldata initArr) public {
        arr = initArr;
    }

    function addToArray(uint256 value) public {
        arr.push(value);
    }

    function removeFromArray() public {
        arr.pop();
    }

    function getWholArray() public view returns (uint256[] memory) {
        return arr;
    }
}