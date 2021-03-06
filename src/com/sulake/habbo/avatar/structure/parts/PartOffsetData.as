package com.sulake.habbo.avatar.structure.parts
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   
   public final class PartOffsetData
   {
      
      private static var _offsets:Map = new Map();
      
      private static var _instance:PartOffsetData;
      
      private static var _parsed:Boolean = false;
       
      
      public function PartOffsetData()
      {
         super();
         if(false)
         {
            throw new Error("PartOffsetData is a singleton class. Use getInstance() instead of constructor!");
         }
      }
      
      private static function parseXml(param1:XML) : Map
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Map = new Map();
         for each(_loc3_ in param1.direction)
         {
            _loc4_ = _loc3_.@id;
            _loc5_ = _loc2_.getValue(_loc4_);
            if(_loc5_ == null)
            {
               _loc5_ = new Map();
               _loc2_.add(_loc4_,_loc5_);
            }
            for each(_loc6_ in _loc3_.action)
            {
               _loc7_ = _loc6_.@type;
               _loc8_ = _loc5_.getValue(_loc7_);
               if(_loc8_ == null)
               {
                  _loc8_ = new Map();
                  _loc5_.add(_loc7_,_loc8_);
               }
               for each(_loc9_ in _loc6_.parttype)
               {
                  _loc10_ = _loc9_.@type;
                  _loc11_ = _loc8_.getValue(_loc10_);
                  if(_loc11_ == null)
                  {
                     _loc11_ = new Map();
                     _loc8_.add(_loc10_,_loc11_);
                  }
                  for each(_loc12_ in _loc9_.frame)
                  {
                     _loc13_ = _loc12_.@number;
                     _loc14_ = _loc11_.getValue(_loc13_);
                     if(_loc14_ == null)
                     {
                        _loc14_ = new Map();
                        _loc11_.add(_loc13_,_loc14_);
                     }
                     for each(_loc15_ in _loc12_.offset)
                     {
                        if(_loc15_.hasOwnProperty("@aliasaction"))
                        {
                           if(String(_loc15_.@aliasaction).length != 0)
                           {
                              _loc16_ = new Object();
                              _loc16_.aliasAction = new String(_loc15_.@aliasaction);
                              _loc16_.aliasFrame = int(_loc15_.@aliasframe);
                              _loc14_.add("alias",_loc16_);
                           }
                        }
                        else
                        {
                           _loc14_.add("offset",new Point(_loc15_.@x,_loc15_.@y));
                        }
                     }
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function getInstance(param1:IAssetLibrary) : PartOffsetData
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         if(true)
         {
            PartOffsetData._instance = new PartOffsetData();
            _loc2_ = "pet";
            _loc5_ = 0;
            _loc6_ = 9;
            _loc3_ = "h";
            _loc5_ = 0;
            while(_loc5_ < _loc6_)
            {
               _loc7_ = _loc3_ + "_" + _loc2_ + "_" + "offsets" + "_" + _loc5_;
               if(param1.hasAsset(_loc7_))
               {
                  _loc4_ = param1.getAssetByName(_loc7_).content as XML;
                  PartOffsetData._offsets.add(_loc7_,parseXml(_loc4_));
               }
               _loc5_++;
            }
            _loc3_ = "sh";
            _loc5_ = 0;
            while(_loc5_ < _loc6_)
            {
               _loc7_ = _loc3_ + "_" + _loc2_ + "_" + "offsets" + "_" + _loc5_;
               if(param1.hasAsset(_loc7_))
               {
                  _loc4_ = param1.getAssetByName(_loc7_).content as XML;
                  PartOffsetData._offsets.add(_loc7_,parseXml(_loc4_));
               }
               _loc5_++;
            }
            PartOffsetData._parsed = true;
         }
         return PartOffsetData._instance;
      }
      
      public static function dispose() : void
      {
         if(false)
         {
            PartOffsetData._offsets = new Map();
            PartOffsetData._parsed = false;
            PartOffsetData._instance = null;
         }
      }
      
      public function getOffset(param1:int, param2:String, param3:String, param4:String, param5:int, param6:int) : Point
      {
         var _loc14_:* = null;
         var _loc15_:* = null;
         if(true)
         {
            return null;
         }
         var _loc8_:String = param2 + "_" + "pet" + "_" + "offsets" + "_" + param1;
         var _loc9_:Map = PartOffsetData._offsets.getValue(_loc8_);
         if(_loc9_ == null)
         {
            Logger.log("Offsets were not found for: " + _loc8_);
            return null;
         }
         var _loc10_:Map = _loc9_.getValue(String(param6));
         if(_loc10_ == null)
         {
            return null;
         }
         var _loc11_:Map = _loc10_.getValue(param4);
         if(_loc11_ == null)
         {
            return null;
         }
         var _loc12_:Map = _loc11_.getValue(param3);
         if(_loc12_ == null)
         {
            return null;
         }
         var _loc13_:Map = _loc12_.getValue(String(param5));
         if(_loc13_ == null)
         {
            return null;
         }
         if(_loc13_.getValue("alias") != null)
         {
            _loc14_ = _loc13_.getValue("alias");
            return getOffset(param1,param2,param3,_loc14_.aliasAction as String,_loc14_.aliasFrame,param6);
         }
         _loc15_ = _loc13_.getValue("offset");
         if(_loc15_ == null)
         {
            return null;
         }
         return _loc15_.clone();
      }
      
      public function loadOffsets(param1:IAssetLibrary) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc7_:* = null;
         var _loc5_:int = 0;
         _loc3_ = "h";
         _loc5_ = 0;
         while(_loc5_ < 9)
         {
            _loc7_ = _loc3_ + "_" + "pet" + "_" + "offsets" + "_" + _loc5_;
            if(param1.hasAsset(_loc7_))
            {
               _loc4_ = param1.getAssetByName(_loc7_).content as XML;
               PartOffsetData._offsets.add(_loc7_,parseXml(_loc4_));
            }
            _loc5_++;
         }
         _loc3_ = "sh";
         _loc5_ = 0;
         while(_loc5_ < 9)
         {
            _loc7_ = _loc3_ + "_" + "pet" + "_" + "offsets" + "_" + _loc5_;
            if(param1.hasAsset(_loc7_))
            {
               _loc4_ = param1.getAssetByName(_loc7_).content as XML;
               PartOffsetData._offsets.add(_loc7_,parseXml(_loc4_));
            }
            _loc5_++;
         }
      }
   }
}
