package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1710:String = "e";
      
      public static const const_1554:String = "i";
      
      public static const const_1547:String = "s";
       
      
      private var _id:int;
      
      private var var_1919:String;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_1921:int;
      
      private var var_1269:Array;
      
      private var var_1917:int;
      
      private var var_1920:int;
      
      private var var_1922:int;
      
      private var _name:String;
      
      private var var_1918:int;
      
      private var var_1175:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String, param12:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_1921 = param4;
         var_1918 = param5;
         var_1917 = param6;
         var_1920 = param7;
         var_1922 = param8;
         var_1269 = param9;
         _title = param10;
         var_1175 = param11;
         var_1919 = param12;
      }
      
      public function get tileSizeY() : int
      {
         return var_1920;
      }
      
      public function get tileSizeZ() : int
      {
         return var_1922;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get adUrl() : String
      {
         return var_1919;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_1918;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_1921;
      }
      
      public function get tileSizeX() : int
      {
         return var_1917;
      }
      
      public function get colours() : Array
      {
         return var_1269;
      }
      
      public function get description() : String
      {
         return var_1175;
      }
   }
}
