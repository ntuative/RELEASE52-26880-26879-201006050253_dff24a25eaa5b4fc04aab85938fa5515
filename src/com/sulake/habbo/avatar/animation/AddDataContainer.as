package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1529:String;
      
      private var var_1471:String;
      
      private var var_1120:String;
      
      private var var_411:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1529 = String(param1.@align);
         var_1120 = String(param1.@base);
         var_1471 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_411 = Number(_loc2_);
            if(var_411 > 1)
            {
               var_411 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1529;
      }
      
      public function get ink() : String
      {
         return var_1471;
      }
      
      public function get base() : String
      {
         return var_1120;
      }
      
      public function get isBlended() : Boolean
      {
         return var_411 != 1;
      }
      
      public function get blend() : Number
      {
         return var_411;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
