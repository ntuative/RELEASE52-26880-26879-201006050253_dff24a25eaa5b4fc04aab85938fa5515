package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2374:Boolean;
      
      private var var_2371:int;
      
      private var var_2373:Boolean;
      
      private var var_1486:String;
      
      private var var_1168:String;
      
      private var var_1794:int;
      
      private var var_1817:String;
      
      private var var_2372:String;
      
      private var var_1816:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1794 = param1.readInteger();
         this.var_1486 = param1.readString();
         this.var_1817 = param1.readString();
         this.var_2374 = param1.readBoolean();
         this.var_2373 = param1.readBoolean();
         param1.readString();
         this.var_2371 = param1.readInteger();
         this.var_1816 = param1.readString();
         this.var_2372 = param1.readString();
         this.var_1168 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1168;
      }
      
      public function get avatarName() : String
      {
         return this.var_1486;
      }
      
      public function get avatarId() : int
      {
         return this.var_1794;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2374;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2372;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1816;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2373;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1817;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2371;
      }
   }
}
