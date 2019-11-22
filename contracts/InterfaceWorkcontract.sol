pragma solidity 0.4.23;

contract InterfaceWorkcontract {

    function() public payable;

    function createcontract(address empAdress, address compAdress, address mediator, uint256 _monthlySalary, uint256 contractDurationMonths, uint256 startDate) public;
    //Did the employer sign this or the employer??
    function signContract(uint256 contractID, string Status) public;

    function addEmployee(address _address, string name, uint256 passport_number, uint256 countrycode ) public;
    function setEmployee(uint256 _id, address _address) public;
    function getEmployeeCount() public constant returns(uint256);

    function addCompany(address _address, string name) public;
    function setCompany(uint256 _id, address _address) public;
    function getCompanyCount() public constant returns(uint256);

    function Mediator(address _address, string name) public;
    function setMediator(uint256 _id, address _address) public;
    function getMediatorCount() public constant returns(uint256);

    // Gives the total number of poeple this employer is employing
    function getCompanyhires(address _address) public constant returns(uint256);

    //Remove contract- - requires either msg.sender== comp adress or empadress
    function breakContract(uint256 _contractID) public;

    //Get contract count
    function countractCount() public constant returns(uint256);

}
