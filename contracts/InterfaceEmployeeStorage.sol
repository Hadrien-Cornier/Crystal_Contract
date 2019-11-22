pragma solidity ^0.4.23;

contract InterfaceEmployeeStorage {

    function addEmployee(address _address, string name, uint256 passport_number) public;
//    function setAddress(address _address, address _newAddress) public;
    function getCount() public view returns(uint256);
    function getId(address _address) public view returns (uint256);
    function getAddress(uint256 _id) public view returns(address);
    function getLatestContract(address _address) public view returns (uint256);
    function remove(address _address) public;
}
