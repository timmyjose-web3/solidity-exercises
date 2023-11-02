//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract ExampleIf {
    function isAMultipleOf10(uint256 _num) public pure returns (bool) {
        if (_num % 10 == 0) {
            return true;
        } else {
            return false;
        }
    }
}