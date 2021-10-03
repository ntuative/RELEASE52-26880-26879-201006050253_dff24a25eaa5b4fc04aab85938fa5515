package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CanCreateRoomMessageParser implements IMessageParser
   {
      
      public static const const_1559:int = 0;
      
      public static const const_1516:int = 1;
       
      
      private var var_2397:int;
      
      private var var_1284:int;
      
      public function CanCreateRoomMessageParser()
      {
         super();
      }
      
      public function get roomLimit() : int
      {
         return var_2397;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1284 = param1.readInteger();
         this.var_2397 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get resultCode() : int
      {
         return var_1284;
      }
   }
}
