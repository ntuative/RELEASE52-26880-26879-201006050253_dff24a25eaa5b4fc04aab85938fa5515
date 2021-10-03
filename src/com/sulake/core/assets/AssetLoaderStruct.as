package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_773:IAssetLoader;
      
      private var var_1201:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1201 = param1;
         var_773 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_773;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_773 != null)
            {
               if(true)
               {
                  var_773.dispose();
                  var_773 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1201;
      }
   }
}
