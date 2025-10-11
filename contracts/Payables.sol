// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mycontract{
    uint public amount;
    function deposit() public payable {
        amount+=msg.value;
    }
    function withdraw(address payable receipient)public {
        payable ( receipient).transfer(amount);
        amount=0;
    }
    function getBalance() public view returns (uint256){
        return address(this).balance;
    }
}