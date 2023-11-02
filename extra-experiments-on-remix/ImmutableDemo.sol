//SPDX-License-Identifier: MIT License.

pragma solidity ^0.8.21;

contract ImmutableDemo {
    uint256 immutable id = 1;

    function changeId(uint256 newId) external pure {
        id - newId;
    }
}