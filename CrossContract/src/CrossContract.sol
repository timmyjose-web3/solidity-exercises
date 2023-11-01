// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract CrossContract {
    /**
     * The function below is to call the price function of PriceOracle1 and PriceOracle2 contracts below and return the lower of the two prices
     */

    function getLowerPrice(
        address _priceOracle1,
        address _priceOracle2
    ) external returns (uint256) {
      // your code here

      // call priceOracle1
      (bool ok1, bytes memory p1) = _priceOracle1.call(abi.encodeWithSignature("price()"));
      require(ok1, "priceOracle1 call failed");
      uint256 price1 = abi.decode(p1, (uint256));

      // call priceOracle2
      (bool ok2, bytes memory p2) = _priceOracle2.call(abi.encodeWithSignature("price()"));
      require(ok2, "priceOracle2 call failed");
      uint256 price2 = abi.decode(p2, (uint256));

      if (price1 < price2) {
        return price1;
      } else {
        return price2;
      }
    }
}

contract PriceOracle1 {
    uint256 private _price;

    function setPrice(uint256 newPrice) public {
        _price = newPrice;
    }

    function price() external view returns (uint256) {
        return _price;
    }
}

contract PriceOracle2 {
    uint256 private _price;

    function setPrice(uint256 newPrice) public {
        _price = newPrice;
    }

    function price() external view returns (uint256) {
        return _price;
    }
}
