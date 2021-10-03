package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_238:String = "e";
      
      public static const const_83:String = "i";
      
      public static const const_86:String = "s";
       
      
      private var var_1031:String;
      
      private var var_1227:String;
      
      private var var_1229:int;
      
      private var var_2058:int;
      
      private var var_1032:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1227 = param1.readString();
         var_2058 = param1.readInteger();
         var_1031 = param1.readString();
         var_1032 = param1.readInteger();
         var_1229 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1032;
      }
      
      public function get productType() : String
      {
         return var_1227;
      }
      
      public function get expiration() : int
      {
         return var_1229;
      }
      
      public function get furniClassId() : int
      {
         return var_2058;
      }
      
      public function get extraParam() : String
      {
         return var_1031;
      }
   }
}
