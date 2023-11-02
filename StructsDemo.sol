//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract StructsDemo {
  struct Foo {
    uint256 a;
    uint256 b;
  }

  Foo public foo;

  constructor(uint256 _a, uint256 _b) {
    foo.a = _a;
    foo.b = _b;
  }
}

contract DepositOnly {
  struct Person {
    string name;
    uint256 amount;
  }

  mapping(address => Person) depositors;

  constructor() payable {}

  function deposit(string calldata _name) external payable {
    depositors[msg.sender] = Person(_name, msg.value);
  }
}

contract AssignDemo {
  struct Foo {
    uint256 a;
    uint256 b;
  }

  Foo public foo;

  function assignFoo(uint256 _a, uint256 _b) external {
    foo = Foo(_a, _b);
  }

  function assignA(uint256 _a) external {
    foo.a = _a;
  }

  function accessA() external view returns (uint256) {
    return foo.a;
  }
}

contract PassAndReturnsStruct {
  struct Person {
    string name;
    uint256 age;
    uint256 salary;
  }

  Person public person;

  function pass(Person memory _person) external {
    person = _person;
  }

  function ret() external view returns (Person memory) {
    return person;
  }
}

contract StructArraysDemo {
  struct Foo {
    uint256 a;
    uint256 b;
  }

  Foo[] internal foos;

  function getFoos() external view returns (Foo[] memory) {
    return foos;
  }

  function addFooToArray(uint256 _a, uint256 _b) external {
    foos.push(Foo(_a, _b));
  }

  function readFooFromArray(uint256 _idx) external view returns (Foo memory) {
    return foos[_idx];
  }
}