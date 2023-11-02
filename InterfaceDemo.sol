//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Adder {
  function add(uint256 a, uint256 b) external pure returns (uint256) {
    return a + b;
  }
}

contract GetSumV1 {
  function getSum(address adder, uint256 x, uint256 y) external returns (uint256) {
    (bool ok, bytes memory _res) = adder.call(abi.encodeWithSignature("add(uint256,uint256)", x, y));
    require(ok, "call to add function failed");
    uint256 res = abi.decode(_res, (uint256));
    return res;
  }
}

interface IAdder {
  function add(uint256, uint256) external view returns (uint256);
}

contract GetSumV2 {
  function getSum(IAdder adder, uint256 x, uint256 y) external view returns (uint256) {
    return adder.add(x, y);
  }
}