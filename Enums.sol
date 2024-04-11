// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract MyEnums{
//Enums : whenever we assign the name to  integer, constant value known as Enums 
//The given name have their assign value 
enum App{
    online,         //0
    offline,        //1
    lastseen,       //2
    Active,         //3
    Logout          //4
  
}

App public  AboutApp; //creating a App enum data type   provide the AboutApp variable.

//return the enums value , default value is 0 at this function.
function get()public view returns (App){
    return  AboutApp;
}
//Update the App enums passing through the uint input which is _"CallEnums".
function setEnums(App _CallEnums)public {
   AboutApp = _CallEnums;
}
//Delete  reset the enum to it's first value 0
function deltEnums()public{
  delete AboutApp;
}
}
