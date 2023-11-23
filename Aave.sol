// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Aave
{
    constructor(){}
    // Extract investment amount
    // withdraw 13dai => 13000000000000000000
    // withdraw 150.56dai => 150560000000000000000
    /*
     * For example: Withdraw 130 DAI, since the unit of withdrawal is wei, 
     * it is necessary to add 18 zeros after the withdrawal amount.
    */
    function withdraw(uint amount) external {}
    // Extract investment amount 
    function withdrawInterestAndReward() external {}
    // Invest
    function deposit(uint amount) external {}
    // Reinvest
    function depositInterestAndReward() external{}
}
