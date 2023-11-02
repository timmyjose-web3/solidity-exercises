//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract TakeMoneyV2{
    // note the exact signature
    receive() external payable {}

    function showBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function showAddress() public view returns (address) {
        return address(this);
    }
}

contract SendMoneyV2 {
    constructor() payable {}

    function sendMoney(address receiver, uint256 amount) public {
        (bool ok,) = receiver.call{value: amount}("");
        require(ok, "sending ether failed");
    }

    function showBalance() public view returns (uint256) {
        return address(this).balance;
    }
}