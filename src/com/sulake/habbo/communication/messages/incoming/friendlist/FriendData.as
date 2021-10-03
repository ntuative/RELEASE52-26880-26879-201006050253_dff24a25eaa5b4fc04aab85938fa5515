package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_451:String;
      
      private var var_1169:String;
      
      private var var_1170:String;
      
      private var var_1172:int;
      
      private var var_642:int;
      
      private var var_1168:String;
      
      private var _name:String;
      
      private var var_1171:Boolean;
      
      private var var_703:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_642 = param1.readInteger();
         this.var_703 = param1.readBoolean();
         this.var_1171 = param1.readBoolean();
         this.var_451 = param1.readString();
         this.var_1172 = param1.readInteger();
         this.var_1170 = param1.readString();
         this.var_1169 = param1.readString();
         this.var_1168 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_642;
      }
      
      public function get realName() : String
      {
         return var_1168;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1170;
      }
      
      public function get categoryId() : int
      {
         return var_1172;
      }
      
      public function get online() : Boolean
      {
         return var_703;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1171;
      }
      
      public function get lastAccess() : String
      {
         return var_1169;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_451;
      }
   }
}
