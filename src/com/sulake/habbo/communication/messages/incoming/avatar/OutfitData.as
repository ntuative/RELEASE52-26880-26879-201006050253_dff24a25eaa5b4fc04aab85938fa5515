package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1923:String;
      
      private var var_642:String;
      
      private var var_1650:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1650 = param1.readInteger();
         var_1923 = param1.readString();
         var_642 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_642;
      }
      
      public function get figureString() : String
      {
         return var_1923;
      }
      
      public function get slotId() : int
      {
         return var_1650;
      }
   }
}
