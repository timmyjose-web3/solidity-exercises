//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract BuyTickets {
  uint256 public constant TICKET_PRICE = 0.1 ether;

  struct Ticket {
    string name;
    uint256 numTickets;
  }

  mapping(address => Ticket) tickets;

  constructor() payable {}

  function buyTicket(string calldata _name, uint256 _numTickets) external payable {
    require(msg.value == _numTickets * TICKET_PRICE, "incorrect money provided");
    require(_numTickets <= 10, "you cannot buy more than 10 tickets");
    require(tickets[msg.sender].numTickets + _numTickets <= 10, "maximum number of tickets already bought");

    tickets[msg.sender].name = _name;
    tickets[msg.sender].numTickets = _numTickets;
  }

  function displayTicket(address _ticketOwner) external view returns (Ticket memory) {
    return tickets[_ticketOwner];
  }
}