// SPDX-License-Identifier: MIT

pragma solidity 0.8.2;

contract simplStorage {
    // A simple contract for storing numbers;
      
    // This is a state variable for storing values in the variable name called "num"
    uint num;  

    // The function "addNum" has an input parameter "_value""with the type uint
    // and stores the value passed at the state variable named "num"
    function addNum(uint _value) public {
        num = _value;
    }

    // This is a getter function for returning a uint(a number) value
    // stored in the "num" state variable
    function getNum() public view returns(uint) {
        return num;
    }

}
