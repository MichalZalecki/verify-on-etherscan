const MessageOfTheDay = artifacts.require("./MessageOfTheDay.sol");

module.exports = function(deployer) {
  deployer.deploy(MessageOfTheDay);
};
