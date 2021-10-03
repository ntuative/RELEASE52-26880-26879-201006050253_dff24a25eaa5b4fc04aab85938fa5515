package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1049:PetData;
      
      private var var_1523:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1523 = param1.readBoolean();
         var_1049 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1523 + ", " + var_1049.id + ", " + var_1049.name + ", " + pet.figure + ", " + var_1049.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1523;
      }
      
      public function get pet() : PetData
      {
         return var_1049;
      }
   }
}
