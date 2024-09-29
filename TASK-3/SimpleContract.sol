// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    // Declare a mapping to store token balances
    mapping(address => uint256) public balances;

    // Mint event
    event Mint(address indexed to, uint256 amount);

    // Transfer event
    event Transfer(address indexed from, address indexed to, uint256 amount);

    // Function to mint tokens to a specific address
    function mint(address _to, uint256 _amount) public {
        require(_amount > 0, "Amount must be greater than 0");
        balances[_to] += _amount;
        emit Mint(_to, _amount);
    }

    // Function to transfer tokens to a specific address
    function transfer(address _to, uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        require(_to != address(0), "Invalid address");

        balances[msg.sender] -= _amount;
        balances[_to] += _amount;

        emit Transfer(msg.sender, _to, _amount);
    }

    // Function to check the balance of an address
    function balanceOf(address _account) public view returns (uint256) {
        return balances[_account];
    }
}
