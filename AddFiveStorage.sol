// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {SimpleStorage} from "./SimpleStorage.sol";

//Child contract inherits all functionality of SimpleStorage Contract
contract AddFiveStorage is SimpleStorage {
    //+5
    // overrides and virtual override
    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;
    }
}