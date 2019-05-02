pragma solidity ^0.5.2;

/*
LittleBook
 -- Expenses Keeper
----------
2 May 2019
iDler
*/

contract Ownable
{
	address public owner = msg.sender;

	modifier onlyOwner()
	{
		require(msg.sender == owner);
		_;
	}

	function transferOwnership(address newOwner) public onlyOwner
	{
		if(newOwner != address(0))
		{
			owner = newOwner;
		}
	}
}