package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1754:int;
      
      private var var_1752:Boolean;
      
      private var var_1942:int;
      
      private var var_1440:String;
      
      private var var_2048:Boolean = false;
      
      private var var_1755:int;
      
      private var var_458:int;
      
      private var var_1140:String;
      
      private var var_1650:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1309:int;
      
      private var var_1750:Boolean;
      
      private var var_2049:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1754 = param1;
         var_1140 = param2;
         _objId = param3;
         var_1309 = param4;
         var_1440 = param5;
         var_1752 = param6;
         var_1750 = param7;
         var_1755 = param8;
         var_1650 = param9;
         var_1942 = param10;
         var_458 = -1;
      }
      
      public function get songId() : int
      {
         return var_1942;
      }
      
      public function get iconCallbackId() : int
      {
         return var_458;
      }
      
      public function get expiryTime() : int
      {
         return var_1755;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2049 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2048 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_458 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1750;
      }
      
      public function get slotId() : String
      {
         return var_1650;
      }
      
      public function get classId() : int
      {
         return var_1309;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1752;
      }
      
      public function get stuffData() : String
      {
         return var_1440;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1754;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2048;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2049;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1140;
      }
   }
}
