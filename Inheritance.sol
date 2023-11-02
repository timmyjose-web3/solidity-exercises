//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract Base {
    function lifeTheUniverseAndEverything() public pure returns (uint256) {
        return 42;
    }

    function anotherOne() public pure virtual returns (string memory) {
        return "Base";
    }
}

contract Sub is Base {
    // inherits the `lifeTheUniverseAndEverything` function from `Base`.

    // this requires the `virtual` keyword on the overriden function.
    function anotherOne() public pure override returns (string memory) {
        return "Sub";
    }
}