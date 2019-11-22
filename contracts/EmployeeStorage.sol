pragma solidity ^0.4.23;


import "./InterfaceEmployeeStorage.sol";
import "./Ownable.sol";


contract EmployeeStorage is InterfaceEmployeeStorage, Ownable {


    /*
     *  Storage
     */
    struct Employee {
        string name;
        bool exists;
        uint256 id;
        address accountAddress;
        string passport_number;
    }

    uint256 nextEmployeeId = 1;
    uint256 employeeCount = 0;

    mapping (uint256 => Employee) employessById;
    mapping (address => uint256) employessByAddress;

    /*
     *  Modifiers
     */
    modifier existingEmployeeAddress(address _address) {
        require(getEmployee(_address).exists);
        _;
    }

    modifier existingEmployeeId(uint256 _id) {
        require(employessById[_id].exists);
        _;
    }

    modifier notExistingEmployeeAddress(address _address) {
        require(!getEmployee(_address).exists);
        _;
    }

    /*
     * Public functions
     */


     // Everyone with a single adress in the blockchain should be able to own only 1 adress in the blockchain
     // You also do not want someone else creating an adress for your adress
    function addEmployee(string name, string passport_number)
        public

        notExistingEmployeeAddress(msg.sender)
    {
        employessById[nextEmployeeId].exists = true;
        employessById[nextEmployeeId].id = nextEmployeeId;
        employessById[nextEmployeeId].name = name;
        employessById[nextEmployeeId].accountAddress = msg.sender;
        employessById[nextEmployeeId].passport_number = passport_number;
        employessByAddress[msg.sender] = nextEmployeeId;
        employeeCount++;
        nextEmployeeId++;
    }





    // Returns employee count from all of history
    function getCount()
        public
        view
        returns (uint256)
    {
        return employeeCount;
    }

    /// @dev gets the employee ID.
    /// @param _address Address of existing employee.
    /// @return Returns employee ID.
    function getId(address _address)
        public
        existingEmployeeAddress(_address)
        view
        returns (uint256)
    {
        return getEmployee(_address).id;
    }

    /// @dev gets the total employee address from ID.
    /// @param _id ID of existing employee.
    /// @return Returns employee address.
    function getAddress(uint256 _id)
        public
        existingEmployeeId(_id)
        view
        returns (address)
    {
        return employessById[_id].accountAddress;
    }


    //get passport_number
   function get_passport_number(uint256 _id)
        public
        existingEmployeeId(_id)
        view
        returns (string)
    {
        return employessById[_id].passport_number;
    }




    /// @dev removes and employee.
    /// @param _address Address of existing employee.
    function remove(address _address)
        public
        onlyOwner
        existingEmployeeAddress(_address)
    {
        Employee storage employee = getEmployee(_address);

        delete employee.exists;
        delete employee.id;
        delete employee.accountAddress;
        delete employee.passport_number;
        employeeCount--; //number of active employees
    }

    /*
    * Internal functions
    */
    //get employee function
    function getEmployee(address _address)
        internal
        view
        returns (Employee storage employee)
    {
        uint256 employeeId = employessByAddress[_address];
        return employessById[employeeId];
    }

}
