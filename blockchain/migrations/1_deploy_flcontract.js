const FLContract = artifacts.require("FLContract");

module.exports = function (deployer) {
  deployer.deploy(FLContract);
};
