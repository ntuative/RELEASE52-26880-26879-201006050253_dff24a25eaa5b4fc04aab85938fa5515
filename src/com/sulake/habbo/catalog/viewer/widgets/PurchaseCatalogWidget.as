package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1715:XML;
      
      private var var_1457:ITextWindow;
      
      private var var_1456:ITextWindow;
      
      private var var_1714:XML;
      
      private var var_808:IWindowContainer;
      
      private var var_2368:ITextWindow;
      
      private var var_1717:String = "";
      
      private var var_2435:IButtonWindow;
      
      private var var_1718:XML;
      
      private var var_1455:ITextWindow;
      
      private var var_1716:XML;
      
      private var var_809:IButtonWindow;
      
      private var var_79:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_305:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1714) as IWindowContainer;
               break;
            case Offer.const_415:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1716) as IWindowContainer;
               break;
            case Offer.const_391:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1715) as IWindowContainer;
               break;
            case Offer.const_546:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1718) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_808 != null)
            {
               _window.removeChild(var_808);
               var_808.dispose();
            }
            var_808 = _loc2_;
            _window.addChild(_loc2_);
            var_808.x = 0;
            var_808.y = 0;
         }
         var_1455 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1456 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1457 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2368 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_809 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_809 != null)
         {
            var_809.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_809.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_79 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_79,page,var_1717);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1714 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1716 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1715 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1718 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_995,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1717 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_79 = param1.offer;
         attachStub(var_79.priceType);
         if(var_1455 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_79.priceInCredits));
            var_1455.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1456 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_79.priceInPixels));
            var_1456.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1457 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_79.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_79.priceInPixels));
            var_1457.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_809 != null)
         {
            var_809.enable();
         }
      }
   }
}
