// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPool {
    function supply(address asset, uint256 amount, address onBehalfOf, uint16 referralCode) external;
    function withdraw(address asset, uint256 amount, address to) external returns (uint256);
}

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

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
