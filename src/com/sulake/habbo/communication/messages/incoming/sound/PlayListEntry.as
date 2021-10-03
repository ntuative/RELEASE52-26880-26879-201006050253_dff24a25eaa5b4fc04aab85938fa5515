package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1942:int;
      
      private var var_1940:int = 0;
      
      private var var_1939:String;
      
      private var var_1941:int;
      
      private var var_1943:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1942 = param1;
         var_1941 = param2;
         var_1943 = param3;
         var_1939 = param4;
      }
      
      public function get length() : int
      {
         return var_1941;
      }
      
      public function get name() : String
      {
         return var_1943;
      }
      
      public function get creator() : String
      {
         return var_1939;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1940;
      }
      
      public function get id() : int
      {
         return var_1942;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1940 = param1;
      }
   }
}
