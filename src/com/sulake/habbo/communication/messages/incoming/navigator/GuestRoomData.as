package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1790:int;
      
      private var var_1857:String;
      
      private var var_1860:int;
      
      private var var_1862:int;
      
      private var var_679:Boolean;
      
      private var var_1858:Boolean;
      
      private var var_399:int;
      
      private var var_1175:String;
      
      private var var_1861:int;
      
      private var var_1172:int;
      
      private var _ownerName:String;
      
      private var var_761:String;
      
      private var var_1859:int;
      
      private var var_1855:RoomThumbnailData;
      
      private var var_1856:Boolean;
      
      private var var_660:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_660 = new Array();
         super();
         var_399 = param1.readInteger();
         var_679 = param1.readBoolean();
         var_761 = param1.readString();
         _ownerName = param1.readString();
         var_1861 = param1.readInteger();
         var_1790 = param1.readInteger();
         var_1859 = param1.readInteger();
         var_1175 = param1.readString();
         var_1860 = param1.readInteger();
         var_1856 = param1.readBoolean();
         var_1862 = param1.readInteger();
         var_1172 = param1.readInteger();
         var_1857 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_660.push(_loc4_);
            _loc3_++;
         }
         var_1855 = new RoomThumbnailData(param1);
         var_1858 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1859;
      }
      
      public function get roomName() : String
      {
         return var_761;
      }
      
      public function get userCount() : int
      {
         return var_1790;
      }
      
      public function get score() : int
      {
         return var_1862;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1857;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1856;
      }
      
      public function get tags() : Array
      {
         return var_660;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1858;
      }
      
      public function get event() : Boolean
      {
         return var_679;
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
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1172;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1860;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1855;
      }
      
      public function get doorMode() : int
      {
         return var_1861;
      }
      
      public function get flatId() : int
      {
         return var_399;
      }
      
      public function get description() : String
      {
         return var_1175;
      }
   }
}
