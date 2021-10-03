package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class PetVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_805:int = 2;
      
      private static const const_1128:Array = [0,0,0];
       
      
      private var var_451:String;
      
      private const const_1458:int = 1;
      
      private var var_423:String = "";
      
      private var var_751:int = 0;
      
      private var _isDisposed:Boolean = false;
      
      private var var_1999:int = 0;
      
      private var var_1306:String = "";
      
      private var var_1734:Boolean = false;
      
      private var var_395:Boolean;
      
      private const const_1129:int = 3;
      
      private var var_1565:String = "";
      
      private var var_65:IAvatarImage = null;
      
      private var var_750:int = 0;
      
      private const const_1728:int = 3;
      
      private var var_1219:int = -1;
      
      private var var_1308:Boolean = false;
      
      private var var_1570:int = -1;
      
      private var var_668:int = 0;
      
      private var var_2394:Array;
      
      private const const_1130:int = 0;
      
      private var var_1314:Boolean = false;
      
      private var var_1571:int = -1;
      
      private var var_359:ExperienceData;
      
      private var var_1566:Number = NaN;
      
      private var var_903:Boolean = false;
      
      private var var_1315:Boolean = false;
      
      private var var_310:BitmapDataAsset;
      
      private const const_1459:int = 2;
      
      private var var_1079:int = 0;
      
      private var var_752:PetVisualizationData = null;
      
      private var var_510:Map;
      
      private var var_1307:Boolean = false;
      
      public function PetVisualization()
      {
         super();
         var_2394 = new Array();
         var_510 = new Map();
         var_395 = false;
      }
      
      public function imageReady() : void
      {
         var_1308 = true;
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_384,var_423,var_1565);
         if(var_1306 != null && var_1306 != "")
         {
            param1.appendAction(AvatarAction.const_250,var_1306);
         }
         if(var_1734 || var_1315)
         {
            param1.appendAction(AvatarAction.const_461);
         }
         param1.endActionAppends();
         var _loc2_:int = param1.getSprites().length + const_1129;
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      private function validateActions() : void
      {
         var _loc1_:int = 0;
         var_1307 = false;
         switch(var_423)
         {
            case AvatarAction.const_635:
            case AvatarAction.const_889:
            case AvatarAction.const_980:
            case AvatarAction.const_931:
            case AvatarAction.const_985:
            case AvatarAction.const_1053:
            case AvatarAction.const_608:
            case AvatarAction.const_291:
            case AvatarAction.const_287:
               var_1307 = true;
         }
         var_1314 = false;
         var_903 = false;
         if(var_423 == "lay")
         {
            var_903 = true;
            _loc1_ = int(var_1565);
            if(_loc1_ < 0)
            {
               var_1314 = true;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      private function resetAvatarImages() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_510)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         var_510.reset();
         var_65 = null;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         var_752 = param1 as PetVisualizationData;
         createSprites(const_1129);
         var_359 = new ExperienceData(var_752);
         return true;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.dispose();
         if(var_510 != null)
         {
            _loc1_ = var_510.getKeys();
            for each(_loc2_ in _loc1_)
            {
               _loc3_ = var_510.getValue(_loc2_) as IAvatarImage;
               _loc3_.dispose();
            }
         }
         var_510.dispose();
         if(var_359)
         {
            var_359.dispose();
         }
         var_359 = null;
         var_752 = null;
         _isDisposed = true;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc2_:IRoomObjectSprite = getSprite(const_1458);
         var_310 = null;
         _loc2_ = getSprite(const_1458);
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 < 48)
         {
            var_310 = var_65.getAsset("sh_std_sd_1_0_0");
            _loc3_ = -8;
            _loc4_ = -3;
         }
         else
         {
            var_310 = var_65.getAsset("h_std_sd_1_0_0");
            _loc3_ = -17;
            _loc4_ = -7;
         }
         if(var_310)
         {
            _loc2_.asset = var_310.content as BitmapData;
            _loc2_.offsetX = _loc3_;
            _loc2_.offsetY = _loc4_;
            _loc2_.alpha = 50;
            _loc2_.relativeDepth = 1;
         }
         else
         {
            _loc2_.asset = null;
         }
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = var_510.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = var_752.getAvatar(var_451,param1,this);
            if(_loc3_ != null)
            {
               var_510.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_168)
         {
            var_1734 = param1.getNumber(RoomObjectVariableEnum.const_463) > 0;
            var_1306 = param1.getString(RoomObjectVariableEnum.const_276);
            var_423 = param1.getString(RoomObjectVariableEnum.const_387);
            var_1565 = param1.getString(RoomObjectVariableEnum.const_646);
            var_1566 = param1.getNumber(RoomObjectVariableEnum.const_339);
            var_1079 = param1.getNumber(RoomObjectVariableEnum.const_1052);
            var_1999 = param1.getNumber(RoomObjectVariableEnum.const_856);
            validateActions();
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_178);
            if(var_451 != _loc3_)
            {
               var_451 = _loc3_;
               resetAvatarImages();
            }
            var_168 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      override public function update(param1:IRoomGeometry = null, param2:int = 0) : void
      {
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:* = null;
         var _loc25_:* = null;
         var _loc3_:IRoomObject = object;
         if(_loc3_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(var_752 == null)
         {
            return;
         }
         var _loc4_:IRoomObjectModel = _loc3_.getModel();
         if(var_1308)
         {
            var_1308 = false;
            var_751 = 0;
            var_750 = 1;
            resetAvatarImages();
         }
         var _loc5_:Number = param1.scale;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = updateModel(_loc4_,_loc5_);
         if(_loc8_ || _loc5_ != var_150 || var_65 == null)
         {
            if(_loc5_ != var_150)
            {
               var_150 = _loc5_;
               _loc6_ = true;
            }
            if(_loc6_ || var_65 == null)
            {
               var_65 = getAvatarImage(_loc5_);
            }
            if(var_65 == null)
            {
               return;
            }
            if(_loc6_)
            {
               updateShadow(_loc5_);
            }
            _loc7_ = updateObject(_loc3_,param1,true);
            updateActions(var_65);
         }
         else
         {
            _loc7_ = updateObject(_loc3_,param1);
         }
         var _loc9_:Boolean = _loc7_ || _loc8_ || _loc6_;
         var _loc10_:Boolean = var_395 || var_750 > 0 || var_1307;
         var_359.alpha = 0;
         if(var_1079 > 0)
         {
            _loc11_ = param2 - var_1079;
            if(_loc11_ < AvatarAction.const_936)
            {
               var_359.alpha = int(Math.sin(_loc11_ / 0 * 0) * 255);
               var_359.setExperience(var_1999);
               var_750 = const_1728;
            }
            else
            {
               var_1079 = 0;
            }
            _loc12_ = getSprite(const_1459);
            if(_loc12_ != null)
            {
               if(false)
               {
                  _loc12_.asset = var_359.image;
                  _loc12_.offsetX = -20;
                  _loc12_.offsetY = -80;
                  _loc12_.alpha = var_359.alpha;
                  _loc12_.visible = true;
               }
               else
               {
                  _loc12_.asset = null;
                  _loc12_.visible = false;
               }
            }
         }
         if(_loc9_ || _loc10_)
         {
            increaseUpdateId();
            --var_750;
            ++var_668;
            --var_751;
            if(!(var_751 <= 0 || _loc6_))
            {
               return;
            }
            var_65.updateAnimationByFrames(1);
            var_751 = const_805;
            var_395 = var_65.isAnimating();
            _loc13_ = var_65.getCanvasOffsets();
            if(_loc13_ == null || _loc13_.length < 3)
            {
               _loc13_ = const_1128;
            }
            _loc14_ = 0;
            if(object.getLocation().z > 0)
            {
               _loc14_ = Math.min(_loc5_ / 2.75,0);
            }
            _loc12_ = getSprite(const_1130);
            if(_loc12_)
            {
               _loc17_ = var_65.getImage(AvatarSetType.const_38,false);
               if(_loc17_ != null)
               {
                  _loc12_.asset = _loc17_;
               }
               if(_loc5_ < 48)
               {
                  _loc12_.offsetX = -16 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + 8 + _loc13_[1] + _loc14_;
               }
               else
               {
                  _loc12_.offsetX = -32 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + 16 + _loc13_[1] + _loc14_;
               }
            }
            _loc15_ = const_1129;
            for each(_loc16_ in var_65.getSprites())
            {
               _loc12_ = getSprite(_loc15_);
               if(_loc12_ != null)
               {
                  _loc18_ = var_65.getLayerData(_loc16_);
                  _loc19_ = 0;
                  _loc20_ = _loc16_.getDirectionOffsetX(var_65.getDirection());
                  _loc21_ = _loc16_.getDirectionOffsetY(var_65.getDirection());
                  _loc22_ = _loc16_.getDirectionOffsetZ(var_65.getDirection());
                  _loc23_ = 0;
                  if(_loc16_.hasDirections)
                  {
                     _loc23_ = var_65.getDirection();
                  }
                  if(_loc18_ != null)
                  {
                     _loc19_ = _loc18_.animationFrame;
                     _loc20_ += _loc18_.dx;
                     _loc21_ += _loc18_.dy;
                     _loc23_ += _loc18_.directionOffset;
                  }
                  if(_loc5_ < 48)
                  {
                     _loc20_ /= 2;
                     _loc21_ /= 2;
                  }
                  if(_loc23_ < 0)
                  {
                     _loc23_ += 8;
                  }
                  if(_loc23_ > 7)
                  {
                     _loc23_ -= 8;
                  }
                  _loc24_ = var_65.getScale() + "_" + _loc16_.member + "_" + _loc23_ + "_" + _loc19_;
                  _loc25_ = var_65.getAsset(_loc24_);
                  if(_loc25_ != null)
                  {
                     _loc12_.asset = _loc25_.content as BitmapData;
                     _loc12_.offsetX = -1 * _loc25_.offset.x - _loc5_ / 2 + _loc20_;
                     _loc12_.offsetY = -1 * _loc25_.offset.y + _loc21_;
                     _loc12_.relativeDepth = -0.01 - 0.1 * _loc15_ * _loc22_;
                     if(_loc16_.ink == 33)
                     {
                        _loc12_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc12_.blendMode = BlendMode.NORMAL;
                     }
                     _loc15_++;
                  }
               }
            }
         }
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param3 || var_290 != param1.getUpdateID() || var_1219 != param2.updateId)
         {
            _loc4_ = param1.getDirection().x - param2.direction.x;
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            _loc5_ = var_1566;
            if(isNaN(var_1566))
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
               _loc5_ = (_loc5_ % 360 + 360) % 360;
            }
            if(_loc4_ != var_1570 || param3)
            {
               var_1570 = _loc4_;
               _loc4_ -= 112.5;
               _loc4_ = (_loc4_ + 360) % 360;
               var_65.setDirectionAngle(AvatarSetType.const_38,_loc4_);
            }
            if(_loc5_ != var_1571 || param3)
            {
               var_1571 = _loc5_;
               _loc5_ -= 112.5;
               _loc5_ = (_loc5_ + 360) % 360;
               var_65.setDirectionAngle(AvatarSetType.const_46,_loc5_);
            }
            var_290 = param1.getUpdateID();
            var_1219 = param2.updateId;
            return true;
         }
         return false;
      }
   }
}
