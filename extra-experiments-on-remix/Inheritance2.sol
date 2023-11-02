//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract Base {
    string private name;

    constructor(string memory _name) {
        name = _name;
    }

    function getName() public view returns (string memory) {
        return name;
    }
}

// construction must take place during inheritance!
contract Sub is Base("Bob") {
    function doSomething() external view returns (string memory) {
        return super.getName();
    }
}