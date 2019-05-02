pragma solidity ^0.5.2;

/*
LittleBook
 -- Expenses Keeper
----------
2 May 2019
iDler
*/

import {Ownable} from "./Ownable.sol";

contract LittleBook is Ownable
{
	address public Owner;
    mapping(address => Expense) public MyExpense;

	uint public Version;

	struct Expense
	{
		uint    UnitNum;
		string	UnitName;
		uint	UnitExpense;
	}

    uint _Num;
	uint public TotalExpense;
	
	function InitBook() public onlyOwner
	{
	    _Num = 0;
	    TotalExpense = 0;
	}
	
	function AddExpense(string memory _Name, uint _Expense) public onlyOwner
	{
	    MyExpense[msg.sender].UnitNum       =   _Num;
	    MyExpense[msg.sender].UnitName      =   _Name;
	    MyExpense[msg.sender].UnitExpense   =   _Expense;
	    _Num++;
	    TotalExpense = TotalExpense + _Expense;
	}
	
	function CheckExpense(uint Num) public onlyOwner
	{
	    
	}
}