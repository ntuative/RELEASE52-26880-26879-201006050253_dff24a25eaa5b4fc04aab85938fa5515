package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2226:Number = 0.0;
      
      private var var_1723:Number = 0.0;
      
      private var var_1724:Number = 0.0;
      
      private var var_2225:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1723 = param1;
         var_1724 = param2;
         var_2226 = param3;
         var_2225 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1723;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2226;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1724;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2225;
      }
   }
}
