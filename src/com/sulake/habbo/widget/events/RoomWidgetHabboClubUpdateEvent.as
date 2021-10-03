package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_206:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2279:Boolean = false;
      
      private var var_2281:int = 0;
      
      private var var_2280:int = 0;
      
      private var var_2079:int;
      
      private var var_2282:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_206,param6,param7);
         var_2282 = param1;
         var_2280 = param2;
         var_2281 = param3;
         var_2279 = param4;
         var_2079 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_2079;
      }
      
      public function get pastPeriods() : int
      {
         return var_2281;
      }
      
      public function get periodsLeft() : int
      {
         return var_2280;
      }
      
      public function get daysLeft() : int
      {
         return var_2282;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2279;
      }
   }
}
