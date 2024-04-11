// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract Read_nd_Write{

uint256 num;


//To write we need to send a transaction

function writeNum(uint256 _num)public {

    num = _num;
}

//read 
function readNum()public view returns (uint256){

    return num;
}

}