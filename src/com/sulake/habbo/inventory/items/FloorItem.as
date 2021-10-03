package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2344:Boolean;
      
      protected var var_1616:Number;
      
      protected var var_2343:Boolean;
      
      protected var _type:int;
      
      protected var var_2335:Boolean;
      
      protected var var_1942:int;
      
      protected var var_2342:Boolean;
      
      protected var var_1440:String;
      
      protected var var_2183:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1650:String;
      
      protected var var_2186:Boolean;
      
      protected var _category:int;
      
      protected var var_2189:int;
      
      protected var var_2341:int;
      
      protected var var_2184:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_2186 = param5;
         var_2342 = param6;
         var_2344 = param7;
         var_2343 = param8;
         var_1440 = param9;
         var_1616 = param10;
         var_2341 = param11;
         var_2184 = param12;
         var_2189 = param13;
         var_2183 = param14;
         var_1650 = param15;
         var_1942 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2335;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1616;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2335 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_1942;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2343;
      }
      
      public function get slotId() : String
      {
         return var_1650;
      }
      
      public function get expires() : int
      {
         return var_2341;
      }
      
      public function get creationYear() : int
      {
         return var_2183;
      }
      
      public function get creationDay() : int
      {
         return var_2184;
      }
      
      public function get stuffData() : String
      {
         return var_1440;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2342;
      }
      
      public function get groupable() : Boolean
      {
         return var_2186;
      }
      
      public function get creationMonth() : int
      {
         return var_2189;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2344;
      }
   }
}
