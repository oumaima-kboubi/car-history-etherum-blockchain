module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
     host: "localhost",
     port: 8545,
     network_id: "*", // Match any network id
     from: "0x627306090abab3a6e1400e9345bc60c78a8bef57",
     gas: 4612388
   }
 }
};
