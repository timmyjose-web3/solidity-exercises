//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract MsgSender {
    function whoami() public view returns (address) {
        return msg.sender;
    }
}