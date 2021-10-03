package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_125:String = "RWPUE_VOTE_RESULT";
      
      public static const const_138:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1391:int;
      
      private var var_1010:String;
      
      private var var_781:Array;
      
      private var var_1108:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1010 = param2;
         var_1108 = param3;
         var_781 = param4;
         if(var_781 == null)
         {
            var_781 = [];
         }
         var_1391 = param5;
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
