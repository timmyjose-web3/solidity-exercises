//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract BlockMetadata {
    function whatTimeIsIt() public view returns (uint256) {
        // the number of __seconds__ since EPOCH.
        return block.timestamp;
    }

    function whatBlockNumber() external  view returns (uint256) {
        return block.number;
    }
}