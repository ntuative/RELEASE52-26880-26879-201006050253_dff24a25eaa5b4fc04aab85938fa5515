package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_909:String = "price_type_none";
      
      public static const const_439:String = "pricing_model_multi";
      
      public static const const_305:String = "price_type_credits";
      
      public static const const_391:String = "price_type_credits_and_pixels";
      
      public static const const_454:String = "pricing_model_bundle";
      
      public static const const_473:String = "pricing_model_single";
      
      public static const const_546:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1204:String = "pricing_model_unknown";
      
      public static const const_415:String = "price_type_pixels";
       
      
      private var var_2326:int;
      
      private var var_969:int;
      
      private var _offerId:int;
      
      private var var_970:int;
      
      private var var_456:String;
      
      private var var_655:String;
      
      private var var_450:ICatalogPage;
      
      private var var_455:IProductContainer;
      
      private var var_1424:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1424 = param1.localizationId;
         var_969 = param1.priceInCredits;
         var_970 = param1.priceInPixels;
         var_450 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_456;
      }
      
      public function get page() : ICatalogPage
      {
         return var_450;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2326 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_455;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_970;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1424 = "";
         var_969 = 0;
         var_970 = 0;
         var_450 = null;
         if(var_455 != null)
         {
            var_455.dispose();
            var_455 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_2326;
      }
      
      public function get priceInCredits() : int
      {
         return var_969;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_456 = const_473;
            }
            else
            {
               var_456 = const_439;
            }
         }
         else if(param1.length > 1)
         {
            var_456 = const_454;
         }
         else
         {
            var_456 = const_1204;
         }
      }
      
      public function get priceType() : String
      {
         return var_655;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_456)
         {
            case const_473:
               var_455 = new SingleProductContainer(this,param1);
               break;
            case const_439:
               var_455 = new MultiProductContainer(this,param1);
               break;
            case const_454:
               var_455 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_456);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1424;
      }
      
      private function analyzePriceType() : void
      {
         if(var_969 > 0 && var_970 > 0)
         {
            var_655 = const_391;
         }
         else if(var_969 > 0)
         {
            var_655 = const_305;
         }
         else if(var_970 > 0)
         {
            var_655 = const_415;
         }
         else
         {
            var_655 = const_909;
         }
      }
   }
}
