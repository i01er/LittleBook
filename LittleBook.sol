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
    mapping(address => Expense) public MyExpense;

	struct Expense
	{
		uint    UnitNum;
		string	UnitName;
		uint	UnitExpense;
		uint    TotalExpense;
	}

    uint _Num;
	
	function InitBook() public onlyOwner
	{
	    _Num = 0;
	}
	
	function AddExpense(string memory _Name, uint _Expense) public onlyOwner
	{
	    MyExpense[msg.sender].UnitNum       =   _Num;
	    MyExpense[msg.sender].UnitName      =   _Name;
	    MyExpense[msg.sender].UnitExpense   =   _Expense;
	    MyExpense[msg.sender].TotalExpense  =   MyExpense[msg.sender].TotalExpense + _Expense;
	    _Num++;
	}
	
	function CheckTotal() view public returns(uint)
	{
	    return MyExpense[msg.sender].TotalExpense;   
	}
}