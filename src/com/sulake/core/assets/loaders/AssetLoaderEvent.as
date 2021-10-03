package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_991:String = "AssetLoaderEventUnload";
      
      public static const const_52:String = "AssetLoaderEventError";
      
      public static const const_940:String = "AssetLoaderEventOpen";
      
      public static const const_908:String = "AssetLoaderEventProgress";
      
      public static const const_958:String = "AssetLoaderEventStatus";
      
      public static const const_36:String = "AssetLoaderEventComplete";
       
      
      private var var_153:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_153 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_153;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_153);
      }
   }
}
