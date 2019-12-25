pragma solidity ^0.4.23;

contract InterfaceEmployeeStorage {

<<<<<<< Updated upstream
    function addEmployee(address _address, string name, uint256 passport_number) public;
//    function setAddress(address _address, address _newAddress) public;
    function getCount() public view returns(uint256);
    function getId(address _address) public view returns (uint256);
    function getAddress(uint256 _id) public view returns(address);
    function getLatestContract(address _address) public view returns (uint256);
    function remove(address _address) public;
    function getpassport_number(uint256 _id) public returns(string);
//    function getEmployee(address _address) public returns() Hoe to return struct in interface
}

=======
    function addEmployee(string name, address employeeAddress) public;
    function getCount() public view returns(uint256);
    function getId(address _address) public view returns (uint256);
    function getEmployeeAddress(uint256 _id) public view returns(address);
    function remove(address _address) public;
    function getName(uint256 _id) public view returns (string);
    function isEmployee(address _address)  public returns (bool); 
>>>>>>> Stashed changes
}
