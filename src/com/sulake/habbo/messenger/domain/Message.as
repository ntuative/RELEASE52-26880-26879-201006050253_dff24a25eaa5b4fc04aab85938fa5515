package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_696:int = 2;
      
      public static const const_961:int = 6;
      
      public static const const_572:int = 1;
      
      public static const const_650:int = 3;
      
      public static const const_969:int = 4;
      
      public static const const_756:int = 5;
       
      
      private var var_1969:String;
      
      private var var_1110:int;
      
      private var var_1970:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1110 = param2;
         var_1970 = param3;
         var_1969 = param4;
      }
      
      public function get time() : String
      {
         return var_1969;
      }
      
      public function get senderId() : int
      {
         return var_1110;
      }
      
      public function get messageText() : String
      {
         return var_1970;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
