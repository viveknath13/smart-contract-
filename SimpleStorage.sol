// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;


contract Simplestorge{

    uint256 myNumber;
struct User{

    uint age;
    string name;
}
User[]  personList;
mapping (uint256 => string)public userIdToNameMapping ;

function addPerson(uint256 _age , string calldata _name)public {


    userIdToNameMapping[_age]= _name ;
}

function updatePerson(uint _age , string calldata _name)public {
    personList[_age].name = _name ;
}
function storeNumber(uint _index)public {
    myNumber = _index ;
}

function retrive()public view returns(uint256){
    return myNumber;
}

}


