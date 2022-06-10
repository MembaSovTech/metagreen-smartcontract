// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */

contract startTrade  {

    uint256 public projects = 0;
    mapping(uint => Details) public details;

    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "you are not the owner of this smart contract");
        _;
    }

    constructor() public {
        owner = msg.sender;
    }

    struct Details {
    uint price; 
    string location; 
    string practioner; 
    uint size; 
    }

    function addProject(uint price, string memory location, string memory practioner, uint size  ) public onlyOwner {
        projects += 1;
        details[projects] = Details(projects, price, location, practioner, size);
 
    }


 }