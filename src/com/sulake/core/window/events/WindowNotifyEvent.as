package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1357:String = "WN_CREATED";
      
      public static const const_974:String = "WN_DISABLE";
      
      public static const const_862:String = "WN_DEACTIVATED";
      
      public static const const_957:String = "WN_OPENED";
      
      public static const const_911:String = "WN_CLOSED";
      
      public static const const_842:String = "WN_DESTROY";
      
      public static const const_1563:String = "WN_ARRANGED";
      
      public static const const_456:String = "WN_PARENT_RESIZED";
      
      public static const const_990:String = "WN_ENABLE";
      
      public static const const_1028:String = "WN_RELOCATE";
      
      public static const const_962:String = "WN_FOCUS";
      
      public static const const_999:String = "WN_PARENT_RELOCATED";
      
      public static const const_399:String = "WN_PARAM_UPDATED";
      
      public static const const_763:String = "WN_PARENT_ACTIVATED";
      
      public static const const_174:String = "WN_RESIZED";
      
      public static const const_912:String = "WN_CLOSE";
      
      public static const const_859:String = "WN_PARENT_REMOVED";
      
      public static const const_270:String = "WN_CHILD_RELOCATED";
      
      public static const const_701:String = "WN_ENABLED";
      
      public static const const_263:String = "WN_CHILD_RESIZED";
      
      public static const const_993:String = "WN_MINIMIZED";
      
      public static const const_618:String = "WN_DISABLED";
      
      public static const const_239:String = "WN_CHILD_ACTIVATED";
      
      public static const const_453:String = "WN_STATE_UPDATED";
      
      public static const const_637:String = "WN_UNSELECTED";
      
      public static const const_491:String = "WN_STYLE_UPDATED";
      
      public static const const_1572:String = "WN_UPDATE";
      
      public static const const_482:String = "WN_PARENT_ADDED";
      
      public static const const_748:String = "WN_RESIZE";
      
      public static const const_640:String = "WN_CHILD_REMOVED";
      
      public static const const_1614:String = "";
      
      public static const const_866:String = "WN_RESTORED";
      
      public static const const_348:String = "WN_SELECTED";
      
      public static const const_930:String = "WN_MINIMIZE";
      
      public static const const_947:String = "WN_FOCUSED";
      
      public static const const_1241:String = "WN_LOCK";
      
      public static const const_329:String = "WN_CHILD_ADDED";
      
      public static const const_939:String = "WN_UNFOCUSED";
      
      public static const const_485:String = "WN_RELOCATED";
      
      public static const const_919:String = "WN_DEACTIVATE";
      
      public static const const_1348:String = "WN_CRETAE";
      
      public static const const_907:String = "WN_RESTORE";
      
      public static const const_326:String = "WN_ACTVATED";
      
      public static const const_1258:String = "WN_LOCKED";
      
      public static const const_377:String = "WN_SELECT";
      
      public static const const_850:String = "WN_MAXIMIZE";
      
      public static const const_895:String = "WN_OPEN";
      
      public static const const_539:String = "WN_UNSELECT";
      
      public static const const_1674:String = "WN_ARRANGE";
      
      public static const const_1203:String = "WN_UNLOCKED";
      
      public static const const_1680:String = "WN_UPDATED";
      
      public static const const_1008:String = "WN_ACTIVATE";
      
      public static const const_1254:String = "WN_UNLOCK";
      
      public static const const_963:String = "WN_MAXIMIZED";
      
      public static const const_1019:String = "WN_DESTROYED";
      
      public static const const_894:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1670,cancelable);
      }
   }
}
