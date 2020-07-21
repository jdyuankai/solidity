pragma solidity ^0.5.0;

/**
* multi line comments.
*/
contract SolidityTest {
   uint public amount; // State variable
   address public manager; // address is a special data type of solidity
   
   constructor() public {
      manager = msg.sender;  // msg.sender is a gloabal variable
   }
   function getResult() public view returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint amount = a + b;
      return amount; //access the state variable
   }
}
