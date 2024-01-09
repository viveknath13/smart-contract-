// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Mycontract {
    address owner;
    struct counter {
        uint256 num;
        string status;
    }
    counter mycounter;

    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "Only owner can increment and decrement the counter"
        );
        _;
    }
    constructor(uint value , string memory Description){
        owner = msg.sender;
        mycounter = counter(value,Description);

    }
    function incementCounter()public onlyOwner{
        mycounter.num++;
    }

    function decrementCounter()public onlyOwner{
        mycounter.num--;
    }
    function getCounter()public view returns (uint){
        return mycounter.num;

    }
    //query function to get the description 
    function getDescription()public view returns(string memory){
        return mycounter.status;
    }
}

