pragma solidity >=0.4.10;

contract carhistory {

struct CarHistoryStruct {
  uint mileage;
  bytes32 part1;
  bytes32 part2;
  bytes32 part3;
  address sender;
}

mapping (bytes32 => CarHistoryStruct) public carHistoryStructs;

bytes32[] carRegNos;

function getCarRegNoArray() public view returns (bytes32[] memory) {
  return carRegNos;
}

function setCarHistoryLog (bytes32 carRegNo, uint mileage, bytes32 part1, bytes32 part2, bytes32 part3) public returns (bool success) {
  carHistoryStructs[carRegNo].mileage = mileage;
  carHistoryStructs[carRegNo].part1 = part1;
  carHistoryStructs[carRegNo].part2 = part2;
  carHistoryStructs[carRegNo].part3 = part3;
  carHistoryStructs[carRegNo].sender = msg.sender;
  carRegNos.push(carRegNo);
  return true;
}

function getCarHistoryLog(bytes32 carRegNo) public view returns (uint, bytes32, bytes32, bytes32, address) {
  return (carHistoryStructs[carRegNo].mileage, carHistoryStructs[carRegNo].part1,
    carHistoryStructs[carRegNo].part2, carHistoryStructs[carRegNo].part3, carHistoryStructs[carRegNo].sender);
}

}
