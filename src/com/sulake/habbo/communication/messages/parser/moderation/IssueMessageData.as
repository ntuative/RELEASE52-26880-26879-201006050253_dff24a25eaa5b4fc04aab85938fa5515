package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_148:int = 1;
      
      public static const const_1280:int = 3;
      
      public static const const_398:int = 2;
       
      
      private var var_2033:int;
      
      private var var_2027:int;
      
      private var var_2029:int;
      
      private var var_1945:int;
      
      private var var_37:int;
      
      private var var_399:int;
      
      private var var_1276:int;
      
      private var var_2031:int;
      
      private var var_995:int;
      
      private var _roomResources:String;
      
      private var var_1673:int;
      
      private var var_2026:int;
      
      private var var_2032:String;
      
      private var var_2028:String;
      
      private var var_2025:int = 0;
      
      private var var_1179:String;
      
      private var _message:String;
      
      private var var_1912:int;
      
      private var var_2030:String;
      
      private var var_1172:int;
      
      private var var_761:String;
      
      private var var_2034:String;
      
      private var var_1544:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_995 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2025 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2026;
      }
      
      public function set roomName(param1:String) : void
      {
         var_761 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1673 = param1;
      }
      
      public function get state() : int
      {
         return var_37;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_761;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1945 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_37 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_2027;
      }
      
      public function get priority() : int
      {
         return var_2033 + var_2025;
      }
      
      public function set issueId(param1:int) : void
      {
         var_2031 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2028;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1544) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1172;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2026 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1276;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2032 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1673;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1945;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2034 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1179 = param1;
      }
      
      public function get issueId() : int
      {
         return var_2031;
      }
      
      public function set priority(param1:int) : void
      {
         var_2033 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_2027 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2032;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2029 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2028 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1912 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1179;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1276 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2029;
      }
      
      public function set flatId(param1:int) : void
      {
         var_399 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1172 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1544 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1912;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2030 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1544;
      }
      
      public function get reportedUserId() : int
      {
         return var_995;
      }
      
      public function get flatId() : int
      {
         return var_399;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2034;
      }
      
      public function get reporterUserName() : String
      {
         return var_2030;
      }
   }
}
