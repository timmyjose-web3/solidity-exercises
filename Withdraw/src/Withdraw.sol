// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Withdraw {
  // @notice make this contract able to receive ether from anyone and anyone can call withdraw below to withdraw all ether from it
  receive() external payable {}

  function withdraw() external payable {
    // your code here
    (bool ok, ) = msg.sender.call{value: getBalance()}("");
    require(ok, "withdrawal failed");
  }

  function getBalance() internal view returns (uint256) {
    return address(this).balance;
  }
}
