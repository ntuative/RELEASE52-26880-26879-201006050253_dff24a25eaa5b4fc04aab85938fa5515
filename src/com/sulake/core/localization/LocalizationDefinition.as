package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1535:String;
      
      private var var_659:String;
      
      private var var_1536:String;
      
      private var var_1537:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1537 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1535 = _loc5_[0];
         var_1536 = _loc5_[1];
         _name = param2;
         var_659 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1535;
      }
      
      public function get languageCode() : String
      {
         return var_1537;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_659;
      }
      
      public function get encoding() : String
      {
         return var_1536;
      }
      
      public function get id() : String
      {
         return var_1537 + "_" + var_1535 + "." + var_1536;
      }
   }
}
