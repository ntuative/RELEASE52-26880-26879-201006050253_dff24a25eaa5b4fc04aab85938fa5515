package com.sulake.habbo.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.avatar.actions.ActiveActionData;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.animation.Animation;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.IAvatarDataContainer;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.cache.AvatarImageBodyPartCache;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarDirectionAngle;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.pets.IPetData;
   import com.sulake.habbo.avatar.structure.AvatarCanvas;
   import com.sulake.habbo.avatar.structure.figure.FigurePart;
   import com.sulake.habbo.avatar.structure.figure.IFigurePartSet;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import com.sulake.habbo.avatar.structure.figure.ISetType;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class PetImage implements IAvatarImage, IDisposable
   {
      
      private static const CHANNELS_UNIQUE:String = "CHANNELS_UNIQUE";
      
      private static const CHANNELS_EQUAL:String = "CHANNELS_EQUAL";
      
      private static const CHANNELS_SATURATED:String = "CHANNELS_SATURATED";
      
      private static const CHANNELS_BLUE:String = "CHANNELS_BLUE";
      
      private static const CHANNELS_RED:String = "CHANNELS_RED";
      
      private static const CHANNELS_GREEN:String = "CHANNELS_GREEN";
      
      private static const const_1073:int = 2;
      
      private static const const_1074:String = AvatarSetType.const_38;
      
      private static const const_1075:String = "Default";
       
      
      private var var_1376:int = 0;
      
      private var var_451:AvatarFigureContainer;
      
      private var var_1012:Array;
      
      protected var _isDisposed:Boolean;
      
      private var var_182:Array;
      
      private var var_826:Boolean = false;
      
      private var var_1773:String;
      
      protected var var_151:String;
      
      private var var_2441:int;
      
      private var _image:BitmapData;
      
      private var var_1377:int;
      
      private var var_130:AvatarImageCache;
      
      private var var_296:Boolean;
      
      private var var_395:Boolean;
      
      private var _assets:AssetAliasCollection;
      
      private var var_482:IAvatarDataContainer;
      
      private var var_498:int = 0;
      
      private var var_2442:int;
      
      private var var_1200:int = 0;
      
      private var var_1112:int;
      
      private var var_222:Array;
      
      protected var var_93:int;
      
      private var var_692:String;
      
      private var var_574:Array;
      
      private var var_825:IActiveActionData;
      
      protected var var_250:IActiveActionData;
      
      protected var var_81:AvatarStructure;
      
      public function PetImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:String, param4:String)
      {
         var_222 = [];
         var_574 = new Array();
         super();
         var_296 = true;
         var_81 = param1;
         _assets = param2;
         var_151 = param4;
         if(var_151 == null)
         {
            var_151 = AvatarScaleType.const_56;
         }
         if(param3 == null || param3 == "")
         {
            param3 = "phd-1-5.pbd-1-5.ptl-1-5";
            Logger.log("Using default pet figure");
         }
         var_451 = new AvatarFigureContainer(param3);
         var _loc5_:int = var_451.getPartSetId("pbd");
         solvePetAvatarTypeAndBreed(_loc5_);
         var_1376 = var_1112;
         var_130 = new AvatarImageCache(var_81,this,_assets,var_151);
         setDirection(const_1074,const_1073);
         var_222 = new Array();
         var_825 = new ActiveActionData(AvatarAction.const_512);
         var_825.definition = var_81.getActionDefinition(const_1075);
         resetActions();
      }
      
      private function logThis(param1:String) : void
      {
      }
      
      public function getCanvasOffsets() : Array
      {
         return var_574;
      }
      
      public function getSprites() : Array
      {
         return var_182;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(!_isDisposed)
         {
            var_81 = null;
            _assets = null;
            var_130 = null;
            var_250 = null;
            var_451 = null;
            var_482 = null;
            var_222 = null;
            if(_image)
            {
               _image.dispose();
            }
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            _image = null;
            var_574 = null;
            _isDisposed = true;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function setDirection(param1:String, param2:int) : void
      {
         var _loc3_:* = null;
         param2 += var_1200;
         if(param2 < AvatarDirectionAngle.const_1014)
         {
            param2 = AvatarDirectionAngle.const_267 + (param2 + 1);
         }
         if(param2 > AvatarDirectionAngle.const_267)
         {
            param2 -= NaN;
         }
         if(param1 == AvatarSetType.const_46)
         {
            if((var_93 == 6 || var_93 == 0) && param2 == 7)
            {
               param2 = var_93;
            }
            _loc3_ = var_81.renderManager.petDataManager.getPetData(var_1376);
            if(_loc3_ != null)
            {
               if(_loc3_.disableHeadTurn)
               {
                  param2 = var_93;
               }
            }
         }
         if(var_81.isMainAvatarSet(param1))
         {
            var_93 = param2;
         }
         getCache().setDirection(param1,param2);
         var_296 = true;
      }
      
      public function getAsset(param1:String) : BitmapDataAsset
      {
         return _assets.getAssetByName(param1) as BitmapDataAsset;
      }
      
      public function get avatarSpriteData() : IAvatarDataContainer
      {
         return var_482;
      }
      
      public function initActionAppends() : void
      {
         var_222 = new Array();
         var_826 = false;
         var_692 = "";
      }
      
      public function isAnimating() : Boolean
      {
         return var_395;
      }
      
      public function endActionAppends() : void
      {
         sortActions();
         resetActions();
         setActionsToParts();
      }
      
      private function setActionsToParts() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in var_1012)
         {
            if(!(!_loc1_ || !_loc1_.definition))
            {
               if(_loc1_.definition.isAnimation && _loc1_.actionParameter == "")
               {
                  _loc1_.actionParameter = "1";
               }
               setActionToParts(_loc1_);
               if(_loc1_.definition.isAnimation)
               {
                  var_395 = true;
                  _loc2_ = var_81.getAnimation(_loc1_.definition.state + "." + _loc1_.actionParameter);
                  if(_loc2_ != null)
                  {
                     var_182 = var_182.concat(_loc2_.spriteData);
                     if(_loc2_.hasDirectionData())
                     {
                        var_1200 = _loc2_.directionData.offset;
                     }
                     if(_loc2_.hasAvatarData())
                     {
                        var_482 = _loc2_.avatarData;
                     }
                  }
               }
               if(_loc1_.actionType == AvatarAction.const_396)
               {
                  var_395 = true;
               }
               if(_loc1_.actionType == AvatarAction.const_287)
               {
                  var_395 = true;
               }
               if(_loc1_.actionType == AvatarAction.const_291)
               {
                  var_395 = true;
               }
            }
         }
      }
      
      public function getSubType() : int
      {
         return var_1376;
      }
      
      private function sortActions() : void
      {
         var_826 = true;
         if(var_1773 == var_692)
         {
            return;
         }
         var_1773 = var_692;
         var_1012 = var_81.sortActions(var_222);
         if(var_1012 == null)
         {
            var_574 = new Array(0,0,0);
         }
         else
         {
            var_574 = var_81.getCanvasOffsets(var_1012,var_151,var_93);
         }
      }
      
      private function addActionData(param1:String, param2:String = "") : void
      {
         var _loc3_:* = null;
         if(var_222 == null)
         {
            var_222 = new Array();
         }
         var _loc4_:int = 0;
         while(_loc4_ < var_222.length)
         {
            _loc3_ = var_222[_loc4_];
            if(_loc3_.actionType == param1 && _loc3_.actionParameter == param2)
            {
               return;
            }
            _loc4_++;
         }
         var_222.push(new ActiveActionData(param1,param2));
      }
      
      public function getPartColor(param1:String) : IPartColor
      {
         return var_81.getPartColor(var_451,param1);
      }
      
      public function getCroppedImage(param1:String) : BitmapData
      {
         var _loc6_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:int = 0;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:* = null;
         if(var_250 == null)
         {
            return null;
         }
         var _loc2_:AvatarImageCache = getCache();
         var _loc3_:AvatarCanvas = var_81.getCanvas(var_151,var_250.definition.geometryType);
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:BitmapData = new BitmapData(_loc3_.width,_loc3_.height,true,16777215);
         var _loc5_:Array = var_81.getBodyParts(param1,var_250.definition,var_93);
         var _loc7_:int = _loc5_.length - 1;
         while(_loc7_ >= 0)
         {
            _loc9_ = _loc5_[_loc7_];
            _loc10_ = _loc2_.getImageContainer(_loc9_,var_498);
            if(_loc10_ != null)
            {
               _loc11_ = _loc10_.image;
               if(_loc11_ == null)
               {
                  _loc4_.dispose();
                  return null;
               }
               _loc12_ = _loc10_.regPoint.clone();
               _loc13_ = getCache().getBodyPartCache(_loc9_);
               _loc14_ = _loc13_.getAction();
               _loc15_ = _loc14_.definition.assetPartDefinition;
               _loc16_ = var_81.getParts(_loc9_,var_451,_loc14_,"pet",_loc13_.getDirection(),[]);
               _loc17_ = 32;
               if(var_151 == AvatarScaleType.SMALL)
               {
                  _loc17_ = 6;
               }
               if(_loc16_.length > 0)
               {
                  _loc19_ = _loc16_[0];
                  _loc20_ = _loc19_.getFrameIndex(var_498);
                  _loc21_ = var_93;
                  _loc22_ = 1;
                  switch(var_93)
                  {
                     case 4:
                        _loc21_ = 2;
                        _loc22_ = -1;
                        break;
                     case 5:
                        _loc21_ = 1;
                        _loc22_ = -1;
                        break;
                     case 6:
                        _loc21_ = 0;
                        _loc22_ = -1;
                  }
                  _loc23_ = var_81.getPartActionOffset(getSubType(),var_151,_loc9_,_loc15_,_loc20_,_loc21_);
                  if(_loc23_ != null)
                  {
                     _loc12_.x += _loc23_.x * _loc22_;
                     _loc12_.y += _loc23_.y;
                     if(var_93 == 7 && _loc13_.getDirection() == 6)
                     {
                        _loc12_.offset(-1 * _loc17_,0);
                     }
                     else if(var_93 == 4 && _loc13_.getDirection() == 3)
                     {
                        _loc12_.offset(_loc17_,0);
                     }
                     else if(var_93 == 3 && _loc13_.getDirection() == 4)
                     {
                        _loc12_.offset(-1 * _loc17_,0);
                     }
                     else if(var_93 == 6 && _loc13_.getDirection() == 7)
                     {
                        _loc12_.offset(_loc17_,0);
                     }
                  }
               }
               _loc4_.copyPixels(_loc11_,_loc11_.rect,_loc12_,null,null,true);
               _loc18_ = new Rectangle(_loc12_.x,_loc12_.y,_loc11_.width,_loc11_.height);
               if(_loc6_ == null)
               {
                  _loc6_ = _loc18_;
               }
               else
               {
                  _loc6_ = _loc6_.union(_loc18_);
               }
            }
            _loc7_--;
         }
         if(_loc6_ == null)
         {
            _loc6_ = new Rectangle(0,0,10,10);
         }
         var _loc8_:BitmapData = new BitmapData(_loc6_.width,_loc6_.height,true,16777215);
         _loc8_.copyPixels(_loc4_,_loc6_,new Point(0,0),null,null,true);
         _loc4_.dispose();
         return _loc8_;
      }
      
      public function getScale() : String
      {
         return var_151;
      }
      
      public function get petBreed() : int
      {
         return var_1377;
      }
      
      public function setDirectionAngle(param1:String, param2:int) : void
      {
         var _loc3_:int = 0;
         _loc3_ = param2 / 45;
         setDirection(param1,_loc3_);
      }
      
      public function getImage(param1:String, param2:Boolean) : BitmapData
      {
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:* = null;
         var _loc15_:* = null;
         var _loc16_:* = false;
         var _loc17_:int = 0;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:* = null;
         var _loc23_:* = null;
         if(!var_296)
         {
            return _image;
         }
         if(var_250 == null)
         {
            return null;
         }
         if(!var_826)
         {
            endActionAppends();
         }
         var _loc3_:AvatarImageCache = getCache();
         var _loc4_:AvatarCanvas = var_81.getCanvas(var_151,var_250.definition.geometryType);
         if(_image == null || _loc4_ != null && (_image.width != _loc4_.width || _image.height != _loc4_.height))
         {
            _loc4_ = var_81.getCanvas(var_151,var_250.definition.geometryType);
            if(_loc4_ == null)
            {
               return null;
            }
            _image = new BitmapData(_loc4_.width,_loc4_.height,true,16777215);
         }
         var _loc5_:Array = var_81.getBodyParts(param1,var_250.definition,var_93);
         _image.lock();
         _image.fillRect(_image.rect,16777215);
         var _loc6_:Point = _loc4_.offset;
         if(_loc6_ == null)
         {
            _loc6_ = new Point(0,0);
         }
         var _loc7_:int = _loc5_.length - 1;
         while(_loc7_ >= 0)
         {
            _loc8_ = _loc5_[_loc7_];
            _loc9_ = _loc3_.getImageContainer(_loc8_,var_498);
            if(_loc9_ && _loc9_.image && _loc9_.regPoint)
            {
               _loc10_ = _loc9_.image;
               _loc11_ = _loc9_.regPoint.clone();
               _loc12_ = getCache().getBodyPartCache(_loc8_);
               _loc13_ = _loc12_.getAction();
               _loc14_ = _loc13_.definition.assetPartDefinition;
               _loc15_ = var_81.getParts(_loc8_,var_451,_loc13_,"pet",_loc12_.getDirection(),[]);
               _loc16_ = var_1376 < 3;
               _loc17_ = !!_loc16_ ? 32 : 67;
               if(var_151 == AvatarScaleType.SMALL)
               {
                  _loc17_ = !!_loc16_ ? 6 : 31;
               }
               if(_loc15_.length > 0)
               {
                  _loc18_ = _loc15_[0];
                  _loc19_ = _loc18_.getFrameIndex(var_498);
                  _loc20_ = var_93;
                  _loc21_ = 1;
                  switch(var_93)
                  {
                     case 4:
                        _loc20_ = 2;
                        _loc21_ = -1;
                        break;
                     case 5:
                        _loc20_ = 1;
                        _loc21_ = -1;
                        break;
                     case 6:
                        _loc20_ = 0;
                        _loc21_ = -1;
                  }
                  _loc22_ = var_81.getPartActionOffset(getSubType(),var_151,_loc8_,_loc14_,_loc19_,_loc20_);
                  if(_loc22_ != null)
                  {
                     _loc11_.x += _loc22_.x * _loc21_;
                     _loc11_.y += _loc22_.y;
                     if(var_93 == 7 && _loc12_.getDirection() == 6)
                     {
                        _loc11_.offset(-1 * _loc17_,0);
                     }
                     else if(var_93 == 4 && _loc12_.getDirection() == 3)
                     {
                        _loc11_.offset(_loc17_,0);
                     }
                     else if(var_93 == 3 && _loc12_.getDirection() == 4)
                     {
                        _loc11_.offset(-1 * _loc17_,0);
                     }
                     else if(var_93 == 6 && _loc12_.getDirection() == 7)
                     {
                        _loc11_.offset(_loc17_,0);
                     }
                  }
               }
               _image.copyPixels(_loc10_,_loc10_.rect,_loc11_.add(_loc6_),null,null,true);
            }
            _loc7_--;
         }
         _image.unlock();
         var_296 = false;
         if(var_482 != null)
         {
            if(false)
            {
               _loc23_ = convertToGrayscale(_image);
               if(_image)
               {
                  _image.dispose();
               }
               _image = _loc23_;
               _image.paletteMap(_image,_image.rect,new Point(0,0),var_482.reds,[],[]);
            }
            else
            {
               _image.copyChannel(_image,_image.rect,new Point(0,0),2,8);
            }
         }
         if(_image && param2)
         {
            return _image.clone();
         }
         return _image;
      }
      
      private function resetActions() : Boolean
      {
         var_395 = false;
         var_182 = [];
         var_482 = null;
         var_1200 = 0;
         var_250 = var_825;
         var_250.definition = var_825.definition;
         setActionToParts(var_825);
         getCache().resetBodyPartCache(var_825);
         return true;
      }
      
      private function solvePetAvatarTypeAndBreed(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var_1112 = 0;
         var_1377 = 0;
         var _loc2_:ISetType = var_81.figureData.getSetType("pbd");
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_.getPartSet(param1);
            if(_loc3_ != null)
            {
               for each(_loc4_ in _loc3_.parts)
               {
                  if(_loc4_.type == "pbd")
                  {
                     var_1112 = _loc4_.id;
                     var_1377 = _loc4_.breed;
                     break;
                  }
               }
            }
         }
      }
      
      public function updateAnimationByFrames(param1:int = 1) : void
      {
         var_498 += param1;
         var_296 = true;
      }
      
      private function errorThis(param1:String) : void
      {
         Logger.log("[PetImageError] " + param1);
      }
      
      private function getCache() : AvatarImageCache
      {
         if(var_130 == null)
         {
            var_130 = new AvatarImageCache(var_81,this,_assets,var_151);
         }
         return var_130;
      }
      
      private function setActionToParts(param1:IActiveActionData) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.definition.assetPartDefinition == "")
         {
            return;
         }
         if(param1.definition.isMain)
         {
            var_250 = param1;
            getCache().setGeometryType(param1.definition.geometryType);
         }
         getCache().setAction(param1);
         var_296 = true;
      }
      
      private function convertToGrayscale(param1:BitmapData, param2:String = "CHANNELS_EQUAL") : BitmapData
      {
         var _loc3_:* = 0.33;
         var _loc4_:* = 0.33;
         var _loc5_:* = 0.33;
         switch(param2)
         {
            case "CHANNELS_UNIQUE":
               _loc3_ = 0.3;
               _loc4_ = 0.59;
               _loc5_ = 0.11;
               break;
            case "CHANNELS_RED":
               _loc3_ = 1;
               _loc4_ = 0;
               _loc5_ = 0;
               break;
            case "CHANNELS_GREEN":
               _loc3_ = 0;
               _loc4_ = 1;
               _loc5_ = 0;
               break;
            case "CHANNELS_BLUE":
               _loc3_ = 0;
               _loc4_ = 0;
               _loc5_ = 1;
               break;
            case "CHANNELS_DESATURATED":
               _loc3_ = 0.3086;
               _loc4_ = 0.6094;
               _loc5_ = 0.082;
         }
         var _loc7_:Array = [_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,_loc3_,_loc4_,_loc5_,0,0,0,0,0,1,0];
         var _loc8_:ColorMatrixFilter = new ColorMatrixFilter(_loc7_);
         var _loc9_:BitmapData = new BitmapData(param1.width,param1.height,param1.transparent,4294967295);
         _loc9_.copyPixels(param1,param1.rect,new Point(0,0),null,null,false);
         _loc9_.applyFilter(_loc9_,_loc9_.rect,new Point(0,0),_loc8_);
         return _loc9_;
      }
      
      public function getFigure() : AvatarFigureContainer
      {
         return var_451;
      }
      
      public function getLayerData(param1:ISpriteDataContainer) : IAnimationLayerData
      {
         return var_81.getBodyPartData(param1.animation.id,var_498,param1.id);
      }
      
      public function getDirection() : int
      {
         return var_93;
      }
      
      public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         var_826 = false;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         var_692 = var_692 + param1 + _loc3_;
         switch(param1)
         {
            case AvatarAction.const_384:
               switch(_loc3_)
               {
                  case "wav":
                     addActionData("wave");
                     break;
                  case AvatarAction.const_886:
                  case AvatarAction.const_635:
                  case AvatarAction.const_877:
                  case AvatarAction.const_512:
                  case AvatarAction.const_889:
                  case AvatarAction.const_980:
                  case AvatarAction.const_1252:
                  case AvatarAction.const_1338:
                  case AvatarAction.const_1271:
                  case AvatarAction.const_931:
                  case AvatarAction.const_985:
                  case AvatarAction.const_1319:
                  case AvatarAction.const_1353:
                  case AvatarAction.const_1053:
                  case AvatarAction.const_608:
                     addActionData(_loc3_);
                     break;
                  default:
                     errorThis("appendAction() >> UNKNOWN POSTURE TYPE: " + _loc3_);
               }
               break;
            case AvatarAction.const_250:
               switch(_loc3_)
               {
                  case AvatarAction.const_1004:
                  case AvatarAction.const_764:
                  case AvatarAction.const_401:
                  case AvatarAction.const_577:
                  case AvatarAction.const_596:
                  case AvatarAction.const_1011:
                  case AvatarAction.const_838:
                  case AvatarAction.const_871:
                  case AvatarAction.const_970:
                  case AvatarAction.const_869:
                     addActionData(_loc3_);
                     break;
                  default:
                     errorThis("appendAction() >> UNKNOWN GESTURE TYPE: " + _loc3_);
               }
               break;
            case AvatarAction.const_291:
            case AvatarAction.const_287:
            case AvatarAction.const_480:
            case AvatarAction.const_461:
               addActionData(param1,_loc3_);
               break;
            default:
               errorThis("appendAction() >> UNKNOWN ACTION TYPE: " + param1);
         }
         return true;
      }
      
      public function get petType() : int
      {
         return var_1112;
      }
   }
}
