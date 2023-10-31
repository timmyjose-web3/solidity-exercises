// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Unchecked.sol";

contract UncheckedTest is Test {
  Unchecked public uncheckedContract;

  function setUp() public {
    uncheckedContract = new Unchecked();
  }

  function testUnchecked() external view {
    uncheckedContract.getNumber(10);
    uncheckedContract.getNumber(0);
    uncheckedContract.getNumber(50);
    uncheckedContract.getNumber(20);
  }
}
