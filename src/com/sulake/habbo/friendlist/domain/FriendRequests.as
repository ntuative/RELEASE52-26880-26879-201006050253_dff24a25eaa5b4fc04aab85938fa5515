package com.sulake.habbo.friendlist.domain
{
   import com.sulake.habbo.friendlist.Util;
   
   public class FriendRequests
   {
       
      
      private var var_223:Array;
      
      private var var_1960:int;
      
      private var var_414:IFriendRequestsDeps;
      
      private var var_1261:int;
      
      private var var_1961:int;
      
      public function FriendRequests(param1:IFriendRequestsDeps, param2:int, param3:int, param4:int)
      {
         var_223 = new Array();
         super();
         var_414 = param1;
         var_1261 = param2;
         var_1960 = param3;
         var_1961 = param4;
      }
      
      public function get vipLimit() : int
      {
         return var_1961;
      }
      
      public function get requests() : Array
      {
         return var_223;
      }
      
      public function acceptFailed(param1:String) : void
      {
         var _loc2_:FriendRequest = getRequestByRequesterName(param1);
         if(_loc2_ == null)
         {
            Logger.log("No friedrequest found " + param1 + " when error received");
            return;
         }
         _loc2_.state = FriendRequest.const_1003;
         var_414.view.refreshRequestEntry(_loc2_);
      }
      
      public function set limit(param1:int) : void
      {
         var_1261 = param1;
      }
      
      public function addRequest(param1:FriendRequest) : void
      {
         var_223.push(param1);
      }
      
      public function refreshShading() : void
      {
         var _loc2_:* = null;
         var _loc1_:* = true;
         for each(_loc2_ in var_223)
         {
            _loc1_ = !_loc1_;
            var_414.view.refreshShading(_loc2_,_loc1_);
         }
      }
      
      public function get clubLimit() : int
      {
         return var_1960;
      }
      
      public function getCountOfOpenRequests() : int
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         for each(_loc2_ in requests)
         {
            if(_loc2_.state == FriendRequest.const_148)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function addRequestAndUpdateView(param1:FriendRequest) : void
      {
         var_223.push(param1);
         var_414.view.addRequest(param1);
      }
      
      public function getRequest(param1:int) : FriendRequest
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_223)
         {
            if(_loc2_.requestId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get limit() : int
      {
         return var_1261;
      }
      
      public function getRequestByRequesterName(param1:String) : FriendRequest
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_223)
         {
            if(_loc2_.requesterName == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function clearAndUpdateView(param1:Boolean) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in var_223)
         {
            if(!param1 || _loc3_.state != FriendRequest.const_148)
            {
               _loc2_.push(_loc3_);
            }
         }
         for each(_loc4_ in _loc2_)
         {
            Util.remove(var_223,_loc4_);
            if(false)
            {
               var_414.view.removeRequest(_loc4_);
            }
            _loc4_.dispose();
         }
         refreshShading();
      }
   }
}
