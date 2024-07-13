// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Counter {
    // uint count; //-1,0,1,...

    uint public count = 0;


    function incrementCount() public{
        count++;
    }

    
}


