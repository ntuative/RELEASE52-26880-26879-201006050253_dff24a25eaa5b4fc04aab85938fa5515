package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1944:Date;
      
      private var var_1254:Boolean = false;
      
      private var _type:int;
      
      private var var_380:BitmapData;
      
      private var var_262:Boolean = false;
      
      private var var_1278:int;
      
      private var var_599:int = 1;
      
      private var var_1043:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_380;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_599;
         if(var_599 < 0)
         {
            var_599 = 0;
         }
         var_1043 = var_1278;
         var_262 = false;
         var_1254 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_1043 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_262;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_380 = param1;
      }
      
      public function get duration() : int
      {
         return var_1278;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1254;
      }
      
      public function get effectsInInventory() : int
      {
         return var_599;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_380;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_262)
         {
            var_1944 = new Date();
         }
         var_262 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_599 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_262)
         {
            _loc1_ = var_1043 - (new Date().valueOf() - var_1944.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_1043;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1254 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1278 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
