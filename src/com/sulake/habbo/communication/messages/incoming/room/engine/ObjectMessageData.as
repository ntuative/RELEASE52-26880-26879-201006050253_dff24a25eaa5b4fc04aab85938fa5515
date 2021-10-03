package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1001:int = 0;
      
      private var _data:String = "";
      
      private var var_1616:int = -1;
      
      private var var_37:int = 0;
      
      private var _type:int = 0;
      
      private var var_1003:int = 0;
      
      private var var_2451:String = "";
      
      private var var_1755:int = 0;
      
      private var _id:int = 0;
      
      private var var_210:Boolean = false;
      
      private var var_239:int = 0;
      
      private var var_2313:String = null;
      
      private var var_87:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_88:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_210)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_210)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_239;
      }
      
      public function get extra() : int
      {
         return var_1616;
      }
      
      public function get state() : int
      {
         return var_37;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_210)
         {
            var_239 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_210)
         {
            var_87 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_210)
         {
            var_1616 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_88;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_210)
         {
            var_37 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1755;
      }
      
      public function get staticClass() : String
      {
         return var_2313;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_210)
         {
            var_1755 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_210)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_210)
         {
            var_2313 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_210 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_210)
         {
            var_1001 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_210)
         {
            var_1003 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_210)
         {
            var_88 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1001;
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      public function get sizeY() : int
      {
         return var_1003;
      }
   }
}
