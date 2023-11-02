//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract MappingDemo {
    mapping(uint256 => uint256) private map;

    function set(uint256 key, uint256 value) public {
        map[key] = value;
    }

    function get(uint256 key) public view returns (uint256) {
        return map[key];
    }
}