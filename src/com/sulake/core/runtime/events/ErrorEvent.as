package com.sulake.core.runtime.events
{
   public class ErrorEvent extends WarningEvent
   {
       
      
      protected var var_2352:Boolean;
      
      public function ErrorEvent(param1:String, param2:String, param3:Boolean)
      {
         var_2352 = param3;
         super(param1,param2);
      }
      
      public function get critical() : Boolean
      {
         return var_2352;
      }
   }
}
