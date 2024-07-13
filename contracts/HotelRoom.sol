// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract HotelRoom {

    enum Status{Vacant, Occupied}
    Status public currentStatus;

    // Declare the Event
    event Occupy(address _occupant, uint _value);

    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
        currentStatus = Status.Vacant;
    }

    // Check Status
    modifier onlyWhileVacant() {
        require(currentStatus == Status.Vacant, "Currently not Available!");
        _;
    }

    // Check Cost
    modifier cost(uint256 _amount){
        require(msg.value >= _amount, "Not enough Ether Provided.");
        _;
    }

    function book() public payable onlyWhileVacant cost(2 ether){
        currentStatus = Status.Occupied;

        //owner.transfer(msg.value);
        
        (bool sent,) = owner.call{value:msg.value}("");
        require(sent, "The transaction failed.");

        // Call the Event
        emit Occupy(msg.sender, msg.value);
    }
    
}