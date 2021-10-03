package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_725:int = -1;
      
      public static const const_937:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2250:int = -1;
      
      private var var_87:int = 0;
      
      private var var_1384:int = 1;
      
      private var var_934:int = 1;
      
      private var var_2249:Boolean = false;
      
      private var var_2248:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_87 = param2;
         _y = param3;
         var_2249 = param5;
         if(param4 < 0)
         {
            param4 = const_725;
         }
         var_934 = param4;
         var_1384 = param4;
         if(param6 >= 0)
         {
            var_2250 = param6;
            var_2248 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_934 > 0 && param1 > var_934)
         {
            param1 = var_934;
         }
         var_1384 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_934;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2248;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_934 < 0)
         {
            return const_725;
         }
         return var_1384;
      }
      
      public function get activeSequence() : int
      {
         return var_2250;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2249;
      }
      
      public function get x() : int
      {
         return var_87;
      }
   }
}
