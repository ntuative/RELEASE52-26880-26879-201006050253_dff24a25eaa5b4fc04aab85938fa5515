package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1040:Boolean;
      
      private var var_1355:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1040 = param1.readInteger() > 0;
         var_1355 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1040;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1355;
      }
      
      public function flush() : Boolean
      {
         var_1040 = false;
         var_1355 = false;
         return true;
      }
   }
}
