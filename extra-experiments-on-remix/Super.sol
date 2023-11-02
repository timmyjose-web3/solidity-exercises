//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract Base {
    function foo() internal virtual pure returns (string memory) {
        return "base";
    }
}

contract Sub is Base {
    function bar() external pure returns (string memory) {
        return string.concat(super.foo(), "+sub");
    }
}