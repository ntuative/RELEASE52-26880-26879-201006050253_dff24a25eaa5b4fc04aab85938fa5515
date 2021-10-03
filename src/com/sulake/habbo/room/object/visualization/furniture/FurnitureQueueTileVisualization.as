package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1105:int = 1;
      
      private static const const_1150:int = 3;
      
      private static const const_1103:int = 2;
      
      private static const const_1104:int = 15;
       
      
      private var var_859:int;
      
      private var var_240:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_240 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1103)
         {
            var_240 = new Array();
            var_240.push(const_1105);
            var_859 = const_1104;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_859 > 0)
         {
            --var_859;
         }
         if(var_859 == 0)
         {
            if(false)
            {
               super.setAnimation(var_240.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
