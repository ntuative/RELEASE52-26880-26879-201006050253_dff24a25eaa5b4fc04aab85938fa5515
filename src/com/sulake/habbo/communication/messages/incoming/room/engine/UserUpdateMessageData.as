package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_88:Number = 0;
      
      private var var_239:int = 0;
      
      private var var_2045:int = 0;
      
      private var var_2103:Number = 0;
      
      private var var_2106:Number = 0;
      
      private var var_2105:Number = 0;
      
      private var var_2104:Number = 0;
      
      private var var_2107:Boolean = false;
      
      private var var_87:Number = 0;
      
      private var _id:int = 0;
      
      private var var_222:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_222 = [];
         super();
         _id = param1;
         var_87 = param2;
         _y = param3;
         var_88 = param4;
         var_2104 = param5;
         var_239 = param6;
         var_2045 = param7;
         var_2103 = param8;
         var_2106 = param9;
         var_2105 = param10;
         var_2107 = param11;
         var_222 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_88;
      }
      
      public function get dir() : int
      {
         return var_239;
      }
      
      public function get localZ() : Number
      {
         return var_2104;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2107;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_2045;
      }
      
      public function get targetX() : Number
      {
         return var_2103;
      }
      
      public function get targetY() : Number
      {
         return var_2106;
      }
      
      public function get targetZ() : Number
      {
         return var_2105;
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      public function get actions() : Array
      {
         return var_222.slice();
      }
   }
}
