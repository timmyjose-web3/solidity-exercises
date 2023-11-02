//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract NestedMaps {
    mapping(uint256 => mapping(uint256 => uint256)) map;

    function setValue(uint256 k1, uint256 k2, uint256 v) public {
        map[k1][k2] = v;
    }

    function getValue(uint256 k1, uint256 k2) public view returns (uint256) {
        return map[k1][k2];
    }
}