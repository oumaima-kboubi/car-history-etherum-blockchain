var CarHistory = artifacts.require("./carhistory.sol");

module.exports = function(deployer) {
  deployer.deploy(CarHistory);
};
