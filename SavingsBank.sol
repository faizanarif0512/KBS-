pragma solidity ^0.8.20;

contract SavingsBank {
    address public owner;

    // Set the deployer as the owner
    constructor() {
        owner = msg.sender;
    }

    // Allow anyone to deposit ETH into the contract
    function deposit() external payable {
        require(msg.value > 0, "Deposit amount must be greater than zero");
    }

    // Return total ETH balance stored in the contract
    function getBalance() external view returns (uint) {
        return address(this).balance;
    }

    // Allow only owner to withdraw a specific amount
    function withdraw(uint _amount) external {
        require(msg.sender == owner, "Only owner can withdraw");
        require(_amount <= address(this).balance, "Insufficient contract balance");

        payable(owner).transfer(_amount);
    }
}

