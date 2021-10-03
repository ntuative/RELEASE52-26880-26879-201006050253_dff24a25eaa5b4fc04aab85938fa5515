package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2145:int;
      
      private var var_2147:int;
      
      private var var_2148:int;
      
      private var _userName:String;
      
      private var var_2143:int;
      
      private var var_2144:int;
      
      private var var_2146:int;
      
      private var _userId:int;
      
      private var var_703:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2144 = param1.readInteger();
         var_2143 = param1.readInteger();
         var_703 = param1.readBoolean();
         var_2148 = param1.readInteger();
         var_2147 = param1.readInteger();
         var_2145 = param1.readInteger();
         var_2146 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2146;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_703;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2143;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2147;
      }
      
      public function get cautionCount() : int
      {
         return var_2145;
      }
      
      public function get cfhCount() : int
      {
         return var_2148;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2144;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
