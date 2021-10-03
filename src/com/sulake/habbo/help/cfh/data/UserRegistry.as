package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1131:int = 80;
       
      
      private var var_520:Map;
      
      private var var_761:String = "";
      
      private var var_1328:Array;
      
      public function UserRegistry()
      {
         var_520 = new Map();
         var_1328 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_520.getValue(var_1328.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_761;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_520.getValue(param1) != null)
         {
            var_520.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_761);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_761 == "")
         {
            var_1328.push(param1);
         }
         var_520.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_520;
      }
      
      public function unregisterRoom() : void
      {
         var_761 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_520.length > const_1131)
         {
            _loc1_ = var_520.getKey(0);
            var_520.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_761 = param1;
         if(var_761 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
