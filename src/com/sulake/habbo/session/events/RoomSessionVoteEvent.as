package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_125:String = "RSPE_VOTE_RESULT";
      
      public static const const_138:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1391:int = 0;
      
      private var var_1010:String = "";
      
      private var var_781:Array;
      
      private var var_1108:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1108 = [];
         var_781 = [];
         super(param1,param2,param7,param8);
         var_1010 = param3;
         var_1108 = param4;
         var_781 = param5;
         if(var_781 == null)
         {
            var_781 = [];
         }
         var_1391 = param6;
      }
      
      public function get votes() : Array
      {
         return var_781.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1391;
      }
      
      public function get question() : String
      {
         return var_1010;
      }
      
      public function get choices() : Array
      {
         return var_1108.slice();
      }
   }
}
