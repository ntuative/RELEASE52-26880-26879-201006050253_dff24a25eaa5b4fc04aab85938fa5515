package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1140:String;
      
      private var var_2190:int;
      
      private var var_2187:int;
      
      private var var_1616:int;
      
      private var var_2183:int;
      
      private var _category:int;
      
      private var var_2450:int;
      
      private var var_2184:int;
      
      private var var_2185:int;
      
      private var var_2188:int;
      
      private var var_2189:int;
      
      private var var_2186:Boolean;
      
      private var var_1440:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_2190 = param1;
         var_1140 = param2;
         var_2187 = param3;
         var_2188 = param4;
         _category = param5;
         var_1440 = param6;
         var_1616 = param7;
         var_2185 = param8;
         var_2184 = param9;
         var_2189 = param10;
         var_2183 = param11;
         var_2186 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2188;
      }
      
      public function get extra() : int
      {
         return var_1616;
      }
      
      public function get stuffData() : String
      {
         return var_1440;
      }
      
      public function get groupable() : Boolean
      {
         return var_2186;
      }
      
      public function get creationMonth() : int
      {
         return var_2189;
      }
      
      public function get roomItemID() : int
      {
         return var_2187;
      }
      
      public function get itemType() : String
      {
         return var_1140;
      }
      
      public function get itemID() : int
      {
         return var_2190;
      }
      
      public function get songID() : int
      {
         return var_1616;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2185;
      }
      
      public function get creationYear() : int
      {
         return var_2183;
      }
      
      public function get creationDay() : int
      {
         return var_2184;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
