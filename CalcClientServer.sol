//SPDX-License-Identifier: MIT License

pragma solidity ^0.8.0;

contract Calculator {
    function add(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }

    function sub(uint256 x, uint256 y) public pure returns (uint256) {
        return x - y;
    }

    function mul(uint256 x, uint256 y) public pure returns (uint256) {
        return x * y;
    }

    function div(uint256 x, uint256 y) public pure returns (uint256) {
        return x / y;
    }

    function calculatorAddress() public view returns (address) {
        return address(this);
    }
}

contract CalculatorClient {
    uint256 public sum;
    uint256 public diff;
    uint256 public prod;
    uint256 public quot;

    constructor() {
        sum = diff = prod = quot = 0;
    }

    function calculate(address calculator, uint256 a, uint256 b) public {
        // sum
        (bool ok1, bytes memory _sum) = calculator.call(abi.encodeWithSignature("add(uint256,uint256)", a, b));
        require(ok1, "addition call failed");
        sum = abi.decode(_sum, (uint256));

        // diff
        (bool ok2, bytes memory _diff) = calculator.call(abi.encodeWithSignature("sub(uint256,uint256)", a, b));
        require(ok2, "subtraction call failed");
        diff = abi.decode(_diff, (uint256));

        // prod
        (bool ok3, bytes memory _prod) = calculator.call(abi.encodeWithSignature("mul(uint256,uint256)", a, b));
        require(ok3, "multiplication call failed");
        prod = abi.decode(_prod, (uint256));

        // quot
        (bool ok4, bytes memory _quot) = calculator.call(abi.encodeWithSignature("div(uint256,uint256)", a, b));
        require(ok4, "division call failed");
        quot = abi.decode(_quot, (uint256));
    }
}