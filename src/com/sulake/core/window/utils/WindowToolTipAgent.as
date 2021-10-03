package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_333:Timer;
      
      protected var var_988:String;
      
      protected var var_989:uint;
      
      protected var var_1160:Point;
      
      protected var var_251:IToolTipWindow;
      
      protected var var_1159:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1160 = new Point();
         var_1159 = new Point(20,20);
         var_989 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_333 != null)
         {
            var_333.stop();
            var_333.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_333 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1160);
            if(var_251 != null && true)
            {
               var_251.x = param1 + var_1159.x;
               var_251.y = param2 + var_1159.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_333 != null)
         {
            var_333.reset();
         }
         if(_window && true)
         {
            if(var_251 == null || false)
            {
               var_251 = _window.context.create("undefined::ToolTip",var_988,WindowType.const_318,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_251.x = _loc2_.x + var_1160.x + var_1159.x;
            var_251.y = _loc2_.y + var_1160.y + var_1159.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_988 = IInteractiveWindow(param1).toolTipCaption;
               var_989 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_988 = param1.caption;
               var_989 = 500;
            }
            _mouse.x = var_122.mouseX;
            _mouse.y = var_122.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1160);
            if(var_988 != null && var_988 != "")
            {
               if(var_333 == null)
               {
                  var_333 = new Timer(var_989,1);
                  var_333.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_333.reset();
               var_333.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_251 != null && true)
         {
            var_251.destroy();
            var_251 = null;
         }
      }
   }
}
