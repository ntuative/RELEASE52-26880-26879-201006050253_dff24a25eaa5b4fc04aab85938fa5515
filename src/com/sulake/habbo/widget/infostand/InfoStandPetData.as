package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1674:int;
      
      private var var_1999:int;
      
      private var var_1996:int;
      
      private var _type:int;
      
      private var var_1292:int = -1;
      
      private var var_1995:int;
      
      private var _nutrition:int;
      
      private var var_1997:int;
      
      private var _energy:int;
      
      private var var_2020:int;
      
      private var var_1998:int;
      
      private var var_2019:int;
      
      private var var_1994:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_2021:Boolean;
      
      private var _name:String = "";
      
      private var var_1879:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_2021;
      }
      
      public function get level() : int
      {
         return var_1674;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1997;
      }
      
      public function get id() : int
      {
         return var_1292;
      }
      
      public function get nutritionMax() : int
      {
         return var_1996;
      }
      
      public function get ownerId() : int
      {
         return var_1879;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1292 = param1.id;
         _type = param1.petType;
         var_2020 = param1.petRace;
         _image = param1.image;
         var_2021 = param1.isOwnPet;
         var_1879 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1674 = param1.level;
         var_1995 = param1.levelMax;
         var_1999 = param1.experience;
         var_1997 = param1.experienceMax;
         _energy = param1.energy;
         var_1998 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1996 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_2019 = param1.roomIndex;
         var_1994 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_2019;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1998;
      }
      
      public function get levelMax() : int
      {
         return var_1995;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_2020;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1999;
      }
      
      public function get age() : int
      {
         return var_1994;
      }
   }
}
