package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TagAndUserCountData
   {
       
      
      private var var_1790:int;
      
      private var var_1684:String;
      
      public function TagAndUserCountData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1684 = param1.readString();
         this.var_1790 = param1.readInteger();
      }
      
      public function get userCount() : int
      {
         return this.var_1790;
      }
      
      public function get tag() : String
      {
         return this.var_1684;
      }
   }
}
