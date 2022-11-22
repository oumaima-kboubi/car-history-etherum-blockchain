module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    development: {
     host: "localhost",
     port: 8545,
     network_id: "*", // Match any network id
     from: "0x1fa8447e4efefe60ec10244a8b65881de5cf7a52",
     gas: 4612388
   }
 }
};
