package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2027:int;
      
      private var var_2036:String;
      
      private var var_1945:int;
      
      private var _disposed:Boolean;
      
      private var var_2037:int;
      
      private var var_2035:String;
      
      private var var_1275:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_2035 = param1.readString();
         var_2027 = param1.readInteger();
         var_1945 = param1.readInteger();
         var_2036 = param1.readString();
         var_2037 = param1.readInteger();
         var_1275 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2037;
      }
      
      public function get worldId() : int
      {
         return var_1945;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_2035;
      }
      
      public function get unitPort() : int
      {
         return var_2027;
      }
      
      public function get castLibs() : String
      {
         return var_2036;
      }
      
      public function get nodeId() : int
      {
         return var_1275;
      }
   }
}
