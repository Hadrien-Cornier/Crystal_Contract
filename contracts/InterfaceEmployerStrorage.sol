pragma solidity ^0.4.23;

contract InterfaceEmployerStorage {

    function addCompany(address _address, string name) public;
    function getCompanyCount() public constant returns(uint256);
    function getComapnyId(address _address) public view returns (uint256);
    function getCompanyAddress(uint256 _id) public view returns(address);
    function removeCompany(address _address) public;
    function getcompanyName(uint256 _id) public returns(string);

}
