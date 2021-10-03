package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1389:String = "F";
      
      public static const const_955:String = "M";
       
      
      private var var_87:Number = 0;
      
      private var var_451:String = "";
      
      private var var_2255:int = 0;
      
      private var var_1810:String = "";
      
      private var var_1807:int = 0;
      
      private var var_1806:int = 0;
      
      private var var_1809:String = "";
      
      private var var_581:String = "";
      
      private var _id:int = 0;
      
      private var var_210:Boolean = false;
      
      private var var_239:int = 0;
      
      private var var_2256:String = "";
      
      private var _name:String = "";
      
      private var var_1808:int = 0;
      
      private var _y:Number = 0;
      
      private var var_88:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_88;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_239;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_210)
         {
            var_239 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_210)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2255;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_210)
         {
            var_1807 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2256;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_210)
         {
            var_1809 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_210)
         {
            var_2256 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_210)
         {
            var_1806 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_210)
         {
            var_451 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_210)
         {
            var_2255 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_210)
         {
            var_581 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1807;
      }
      
      public function get groupID() : String
      {
         return var_1809;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_210)
         {
            var_1808 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_210)
         {
            var_1810 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_210 = true;
      }
      
      public function get sex() : String
      {
         return var_581;
      }
      
      public function get figure() : String
      {
         return var_451;
      }
      
      public function get webID() : int
      {
         return var_1808;
      }
      
      public function get custom() : String
      {
         return var_1810;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_210)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_210)
         {
            var_88 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_210)
         {
            var_87 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1806;
      }
   }
}
