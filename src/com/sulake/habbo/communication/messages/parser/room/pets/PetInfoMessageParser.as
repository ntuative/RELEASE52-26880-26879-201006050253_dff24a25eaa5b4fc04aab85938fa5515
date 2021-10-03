package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1994:int;
      
      private var var_451:String;
      
      private var var_1674:int;
      
      private var var_2000:int;
      
      private var var_1999:int;
      
      private var var_2068:int;
      
      private var _nutrition:int;
      
      private var var_1292:int;
      
      private var var_2071:int;
      
      private var var_2069:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1879:int;
      
      private var var_2070:int;
      
      public function PetInfoMessageParser()
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
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2068;
      }
      
      public function flush() : Boolean
      {
         var_1292 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2071;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2069;
      }
      
      public function get maxNutrition() : int
      {
         return var_2070;
      }
      
      public function get figure() : String
      {
         return var_451;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_2000;
      }
      
      public function get petId() : int
      {
         return var_1292;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1292 = param1.readInteger();
         _name = param1.readString();
         var_1674 = param1.readInteger();
         var_2071 = param1.readInteger();
         var_1999 = param1.readInteger();
         var_2069 = param1.readInteger();
         _energy = param1.readInteger();
         var_2068 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2070 = param1.readInteger();
         var_451 = param1.readString();
         var_2000 = param1.readInteger();
         var_1879 = param1.readInteger();
         var_1994 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1999;
      }
      
      public function get ownerId() : int
      {
         return var_1879;
      }
      
      public function get age() : int
      {
         return var_1994;
      }
   }
}
