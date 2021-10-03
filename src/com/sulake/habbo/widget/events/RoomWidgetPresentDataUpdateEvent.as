package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_452:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_437:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_82:String = "RWPDUE_CONTENTS";
      
      public static const const_423:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_444:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_67:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_211:String;
      
      private var var_1984:BitmapData;
      
      private var var_165:int = -1;
      
      private var var_29:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_165 = param2;
         var_211 = param3;
         var_29 = param4;
         var_1984 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1984;
      }
      
      public function get text() : String
      {
         return var_211;
      }
      
      public function get objectId() : int
      {
         return var_165;
      }
      
      public function get controller() : Boolean
      {
         return var_29;
      }
   }
}
