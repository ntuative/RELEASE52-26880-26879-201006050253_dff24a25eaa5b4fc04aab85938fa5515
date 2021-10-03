package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2020:String;
      
      private var var_451:String;
      
      private var var_642:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_451 = param1;
         var_642 = param2;
         var_2020 = param3;
      }
      
      public function get race() : String
      {
         return var_2020;
      }
      
      public function get figure() : String
      {
         return var_451;
      }
      
      public function get gender() : String
      {
         return var_642;
      }
   }
}
