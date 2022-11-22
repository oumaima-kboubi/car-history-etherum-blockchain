# carhistory

This project is to play with Etherum smart contracts

This smart contract is to maintain car service history on blockchain so that service History And
odometer reading can not be tempered.
It can be a single version of truth about car service history maintained on Blockchain

How to SetUp
----------------------

1. git clone
2. install truffle npm install truffle -g
3. run npm install
4. truffle develop
  Copy the account address and update truffle.js and index.html to provide right account to access the smart contract
5. On the truffle command prompt
  a. compile
  b. migrate
  c. test
6. npm install http-server -g
7. run http-server
8. Access the index.html via http://localhost:8080/src

How to use
---------------------
1. Provide Car registration number and mileage along with other service details
2. After clicking Update history, car service history will be stored on blockchain
3. After providing car registration history and clicking on Get history, latest car odometer reading will be displyed.
