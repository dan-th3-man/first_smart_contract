// SPDX-License-Identifier: MIT
pragma solidity 0.8.26; // stating our version

contract SimpleStorage {
    //Basic Types: boolean, uint, int, address, bytes

    uint256 myFavoriteNumber = 88; //initialises to 0

    // uint256[] listOfFavoriteNumbers; 
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

   // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
   Person[] public listOfPeople; // []

   mapping(string => uint256) public nameToFavoriteNumber;

    // Other types
    // bool hasFavouriteNumber = true;
    // string favouriteNumberInText = "88";
    // int256 favouriteInt = -88;
    // address myAddress = 0x73fFCbe0494073812ee45b0D2809D28e66F4ad62;
    // bytes32 favoriteBytes32 = "cat";

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    // the word view means that you are just retrieving state from the blockchain, no tx, no gas
    // pure doesnt even read from state
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
       listOfPeople.push(Person(_favoriteNumber, _name));
       nameToFavoriteNumber[_name] = _favoriteNumber;
    } 
}