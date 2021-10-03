package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2067:String;
      
      private var var_1196:String;
      
      private var var_2066:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2066 = param1;
         var_1196 = param2;
         var_2067 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2066,var_1196,var_2067];
      }
      
      public function dispose() : void
      {
      }
   }
}
