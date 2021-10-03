package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_122:DisplayObject;
      
      private var var_2409:uint;
      
      private var var_951:IWindowToolTipAgentService;
      
      private var var_954:IWindowMouseScalingService;
      
      private var var_241:IWindowContext;
      
      private var var_955:IWindowFocusManagerService;
      
      private var var_952:IWindowMouseListenerService;
      
      private var var_953:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2409 = 0;
         var_122 = param2;
         var_241 = param1;
         var_953 = new WindowMouseDragger(param2);
         var_954 = new WindowMouseScaler(param2);
         var_952 = new WindowMouseListener(param2);
         var_955 = new FocusManager(param2);
         var_951 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_954;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_955;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_951;
      }
      
      public function dispose() : void
      {
         if(var_953 != null)
         {
            var_953.dispose();
            var_953 = null;
         }
         if(var_954 != null)
         {
            var_954.dispose();
            var_954 = null;
         }
         if(var_952 != null)
         {
            var_952.dispose();
            var_952 = null;
         }
         if(var_955 != null)
         {
            var_955.dispose();
            var_955 = null;
         }
         if(var_951 != null)
         {
            var_951.dispose();
            var_951 = null;
         }
         var_241 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_952;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_953;
      }
   }
}
