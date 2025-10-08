// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//contract to understand variables

/*contract sum{
    uint8 num=0;
    uint32 biggernumber=0;
    int negativenumber=-10000;
    address harkirat=0xbF418c1822274015B142715799C24B4Cb576866e;
}*/

//contract to understand constructor
contract calculator{
    uint256 currentvalue;
    constructor (uint256 payablevalue){
        currentvalue=payablevalue;//set the intiial value it is done to avoid the name conflict
    }
    function add(uint256 _value)public{
        currentvalue+=_value;
    }
    function sub(uint256 _value)public{
        currentvalue-=_value;
    }
    function mul(uint _value)public{
        currentvalue*= _value;
    }
    function div(uint _value)public{
        require(_value!=0,"cannot divide by zero");
        currentvalue/=_value;
    }
    function getValue()public view returns(uint256) {
        return currentvalue;
    }
   
}