pragma solidity 0.5.12;
//IMPORTANT NOTE, COMPATIBILITY : 1) In solidity 0.5 we can now do
//var candidat= app.candidates(1)
//without using  a javascript promise
//see 42:00 in the video (which is a tutorial for 0.4)
//also, 2) we need to specifiy in function calls an argument
//"storage" or "memory" which means DISK or RAM
//also 3) we need to call constructor() public {} instead of Election() public {}


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
      //Problem : unlike whatever goes on outside a struct
      //where we automatically inherit a get function
      //inside a struct there is no such thing,
      //therefore in the truffle console we will
      //not be able to access a candidate's id by writing candiateobject.id
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

//NOTE :
//in solidity

}
