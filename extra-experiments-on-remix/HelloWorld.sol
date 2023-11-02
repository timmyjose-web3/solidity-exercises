//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract HelloWorld {
    string public message;

    constructor() {
        message = "Hello, world!";
    }

    function updateMessage(string memory newMessage) public {
        message = newMessage;
    }
}