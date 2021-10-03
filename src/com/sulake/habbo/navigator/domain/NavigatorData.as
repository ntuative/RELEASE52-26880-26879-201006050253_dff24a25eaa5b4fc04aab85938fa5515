package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1481:int = 10;
       
      
      private var var_1653:NavigatorSettingsMessageParser;
      
      private var var_1403:int;
      
      private var var_2299:int;
      
      private var var_2302:Boolean;
      
      private var var_1137:Array;
      
      private var var_956:Dictionary;
      
      private var var_1136:Array;
      
      private var var_2410:int;
      
      private var var_2303:int;
      
      private var var_1794:int;
      
      private var var_2298:int;
      
      private var var_644:PublicRoomShortData;
      
      private var var_453:RoomEventData;
      
      private var var_145:MsgWithRequestId;
      
      private var var_2301:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2300:Boolean;
      
      private var var_213:GuestRoomData;
      
      private var var_788:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1137 = new Array();
         var_1136 = new Array();
         var_956 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2299;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2300;
      }
      
      public function startLoading() : void
      {
         this.var_788 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2300 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_453 != null)
         {
            var_453.dispose();
         }
         var_453 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_145 != null && var_145 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_145 != null && var_145 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_145 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_213;
      }
      
      public function get allCategories() : Array
      {
         return var_1137;
      }
      
      public function onRoomExit() : void
      {
         if(var_453 != null)
         {
            var_453.dispose();
            var_453 = null;
         }
         if(var_644 != null)
         {
            var_644.dispose();
            var_644 = null;
         }
         if(var_213 != null)
         {
            var_213.dispose();
            var_213 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_145 = param1;
         var_788 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1653;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_145 = param1;
         var_788 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_644 = null;
         var_213 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_644 = param1.publicSpace;
            var_453 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2410 = param1.limit;
         this.var_1403 = param1.favouriteRoomIds.length;
         this.var_956 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_956[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_145 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_644;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2302;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_145 = param1;
         var_788 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1794 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_213 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_788;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1136;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1137 = param1;
         var_1136 = new Array();
         for each(_loc2_ in var_1137)
         {
            if(_loc2_.visible)
            {
               var_1136.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2303;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2298;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1653 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_145 == null)
         {
            return;
         }
         var_145.dispose();
         var_145 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_453;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_956[param1] = !!param2 ? "yes" : null;
         var_1403 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_145 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1794;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_145 != null && var_145 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2302 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2303 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2301 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_213 != null)
         {
            var_213.dispose();
         }
         var_213 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_213 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1653.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1403 >= var_2410;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2298 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2301;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_213 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2299 = param1;
      }
   }
}
