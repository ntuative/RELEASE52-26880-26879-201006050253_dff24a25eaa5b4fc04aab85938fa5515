package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_451:String;
      
      private var var_1674:int;
      
      private var var_1894:String;
      
      private var var_1112:int;
      
      private var var_1292:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1292;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1292 = param1.readInteger();
         var_1894 = param1.readString();
         var_1674 = param1.readInteger();
         var_451 = param1.readString();
         var_1112 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1894;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_451;
      }
      
      public function get petType() : int
      {
         return var_1112;
      }
      
      public function get level() : int
      {
         return var_1674;
      }
   }
}
