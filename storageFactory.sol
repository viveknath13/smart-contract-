// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import  {Simplestorge} from "contracts/SimpleStorage.sol";

contract storageFactory{

   Simplestorge[]public storages ;

// The "deploy" function creates a new instance of "SimpleStorage" contract and pushes it into the "storages" array.
//  This is effectively creating a new "SimpleStorage" contract with its own storage space.
   function deploy()public {
    Simplestorge newstorage = new Simplestorge();
    storages.push(newstorage);
   }

// The "callContract" function allows you to interact with another "SimpleStorage" contract by its index in the "storages" array. 
// It takes two parameters - the index of the contract in the array (_simpleStorage) and a new number to store (_NewSimpleStorage).
//  It gets the "SimpleStorage" contract at this index (_simpleStorage), then calls the "storeNumber" function of this contract to store a new number. 



   function callContract(uint256 _simpleStorage,uint256 _NewSimpleStorage)public {
    // to intract with contract we need two things 
    // 1 . address
    // 2.  ABI - application Binary interface

        Simplestorge mySimpleStorage = storages[_simpleStorage];
        mySimpleStorage.storeNumber(_NewSimpleStorage);

   }
   
//  The "getContract" function allows you to retrieve a number stored in a "SimpleStorage" contract by its index in the "storages" array (_index).
//  It gets the "SimpleStorage" contract at this index (_index), then calls the "retrive" function of this contract to get the current number stored in it

   function getContract(uint256 _index)public view  returns (uint256){
    return storages[_index].retrive();
   }

}

