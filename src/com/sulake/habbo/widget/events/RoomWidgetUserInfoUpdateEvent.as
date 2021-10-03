package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_225:String = "RWUIUE_PEER";
      
      public static const const_242:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1224:String = "BOT";
      
      public static const const_882:int = 2;
      
      public static const const_1226:int = 0;
      
      public static const const_876:int = 3;
       
      
      private var var_451:String = "";
      
      private var var_1170:String = "";
      
      private var var_2169:Boolean = false;
      
      private var var_1806:int = 0;
      
      private var var_1739:int = 0;
      
      private var var_2175:Boolean = false;
      
      private var var_1168:String = "";
      
      private var var_2176:Boolean = false;
      
      private var var_848:int = 0;
      
      private var var_2174:Boolean = true;
      
      private var var_992:int = 0;
      
      private var var_2171:Boolean = false;
      
      private var var_1417:Boolean = false;
      
      private var var_2172:Boolean = false;
      
      private var var_1738:int = 0;
      
      private var var_2168:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_288:Array;
      
      private var var_1419:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1808:int = 0;
      
      private var var_2173:Boolean = false;
      
      private var var_2170:int = 0;
      
      private var var_1737:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_288 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1739;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1739 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2169;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2174;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2174 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2176 = param1;
      }
      
      public function get motto() : String
      {
         return var_1170;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2171 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1417;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1170 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2173;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1737;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1417 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2168;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1738 = param1;
      }
      
      public function get badges() : Array
      {
         return var_288;
      }
      
      public function get amIController() : Boolean
      {
         return var_2175;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2175 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2173 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2170 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1737 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1168 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2176;
      }
      
      public function set figure(param1:String) : void
      {
         var_451 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_1738;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1419;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2171;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_848 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2170;
      }
      
      public function get realName() : String
      {
         return var_1168;
      }
      
      public function get figure() : String
      {
         return var_451;
      }
      
      public function set webID(param1:int) : void
      {
         var_1808 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_288 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2172 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2168 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_848;
      }
      
      public function get webID() : int
      {
         return var_1808;
      }
      
      public function set groupId(param1:int) : void
      {
         var_992 = param1;
      }
      
      public function get xp() : int
      {
         return var_1806;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2169 = param1;
      }
      
      public function get groupId() : int
      {
         return var_992;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2172;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1419 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1806 = param1;
      }
   }
}
