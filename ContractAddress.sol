//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract ContractAddress {
    function whoami() public view returns (address) {
        return address(this);
    }
}