pragma solidity ^0.4.17;

contract SolidityDemo {
   constructor() public{
   }
   
   /**
    * local variables with arithmetic add , only cost little operation gas.
    */
   function operation() public view returns(uint){
      uint a = 1; 
      uint b = 2;
      uint result = a + b; //arithmetic operation
      return result; 
   }
   
   function conditionStatement() public view returns(uint){
      uint a = 1; 
      uint b = 2;
      uint c = 3;
      uint result;
      
      if( a > b && a > c) {   // if else statement
         result = a;
      } else if( b > a && b > c ){
         result = b;
      } else {
         result = c;
      }
      return result;
   }
   
   /**
    *  for loop example
    */
   function loopStatement(uint _i) public view returns(uint){
      if (_i == 0) {
         return 0;
      }
      uint j=0;
      uint len;
      for (j = _i; j != 0; j /= 10) {  
         len++;         
      }
      return len;
   }
   
   /**
    * string is a special byte array in solidity
    * there is not a api for this converting
    * bytes is used for that
    */
   function intToString(uint _i) public view returns(string){
      if (_i == 0) {
         return "0";
      }
      uint j = _i;
      uint len;
      
      while (j != 0) {
         len++;
         j /= 10;
      }
      bytes memory bstr = new bytes(len);
      uint k = len - 1;
      
      while (_i != 0) {
         bstr[k--] = byte(uint8(48 + _i % 10));
         _i /= 10;
      }
      return string(bstr);
   }
   
   /**
    * array can be declare with length or not
    * declaring without length is so called dynamic array
    * "pure" denote this method won't change chain any more.
    */
   function array() public pure{
      uint len = 7; 
      
      //dynamic array
      uint[] memory a = new uint[](7);
      
      //bytes is same as byte[]
      bytes memory b = new bytes(len);
      
      assert(a.length == 7);
      assert(b.length == len);
      
      //access array variable
      a[6] = 8;
      
      //test array variable
      assert(a[6] == 8);
      
      //static array
      uint[3] memory c = [uint(1) , 2, 3];
      assert(c.length == 3);
   }
}
