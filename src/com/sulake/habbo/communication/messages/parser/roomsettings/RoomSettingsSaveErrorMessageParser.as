package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1691:int = 9;
      
      public static const const_1630:int = 4;
      
      public static const const_1636:int = 1;
      
      public static const const_1260:int = 10;
      
      public static const const_1640:int = 2;
      
      public static const const_1368:int = 7;
      
      public static const const_1207:int = 11;
      
      public static const const_1708:int = 3;
      
      public static const const_1327:int = 8;
      
      public static const const_1218:int = 5;
      
      public static const const_1658:int = 6;
      
      public static const const_1293:int = 12;
       
      
      private var var_2094:String;
      
      private var _roomId:int;
      
      private var var_1178:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2094;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1178 = param1.readInteger();
         var_2094 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1178;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
