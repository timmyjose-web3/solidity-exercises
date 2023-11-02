//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract AbiEncodeDecode {
    function encodeXY(uint256 x, uint256 y) public pure returns (bytes memory) {
        return abi.encode(x, y);
    }

    // Note: the encoding must be wrapped in a string.
    function decodeXY(bytes memory encoding) public pure returns (uint256, uint256) {
        (uint256 x, uint256 y) = abi.decode(encoding, (uint256, uint256));
        return (x, y);
    }
}