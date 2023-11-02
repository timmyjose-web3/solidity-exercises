//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract ArraysDemo {
    function returnInput(uint256[] calldata input) public pure returns (uint256[] memory) {
        return input;
    }

    function boolArray(bool[] calldata input) public pure returns (bool[] memory) {
        return input;
    }

    function addressArray(address[] calldata input) public pure returns (address[] memory) {
        return input;
    }

    function returnFirstElement(uint256[] calldata input) public pure returns (uint256) {
        return input[0];
    }

    function returnArrayLength(bool[] calldata input) public pure returns (uint256) {
        return input.length;
    
    }

    function arrayProd(uint256[] calldata input) public pure returns (uint256) {
        uint256 p = 1;

        for (uint256 idx = 0; idx < input.length; idx++) {
            p *= input[idx];
        }

        return p;
 
    }

    function prodSumFixedArray(uint256[5] calldata input) public pure returns (uint256) {
        uint256 s = 0;
        for (uint256 idx = 0; idx < input.length; idx++) {
            s += input[idx];
        }

        return s;
    }
}
    