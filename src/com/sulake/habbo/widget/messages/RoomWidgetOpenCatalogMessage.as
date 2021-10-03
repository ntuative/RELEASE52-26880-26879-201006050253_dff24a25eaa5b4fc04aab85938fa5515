package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_1054:String = "RWOCM_CLUB_MAIN";
      
      public static const const_562:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1839:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_562);
         var_1839 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1839;
      }
   }
}
