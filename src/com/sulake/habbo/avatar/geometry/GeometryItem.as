package com.sulake.habbo.avatar.geometry
{
   public class GeometryItem extends Node3D
   {
       
      
      private var _id:String;
      
      private var var_485:Vector3D;
      
      private var var_1386:Number;
      
      private var var_1708:Boolean = false;
      
      private var var_1709:Boolean = false;
      
      public function GeometryItem(param1:XML, param2:Boolean = false)
      {
         super(parseFloat(param1.@x),parseFloat(param1.@y),parseFloat(param1.@z));
         _id = String(param1.@id);
         var_1386 = parseFloat(param1.@radius);
         var_485 = new Vector3D(parseFloat(param1.@nx),parseFloat(param1.@ny),parseFloat(param1.@nz));
         var_1709 = parseInt(param1.@double) as Boolean;
         var_1708 = param2;
      }
      
      public function toString() : String
      {
         return _id + ": " + this.location + " - " + this.transformedLocation;
      }
      
      public function get normal() : Vector3D
      {
         return var_485;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function getDistance(param1:Vector3D) : Number
      {
         var _loc2_:Number = Math.abs(param1.z - this.transformedLocation.z - var_1386);
         var _loc3_:Number = Math.abs(param1.z - this.transformedLocation.z + var_1386);
         return Math.min(_loc2_,_loc3_);
      }
      
      public function get isDoubleSided() : Boolean
      {
         return var_1709;
      }
      
      public function get isDynamic() : Boolean
      {
         return var_1708;
      }
   }
}
