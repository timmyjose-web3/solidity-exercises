//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract ReceiveMoney {
    // signifies that this contract can receive ether.
    function takeMoney() public payable {}

    function showBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract SendMoney {
    // allows this contract to start off with some ether.
    constructor() payable {}

    function sendMone(address receiver, uint256 amount) public {
        // note how the amount goes as a meta argument and now as a function argument.
        (bool ok, ) = receiver.call{value: amount}(abi.encodeWithSignature("takeMoney()"));
        require(ok, "failed to send money");
    }

    function showBalance() public view returns (uint256) {
        return address(this).balance;
    }
}