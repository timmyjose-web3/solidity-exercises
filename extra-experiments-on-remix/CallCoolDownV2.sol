//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract CallCoolDownV2 {
    uint256 lastCall;

    function callOnceADay() external {
        require(block.timestamp > lastCall + 1 days, "you can call this function only once a day");
        lastCall = block.timestamp;
    }
}