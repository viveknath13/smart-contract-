// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract AllAboutArrys{

    uint256[10]arrys = [1,2,3,4,5,6,7];//compile time fixed arrays

    uint256[] public dynamicArr; //Dynamic arryas
    

    function setetElement(uint index, uint value)public {
        arrys[index] = value;
    }
     function getElements()public  view returns (uint256[10]memory){
        return arrys;
     }

function addArr(uint element)public {
    dynamicArr.push(element);
}

function retirveArr()public view returns(uint256[]memory){

return dynamicArr;
}

function checkLength()public view returns(uint256) {
  return  dynamicArr.length;
}




}