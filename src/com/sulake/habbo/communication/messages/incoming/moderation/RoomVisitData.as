package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_761:String;
      
      private var var_2267:int;
      
      private var var_1497:Boolean;
      
      private var _roomId:int;
      
      private var var_2268:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1497 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_761 = param1.readString();
         var_2268 = param1.readInteger();
         var_2267 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1497;
      }
      
      public function get roomName() : String
      {
         return var_761;
      }
      
      public function get enterMinute() : int
      {
         return var_2267;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2268;
      }
   }
}
