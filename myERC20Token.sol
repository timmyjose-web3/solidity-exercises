//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyERC20 {
  string public name;
  string public symbol;

  mapping(address => uint256) public balanceOf;
  address public owner;
  uint256 public totalSupply;
  uint8 public decimals;

  mapping(address => mapping(address => uint256)) public allowance;

  constructor(string memory _name, string memory _symbol) {
    name = _name;
    symbol = _symbol;
    owner = msg.sender;
    decimals = 18;
  }

  function mint(address to, uint256 amount) external {
    require(msg.sender == owner, "Only the owner can create tokens");
    balanceOf[owner] += amount;
    totalSupply += amount;
  }

  function transfer(address to, uint256 amount) external returns (bool) {
    require(balanceOf[msg.sender] >= amount, "you don't have enough tokens to transfer");
    require(to != address(0), "you cannot send tokens to address 0");

    balanceOf[msg.sender] -= amount;
    balanceOf[to] += amount;

    return true;
  }

  function approve(address spender, uint256 amount) external returns (bool) {
    allowance[msg.sender][spender] = amount;
    return true;
  }

  function transferFrom(address from, address to, uint256 amount) external returns (bool) {
    require(balanceOf[from] >= amount, "not enough money!");


    if (msg.sender != from) {
      require(allowance[from][msg.sender] >= amount, "not enough allowance");
      allowance[from][msg.sender] -= amount;
    }

    balanceOf[from] -= amount;
    balanceOf[to] += amount;

    return true;
  }
}

