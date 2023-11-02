//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract TupleDemo {
    function getHighestScore() public pure returns (address, uint256) {
        return (0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 12345);
    }

    function highestScoreIsOver9000() public pure returns (bool) {
        (address leader, uint256 score) = getHighestScore();

        console.log("Leader is %s", leader);

        if (score > 9000) {
            return true;
        }
        return false;
    }
}