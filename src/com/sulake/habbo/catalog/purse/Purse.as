package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2006:int = 0;
      
      private var var_1531:int = 0;
      
      private var var_1890:Boolean = false;
      
      private var var_2005:int = 0;
      
      private var var_1897:int = 0;
      
      private var var_1530:int = 0;
      
      private var var_1901:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubDays() : int
      {
         return var_1531;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1531 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1890 = param1;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         var_1901 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1531 > 0 || var_1530 > 0;
      }
      
      public function get credits() : int
      {
         return var_2005;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         var_1897 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1530;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1890;
      }
      
      public function get pastClubDays() : int
      {
         return var_1901;
      }
      
      public function get pastVipDays() : int
      {
         return var_1897;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2006 = param1;
      }
      
      public function get pixels() : int
      {
         return var_2006;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1530 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2005 = param1;
      }
   }
}
