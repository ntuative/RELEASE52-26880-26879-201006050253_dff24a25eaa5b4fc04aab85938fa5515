package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1612:Array;
      
      private var var_1692:int;
      
      private var var_1864:int;
      
      private var var_1865:int;
      
      private var var_1866:int;
      
      private var _dayOffsets:Array;
      
      private var var_1863:int;
      
      private var var_1611:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1612;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1612 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1864;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1611 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1692 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1865;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1866;
      }
      
      public function get offerCount() : int
      {
         return var_1863;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1863 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1611;
      }
      
      public function get averagePrice() : int
      {
         return var_1692;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1866 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1865 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1864 = param1;
      }
   }
}
