//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract EtherInteraction {
    function howMuchBalance() public view returns (uint256) {
        return address(this).balance; 
    }

    function payMe() public payable {}

    function haveMoreThan1EtherV1() public view returns (bool) {
        if (msg.sender.balance > 1 ether) {
            return true;
        }
        return false;
    }

    function haveMoreThan1EtherV2() public view returns (bool) {
        if (msg.sender.balance > 10**18) {
            return true;
        }
        return false;
    }
}