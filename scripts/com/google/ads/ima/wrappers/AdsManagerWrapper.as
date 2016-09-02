package com.google.ads.ima.wrappers
{
   import com.google.ads.ima.api.AdsManager;
   import com.google.ads.ima.api.AdsRenderingSettings;
   import flash.display.InteractiveObject;
   import flash.display.DisplayObjectContainer;
   import com.google.ads.ima.api.Ad;
   
   class AdsManagerWrapper extends EventDispatcherWrapper implements AdsManager
   {
      
      private static const PLAYER_VPAID_VERSION_1:String = "1.0.0";
       
      
      private var localAdsRenderingSettings:AdsRenderingSettings;
      
      function AdsManagerWrapper(param1:Wrappers, param2:Object, param3:Object = null)
      {
         super(param1,param2,param3);
      }
      
      public function destroy() : void
      {
         remoteInstance.destroy();
      }
      
      public function stop() : void
      {
         remoteInstance.stop();
      }
      
      public function align(param1:String, param2:String) : void
      {
         remoteInstance.align(param1,param2);
      }
      
      public function get adsRenderingSettings() : AdsRenderingSettings
      {
         if(localAdsRenderingSettings == null)
         {
            localAdsRenderingSettings = new AdsRenderingSettings();
         }
         if(remoteInstance.adsRenderingSettings != null)
         {
            wrappers.copy(remoteInstance.adsRenderingSettings,localAdsRenderingSettings);
         }
         return localAdsRenderingSettings;
      }
      
      public function init(param1:Number, param2:Number, param3:String, param4:Number = -2, param5:String = null, param6:String = null) : void
      {
         remoteInstance.init(param1,param2,param3,param4,param5,param6);
      }
      
      public function getUiElement(param1:String) : InteractiveObject
      {
         return remoteInstance.getUiElement(param1);
      }
      
      public function get cuePoints() : Array
      {
         return remoteInstance.cuePoints;
      }
      
      public function get volume() : Number
      {
         return remoteInstance.volume;
      }
      
      public function get linear() : Boolean
      {
         return remoteInstance.linear;
      }
      
      public function expand() : void
      {
         remoteInstance.expand();
      }
      
      public function get uiElements() : Array
      {
         return remoteInstance.uiElements;
      }
      
      public function resume() : void
      {
         remoteInstance.resume();
      }
      
      public function get adsContainer() : DisplayObjectContainer
      {
         return remoteInstance.adsContainer;
      }
      
      public function resize(param1:Number, param2:Number, param3:String) : void
      {
         remoteInstance.resize(param1,param2,param3);
      }
      
      public function sendImpressionUrls() : void
      {
         remoteInstance.sendImpressionUrls();
      }
      
      public function set volume(param1:Number) : void
      {
         remoteInstance.volume = param1;
      }
      
      public function get expanded() : Boolean
      {
         return remoteInstance.expanded;
      }
      
      public function collapse() : void
      {
         remoteInstance.collapse();
      }
      
      public function set uiElements(param1:Array) : void
      {
         remoteInstance.uiElements = param1;
      }
      
      public function handshakeVersion(param1:String = "1.0.0") : String
      {
         return remoteInstance.handshakeVersion(param1);
      }
      
      public function start() : void
      {
         remoteInstance.start();
      }
      
      public function get remainingTime() : Number
      {
         return remoteInstance.remainingTime;
      }
      
      public function load(param1:Object = null) : void
      {
         remoteInstance.load(param1);
      }
      
      public function play(param1:Object = null) : void
      {
         remoteInstance.play(param1);
      }
      
      public function pause() : void
      {
         remoteInstance.pause();
      }
      
      public function get currentAd() : Ad
      {
         return wrappers.remoteToLocal(remoteMethodResultsStore,remoteInstance.currentAd,localInstance) as Ad;
      }
      
      public function set adsRenderingSettings(param1:AdsRenderingSettings) : void
      {
         localAdsRenderingSettings = param1;
         remoteInstance.adsRenderingSettings = wrappers.localToRemote(param1);
      }
      
      public function skip() : Boolean
      {
         return remoteInstance.skip();
      }
   }
}
