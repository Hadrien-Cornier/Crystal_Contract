pragma solidity ^0.4.23;


import "./InterfaceEmployeeStorage.sol";
import "./Ownable.sol";

<<<<<<< Updated upstream

contract EmployeeStorage is InterfaceEmployeeStorage, Ownable {

=======
    
contract EmployeeStorage is InterfaceEmployeeStorage, Ownable {
    
>>>>>>> Stashed changes

    /*
     *  Storage
     */
    struct Employee {
        string name;
        bool exists;
        uint256 id;
        address accountAddress;
<<<<<<< Updated upstream
        string passport_number;
=======
>>>>>>> Stashed changes
    }

    uint256 nextEmployeeId = 1;
    uint256 employeeCount = 0;

<<<<<<< Updated upstream
    mapping (uint256 => Employee) employessById;
    mapping (address => uint256) employessByAddress;
=======
    mapping (uint256 => Employee) employeesById;
    mapping (address => uint256) employeesByAddress;
>>>>>>> Stashed changes

    /*
     *  Modifiers
     */
    modifier existingEmployeeAddress(address _address) {
        require(getEmployee(_address).exists);
        _;
    }

    modifier existingEmployeeId(uint256 _id) {
<<<<<<< Updated upstream
        require(employessById[_id].exists);
=======
        require(employeesById[_id].exists);
>>>>>>> Stashed changes
        _;
    }

    modifier notExistingEmployeeAddress(address _address) {
        require(!getEmployee(_address).exists);
        _;
    }

    /*
     * Public functions
     */
<<<<<<< Updated upstream


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
=======
     
     
     // Everyone with a single adress in the blockchain should be able to own only 1 adress in the blockchain
     // You also do not want someone else creating an adress for your adress
     
     
     
     
     
    function addEmployee(string name, address employeeAddress) 
        public
        
        notExistingEmployeeAddress(employeeAddress)
    {
        employeesById[nextEmployeeId].exists = true;
        employeesById[nextEmployeeId].id = nextEmployeeId;
        employeesById[nextEmployeeId].name = name;
        employeesById[nextEmployeeId].accountAddress = employeeAddress;
        employeesByAddress[employeeAddress] = nextEmployeeId;
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream

    /// @dev gets the employee ID.
    /// @param _address Address of existing employee.
    /// @return Returns employee ID.
=======
 
    /// @dev gets the employee ID.
    /// @param _address Address of existing employee.
    /// @return Returns employee ID.
    
    
     
     
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
    function getAddress(uint256 _id)
=======
    
     
     
    function getEmployeeAddress(uint256 _id)
>>>>>>> Stashed changes
        public
        existingEmployeeId(_id)
        view
        returns (address)
    {
<<<<<<< Updated upstream
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
=======
        return employeesById[_id].accountAddress;
    }




//     //get passport_number
//   function getPassportNumber(uint256 _id)
//         public
//         existingEmployeeId(_id)
//         view 
//         returns (string)
//     {
//         return employeesById[_id].passport_number;
//     }

    //get name
    function getName(uint256 _id)
        public
        existingEmployeeId(_id)
        view 
        returns (string)
    {
        return employeesById[_id].name;
    }
    
    function isEmployee(address _address) 
    public
    existingEmployeeAddress(_address)
    returns (bool) {
        return getEmployee(_address).exists;
    }

>>>>>>> Stashed changes




    /// @dev removes and employee.
    /// @param _address Address of existing employee.
<<<<<<< Updated upstream
=======
    
     
     
>>>>>>> Stashed changes
    function remove(address _address)
        public
        onlyOwner
        existingEmployeeAddress(_address)
    {
        Employee storage employee = getEmployee(_address);
<<<<<<< Updated upstream

        delete employee.exists;
        delete employee.id;
        delete employee.accountAddress;
        delete employee.passport_number;
=======
        
        delete employee.exists;
        delete employee.id;
        delete employee.name;
        delete employee.accountAddress;
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
        uint256 employeeId = employessByAddress[_address];
        return employessById[employeeId];
=======
        uint256 employeeId = employeesByAddress[_address];
        return employeesById[employeeId];
>>>>>>> Stashed changes
    }

}
