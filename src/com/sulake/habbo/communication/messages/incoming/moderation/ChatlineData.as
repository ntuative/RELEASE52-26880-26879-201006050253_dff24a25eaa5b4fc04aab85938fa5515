package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1541:String;
      
      private var var_2289:int;
      
      private var var_2291:int;
      
      private var var_2292:int;
      
      private var var_2290:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2289 = param1.readInteger();
         var_2292 = param1.readInteger();
         var_2291 = param1.readInteger();
         var_2290 = param1.readString();
         var_1541 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1541;
      }
      
      public function get hour() : int
      {
         return var_2289;
      }
      
      public function get minute() : int
      {
         return var_2292;
      }
      
      public function get chatterName() : String
      {
         return var_2290;
      }
      
      public function get chatterId() : int
      {
         return var_2291;
      }
   }
}
