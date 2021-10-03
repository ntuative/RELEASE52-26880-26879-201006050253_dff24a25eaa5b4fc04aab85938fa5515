package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1149:int = 31;
      
      private static const const_1150:int = 32;
      
      private static const const_821:int = 10;
      
      private static const const_526:int = 20;
       
      
      private var var_600:Boolean = false;
      
      private var var_240:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_240 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!var_600)
            {
               var_600 = true;
               var_240 = new Array();
               var_240.push(const_1149);
               var_240.push(const_1150);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_821)
         {
            if(var_600)
            {
               var_600 = false;
               var_240 = new Array();
               var_240.push(const_821 + param1);
               var_240.push(const_526 + param1);
               var_240.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
