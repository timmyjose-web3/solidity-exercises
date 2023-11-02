//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract CallCollDown {
    uint256 lastCall;

    function canCallOnceADay() external {
        uint256 daySeconds = 24 * 60 * 60;
        require(block.timestamp > lastCall + daySeconds, "you can only call this function once a day");
        lastCall = block.timestamp;
    }
}