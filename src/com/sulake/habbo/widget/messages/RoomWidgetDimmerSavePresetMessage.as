package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_567:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1993:int;
      
      private var var_1989:int;
      
      private var var_2257:Boolean;
      
      private var var_1057:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_567);
         var_1989 = param1;
         var_1993 = param2;
         _color = param3;
         var_1057 = param4;
         var_2257 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1993;
      }
      
      public function get presetNumber() : int
      {
         return var_1989;
      }
      
      public function get brightness() : int
      {
         return var_1057;
      }
      
      public function get apply() : Boolean
      {
         return var_2257;
      }
   }
}
