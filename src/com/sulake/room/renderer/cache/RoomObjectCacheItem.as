package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_594:RoomObjectLocationCacheItem = null;
      
      private var var_182:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_594 = new RoomObjectLocationCacheItem(param1);
         var_182 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_594;
      }
      
      public function dispose() : void
      {
         if(var_594 != null)
         {
            var_594.dispose();
            var_594 = null;
         }
         if(var_182 != null)
         {
            var_182.dispose();
            var_182 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_182;
      }
   }
}
