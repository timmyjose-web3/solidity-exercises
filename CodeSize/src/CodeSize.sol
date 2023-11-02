// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract CodeSize {
  /**
   * The challenge is to create a contract whose runtime code (bytecode) size is greater than 1kb but less than 4kb
   */
  struct Person {
    string name;
    uint256 age;
    uint256 salary;
  }

  Person public person;

  function setPerson(string calldata _name, uint256 _age, uint256 _salary) external {
    person = Person(_name, _age, _salary);
  }

  function getName() external view returns (string memory) {
    return person.name;
  }

  function getAge() external view returns (uint256) {
    return person.age;
  }

  function getSalary() external view returns (uint256) {
    return person.salary;
  }

  receive() external payable {}
}
