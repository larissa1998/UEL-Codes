var LdnaToken = artifacts.require("LdnaToken");

module.exports = function(deployer) {
  // Deploy the LdnaToken contract as our only task
  deployer.deploy(LdnaToken);
};