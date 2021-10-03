package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1317:int = 2;
      
      public static const const_1567:int = 1;
       
      
      private var var_1900:int;
      
      private var var_1902:int;
      
      private var var_1890:Boolean;
      
      private var var_1899:int;
      
      private var var_1193:String;
      
      private var var_1898:Boolean;
      
      private var var_1897:int;
      
      private var var_1903:int;
      
      private var var_1901:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1902;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1890;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1903;
      }
      
      public function get memberPeriods() : int
      {
         return var_1899;
      }
      
      public function get productName() : String
      {
         return var_1193;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1898;
      }
      
      public function get responseType() : int
      {
         return var_1900;
      }
      
      public function get pastClubDays() : int
      {
         return var_1901;
      }
      
      public function get pastVipDays() : int
      {
         return var_1897;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1193 = param1.readString();
         var_1902 = param1.readInteger();
         var_1899 = param1.readInteger();
         var_1903 = param1.readInteger();
         var_1900 = param1.readInteger();
         var_1898 = param1.readBoolean();
         var_1890 = param1.readBoolean();
         var_1901 = param1.readInteger();
         var_1897 = param1.readInteger();
         return true;
      }
   }
}
