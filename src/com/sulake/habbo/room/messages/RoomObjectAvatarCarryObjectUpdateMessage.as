package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1140:int;
      
      private var var_1413:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1140 = param1;
         var_1413 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1140;
      }
      
      public function get itemName() : String
      {
         return var_1413;
      }
   }
}
