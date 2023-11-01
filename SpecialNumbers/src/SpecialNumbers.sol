// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract SpecialNumbers {
    mapping(uint256 => bool) public specials;

    /**
     * The goal is to use mappings and store if a number is special or not (using booleans)
     */

    /// make @param n special
    function makeNumberSpecial(uint256 n) public {
      // your code here
      specials[n] = true;
    }

    /// make @param n not special
    function makeNumberNotSpecial(uint256 n) public {
      // your code here
      specials[n] = false;
    }

    /// return if a number @param n is special or not
    function isNumberSpecial(uint256 n) public view returns (bool) {
      // your code here
      return specials[n];
    }
}
