package com.google.ads.ima.wrappers
{
   import com.google.ads.ima.api.AdsRenderingSettings;
   
   public class AdsRenderingSettingsWrapper extends AdsRenderingSettings
   {
       
      
      private var publisherInstance:Object;
      
      public function AdsRenderingSettingsWrapper()
      {
         super();
      }
      
      public function get publisherAdsRenderingSettings() : Object
      {
         return publisherInstance;
      }
      
      public function set publisherAdsRenderingSettings(param1:Object) : void
      {
         publisherInstance = param1;
      }
   }
}
