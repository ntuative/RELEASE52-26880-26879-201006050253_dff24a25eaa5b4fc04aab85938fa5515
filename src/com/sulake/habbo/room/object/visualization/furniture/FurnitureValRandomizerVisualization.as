package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1149:int = 31;
      
      private static const const_1150:int = 32;
      
      private static const const_525:int = 30;
      
      private static const const_821:int = 20;
      
      private static const const_526:int = 10;
       
      
      private var var_600:Boolean = false;
      
      private var var_240:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_240 = new Array();
         super();
         super.setAnimation(const_525);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_526)
         {
            if(var_600)
            {
               var_600 = false;
               var_240 = new Array();
               if(_direction == 2)
               {
                  var_240.push(const_821 + 5 - param1);
                  var_240.push(const_526 + 5 - param1);
               }
               else
               {
                  var_240.push(const_821 + param1);
                  var_240.push(const_526 + param1);
               }
               var_240.push(const_525);
               return;
            }
            super.setAnimation(const_525);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
