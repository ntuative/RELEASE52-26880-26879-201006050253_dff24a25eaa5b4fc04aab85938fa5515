package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_1123:Boolean;
      
      private var _name:String;
      
      private var var_1985:String;
      
      private var var_1124:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1985 = String(param1.@link);
         var_1124 = Boolean(parseInt(param1.@fliph));
         var_1123 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_1124;
      }
      
      public function get flipV() : Boolean
      {
         return var_1123;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1985;
      }
   }
}
