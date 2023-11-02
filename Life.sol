//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract Life {
    function lifeTheUniverseAndEverything() public pure returns (bytes memory) {
        return msg.data;
    }

    function getAbiEncoding() public pure returns (bytes memory) {
        return abi.encodeWithSignature("lifeTheUniverseAndEverything()");
    }
}

