package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetChatUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_124:int = 1;
      
      public static const const_273:int = 4;
      
      public static const const_277:int = 3;
      
      public static const const_123:int = 0;
      
      public static const const_540:String = "RWCUE_EVENT_CHAT";
      
      public static const const_113:int = 2;
       
      
      private var var_2238:int;
      
      private var var_211:String = "";
      
      private var var_2239:BitmapData;
      
      private var _userName:String;
      
      private var var_1371:int = 0;
      
      private var var_2236:uint;
      
      private var _userId:int = 0;
      
      private var _roomCategory:int;
      
      private var var_2240:Number;
      
      private var var_2237:Number;
      
      private var _roomId:int;
      
      public function RoomWidgetChatUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:int, param6:Number, param7:Number, param8:BitmapData, param9:uint, param10:int, param11:int, param12:int = 0, param13:Boolean = false, param14:Boolean = false)
      {
         super(param1,param13,param14);
         _userId = param2;
         var_211 = param3;
         var_1371 = param12;
         _userName = param4;
         var_2238 = param5;
         var_2240 = param6;
         var_2237 = param7;
         var_2239 = param8;
         var_2236 = param9;
         _roomId = param10;
         _roomCategory = param11;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get userImage() : BitmapData
      {
         return var_2239;
      }
      
      public function get text() : String
      {
         return var_211;
      }
      
      public function get userX() : Number
      {
         return var_2240;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function get userCategory() : int
      {
         return var_2238;
      }
      
      public function get chatType() : int
      {
         return var_1371;
      }
      
      public function get userColor() : uint
      {
         return var_2236;
      }
      
      public function get userY() : Number
      {
         return var_2237;
      }
   }
}
