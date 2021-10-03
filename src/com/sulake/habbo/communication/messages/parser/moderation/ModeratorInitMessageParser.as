package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_2055:Boolean;
      
      private var var_1553:Array;
      
      private var var_2052:Boolean;
      
      private var var_2051:Boolean;
      
      private var var_2054:Boolean;
      
      private var var_160:Array;
      
      private var var_2057:Boolean;
      
      private var var_2056:Boolean;
      
      private var var_1554:Array;
      
      private var var_2050:Boolean;
      
      private var var_2053:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_2053;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2055;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2052;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2057;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2056;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1553;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_160 = [];
         var_1553 = [];
         _roomMessageTemplates = [];
         var_1554 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_160.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1553.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1554.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2057 = param1.readBoolean();
         var_2054 = param1.readBoolean();
         var_2052 = param1.readBoolean();
         var_2051 = param1.readBoolean();
         var_2053 = param1.readBoolean();
         var_2056 = param1.readBoolean();
         var_2055 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_2050 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2051;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1554;
      }
      
      public function get issues() : Array
      {
         return var_160;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2050;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2054;
      }
   }
}
