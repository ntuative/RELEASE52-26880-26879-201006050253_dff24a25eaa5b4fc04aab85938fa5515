package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_678:int = 6;
      
      public static const const_244:int = 5;
      
      public static const const_750:int = 2;
      
      public static const const_363:int = 9;
      
      public static const const_355:int = 4;
      
      public static const const_290:int = 2;
      
      public static const const_568:int = 4;
      
      public static const const_222:int = 8;
      
      public static const const_707:int = 7;
      
      public static const const_264:int = 3;
      
      public static const const_334:int = 1;
      
      public static const const_207:int = 5;
      
      public static const const_464:int = 12;
      
      public static const const_322:int = 1;
      
      public static const const_691:int = 11;
      
      public static const const_542:int = 3;
      
      public static const const_1654:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_413:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_413 = new Array();
         var_413.push(new Tab(_navigator,const_334,const_464,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_462));
         var_413.push(new Tab(_navigator,const_290,const_322,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_462));
         var_413.push(new Tab(_navigator,const_355,const_691,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_1000));
         var_413.push(new Tab(_navigator,const_264,const_244,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_462));
         var_413.push(new Tab(_navigator,const_207,const_222,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_682));
         setSelectedTab(const_334);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_413)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_413)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_413)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_355;
      }
      
      public function get tabs() : Array
      {
         return var_413;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
