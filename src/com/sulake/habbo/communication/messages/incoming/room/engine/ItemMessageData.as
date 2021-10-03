package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_88:Number = 0;
      
      private var _data:String = "";
      
      private var var_1616:int = 0;
      
      private var var_37:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2217:Boolean = false;
      
      private var var_2451:String = "";
      
      private var _id:int = 0;
      
      private var var_210:Boolean = false;
      
      private var var_239:String = "";
      
      private var var_2216:int = 0;
      
      private var var_2218:int = 0;
      
      private var var_1872:int = 0;
      
      private var var_1876:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2217 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_210)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2217;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_210)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_239;
      }
      
      public function get state() : int
      {
         return var_37;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_210)
         {
            var_1872 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_210)
         {
            var_2216 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_210)
         {
            var_2218 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_210)
         {
            var_239 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_210)
         {
            var_1876 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_210)
         {
            var_37 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1872;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_210)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2216;
      }
      
      public function get wallY() : Number
      {
         return var_2218;
      }
      
      public function get localY() : Number
      {
         return var_1876;
      }
      
      public function setReadOnly() : void
      {
         var_210 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_88;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_210)
         {
            var_88 = param1;
         }
      }
   }
}
