//artifact is specific to truffle
//it represents the smart contract
//"truffle migrate" will deploy the contract to the
//blockchain 
var Migrations = artifacts.require("./Migrations.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
