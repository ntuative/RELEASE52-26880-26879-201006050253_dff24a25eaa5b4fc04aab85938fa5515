package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_896:String = "inventory_badges";
      
      public static const const_1263:String = "inventory_clothes";
      
      public static const const_1427:String = "inventory_furniture";
      
      public static const const_531:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_926:String = "inventory_effects";
       
      
      private var var_2023:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_531);
         var_2023 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2023;
      }
   }
}
