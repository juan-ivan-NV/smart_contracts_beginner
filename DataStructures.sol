pragma solidity 0.5.1;

/*contract MyContract{
    Person [] public people;

    uint256 public peopleCount;

    struct Person {
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public{
        people.push(Person(_firstName, _lastName));
        peopleCount += 1;
    }
}
*/
contract MyContract{
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public{
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}

/// data structure, adding and counting elements in a list