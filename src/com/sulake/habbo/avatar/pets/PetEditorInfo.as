package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_2154:Boolean;
      
      private var var_1747:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_2154 = Boolean(parseInt(param1.@club));
         var_1747 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_2154;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1747;
      }
   }
}
