package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_2125:int;
      
      private var var_1590:int;
      
      private var var_2123:int;
      
      private var var_2124:int;
      
      private var var_2122:int;
      
      private var var_1589:int;
      
      private var var_1771:int;
      
      private var var_1399:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_2125;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1590;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1771;
      }
      
      public function get offerMinPrice() : int
      {
         return var_2124;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_2122;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1589;
      }
      
      public function get commission() : int
      {
         return var_2123;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1399 = param1.readBoolean();
         var_2123 = param1.readInteger();
         var_1590 = param1.readInteger();
         var_1589 = param1.readInteger();
         var_2124 = param1.readInteger();
         var_2125 = param1.readInteger();
         var_2122 = param1.readInteger();
         var_1771 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1399;
      }
   }
}
