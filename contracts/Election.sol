pragma solidity 0.5.12;
//in the truffle console,
//Election.deployed() is a javascript promise
//handles eventual result of an asynchonous operation
//*promise*.then(...) will execute ... when the promise finishes
//in then() we put a callback function
//then(function(instance){app = instance} ) puts the instance inside the app variable
contract Election {

    // Model a candidate
    //we create acustom type
    //we need to instanciate this and assign
    //it to a variable for it to be stored

    //How big numbers appear in javascript : (prevents overflow)
    //BN { negative: 0, words: [ 2, <1 empty item> ], length: 1, red: null }
    struct Candidate {
      uint id;
      string name;
      uint voteCount;
    }

    //store candidates

    //fetch candidates
    //this is a dictionnary / hash-map
    //problem : we don't know the size of this,
    //because it returns the empty candidate
    //as a default value for a new key
    //because this is public we have access to a nice
    //default public function to read this
    mapping(uint => Candidate) public candidates;
    //store candidates Count, useful for loops
    uint public candidatesCount;
    //add a candidate ?
    //_ because local variable
    //private because we don't want a random person using the contract
    //to be able to do this
    function  addCandidate(string memory _name) private{
      candidatesCount ++;
      candidates[candidatesCount]=Candidate(candidatesCount,_name,0);
    }
    // Constructor
    constructor() public {
        addCandidate('Candidate1');
        addCandidate('Candidate2');
    }



}
