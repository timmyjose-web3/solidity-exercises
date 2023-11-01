// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Distribute {
  /*
     This exercise assumes you know how to send Ether.
     1. This contract has some ether in it, distribute it equally among the
     array of addresses that is passed as argument.
     2. Write your code in the `distributeEther` function.
   */

  constructor() payable {}

  function distributeEther(address[] memory addresses) public {
    // your code here
    uint256 amountPerAddress = getBalance() / addresses.length;

    for (uint256 idx = 0; idx < addresses.length; idx++) {
      (bool ok, ) = addresses[idx].call{value: amountPerAddress}("");
      require(ok, "ether distribution failed");
    }
  }

  function getBalance() internal view returns (uint256) {
    return address(this).balance;
  }
}
