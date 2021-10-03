package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_582:String = "Rectangle";
      
      public static const const_64:String = "Boolean";
      
      public static const const_530:String = "Number";
      
      public static const const_65:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_674:String = "Point";
      
      public static const const_1050:String = "Array";
      
      public static const const_987:String = "uint";
      
      public static const const_404:String = "hex";
      
      public static const const_989:String = "Map";
       
      
      private var var_632:String;
      
      private var var_184:Object;
      
      private var var_2399:Boolean;
      
      private var _type:String;
      
      private var var_2228:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_632 = param1;
         var_184 = param2;
         _type = param3;
         var_2228 = param4;
         var_2399 = param3 == const_989 || param3 == const_1050 || param3 == const_674 || param3 == const_582;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_404:
               return "0x" + uint(var_184).toString(16);
            case const_64:
               return Boolean(var_184) == true ? "true" : "false";
            case const_674:
               return "Point(" + Point(var_184).x + ", " + Point(var_184).y + ")";
            case const_582:
               return "Rectangle(" + Rectangle(var_184).x + ", " + Rectangle(var_184).y + ", " + Rectangle(var_184).width + ", " + Rectangle(var_184).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_989:
               _loc3_ = var_184 as Map;
               _loc1_ = "<var key=\"" + var_632 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_1050:
               _loc4_ = var_184 as Array;
               _loc1_ = "<var key=\"" + var_632 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_674:
               _loc5_ = var_184 as Point;
               _loc1_ = "<var key=\"" + var_632 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_582:
               _loc6_ = var_184 as Rectangle;
               _loc1_ = "<var key=\"" + var_632 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_65 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_404:
               _loc1_ = "<var key=\"" + var_632 + "\" value=\"" + "0x" + uint(var_184).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_632 + "\" value=\"" + var_184 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_184;
      }
      
      public function get valid() : Boolean
      {
         return var_2228;
      }
      
      public function get key() : String
      {
         return var_632;
      }
   }
}
