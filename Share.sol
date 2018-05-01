pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Share is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Share(address _owner)  UpgradeableToken(_owner) {
    name = "Share";
    symbol = "SHR";
    totalSupply = 10000000;
    decimals = 4;

    balances[_owner] = totalSupply;
  }
}