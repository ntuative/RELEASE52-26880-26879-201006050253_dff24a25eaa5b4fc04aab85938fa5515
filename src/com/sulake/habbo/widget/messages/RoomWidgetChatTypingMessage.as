package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_712:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_523:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_712);
         var_523 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_523;
      }
   }
}
