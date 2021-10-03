package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1698:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1664:String = "ROE_MOUSE_ENTER";
      
      public static const const_418:String = "ROE_MOUSE_MOVE";
      
      public static const const_1548:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_246:String = "ROE_MOUSE_CLICK";
      
      public static const const_486:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1873:Boolean;
      
      private var var_1878:Boolean;
      
      private var var_1874:Boolean;
      
      private var var_1869:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1874 = param4;
         var_1869 = param5;
         var_1873 = param6;
         var_1878 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1878;
      }
      
      public function get altKey() : Boolean
      {
         return var_1874;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1869;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1873;
      }
   }
}
