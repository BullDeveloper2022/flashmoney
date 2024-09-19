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
    // withdraw 100USDT => 100000000
    
    /*
     * For example: Withdraw 100 USDT, since the unit of withdrawal is wei, 
     * it is necessary to add 6 zeros after the withdrawal amount.
     * USDT Contract address:0xc2132D05D31c914a87C6611C10748AEb04B58e8F
    */
    // WithdrawToken
    function withdrawToken(address token, uint256 amount) external {}
    // Extract investment amount 
    function withdrawInterestAndRewardToken(address token) external {}
    // DepoitToken
    function depoitToken(address token, uint256 amount) external {}
    // Reinvest
     function depositInterestAndReward(address token) external {}


}
