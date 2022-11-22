pragma solidity ^0.4.11;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/carhistory.sol";

contract TestCarHistory {
  carhistory ch = carhistory(DeployedAddresses.carhistory());

  // Testing the setCarHistoryLog() function
  function testSetCarHistoryLog() {
    bool returnedStatus = ch.setCarHistoryLog("LS06UKE",11000,"Oil","Filter","Brake");
    bool expectedStatus = true;
    Assert.equal(returnedStatus, expectedStatus, "CarHistory Log is set" );
    //ch.setCarHistoryLog("LS06UKE",21000,"Oil","Lights","Brake");
  }

  // Testing retrieval of car service history
function testGetCarHistoryLog() {
  uint expected = 11000;
  var (mileage, part1, part2, part3, sender) = ch.getCarHistoryLog("LS06UKE");
  Assert.equal(mileage, expected, "Car Mileage should be 11000");
  Assert.equal(part1, "Oil", "Service history says oil changed");
  Assert.equal(part2, "Filter", "Service history says filter changed");
  Assert.equal(part3, "Brake", "Service history says brakes changed");
}


}
