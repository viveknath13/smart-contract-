// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract learnMapping {
    mapping(address => uint256) public showAddress;

    //This function add the address
    function Add_Address(address _Address) public view returns (uint256) {
        return showAddress[_Address];
    }
    //This function provide a value for address e.g address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 val = 1; 
    function setValueForAddress(address _Address, uint256 _val) public {
        showAddress[_Address] = _val;
    }
    //This function delt the address and it's value;
    function deltAddress(address _Address) public {
        delete showAddress[_Address];
    }
}

contract nestedMapping{

    mapping (address=>mapping (uint256 => bool))public nestingMapping;



    function AddAddress(address _myAdd, uint256 _num)public view  returns (bool){

        return nestingMapping[_myAdd][_num];
    }
    function setAddress(address _myAdd,uint256 _num,bool _hasAdd)public {

        nestingMapping[_myAdd][_num] = _hasAdd;
    }

    function deltAddress(address _myAdd, uint256 _num)public {
        delete nestingMapping[_myAdd][_num];
    }
    
}