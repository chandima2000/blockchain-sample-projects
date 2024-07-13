// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;


// This contract demonstrates how to use mappings to store and manage different types of data in Solidity.
contract Mappings {
    mapping(uint256 => string) public names;
    mapping(uint256 => Book) public books;
    mapping(address => mapping(uint256 => Book)) public myBooks;

     struct Book {
        string title;
        string author;
    }

     constructor() {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    // This function allows anyone to add a Book to the books mapping.

    // It creates a new Book struct with the given title and author 
    // and associates it with the given ID in the books mapping.

    function addBook(
        uint _id, //Local Variable
        string memory _title,  //Local Variable
        string memory _author  //Local Variable
        ) public {
            books[_id] = Book(_title, _author);
        }





    // This function allows anyone to add a Book to the myBooks mapping,
    // which is specific to their address (msg.sender).

    // It creates a new Book struct with the given title and author 
    // and associates it with the given ID under the caller's address in the myBooks mapping.
    function addMyBook(
        uint _id,
        string memory _title,
        string memory _author
    ) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

    //msg.sender = Global Variable
}