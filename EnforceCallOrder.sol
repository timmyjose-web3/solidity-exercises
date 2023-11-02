//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract EnforceCallOrder {
    uint256 lastBlockNumber;

    function callMeFirst() external {
        lastBlockNumber = block.number;
    }

    function callMeSecond() external view {
        require(lastBlockNumber != 0 && block.number > lastBlockNumber, "you can only call this function after `callMeFirst`");
    }
}