package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1648:int = -1;
      
      private var var_1394:Boolean;
      
      private var var_1395:String;
      
      private var var_2278:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2278 = String(param1["set-type"]);
         var_1395 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1394 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1648 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1395;
      }
      
      public function get staticId() : int
      {
         return var_1648;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1648 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1394;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1394 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1395 = param1;
      }
      
      public function get setType() : String
      {
         return var_2278;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
