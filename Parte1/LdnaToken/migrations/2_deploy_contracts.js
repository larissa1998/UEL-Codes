var LdnaToken = artifacts.require("LdnaToken");

module.exports = function(deployer) {
  // Deploy the UELToken contract as our only task
  deployer.deploy(LdnaToken);
};