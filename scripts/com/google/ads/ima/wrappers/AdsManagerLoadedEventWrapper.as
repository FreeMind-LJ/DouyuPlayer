package com.google.ads.ima.wrappers
{
   import com.google.ads.ima.api.AdsManagerLoadedEvent;
   import com.google.ads.ima.api.AdsRenderingSettings;
   import flash.utils.Dictionary;
   import com.google.ads.ima.api.AdsManager;
   import flash.events.Event;
   import com.google.ads.ima.api.ima_internal_api;
   
   class AdsManagerLoadedEventWrapper extends AdsManagerLoadedEvent
   {
       
      
      private var localInstance:Object;
      
      private var wrappersValue:com.google.ads.ima.wrappers.Wrappers;
      
      private var remoteMethodResultsStore:Dictionary;
      
      private var remoteInstance:Object;
      
      function AdsManagerLoadedEventWrapper(param1:com.google.ads.ima.wrappers.Wrappers, param2:Object, param3:Object = null)
      {
         remoteMethodResultsStore = new Dictionary();
         this.remoteInstance = param2;
         this.localInstance = param3;
         wrappersValue = param1;
         super(param2.ima_internal_api::getAdsManagerCreator(),param2.userRequestContext,param2.type);
      }
      
      override public function get userRequestContext() : Object
      {
         return remoteInstance.userRequestContext;
      }
      
      private function makeSettingsDynamicallyUpdatable(param1:AdsRenderingSettings) : Object
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:AdsRenderingSettingsWrapper = new AdsRenderingSettingsWrapper();
         _loc2_.publisherAdsRenderingSettings = param1;
         wrappersValue.copy(param1,_loc2_);
         return wrappersValue.localToRemote(_loc2_);
      }
      
      override public function getAdsManager(param1:Object = null, param2:AdsRenderingSettings = null, param3:Object = null) : AdsManager
      {
         var remoteAdsRenderingSettingsWrapper:Object = null;
         var errorWrapper:AdErrorWrapper = null;
         var contentPlayback:Object = param1;
         var adsRenderingSettings:AdsRenderingSettings = param2;
         var videoAdPlayback:Object = param3;
         try
         {
            remoteAdsRenderingSettingsWrapper = makeSettingsDynamicallyUpdatable(adsRenderingSettings);
            return wrappersValue.remoteToLocal(remoteMethodResultsStore,remoteInstance.getAdsManager(contentPlayback,remoteAdsRenderingSettingsWrapper,videoAdPlayback)) as AdsManager;
         }
         catch(error:Error)
         {
            errorWrapper = wrappersValue.remoteToLocal(remoteMethodResultsStore,error) as AdErrorWrapper;
            if(errorWrapper != null)
            {
               throw errorWrapper;
            }
            throw error;
         }
         return null;
      }
      
      override public function clone() : Event
      {
         return new AdsManagerLoadedEventWrapper(wrappersValue,remoteInstance,localInstance);
      }
   }
}
