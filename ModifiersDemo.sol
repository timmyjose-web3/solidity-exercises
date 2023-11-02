//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Ownable {
  address public owner;

  constructor() {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(msg.sender == owner);
    _; // then execute the actual function
  }

  // only the current owner can invoke this function
  function changeOwner(address newOwner) external onlyOwner {
    owner = newOwner;
  }
}

contract HoldFunds is Ownable {
  receive() external payable {}

  // only the current owner can invoke this function
  function withdrawFunds() external onlyOwner {
    (bool ok, ) = owner.call{value: address(this).balance}("");
    require(ok, "withdrawal failed");
  }
}