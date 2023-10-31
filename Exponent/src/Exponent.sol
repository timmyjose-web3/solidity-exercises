// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Exponent {
    /*
        This exercise assumes you know how exponent works.
        1. Function `getResult` should return the result of the exponent.
    */

    function getResult(uint256 _base, uint256 _e)
        public
        pure
        returns (uint256)
    {
        // your code here
        uint256 res = 1;

        for (uint256 i = _e; i >= 1; i--) {
          res *= _base;
        }

        return res;
    }
}
