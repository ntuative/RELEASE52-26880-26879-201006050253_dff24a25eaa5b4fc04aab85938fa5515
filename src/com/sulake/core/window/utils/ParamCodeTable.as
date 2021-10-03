package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_143;
         param1["bound_to_parent_rect"] = const_92;
         param1["child_window"] = const_981;
         param1["embedded_controller"] = const_340;
         param1["resize_to_accommodate_children"] = const_69;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_579;
         param1["mouse_dragging_target"] = const_226;
         param1["mouse_dragging_trigger"] = const_327;
         param1["mouse_scaling_target"] = const_292;
         param1["mouse_scaling_trigger"] = const_392;
         param1["horizontal_mouse_scaling_trigger"] = const_214;
         param1["vertical_mouse_scaling_trigger"] = const_217;
         param1["observe_parent_input_events"] = const_977;
         param1["optimize_region_to_layout_size"] = const_424;
         param1["parent_window"] = const_954;
         param1["relative_horizontal_scale_center"] = const_186;
         param1["relative_horizontal_scale_fixed"] = const_126;
         param1["relative_horizontal_scale_move"] = const_311;
         param1["relative_horizontal_scale_strech"] = const_275;
         param1["relative_scale_center"] = const_928;
         param1["relative_scale_fixed"] = const_537;
         param1["relative_scale_move"] = const_996;
         param1["relative_scale_strech"] = const_1037;
         param1["relative_vertical_scale_center"] = const_182;
         param1["relative_vertical_scale_fixed"] = const_132;
         param1["relative_vertical_scale_move"] = const_354;
         param1["relative_vertical_scale_strech"] = const_261;
         param1["on_resize_align_left"] = const_749;
         param1["on_resize_align_right"] = const_451;
         param1["on_resize_align_center"] = const_460;
         param1["on_resize_align_top"] = const_661;
         param1["on_resize_align_bottom"] = const_431;
         param1["on_resize_align_middle"] = const_483;
         param1["on_accommodate_align_left"] = const_1029;
         param1["on_accommodate_align_right"] = const_389;
         param1["on_accommodate_align_center"] = const_638;
         param1["on_accommodate_align_top"] = const_849;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_600;
         param1["route_input_events_to_parent"] = const_467;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_944;
         param1["scalable_with_mouse"] = const_927;
         param1["reflect_horizontal_resize_to_parent"] = const_395;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_296;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
