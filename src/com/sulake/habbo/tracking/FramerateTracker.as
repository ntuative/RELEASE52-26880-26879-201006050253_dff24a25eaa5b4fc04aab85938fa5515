package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_668:int;
      
      private var var_1282:int;
      
      private var var_373:uint;
      
      private var var_2039:Boolean;
      
      private var var_2038:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         var_2038 = int(param1.getKey("tracking.framerate.reportInterval.seconds","60")) * 1000;
         var_2039 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++var_668;
         var _loc3_:int = getTimer();
         if(var_668 == 1)
         {
            var_373 = param1;
            var_1282 = _loc3_;
         }
         else
         {
            _loc4_ = Number(var_668);
            var_373 = var_373 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(var_2039 && _loc3_ - var_1282 >= var_2038)
         {
            _loc5_ = 1000 / var_373;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            var_1282 = _loc3_;
            var_668 = 0;
         }
      }
      
      function dispose() : void
      {
      }
   }
}
