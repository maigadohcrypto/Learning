// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract IfElse {
    
    function exmp(uint256 _x) public pure returns (string memory) {
        if( _x <10) {
        return "Less than 10 ";
       } else if(_x == 10) {
        return "Equal to 10";
       } else if(_x > 10 && _x <= 20) {
        return "Greater than 10";
       }
        else {
        return "too big number";
       }
    }

    function exmp_2(uint256 _y) public pure returns (string memory) {
        //Ternary version of the above if else

        return _y < 10 ? "Less than 10" : _y == 10 ? "Equal to 10" : _y > 10 && _y <= 20 ? "Greater than 10" : "Too big number";
    }
}