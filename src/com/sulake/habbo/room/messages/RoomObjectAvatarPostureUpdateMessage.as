package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2193:String;
      
      private var var_876:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2193 = param1;
         var_876 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2193;
      }
      
      public function get parameter() : String
      {
         return var_876;
      }
   }
}
