//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract NestedArrays {
    function contains3(uint256[][] calldata arr) public pure returns (bool) {
        for (uint256 i = 0; i < arr.length; i++) {
            for (uint256 j = 0; j < arr[0].length; j++) {
                if (arr[i][j] == 3) {
                    return true;
                }
            }
        }

        return false;
    }

    function getFirstRow(uint256[][] calldata arr) public pure returns (uint256[] memory) {
        return arr[0];
    }

    function fixedSize(uint256[2][3] calldata arr) public pure returns (uint256) {
        return arr[0][0];
 
    }

    function printMatrix(uint256[2][3] calldata mat) public pure {
        console.log("length = %s, lengthPrime = %s", mat.length, mat[0].length);
        for (uint256 i = 0; i < mat.length; i++) {
            for (uint256 j = 0; j < mat[0].length; j++) {
                console.log("%s", mat[i][j]);
            }
            console.log("\n");
        }
    }
}