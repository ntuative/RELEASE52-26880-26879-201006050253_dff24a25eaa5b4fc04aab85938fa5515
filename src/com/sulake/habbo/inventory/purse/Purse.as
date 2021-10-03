package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1889:Boolean = false;
      
      private var var_1891:int = 0;
      
      private var var_1531:int = 0;
      
      private var var_1892:int = 0;
      
      private var var_1890:Boolean = false;
      
      private var var_1515:int = 0;
      
      private var var_1530:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1515 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1891;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1889;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1889 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1890;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1891 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1531 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1515;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1890 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1892 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1531;
      }
      
      public function get pixelBalance() : int
      {
         return var_1892;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1530 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1530;
      }
   }
}
