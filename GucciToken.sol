// SPDX-License-Idntifier: UNLICENSED 

// Solidity Version not less than version 0.8.7. i.e version 0.8.7 and above

pragma solidity ^0.8.7;

// importing the codes from openzeppelin to be used in the smart contract 

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// creating the smart contract, which is known as Gucci Token 
contract GucciToken is ERC20 {

    // writing the constructor to pass the name and symbol of the token
    constructor (string memory _name, string memory _symbol) ERC20(_name, _symbol) {

        /* minting the token internally
        the msg.sender will hold the address initiating the transaction to the blockchain
        the code below will mint 1,000,000 supply of the token and decimal 18
        */
        _mint(msg.sender, 1000000 * 10 ** 18);

    }
}