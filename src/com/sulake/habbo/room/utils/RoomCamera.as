package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_374:Number = 0.5;
      
      private static const const_815:int = 3;
      
      private static const const_1141:Number = 1;
       
      
      private var var_2197:Boolean = false;
      
      private var var_2196:Boolean = false;
      
      private var var_1103:int = 0;
      
      private var var_282:Vector3d = null;
      
      private var var_2199:int = 0;
      
      private var var_2204:int = 0;
      
      private var var_2202:Boolean = false;
      
      private var var_2200:int = -2;
      
      private var var_2198:Boolean = false;
      
      private var var_2201:int = 0;
      
      private var var_2205:int = -1;
      
      private var var_435:Vector3d = null;
      
      private var var_2203:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2199;
      }
      
      public function get targetId() : int
      {
         return var_2205;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2201 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2199 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2197 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2205 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2196 = param1;
      }
      
      public function dispose() : void
      {
         var_435 = null;
         var_282 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_435 == null)
         {
            var_435 = new Vector3d();
         }
         var_435.assign(param1);
         var_1103 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2200;
      }
      
      public function get screenHt() : int
      {
         return var_2203;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2204 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_282;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2203 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2201;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2197;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2196;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_435 != null && var_282 != null)
         {
            ++var_1103;
            _loc2_ = Vector3d.dif(var_435,var_282);
            if(_loc2_.length <= const_374)
            {
               var_282 = var_435;
               var_435 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_374 * (const_815 + 1))
               {
                  _loc2_.mul(const_374);
               }
               else if(var_1103 <= const_815)
               {
                  _loc2_.mul(const_374);
               }
               else
               {
                  _loc2_.mul(const_1141);
               }
               var_282 = Vector3d.sum(var_282,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2202 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2204;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2198 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2200 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_282 != null)
         {
            return;
         }
         var_282 = new Vector3d();
         var_282.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2202;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2198;
      }
   }
}
