//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract Arithmetic {
    uint256 public sum;
    uint256 public diff;
    uint256 public prod;
    uint256 public quot;
    uint256 public rem;
    uint256 public exp2;

    constructor() {
        sum = diff = prod = quot = rem = exp2 = 0;
    }

   function calculate(uint256 x, uint256 y) public {
        sum = x + y;
        diff = x - y;
        prod = x * y;
        quot = x / y;
        rem = x % y;
        exp2 = 2 ** x;
   }
}