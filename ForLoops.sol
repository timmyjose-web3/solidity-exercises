//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract ForLoops {
    function sumToN(uint256 n) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 1; i <= n; i++) {
            sum += i;
        }

        return sum;
    }
}