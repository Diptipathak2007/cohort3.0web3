// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Will{
    //Defining the three variables owner,recipient and lastping;
    address public owner;
    address public recipient;
    uint256 public lastPing;

    uint256 public constant INACTIVITY_PERIOD= 365 days;

    event RecipientChanged(address indexed oldreciepent,address indexed newrecipient);
    event Ping(address indexed owner,uint256  timestamp);
    event Drained(address indexed recipient,uint256 amount);
    event Recieved(address indexed from,uint256 amount);

    modifier Onlyowner(){
        require(msg.sender==owner,"only owner");
        _;
    }
    modifier onlyRecipient() {
        require(msg.sender == recipient, "Only recipient");
        _;
    }
    constructor(address _recipient)payable{
        owner=msg.sender;
        recipient=_recipient;
        lastPing=block.timestamp;
        if(msg.value>0){
            emit Recieved(msg.sender,msg.value);
        }
    }

    receive() external payable {
        emit Recieved(msg.sender, msg.value);
    }
    fallback() external payable {
        emit Recieved(msg.sender, msg.value);
    }
    //These are the fallbacks created by me in my contract to make sure that whenever eth is sent with 
    //some unexpected data my contract gets to store that eth

    //owner actions:

    function changeRecipeint(address _newRecipient)external Onlyowner{
        address old=recipient;
        recipient=_newRecipient;
        emit RecipientChanged(old, _newRecipient);
    }

    function ping() external Onlyowner{
        lastPing=block.timestamp;
        emit Ping(msg.sender,block.timestamp);
    }

    //recipient actions

    function Drain()external onlyRecipient{
        require(block.timestamp>=lastPing+INACTIVITY_PERIOD,"owner is still active");
        uint256 balance=address(this).balance;
        require(balance>0,"No Funds");
        (bool ok, ) = recipient.call{value: balance}("");
        require(ok, "Transfer failed");
        emit Drained(recipient, balance);
    }
    function canRecipientDrain() external view returns (bool) {
        return (msg.sender == recipient) && (block.timestamp > lastPing + INACTIVITY_PERIOD);
    }
    function secondsUntilDrain() external view returns (uint256) {
        if (block.timestamp > lastPing + INACTIVITY_PERIOD) return 0;
        return (lastPing + INACTIVITY_PERIOD) - block.timestamp;
    }

}