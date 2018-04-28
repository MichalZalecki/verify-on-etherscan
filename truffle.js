// Learn more about deployment: https://michalzalecki.com/deploying-smart-contracts-with-truffle/

const GWEI = 1000000;

module.exports = {
  networks: {
    ganache: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*"
    },
    kovan: {
      host: "127.0.0.1",
      port: 8545,
      network_id: 42,
      gas: 4700000,
      gasPrice: 4 * GWEI,
    },
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200,
    },
  },
};
