package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1887:Number;
      
      private var var_594:Number = 0;
      
      private var var_1888:Number;
      
      private var var_595:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1887 = param1;
         var_1888 = param2;
      }
      
      public function update() : void
      {
         var_595 += var_1888;
         var_594 += var_595;
         if(var_594 > 0)
         {
            var_594 = 0;
            var_595 = var_1887 * -1 * var_595;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_595 = param1;
         var_594 = 0;
      }
      
      public function get location() : Number
      {
         return var_594;
      }
   }
}
