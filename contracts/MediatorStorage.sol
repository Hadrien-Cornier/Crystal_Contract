pragma solidity ^0.4.23;


import "./InterfaceMediatorStorage.sol";
import "./Ownable.sol";


contract MediatorStorage is InterfaceMediatorStorage, Ownable {


    /*
     *  Storage
     */
    struct Mediator {
        string name;
        bool exists;
        uint256 id;
        address accountAddress;
    }

    uint256 nextMediatorId = 1;
    uint256 MediatorCount = 0;

    mapping (uint256 => Mediator) companiesById;
    mapping (address => uint256) companiesByAddress;

    /*
     *  Modifiers
     */
    modifier existingMediatorAddress(address _address) {
        require(getMediator(_address).exists);
        _;
    }

    modifier existingMediatorId(uint256 _id) {
        require(companiesById[_id].exists);
        _;
    }

    modifier notExistingMediatorAddress(address _address) {
        require(!getMediator(_address).exists);
        _;
    }

    /*
     * Public functions
     */


     // Everyone with a single adress in the blockchain should be able to own only 1 adress in the blockchain
     // You also do not want someone else creating an adress for your adress
    function addMediator(string name)
        public

        notExistingMediatorAddress(msg.sender)
    {
        companiesById[nextMediatorId].exists = true;
        companiesById[nextMediatorId].id = nextMediatorId;
        companiesById[nextMediatorId].name = name;
        companiesById[nextMediatorId].accountAddress = msg.sender;
        companiesByAddress[msg.sender] = nextMediatorId;
        MediatorCount++;
        nextMediatorId++;
    }





    // Returns Mediator count from all of history
    function getCount()
        public
        view
        returns (uint256)
    {
        return MediatorCount;
    }

    /// @dev gets the Mediator ID.
    /// @param _address Address of existing Mediator.
    /// @return Returns Mediator ID.
    function getId(address _address)
        public
        existingMediatorAddress(_address)
        view
        returns (uint256)
    {
        return getMediator(_address).id;
    }

    /// @dev gets the total Mediator address from ID.
    /// @param _id ID of existing Mediator.
    /// @return Returns Mediator address.
    function getAddress(uint256 _id)
        public
        existingMediatorId(_id)
        view
        returns (address)
    {
        return companiesById[_id].accountAddress;
    }




    /// @dev removes and Mediator.
    /// @param _address Address of existing Mediator.
    function remove(address _address)
        public
        onlyOwner
        existingMediatorAddress(_address)
    {
        Mediator memory mediator = getMediator(_address);

        delete mediator.exists;
        delete mediator.id;
        delete mediator.accountAddress;
        MediatorCount--; //number of active Mediators
    }

    /*
    * Internal functions
    */
    //get Mediator function
    function getMediator(address _address)
        internal
        view
        returns (Mediator)
    {
        uint256 MediatorId = companiesByAddress[_address];
        return companiesById[MediatorId];
    }

}
