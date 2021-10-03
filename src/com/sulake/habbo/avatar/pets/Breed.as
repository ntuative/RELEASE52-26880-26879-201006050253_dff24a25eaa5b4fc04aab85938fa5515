package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_642:String;
      
      private var _id:int;
      
      private var var_2285:String = "";
      
      private var var_2283:int;
      
      private var var_2284:String;
      
      private var var_1847:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2283 = parseInt(param1.@pattern);
         var_642 = String(param1.@gender);
         var_1847 = Boolean(parseInt(param1.@colorable));
         var_2285 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2285;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1847;
      }
      
      public function get gender() : String
      {
         return var_642;
      }
      
      public function get patternId() : int
      {
         return var_2283;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2284;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2284 = param1;
      }
   }
}
