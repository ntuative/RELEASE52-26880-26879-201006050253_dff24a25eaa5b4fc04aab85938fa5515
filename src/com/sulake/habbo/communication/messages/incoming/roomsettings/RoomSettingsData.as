package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_428:int = 0;
      
      public static const const_142:int = 2;
      
      public static const const_163:int = 1;
      
      public static const const_695:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2009:Boolean;
      
      private var var_2014:Boolean;
      
      private var var_2013:int;
      
      private var var_2011:Array;
      
      private var var_2008:int;
      
      private var var_1858:Boolean;
      
      private var var_1175:String;
      
      private var var_2010:int;
      
      private var var_2012:Boolean;
      
      private var var_1861:int;
      
      private var var_1172:int;
      
      private var _roomId:int;
      
      private var var_660:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_2010;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2010 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         var_2012 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_660;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1858;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2008 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2011 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_660 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2009;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2014;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2013;
      }
      
      public function get categoryId() : int
      {
         return var_1172;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1858 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return var_2012;
      }
      
      public function get controllerCount() : int
      {
         return var_2008;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2011;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1861 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2009 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2014 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2013 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1861;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1172 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1175 = param1;
      }
      
      public function get description() : String
      {
         return var_1175;
      }
   }
}
