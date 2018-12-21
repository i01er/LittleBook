pragma solidity ^0.5.2;

/*
LittleBook
 -- Expenses Keeper
----------
5 Aug 2018
iDler
*/

contract Ownable
{
	address public owner;

	function Ownable()
	{
		owner = msg.sender;
	}

	modifier onlyOwner()
	{
		require(msg.sender == owner);
		_;
	}

	function transferOwnership(address newOwner) onlyOwner
	{
		if(newOwner != address(0))
		{
			owner = newOwner;
		}
	}
}

contract AccessControl
{
	event ContractUpgrade(address newContract);

	address public ceoAddress;
	address public cfoAddress;
	address public cooAddress;

	bool public paused = false;
	bool public AppEnd = false;


}

contract LittleBook
{
	address public Owner;
	mapping(address => User) public Users;

	uint public Version;
	

	struct Expense
	{
		uint    UnitNum;
		string	UnitName;
		bytes32	UnitExpense;
	}

	bytes32 public TotalExpense;

	function StartApp()
	{
		Ownable();
		//owner = msg.sender;
		//AppEnd = 0;
	}

	function Authorize(address User)
	{
		require(msg.sender == Owner);
		//require(Players[Player] == null);
	}

	function CreateLittleBook()
	{
		require(AppEnd != true);
		require(msg.sender == User);

		BookName = msg.sender;
		Expense[] public BookName;
	}

	function AddExpense()
	{
		require(AppEnd != true);
		push
	}

	function DelExpense()
	{
		require(AppEnd != true);
		if(isEmpty(Expense) == 0)pull
	}

	function EndApp()
	{
		require(msg.sender == Owner);
		AppEnd = true;

	}
}
