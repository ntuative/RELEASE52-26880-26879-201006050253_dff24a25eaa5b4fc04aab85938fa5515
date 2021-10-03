package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_451:String;
      
      private var var_2403:String;
      
      private var var_2402:int;
      
      private var var_2405:int;
      
      private var var_581:String;
      
      private var var_1168:String;
      
      private var _name:String;
      
      private var var_491:int;
      
      private var var_848:int;
      
      private var var_2406:int;
      
      private var _respectTotal:int;
      
      private var var_2404:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2405;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1168;
      }
      
      public function get customData() : String
      {
         return this.var_2403;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_491;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2402;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2404;
      }
      
      public function get figure() : String
      {
         return this.var_451;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_581;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_451 = param1.readString();
         this.var_581 = param1.readString();
         this.var_2403 = param1.readString();
         this.var_1168 = param1.readString();
         this.var_2406 = param1.readInteger();
         this.var_2404 = param1.readString();
         this.var_2402 = param1.readInteger();
         this.var_2405 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_848 = param1.readInteger();
         this.var_491 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2406;
      }
      
      public function get respectLeft() : int
      {
         return this.var_848;
      }
   }
}
