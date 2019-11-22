pragma solidity ^0.4.23;

contract InterfaceMediatorStorage {

    function addMediator(address _address, string name) public;
    function getMediatorCount() public constant returns(uint256);
    function getComapnyId(address _address) public view returns (uint256);
    function getMediatorAddress(uint256 _id) public view returns(address);
    function removeMediator(address _address) public;
    function getMediatorName(uint256 _id) public returns(string);

}
