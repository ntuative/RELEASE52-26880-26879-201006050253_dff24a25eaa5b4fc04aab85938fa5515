package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_266:uint = 1;
      
      public static const const_380:uint = 0;
      
      public static const const_959:uint = 8;
      
      public static const const_255:uint = 4;
      
      public static const const_488:uint = 2;
       
      
      private var var_411:uint;
      
      private var var_1904:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1905:uint;
      
      private var var_101:Rectangle;
      
      private var var_660:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_101 = param3;
         _color = param4;
         var_411 = param5;
         var_1904 = param6;
         var_1905 = param7;
         var_660 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1904;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_411;
      }
      
      public function get scaleV() : uint
      {
         return var_1905;
      }
      
      public function get tags() : Array
      {
         return var_660;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_101 = null;
         var_660 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_101;
      }
   }
}
