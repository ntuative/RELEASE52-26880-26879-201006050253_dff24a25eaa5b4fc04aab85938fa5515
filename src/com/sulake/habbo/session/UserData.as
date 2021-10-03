package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_451:String = "";
      
      private var var_1810:String = "";
      
      private var var_1807:int = 0;
      
      private var var_1806:int = 0;
      
      private var _type:int = 0;
      
      private var var_1809:String = "";
      
      private var var_581:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1808:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1807 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1809 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_451 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_581 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1807;
      }
      
      public function set webID(param1:int) : void
      {
         var_1808 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1809;
      }
      
      public function set custom(param1:String) : void
      {
         var_1810 = param1;
      }
      
      public function get figure() : String
      {
         return var_451;
      }
      
      public function get sex() : String
      {
         return var_581;
      }
      
      public function get custom() : String
      {
         return var_1810;
      }
      
      public function get webID() : int
      {
         return var_1808;
      }
      
      public function set xp(param1:int) : void
      {
         var_1806 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1806;
      }
   }
}
