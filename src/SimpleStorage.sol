////SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 public favnum;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public person;

    mapping(string => uint256) public peoplesFav;

    function store(uint256 _favnum) public virtual {
        favnum = _favnum;
    }

    function retrive() public view returns (uint256) {
        return favnum;
    }

    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        person.push(Person({favoriteNumber: _favoriteNumber, name: _name}));
        peoplesFav[_name] = _favoriteNumber;
    }
}
