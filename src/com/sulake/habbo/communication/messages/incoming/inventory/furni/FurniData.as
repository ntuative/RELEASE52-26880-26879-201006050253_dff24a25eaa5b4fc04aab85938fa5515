package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1440:String;
      
      private var var_1140:String;
      
      private var var_1753:Boolean;
      
      private var var_1616:int;
      
      private var var_1754:int;
      
      private var var_1751:Boolean;
      
      private var var_1650:String = "";
      
      private var var_1752:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1309:int;
      
      private var var_1750:Boolean;
      
      private var var_1942:int = -1;
      
      private var var_1755:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1754 = param1;
         var_1140 = param2;
         _objId = param3;
         var_1309 = param4;
         _category = param5;
         var_1440 = param6;
         var_1753 = param7;
         var_1752 = param8;
         var_1750 = param9;
         var_1751 = param10;
         var_1755 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1650;
      }
      
      public function get extra() : int
      {
         return var_1616;
      }
      
      public function get classId() : int
      {
         return var_1309;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1751;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1753;
      }
      
      public function get stripId() : int
      {
         return var_1754;
      }
      
      public function get stuffData() : String
      {
         return var_1440;
      }
      
      public function get songId() : int
      {
         return var_1942;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1650 = param1;
         var_1616 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1140;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1755;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1750;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1752;
      }
   }
}
