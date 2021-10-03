package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1673:int;
      
      private var var_995:int;
      
      private var var_1672:int;
      
      private var var_1445:int;
      
      private var var_116:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1445 = param1.readInteger();
         var_1672 = param1.readInteger();
         var_995 = param1.readInteger();
         var_1673 = param1.readInteger();
         var_116 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1445);
      }
      
      public function get chatRecordId() : int
      {
         return var_1673;
      }
      
      public function get reportedUserId() : int
      {
         return var_995;
      }
      
      public function get callerUserId() : int
      {
         return var_1672;
      }
      
      public function get callId() : int
      {
         return var_1445;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_116;
      }
   }
}
