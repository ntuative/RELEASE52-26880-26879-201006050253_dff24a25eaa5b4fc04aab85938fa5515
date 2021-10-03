package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1674:int;
      
      private var var_2000:int;
      
      private var var_1999:int;
      
      private var var_1996:int;
      
      private var _nutrition:int;
      
      private var var_1292:int;
      
      private var var_1995:int;
      
      private var var_1997:int;
      
      private var _energy:int;
      
      private var var_1994:int;
      
      private var var_1998:int;
      
      private var _ownerName:String;
      
      private var var_1879:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1674;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_2000 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1674 = param1;
      }
      
      public function get petId() : int
      {
         return var_1292;
      }
      
      public function get experienceMax() : int
      {
         return var_1997;
      }
      
      public function get nutritionMax() : int
      {
         return var_1996;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1995 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1879;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1292 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1998;
      }
      
      public function get respect() : int
      {
         return var_2000;
      }
      
      public function get levelMax() : int
      {
         return var_1995;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1997 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1999 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1996 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1879 = param1;
      }
      
      public function get experience() : int
      {
         return var_1999;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1998 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1994 = param1;
      }
      
      public function get age() : int
      {
         return var_1994;
      }
   }
}
