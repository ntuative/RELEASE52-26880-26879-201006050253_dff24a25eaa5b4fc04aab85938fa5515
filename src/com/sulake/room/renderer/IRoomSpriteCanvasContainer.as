package com.sulake.room.renderer
{
   import com.sulake.room.object.IRoomObject;
   
   public interface IRoomSpriteCanvasContainer
   {
       
      
      function get roomObjectVariableAccurateZ() : String;
      
      function method_6(param1:int) : String;
      
      function getRoomObject(param1:String) : IRoomObject;
      
      function getRoomObjectWithIndex(param1:int) : IRoomObject;
      
      function getRoomObjectCount() : int;
   }
}
