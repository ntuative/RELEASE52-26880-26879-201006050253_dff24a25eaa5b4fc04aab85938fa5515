package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_585:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_679:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_257:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1463:Point;
      
      private var var_1462:Rectangle;
      
      private var var_151:Number = 0.0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0.0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1462 = param2;
         var_1463 = param3;
         var_151 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1462 != null)
         {
            return var_1462.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_151;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1463 != null)
         {
            return var_1463.clone();
         }
         return null;
      }
   }
}
