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
contract Project {

    // Model a candidate
    //we create acustom type
    //we need to instanciate this and assign
    //it to a variable for it to be stored

    list public list_of_companies;
    list public list_of_employees;

    //How big numbers appear in javascript : (prevents overflow)
    //BN { negative: 0, words: [ 2, <1 empty item> ], length: 1, red: null }
    struct Employee {
      //Problem : unlike whatever goes on outside a struct
      //where we automatically inherit a get function
      //inside a struct there is no such thing,
      //therefore in the truffle console we will
      //not be able to access a candidate's id by writing candiateobject.id
      uint id;
      string name;


    }

    struct Company {
      //Problem : unlike whatever goes on outside a struct
      //where we automatically inherit a get function
      //inside a struct there is no such thing,
      //therefore in the truffle console we will
      //not be able to access a candidate's id by writing candiateobject.id
      uint id;
      string name;


    }

    struct Term {
      //how to represent a date in solidity ?
      date start_date;
      date end_date;
      //float in sol?
      //private ?
      uint private salary;
    }
    struct Contract {
          //Problem : unlike whatever goes on outside a struct
          //where we automatically inherit a get function
          //inside a struct there is no such thing,
          //therefore in the truffle console we will
          //not be able to access a candidate's id by writing candiateobject.id
          uint id;
          uint company_id;
          uint employee_id;
          Term terms;


        }

    //store candidates

    //fetch candidates
    //this is a dictionnary / hash-map
    //problem : we don't know the size of this,
    //because it returns the empty candidate
    //as a default value for a new key
    //because this is public we have access to a nice
    //default public function to read this
    //contractid to contracts
    mapping(uint => Contract) public contracts;
    //store candidates Count, useful for loops
    mapping(address => bool) public is_employed;
    //store accounts that have voted
    //address is its own type !
    //by default a bool is False
    //mapping(address => bool) public voters;

    uint public ContractCount;
    //add a candidate ?
    //_ because local variable
    //private because we don't want a random person using the contract
    //to be able to do this
    function  addCandidate(string memory _name) private{
      candidatesCount ++;
      candidates[candidatesCount]=Candidate(candidatesCount,_name,0);
    }

    //research permissions in solidity
    function addcontract(Employee E, Company C, Term T ) public {
            require(msg.sender==proprietary);
            ContractCount ++;
            Contract(,E.id, C.id);

    }

    // Constructor
    constructor() public {
        //should we put this ?\
        this.proprietary = msg.sender;
        this.ContractCount=0;
        ;
    }
    event votedEvent (
    //indexes candidateid that was passed
    uint indexed _candidateid
    );
    function vote(uint _candidateid) public {
      //adress has not voted before
      require(!voters[msg.sender]);
      //it is a valid candidate
      require(_candidateid > 0 && _candidateid <= candidatesCount);

      //record that the voter has voted
      //how ?
      //solidity allows us to use metadata to know WHO has called this function
      //the syntax is msg.sender
      voters[msg.sender] = true;

      //update votecount for the candidate
      candidates[_candidateid].voteCount ++;

      //trigger event
      emit votedEvent(_candidateid);
    }

//NOTE :
//in solidity

}
