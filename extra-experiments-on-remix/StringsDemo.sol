//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract StringsDemo {
    string public message = unicode"你好";

    function echo(string calldata input) public pure returns (string memory) {
        return input;
    }

    function helloWorld() public pure returns (string memory) {
        return "Hello, world!";
    }

    function stringConcatDemo(string calldata input) public pure returns (string memory) {
        return string.concat("Hello, ", input);
    }

    function stringLength(string calldata s) external pure returns (uint256) {
        return bytes(s).length; // only for ASCII!
    }

    function charAt(string calldata s, uint256 index) external pure returns (string memory) {
        // only for ASCII!
        bytes memory buf = new bytes(1);
        buf[0] = bytes(s)[index];
        return string(buf);
    }
}