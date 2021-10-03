package com.sulake.core.utils
{
   import flash.events.Event;
   
   public class LibraryLoaderEvent extends Event
   {
      
      public static const LIBRARY_LOADER_EVENT_DEBUG:String = "LIBRARY_LOADER_EVENT_DEBUG";
      
      public static const LIBRARY_LOADER_EVENT_UNLOAD:String = "LIBRARY_LOADER_EVENT_UNLOAD";
      
      public static const LIBRARY_LOADER_EVENT_COMPLETE:String = "LIBRARY_LOADER_EVENT_COMPLETE";
      
      public static const LIBRARY_LOADER_EVENT_DISPOSE:String = "LIBRARY_LOADER_EVENT_DISPOSE";
      
      public static const LIBRARY_LOADER_EVENT_PROGRESS:String = "LIBRARY_LOADER_EVENT_PROGRESS";
      
      public static const LIBRARY_LOADER_EVENT_ERROR:String = "LIBRARY_LOADER_EVENT_ERROR";
      
      public static const LIBRARY_LOADER_EVENT_STATUS:String = "LIBRARY_LOADER_EVENT_STATUS";
       
      
      private var var_153:int;
      
      private var var_479:uint;
      
      private var _bytesTotal:uint;
      
      public function LibraryLoaderEvent(param1:String, param2:int, param3:uint, param4:uint)
      {
         var_153 = param2;
         _bytesTotal = param3;
         var_479 = param4;
         super(param1,false,false);
      }
      
      public function get bytesLoaded() : uint
      {
         return var_479;
      }
      
      public function get status() : int
      {
         return var_153;
      }
      
      public function get bytesTotal() : uint
      {
         return _bytesTotal;
      }
      
      override public function clone() : Event
      {
         return new LibraryLoaderEvent(type,var_153,_bytesTotal,var_479);
      }
   }
}
