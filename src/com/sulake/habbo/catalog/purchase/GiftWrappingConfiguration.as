package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_611:Array;
      
      private var var_1173:int;
      
      private var var_1538:Array;
      
      private var var_610:Array;
      
      private var var_1399:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1399 = _loc2_.isWrappingEnabled;
         var_1173 = _loc2_.wrappingPrice;
         var_1538 = _loc2_.stuffTypes;
         var_610 = _loc2_.boxTypes;
         var_611 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_611;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1538;
      }
      
      public function get price() : int
      {
         return var_1173;
      }
      
      public function get boxTypes() : Array
      {
         return var_610;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1399;
      }
   }
}
