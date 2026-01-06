### Name- Muhammad Faizan Arif
### Roll No.- 25CE10077
### Email- muhammadfaizanarif@kgpian.iitkgp.ac.in
# TASK 1- KBS SELECTIONS

This ReadMe file contains the explanation of the Task 1, saving bank solidity code which i have commited in this repo.

# Personal Savings Bank Smart Contract
 
## Overview
This Solidity smart contract acts as a private digital vault where ETH can be deposited by anyone but withdrawn only by the contract owner.

## Ownership Logic
The contract owner is set during deployment using `msg.sender` in the constructor.
Only the owner can call the `withdraw()` function.
Ownership is immutable and cannot be changed after deployment.

## Functions
### deposit()
Allows any user to send ETH to the contract.

### getBalance()
Returns the total ETH balance stored in the contract.

### withdraw(uint amount)
Allows only the owner to withdraw a specified amount of ETH.
Includes a safety check to prevent withdrawing more than the contract balance.

The code was compiled using REMIX IDE and deployed using REMIX VM.

## Deplyment Screenshot

![Deployment ](https://github.com/user-attachments/assets/18cbbc8e-ceb5-4f39-97b3-39c3238ab623)

