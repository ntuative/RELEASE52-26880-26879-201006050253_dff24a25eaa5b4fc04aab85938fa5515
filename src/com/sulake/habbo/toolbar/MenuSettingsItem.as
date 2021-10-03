package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2233:Array;
      
      private var var_2231:String;
      
      private var var_2234:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_2231 = param1;
         var_2233 = param2;
         var_2234 = param3;
      }
      
      public function get menuId() : String
      {
         return var_2231;
      }
      
      public function get yieldList() : Array
      {
         return var_2233;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_2234;
      }
   }
}
