package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_123:int = 0;
      
      public static const const_124:int = 1;
      
      public static const const_113:int = 2;
      
      public static const const_535:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1371:int = 0;
      
      private var var_1818:String = "";
      
      private var var_211:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_211 = param2;
         var_1371 = param3;
         var_1818 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1818;
      }
      
      public function get chatType() : int
      {
         return var_1371;
      }
      
      public function get text() : String
      {
         return var_211;
      }
   }
}
