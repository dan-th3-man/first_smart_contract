// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {SimpleStorage} from "./SimpleStorage.sol"; // named imports

contract StorageFactory{
    //type visibility name
    SimpleStorage[] public listOfSimpleStorageContracts; //solidity is case sensitive
    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        // ABI - Application Binary Interface#
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    } 
}