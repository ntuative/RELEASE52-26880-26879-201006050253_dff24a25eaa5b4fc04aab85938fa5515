package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_814:LegacyWallGeometry = null;
      
      private var var_570:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_572:TileHeightMap = null;
      
      private var var_1736:String = null;
      
      private var _roomId:int = 0;
      
      private var var_571:SelectedRoomObjectData = null;
      
      private var var_815:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_814 = new LegacyWallGeometry();
         var_815 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_570 != null)
         {
            var_570.dispose();
         }
         var_570 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_572 != null)
         {
            var_572.dispose();
         }
         var_572 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1736 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_814;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_571;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_815;
      }
      
      public function dispose() : void
      {
         if(var_572 != null)
         {
            var_572.dispose();
            var_572 = null;
         }
         if(var_814 != null)
         {
            var_814.dispose();
            var_814 = null;
         }
         if(var_815 != null)
         {
            var_815.dispose();
            var_815 = null;
         }
         if(var_570 != null)
         {
            var_570.dispose();
            var_570 = null;
         }
         if(var_571 != null)
         {
            var_571.dispose();
            var_571 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_572;
      }
      
      public function get worldType() : String
      {
         return var_1736;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_571 != null)
         {
            var_571.dispose();
         }
         var_571 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_570;
      }
   }
}
