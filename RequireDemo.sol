//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract RequireDemo {
    function mustNotBe5(uint256 x) public pure returns (uint256) {
        require(x != 5, "The input must not be 5!");
        return x * 2;
    }
}