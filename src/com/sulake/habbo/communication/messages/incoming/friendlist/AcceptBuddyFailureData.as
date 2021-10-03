package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_1178:int;
      
      private var var_774:String;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_774 = param1.readString();
         this.var_1178 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_774;
      }
      
      public function get errorCode() : int
      {
         return this.var_1178;
      }
   }
}
