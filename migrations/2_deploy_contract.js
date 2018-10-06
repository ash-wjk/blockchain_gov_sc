
var Votings = artifacts.require('./Voting.sol');

module.exports = function(deployer) {
  deployer.deploy(Votings,['Rebuild the Town Hall', 'Community Centre Upgrade', 'Children Playground'], {gas: 6700000});
};