package com.google.ads.ima.api
{
   import flash.events.IEventDispatcher;
   
   public interface AdsLoaderInterface extends IEventDispatcher
   {
       
      
      function requestAds(param1:AdsRequest, param2:Object = null) : void;
      
      function contentComplete(param1:String = null) : void;
      
      function get settings() : ImaSdkSettings;
      
      function destroy() : void;
   }
}
