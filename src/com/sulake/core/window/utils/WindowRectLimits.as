package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_431:int = -2.147483648E9;
      
      private var var_434:int = 2.147483647E9;
      
      private var var_432:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      private var var_433:int = -2.147483648E9;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_434;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_433 == int.MIN_VALUE && var_434 == int.MAX_VALUE && var_431 == int.MIN_VALUE && var_432 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_434 = param1;
         if(var_434 < int.MAX_VALUE && true && _target.width > var_434)
         {
            _target.width = var_434;
         }
      }
      
      public function setEmpty() : void
      {
         var_433 = int.MIN_VALUE;
         var_434 = int.MAX_VALUE;
         var_431 = int.MIN_VALUE;
         var_432 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_432 = param1;
         if(var_432 < int.MAX_VALUE && true && _target.height > var_432)
         {
            _target.height = var_432;
         }
      }
      
      public function get minHeight() : int
      {
         return var_431;
      }
      
      public function get minWidth() : int
      {
         return var_433;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_433 = var_433;
         _loc2_.var_434 = var_434;
         _loc2_.var_431 = var_431;
         _loc2_.var_432 = var_432;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_433 = param1;
         if(var_433 > int.MIN_VALUE && true && _target.width < var_433)
         {
            _target.width = var_433;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_431 = param1;
         if(var_431 > int.MIN_VALUE && true && _target.height < var_431)
         {
            _target.height = var_431;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_432;
      }
   }
}
