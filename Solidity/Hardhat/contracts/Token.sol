// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Token{
    string public name="Adarsh Token";
    string public symbol="AT";
    uint public totalSupply = 10000;

    address public owner;
    mapping(address=>uint) balance;

    constructor(){
        owner = msg.sender;
        balance[owner] = totalSupply;
    }
    function transfer(uint _amount,address _to) external {
        require(_amount <= balance[msg.sender],"Not Enough Tokens");
        balance[msg.sender] -= _amount;
        balance[_to] += _amount;
    }
    function balanceOf(address _account) public view returns(uint){
        return balance[_account];
    }
}