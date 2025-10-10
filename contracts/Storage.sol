// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Storage {
    uint256 public num;

    constructor(uint256 _num) {
        num = _num;
    }

    function getNum() public view returns (uint){
        return num;
    }

    function add() public{
        num=num+1;
    }
}
//0xd9145CCE52D386f254917e481eB44e9943F39138
