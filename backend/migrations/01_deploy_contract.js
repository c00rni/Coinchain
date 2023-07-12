var Contract = artifacts.require("Contract");

module.exports = function (deployer) {
    // deployment steps
    deployer.deploy(Contract);
};