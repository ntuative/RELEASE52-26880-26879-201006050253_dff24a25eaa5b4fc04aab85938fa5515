package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1749:int;
      
      private var var_1748:Boolean;
      
      private var _offerId:int;
      
      private var var_1747:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1748 = param1.readBoolean();
         var_1749 = param1.readInteger();
         var_1747 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1747;
      }
      
      public function get monthsRequired() : int
      {
         return var_1749;
      }
      
      public function get isVip() : Boolean
      {
         return var_1748;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
