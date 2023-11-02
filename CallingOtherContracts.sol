//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract ClientContract {
    function whatIsExistence(address serverContract) public returns (uint256) {
        // this is how we can call functions in other contracts.
        (bool ok, bytes memory res) = serverContract.call(abi.encodeWithSignature("lifeTheUniverseAndEverything()"));
        require(ok, "call attempt failed");

        return abi.decode(res, (uint256));
    }
}

contract ServerContract {
    function lifeTheUniverseAndEverything() public pure returns (uint256) {
        return 42;
    }
}