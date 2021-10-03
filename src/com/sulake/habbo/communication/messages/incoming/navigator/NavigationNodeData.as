package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1275:int;
      
      private var var_1628:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1275 = param1;
         var_1628 = param2;
         Logger.log("READ NODE: " + var_1275 + ", " + var_1628);
      }
      
      public function get nodeName() : String
      {
         return var_1628;
      }
      
      public function get nodeId() : int
      {
         return var_1275;
      }
   }
}
