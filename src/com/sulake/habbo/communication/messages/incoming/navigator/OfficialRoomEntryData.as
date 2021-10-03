package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1375:int = 4;
      
      public static const const_729:int = 3;
      
      public static const const_722:int = 2;
      
      public static const const_854:int = 1;
       
      
      private var var_1789:String;
      
      private var _disposed:Boolean;
      
      private var var_1790:int;
      
      private var var_1791:Boolean;
      
      private var var_853:String;
      
      private var var_828:PublicRoomData;
      
      private var var_1787:int;
      
      private var _index:int;
      
      private var var_1788:String;
      
      private var _type:int;
      
      private var var_1684:String;
      
      private var var_829:GuestRoomData;
      
      private var var_1792:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1789 = param1.readString();
         var_1792 = param1.readString();
         var_1791 = param1.readInteger() == 1;
         var_1788 = param1.readString();
         var_853 = param1.readString();
         var_1787 = param1.readInteger();
         var_1790 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_854)
         {
            var_1684 = param1.readString();
         }
         else if(_type == const_729)
         {
            var_828 = new PublicRoomData(param1);
         }
         else if(_type == const_722)
         {
            var_829 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1787;
      }
      
      public function get popupCaption() : String
      {
         return var_1789;
      }
      
      public function get userCount() : int
      {
         return var_1790;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1791;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_854)
         {
            return 0;
         }
         if(this.type == const_722)
         {
            return this.var_829.maxUserCount;
         }
         if(this.type == const_729)
         {
            return this.var_828.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1792;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_829 != null)
         {
            this.var_829.dispose();
            this.var_829 = null;
         }
         if(this.var_828 != null)
         {
            this.var_828.dispose();
            this.var_828 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_829;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1788;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_828;
      }
      
      public function get picRef() : String
      {
         return var_853;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1684;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
