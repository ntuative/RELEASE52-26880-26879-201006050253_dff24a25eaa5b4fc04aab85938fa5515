package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_2076:String;
      
      private var var_399:int;
      
      private var var_2135:String;
      
      private var var_2136:String;
      
      private var var_2133:int;
      
      private var var_2134:String;
      
      private var var_2132:int;
      
      private var var_660:Array;
      
      private var var_1059:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_660 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1059 = false;
            return;
         }
         this.var_1059 = true;
         var_2133 = int(_loc2_);
         var_2135 = param1.readString();
         var_399 = int(param1.readString());
         var_2132 = param1.readInteger();
         var_2076 = param1.readString();
         var_2136 = param1.readString();
         var_2134 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_660.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2132;
      }
      
      public function get eventName() : String
      {
         return var_2076;
      }
      
      public function get eventDescription() : String
      {
         return var_2136;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2135;
      }
      
      public function get tags() : Array
      {
         return var_660;
      }
      
      public function get creationTime() : String
      {
         return var_2134;
      }
      
      public function get exists() : Boolean
      {
         return var_1059;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2133;
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
         this.var_660 = null;
      }
      
      public function get flatId() : int
      {
         return var_399;
      }
   }
}
