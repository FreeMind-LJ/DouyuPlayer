package com.google.ads.ima.api
{
   import flash.events.Event;
   import flash.display.Sprite;
   
   public class AdsManagerLoadedEvent extends Event
   {
      
      public static const ADS_MANAGER_LOADED:String = "adsManagerLoaded";
       
      
      private var adsManagerCreatorValue:Function;
      
      private var userRequestContextValue:Object;
      
      public function AdsManagerLoadedEvent(param1:Function, param2:Object, param3:String = "adsManagerLoaded")
      {
         super(param3);
         adsManagerCreatorValue = param1;
         userRequestContextValue = param2;
      }
      
      public function getAdsManager(param1:Object = null, param2:AdsRenderingSettings = null, param3:Object = null) : AdsManager
      {
         var contentPlayback:Object = param1;
         var adsRenderingSettings:AdsRenderingSettings = param2;
         var publisherVideoAdPlayback:Object = param3;
         if(contentPlayback == null)
         {
            contentPlayback = {"time":function():Number
            {
               return 0;
            }};
         }
         if(adsRenderingSettings == null)
         {
            adsRenderingSettings = new AdsRenderingSettings();
         }
         return adsManagerCreatorValue(new Sprite(),contentPlayback,adsRenderingSettings,publisherVideoAdPlayback) as AdsManager;
      }
      
      function getAdsManagerCreator() : Function
      {
         return adsManagerCreatorValue;
      }
      
      public function get userRequestContext() : Object
      {
         return userRequestContextValue;
      }
      
      override public function clone() : Event
      {
         return new AdsManagerLoadedEvent(adsManagerCreatorValue,userRequestContext);
      }
   }
}
