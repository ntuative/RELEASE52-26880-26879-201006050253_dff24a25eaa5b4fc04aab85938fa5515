package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1022:Boolean;
      
      private var var_1021:Boolean;
      
      private var var_1023:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1022;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1021;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1023 = param1.readBoolean();
         var_1021 = param1.readBoolean();
         var_1022 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1023;
      }
      
      public function flush() : Boolean
      {
         var_1023 = false;
         var_1021 = false;
         var_1022 = false;
         return true;
      }
   }
}
