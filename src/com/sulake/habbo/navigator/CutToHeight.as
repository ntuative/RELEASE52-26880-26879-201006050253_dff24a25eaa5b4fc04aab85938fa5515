package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_184:String;
      
      private var var_432:int;
      
      private var var_211:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_184 = param1;
         var_211 = param2;
         var_432 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_211.text = var_184.substring(0,param1) + "...";
         return var_211.textHeight > var_432;
      }
   }
}
