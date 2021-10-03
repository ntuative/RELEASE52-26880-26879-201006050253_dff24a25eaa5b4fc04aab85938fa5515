package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2379:Boolean;
      
      private var var_1488:int;
      
      private var var_2380:String = "";
      
      private var var_71:ITextFieldWindow;
      
      private var var_2381:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1347:String = "";
      
      private var var_158:IWindowContainer;
      
      private var var_298:Boolean;
      
      private var var_1221:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_71 = param2;
         var_1488 = param3;
         var_1221 = param4;
         if(param5 != null)
         {
            var_298 = true;
            var_1347 = param5;
            var_71.text = param5;
         }
         Util.setProcDirectly(var_71,onInputClick);
         var_71.addEventListener(WindowKeyboardEvent.const_154,checkEnterPress);
         var_71.addEventListener(WindowEvent.const_139,checkMaxLen);
         this.var_2379 = var_71.textBackground;
         this._orgTextBackgroundColor = var_71.textBackgroundColor;
         this.var_2381 = var_71.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1221 != null)
            {
               var_1221();
            }
         }
      }
      
      public function goBackToInitialState() : void
      {
         clearErrors();
         if(var_1347 != null)
         {
            var_71.text = var_1347;
            var_298 = true;
         }
         else
         {
            var_71.text = "";
            var_298 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_71;
      }
      
      public function restoreBackground() : void
      {
         var_71.textBackground = this.var_2379;
         var_71.textBackgroundColor = this._orgTextBackgroundColor;
         var_71.textColor = this.var_2381;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_237)
         {
            return;
         }
         if(!var_298)
         {
            return;
         }
         var_71.text = var_2380;
         var_298 = false;
         this.restoreBackground();
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_158 != null)
         {
            var_158.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_71.textBackground = true;
         var_71.textBackgroundColor = 4294021019;
         var_71.textColor = 4278190080;
         if(this.var_158 == null)
         {
            this.var_158 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_158,"popup_arrow_down",true,null,0);
            IWindowContainer(var_71.parent).addChild(this.var_158);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_158.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_158.findChildByName("border").width = _loc2_.width + 15;
         var_158.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_71.getLocalPosition(_loc3_);
         this.var_158.x = _loc3_.x;
         this.var_158.y = _loc3_.y - this.var_158.height + 3;
         var _loc4_:IWindow = var_158.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_158.width / 2 - _loc4_.width / 2;
         var_158.x += (0 - 0) / 2;
         this.var_158.visible = true;
      }
      
      public function getText() : String
      {
         if(var_298)
         {
            return var_2380;
         }
         return var_71.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_298 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_298 = false;
         var_71.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         restoreBackground();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1488)
         {
            var_71.text = _loc2_.substring(0,var_1488);
         }
      }
   }
}
