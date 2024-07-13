// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract MyContract{
    // int256 public myInt = 1;
    // uint public myUint  = 1;
    // uint256 public myUint2256  = 1;
    // uint8 public myUint8  = 1;

    // string public myString = "Hello, world!";

    // bytes32 public myBytes32 = "Hello, world!";

    // address public myAddress = 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8;

    // struct MyStruct {
    //     uint256 myUint;
    //     string myString;
    // }

    // MyStruct public myStruct = MyStruct(1,"Hello");


    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["apple","mango"];
    string[] public value;

    uint256[][] public arra2d = [[1,2,3],[4,5,6]];

    function addValue(string memory _value) public {
        value.push(_value);

    }

    function getArrayLength() public view returns(uint){
        return value.length;
    }

    
}