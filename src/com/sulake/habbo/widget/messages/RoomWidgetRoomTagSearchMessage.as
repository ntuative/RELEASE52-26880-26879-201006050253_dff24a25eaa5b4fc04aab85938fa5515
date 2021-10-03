package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_627:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1684:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_627);
         var_1684 = param1;
      }
      
      public function get tag() : String
      {
         return var_1684;
      }
   }
}
