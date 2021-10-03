package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1391:int;
      
      private var var_1010:String;
      
      private var var_781:Array;
      
      private var var_1108:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_781.slice();
      }
      
      public function flush() : Boolean
      {
         var_1010 = "";
         var_1108 = [];
         var_781 = [];
         var_1391 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1391;
      }
      
      public function get question() : String
      {
         return var_1010;
      }
      
      public function get choices() : Array
      {
         return var_1108.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1010 = param1.readString();
         var_1108 = [];
         var_781 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1108.push(param1.readString());
            var_781.push(param1.readInteger());
            _loc3_++;
         }
         var_1391 = param1.readInteger();
         return true;
      }
   }
}
