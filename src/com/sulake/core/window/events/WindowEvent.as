package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_278:String = "WE_CHILD_RESIZED";
      
      public static const const_1279:String = "WE_CLOSE";
      
      public static const const_1178:String = "WE_DESTROY";
      
      public static const const_139:String = "WE_CHANGE";
      
      public static const const_1307:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1519:String = "WE_PARENT_RESIZE";
      
      public static const const_104:String = "WE_UPDATE";
      
      public static const const_1212:String = "WE_MAXIMIZE";
      
      public static const const_400:String = "WE_DESTROYED";
      
      public static const const_1013:String = "WE_UNSELECT";
      
      public static const const_1422:String = "WE_MAXIMIZED";
      
      public static const const_1552:String = "WE_UNLOCKED";
      
      public static const const_497:String = "WE_CHILD_REMOVED";
      
      public static const const_180:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1232:String = "WE_ACTIVATE";
      
      public static const const_265:String = "WE_ENABLED";
      
      public static const const_484:String = "WE_CHILD_RELOCATED";
      
      public static const const_1430:String = "WE_CREATE";
      
      public static const const_668:String = "WE_SELECT";
      
      public static const const_183:String = "";
      
      public static const const_1491:String = "WE_LOCKED";
      
      public static const const_1615:String = "WE_PARENT_RELOCATE";
      
      public static const const_1670:String = "WE_CHILD_REMOVE";
      
      public static const const_1677:String = "WE_CHILD_RELOCATE";
      
      public static const const_1529:String = "WE_LOCK";
      
      public static const const_237:String = "WE_FOCUSED";
      
      public static const const_636:String = "WE_UNSELECTED";
      
      public static const const_844:String = "WE_DEACTIVATED";
      
      public static const const_1343:String = "WE_MINIMIZED";
      
      public static const const_1679:String = "WE_ARRANGED";
      
      public static const const_1511:String = "WE_UNLOCK";
      
      public static const const_1598:String = "WE_ATTACH";
      
      public static const const_1412:String = "WE_OPEN";
      
      public static const const_1243:String = "WE_RESTORE";
      
      public static const const_1625:String = "WE_PARENT_RELOCATED";
      
      public static const const_1197:String = "WE_RELOCATE";
      
      public static const const_1703:String = "WE_CHILD_RESIZE";
      
      public static const const_1597:String = "WE_ARRANGE";
      
      public static const const_1310:String = "WE_OPENED";
      
      public static const const_1408:String = "WE_CLOSED";
      
      public static const const_1633:String = "WE_DETACHED";
      
      public static const const_1525:String = "WE_UPDATED";
      
      public static const const_1365:String = "WE_UNFOCUSED";
      
      public static const const_435:String = "WE_RELOCATED";
      
      public static const const_1286:String = "WE_DEACTIVATE";
      
      public static const const_235:String = "WE_DISABLED";
      
      public static const const_616:String = "WE_CANCEL";
      
      public static const const_690:String = "WE_ENABLE";
      
      public static const const_1394:String = "WE_ACTIVATED";
      
      public static const const_1302:String = "WE_FOCUS";
      
      public static const const_1712:String = "WE_DETACH";
      
      public static const const_1176:String = "WE_RESTORED";
      
      public static const const_1395:String = "WE_UNFOCUS";
      
      public static const const_61:String = "WE_SELECTED";
      
      public static const const_1376:String = "WE_PARENT_RESIZED";
      
      public static const const_1265:String = "WE_CREATED";
      
      public static const const_1641:String = "WE_ATTACHED";
      
      public static const const_1413:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1670:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1443:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1670 = param3;
         var_1443 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1443;
      }
      
      public function get related() : IWindow
      {
         return var_1670;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1443 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
