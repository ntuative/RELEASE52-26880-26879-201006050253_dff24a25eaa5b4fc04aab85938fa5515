package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1699:int = 2;
      
      public static const const_1318:int = 4;
      
      public static const const_1210:int = 1;
      
      public static const const_1407:int = 3;
       
      
      private var var_1051:int = 0;
      
      private var var_876:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1051;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1051 = param1.readInteger();
         if(var_1051 == 3)
         {
            var_876 = param1.readString();
         }
         else
         {
            var_876 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1051 = 0;
         var_876 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_876;
      }
   }
}
