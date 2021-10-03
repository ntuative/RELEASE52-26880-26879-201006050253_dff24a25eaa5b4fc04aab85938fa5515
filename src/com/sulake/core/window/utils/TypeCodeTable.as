package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_654;
         param1["bitmap"] = const_634;
         param1["border"] = const_687;
         param1["border_notify"] = const_1297;
         param1["button"] = const_510;
         param1["button_thick"] = const_721;
         param1["button_icon"] = const_1183;
         param1["button_group_left"] = const_730;
         param1["button_group_center"] = const_735;
         param1["button_group_right"] = const_703;
         param1["canvas"] = const_698;
         param1["checkbox"] = const_549;
         param1["closebutton"] = const_976;
         param1["container"] = const_353;
         param1["container_button"] = const_751;
         param1["display_object_wrapper"] = const_536;
         param1["dropmenu"] = const_417;
         param1["dropmenu_item"] = const_382;
         param1["frame"] = const_341;
         param1["frame_notify"] = const_1269;
         param1["header"] = const_718;
         param1["icon"] = const_988;
         param1["itemgrid"] = const_1035;
         param1["itemgrid_horizontal"] = const_388;
         param1["itemgrid_vertical"] = const_672;
         param1["itemlist"] = const_858;
         param1["itemlist_horizontal"] = const_319;
         param1["itemlist_vertical"] = const_314;
         param1["maximizebox"] = const_1266;
         param1["menu"] = WINDOW_TYPE_MENU;
         param1["menu_item"] = const_1247;
         param1["submenu"] = const_1002;
         param1["minimizebox"] = const_1386;
         param1["notify"] = const_1180;
         param1["null"] = const_744;
         param1["password"] = const_589;
         param1["radiobutton"] = const_769;
         param1["region"] = const_477;
         param1["restorebox"] = const_1249;
         param1["scaler"] = const_755;
         param1["scaler_horizontal"] = const_1370;
         param1["scaler_vertical"] = const_1292;
         param1["scrollbar_horizontal"] = const_448;
         param1["scrollbar_vertical"] = const_662;
         param1["scrollbar_slider_button_up"] = const_852;
         param1["scrollbar_slider_button_down"] = const_967;
         param1["scrollbar_slider_button_left"] = const_992;
         param1["scrollbar_slider_button_right"] = const_839;
         param1["scrollbar_slider_bar_horizontal"] = const_951;
         param1["scrollbar_slider_bar_vertical"] = const_887;
         param1["scrollbar_slider_track_horizontal"] = const_1042;
         param1["scrollbar_slider_track_vertical"] = const_848;
         param1["scrollable_itemlist"] = const_1294;
         param1["scrollable_itemlist_vertical"] = const_468;
         param1["scrollable_itemlist_horizontal"] = const_1017;
         param1["selector"] = const_598;
         param1["selector_list"] = const_584;
         param1["submenu"] = const_1002;
         param1["tab_button"] = const_669;
         param1["tab_container_button"] = const_861;
         param1["tab_context"] = WINDOW_TYPE_TAB_CONTEXT;
         param1["tab_content"] = const_845;
         param1["tab_selector"] = const_741;
         param1["text"] = const_538;
         param1["input"] = const_556;
         param1["toolbar"] = const_1182;
         param1["tooltip"] = const_318;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
