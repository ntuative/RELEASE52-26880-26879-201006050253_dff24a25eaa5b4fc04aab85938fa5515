package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1878:Boolean = false;
      
      private var var_1874:Boolean = false;
      
      private var var_1870:String = "";
      
      private var _type:String = "";
      
      private var var_1873:Boolean = false;
      
      private var var_1872:Number = 0;
      
      private var var_1875:Number = 0;
      
      private var var_1877:Number = 0;
      
      private var var_1871:String = "";
      
      private var var_1876:Number = 0;
      
      private var var_1869:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1871 = param2;
         var_1870 = param3;
         var_1875 = param4;
         var_1877 = param5;
         var_1872 = param6;
         var_1876 = param7;
         var_1869 = param8;
         var_1874 = param9;
         var_1873 = param10;
         var_1878 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1869;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1878;
      }
      
      public function get localX() : Number
      {
         return var_1872;
      }
      
      public function get localY() : Number
      {
         return var_1876;
      }
      
      public function get canvasId() : String
      {
         return var_1871;
      }
      
      public function get altKey() : Boolean
      {
         return var_1874;
      }
      
      public function get spriteTag() : String
      {
         return var_1870;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1875;
      }
      
      public function get screenY() : Number
      {
         return var_1877;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1873;
      }
   }
}
