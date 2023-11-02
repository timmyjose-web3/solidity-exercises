//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract Parent1 {
    function foo() external pure returns (string memory) {
        return "Parent1";
    }

    function baz() external pure virtual returns (uint256) {
        return 1;
    }
}

contract Parent2 {
    function bar() external pure returns (string memory) {
        return "Parent2";
    }

    function baz() external pure  virtual returns (uint256) {
        return 2;
    }
}

contract Child is Parent1, Parent2 {
    // inherits from both Parent1 and Parent2

    // In this case, `baz` __must__ be overidden
    function baz() external pure override(Parent1, Parent2) returns (uint256) {
        return 3;
    }
}