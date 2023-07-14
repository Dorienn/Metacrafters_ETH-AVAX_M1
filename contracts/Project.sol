// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
// ETH + AVAX Proof: Intermediate Course Module 1
// Use require, assert, and revert function

pragma solidity ^0.8.17;
contract Project {
    uint public balance;

    function setBalance(uint _balance) public {
        require(_balance > 5, "Balance must be greater than 5!");
        balance = _balance;
    }

    function isZero() public view {
        assert(balance == 0);
    }
    
    function withdraw(uint _amount) public {
        if(_amount == 0) {
            revert("Amount cannot be zero!");
        }
        balance -= _amount;
    }
}
