package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_434:int;
      
      private var var_184:String;
      
      private var var_211:ITextWindow;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_184 = param1;
         var_211 = param2;
         var_434 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_211.text = var_184.substring(0,param1) + "...";
         return var_211.textWidth > var_434;
      }
   }
}
