package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2180:Class;
      
      private var var_2182:Class;
      
      private var var_2181:String;
      
      private var var_1354:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2181 = param1;
         var_2182 = param2;
         var_2180 = param3;
         if(rest == null)
         {
            var_1354 = new Array();
         }
         else
         {
            var_1354 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2180;
      }
      
      public function get assetClass() : Class
      {
         return var_2182;
      }
      
      public function get mimeType() : String
      {
         return var_2181;
      }
      
      public function get fileTypes() : Array
      {
         return var_1354;
      }
   }
}
