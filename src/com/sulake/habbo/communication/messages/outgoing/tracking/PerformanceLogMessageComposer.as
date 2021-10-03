package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1106:int = 0;
      
      private var var_1335:int = 0;
      
      private var var_2161:String = "";
      
      private var var_1107:int = 0;
      
      private var var_2159:String = "";
      
      private var var_2158:int = 0;
      
      private var var_1618:String = "";
      
      private var var_2160:int = 0;
      
      private var var_2156:int = 0;
      
      private var var_2157:String = "";
      
      private var var_2155:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2160 = param1;
         var_2157 = param2;
         var_1618 = param3;
         var_2161 = param4;
         var_2159 = param5;
         if(param6)
         {
            var_1335 = 1;
         }
         else
         {
            var_1335 = 0;
         }
         var_2158 = param7;
         var_2156 = param8;
         var_1107 = param9;
         var_2155 = param10;
         var_1106 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2160,var_2157,var_1618,var_2161,var_2159,var_1335,var_2158,var_2156,var_1107,var_2155,var_1106];
      }
      
      public function dispose() : void
      {
      }
   }
}
