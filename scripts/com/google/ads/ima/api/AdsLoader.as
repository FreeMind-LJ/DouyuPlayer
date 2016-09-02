package com.google.ads.ima.api
{
   import flash.events.EventDispatcher;
   import com.google.ads.ima.wrappers.ImaSdkSettingsWrapper;
   import flash.display.Loader;
   import flash.external.ExternalInterface;
   import flash.events.Event;
   import flash.events.ErrorEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import com.google.ads.ima.wrappers.Wrappers;
   import com.google.ads.ima.apidependency.SdkStatisticsLoggerImpl;
   import com.google.ads.ima.apidependency.LogIds;
   import flash.net.URLRequest;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   import com.google.ads.ima.wrappers.AdsLoaderWrapper;
   import flash.system.ApplicationDomain;
   import com.google.utils.HttpSecure;
   import flash.system.Security;
   
   public class AdsLoader extends EventDispatcher implements AdsLoaderInterface
   {
      
      private static const REQUEST_ADS_METHOD:String = "requestAds";
      
      private static const CONTENT_COMPLETE_METHOD:String = "contentComplete";
      
      private static const TEST_PLAYER_SWF_PATTERN:RegExp = /^(http|https):\/\/.*corp\.google\.com(:[0-9]+)?\/adsplayer_swf\.swf$/;
      
      private static const SDK_VERSION_PROPERTY:String = "sdkVersion";
      
      private static var settingsValue:ImaSdkSettingsWrapper;
      
      private static const GOOGLEAPIS_SDKLOADER_LOCATION:String = "http://" + GOOGLEAPIS_HOST + "/flash/sdkloader/adsapi_3";
      
      public static const LEGACY_HOST:String = "s0.2mdn.net";
      
      private static const QUEUED_REQUEST_TYPE_PROPERTY:String = "property";
      
      private static const DOUBLECLICK_MEDIA_SERVER:String = "m1.2mdn.net";
      
      private static const HANDLES_BASIC_VIDEO_ADS_PROPERTY:String = "handlesBasicVideoAdsOnly";
      
      private static const QUEUED_REQUEST_TYPE_METHOD:String = "method";
      
      private static const DESTROY_METHOD:String = "destroy";
      
      public static const GOOGLEAPIS_HOST:String = "imasdk.googleapis.com";
      
      private static const LEGACY_SDKLOADER_LOCATION:String = "http://" + LEGACY_HOST + "/instream/flash/v3/adsapi_3";
       
      
      private var queuedListeners:Array;
      
      private var handlesBasicVideoAdsOnlyValue:Boolean;
      
      private var wrappersValue:Wrappers;
      
      private var loader:Loader;
      
      private var adsLoaderWrapper:IEventDispatcher;
      
      private var sdkVersionValue:String = "";
      
      private var queuedRequests:Array;
      
      var sdkLoaderFactory:Function;
      
      public function AdsLoader()
      {
         queuedRequests = [];
         queuedListeners = [];
         sdkLoaderFactory = createSdkLoader;
         super();
         allowTrustedDomains();
      }
      
      private static function isLegacySdkHostChosen() : Boolean
      {
         var sdkLoaderUrl:String = null;
         var useLegacySdkHost:Boolean = false;
         try
         {
            sdkLoaderUrl = new Loader().contentLoaderInfo.loaderURL;
            if(TEST_PLAYER_SWF_PATTERN.test(sdkLoaderUrl) && ExternalInterface.available)
            {
               useLegacySdkHost = ExternalInterface.call("isLegacySdkHostChosen");
            }
         }
         catch(error:Error)
         {
         }
         return useLegacySdkHost;
      }
      
      private function removeSdkLoadListeners() : void
      {
         loader.removeEventListener(Event.COMPLETE,sdkLoadedHandler);
         loader.removeEventListener(ErrorEvent.ERROR,onSdkLoadError);
         loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,sdkLoaderSwfLoadCompleteHandler);
         loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onSdkLoadError);
         loader.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onSdkLoadError);
      }
      
      public function set handlesBasicVideoAdsOnly(param1:Boolean) : void
      {
         handlesBasicVideoAdsOnlyValue = param1;
      }
      
      private function processQueuedListeners() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in queuedListeners)
         {
            adsLoaderWrapper.addEventListener(_loc1_.type,_loc1_.listener,_loc1_.useCapture,_loc1_.priority,_loc1_.useWeakReference);
         }
         queuedListeners = [];
      }
      
      protected function addSdkLoadListeners(param1:Loader) : void
      {
         param1.addEventListener(Event.COMPLETE,sdkLoadedHandler);
         param1.addEventListener(ErrorEvent.ERROR,onSdkLoadError);
         param1.addEventListener(ErrorEvent.ERROR,onSdkLoadError);
         param1.contentLoaderInfo.addEventListener(Event.COMPLETE,sdkLoaderSwfLoadCompleteHandler);
         param1.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onSdkLoadError);
         param1.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSdkLoadError);
      }
      
      public function requestAds(param1:AdsRequest, param2:Object = null) : void
      {
         SdkStatisticsLoggerImpl.instance.reportApi(LogIds.AdsLoader_requestAds);
         invokeRemoteMethod(REQUEST_ADS_METHOD,param1,param2);
      }
      
      public function get settings() : ImaSdkSettings
      {
         if(settingsValue == null)
         {
            settingsValue = new ImaSdkSettingsWrapper(wrappers,null);
         }
         return settingsValue;
      }
      
      private function onSdkLoadError(param1:ErrorEvent) : void
      {
         handleSdkLoadError(param1.text);
      }
      
      protected function doLoad(param1:Loader, param2:URLRequest) : void
      {
         param1.load(param2);
      }
      
      private function processQueuedRequests() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in queuedRequests)
         {
            switch(_loc1_.requestType)
            {
               case QUEUED_REQUEST_TYPE_METHOD:
                  invokeWrapperMethod(_loc1_.method,_loc1_.args);
                  continue;
               case QUEUED_REQUEST_TYPE_PROPERTY:
                  setWrapperProperty(_loc1_.propertyName,_loc1_.propertyValue);
                  continue;
               default:
                  continue;
            }
         }
         queuedRequests = [];
      }
      
      private function invokeWrapperMethod(param1:String, param2:Array) : void
      {
         var _loc3_:Function = adsLoaderWrapper[param1];
         if(_loc3_ != null)
         {
            _loc3_.apply(adsLoaderWrapper,param2);
         }
         else
         {
            dispatchSdkLoadError("Internal error: No such method: " + param1);
         }
      }
      
      public function get sdkVersion() : String
      {
         return sdkVersionValue;
      }
      
      private function get wrappers() : Wrappers
      {
         return wrappersValue;
      }
      
      private function dispatchSdkLoadError(param1:String) : void
      {
         var _loc2_:Dictionary = new Dictionary();
         _loc2_["errMsg"] = param1;
         var _loc3_:AdsLoaderError = new AdsLoaderError(param1);
         _loc3_.errorType = AdErrorTypes.AD_LOAD_ERROR;
         var _loc4_:AdErrorEvent = new AdErrorEvent(_loc3_);
         dispatchEvent(_loc4_);
      }
      
      private function setWrapperProperty(param1:String, param2:*) : void
      {
         if(param1 in adsLoaderWrapper)
         {
            adsLoaderWrapper[param1] = param2;
         }
         else
         {
            dispatchSdkLoadError("Internal error: No such property: " + param1);
         }
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         var _loc4_:Object = null;
         if(isLocallyDispatchedEvent(param1))
         {
            super.removeEventListener(param1,param2);
         }
         if(adsLoaderWrapper != null)
         {
            adsLoaderWrapper.removeEventListener(param1,param2,param3);
         }
         else
         {
            for each(_loc4_ in queuedListeners)
            {
               if(param1 == _loc4_.type && param2 == _loc4_.listener)
               {
                  queuedListeners.splice(queuedListeners.indexOf(_loc4_),1);
                  break;
               }
            }
         }
      }
      
      private function createAdsLoaderWrapper(param1:Object) : IEventDispatcher
      {
         if(settingsValue != null)
         {
            settingsValue.invokeDelayedMethods(param1.settings);
         }
         return new AdsLoaderWrapper(wrappers,param1,this);
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(isLocallyDispatchedEvent(param1))
         {
            super.addEventListener(param1,param2,param3,param4,param5);
         }
         if(adsLoaderWrapper != null)
         {
            adsLoaderWrapper.addEventListener(param1,param2,param3,param4,param5);
         }
         else
         {
            queuedListeners.push({
               "type":param1,
               "listener":param2,
               "useCapture":param3,
               "priority":param4,
               "useWeakReference":param5
            });
         }
      }
      
      private function createSdkLoader() : Loader
      {
         try
         {
            return new SdkSwfLoader(ApplicationDomain.currentDomain);
         }
         catch(error:Error)
         {
         }
         return new SdkSwfLoader(null);
      }
      
      public function contentComplete(param1:String = null) : void
      {
         invokeRemoteMethod(CONTENT_COMPLETE_METHOD,param1);
      }
      
      private function get sdkUrl() : String
      {
         var _loc1_:* = chooseSdkLocation() + ".swf";
         return HttpSecure.getInstance().useCorrectProtocolForUrl(_loc1_);
      }
      
      private function invokeRemoteMethod(param1:String, ... rest) : void
      {
         if(adsLoaderWrapper != null)
         {
            invokeWrapperMethod(param1,rest);
         }
         else
         {
            queuedRequests.push({
               "requestType":QUEUED_REQUEST_TYPE_METHOD,
               "method":param1,
               "args":rest
            });
            loadSdk();
         }
      }
      
      private function allowTrustedDomains() : void
      {
         if(isLegacySdkHostChosen())
         {
            Security.allowDomain(LEGACY_HOST);
            Security.allowDomain(DOUBLECLICK_MEDIA_SERVER);
            Security.allowInsecureDomain(DOUBLECLICK_MEDIA_SERVER);
         }
         else
         {
            Security.allowDomain(GOOGLEAPIS_HOST);
         }
      }
      
      private function sdkLoadedHandler(param1:Event) : void
      {
         removeSdkLoadListeners();
         var _loc2_:Object = param1;
         wrappersValue = new Wrappers(_loc2_.remoteApplicationDomain);
         adsLoaderWrapper = createAdsLoaderWrapper(_loc2_.adsLoader);
         if(adsLoaderWrapper != null)
         {
            processQueuedListeners();
            processQueuedRequests();
         }
         else
         {
            dispatchSdkLoadError("Internal error: remote wrapper is null");
         }
      }
      
      private function handleSdkLoadError(param1:String) : void
      {
         removeSdkLoadListeners();
         dispatchSdkLoadError(param1);
      }
      
      protected function isLocallyDispatchedEvent(param1:String) : Boolean
      {
         return param1 == AdErrorEvent.AD_ERROR;
      }
      
      public function loadSdk() : void
      {
         if(loader == null)
         {
            loader = sdkLoaderFactory();
            addSdkLoadListeners(loader);
            doLoad(loader,new URLRequest(sdkUrl));
         }
      }
      
      private function sdkLoaderSwfLoadCompleteHandler(param1:Event) : void
      {
         var event:Event = param1;
         loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,sdkLoaderSwfLoadCompleteHandler);
         try
         {
            if(loader.content.hasOwnProperty(SDK_VERSION_PROPERTY))
            {
               sdkVersionValue = loader.content[SDK_VERSION_PROPERTY];
               if(loader.content.hasOwnProperty(HANDLES_BASIC_VIDEO_ADS_PROPERTY))
               {
                  loader.content[HANDLES_BASIC_VIDEO_ADS_PROPERTY] = handlesBasicVideoAdsOnlyValue;
               }
            }
            return;
         }
         catch(error:SecurityError)
         {
            handleSdkLoadError("SDK could not be loaded from " + sdkUrl + " , because of security " + " error: " + error.message);
            return;
         }
      }
      
      private function chooseSdkLocation() : String
      {
         return !!isLegacySdkHostChosen()?LEGACY_SDKLOADER_LOCATION:GOOGLEAPIS_SDKLOADER_LOCATION;
      }
      
      public function destroy() : void
      {
         if(loader != null)
         {
            invokeRemoteMethod(DESTROY_METHOD);
            removeSdkLoadListeners();
            if(loader.parent != null)
            {
               loader.parent.removeChild(loader);
            }
            if(loader.hasOwnProperty("unloadAndStop"))
            {
               loader["unloadAndStop"]();
            }
            else
            {
               loader.unload();
            }
            loader = null;
            queuedRequests = [];
            queuedListeners = [];
         }
      }
   }
}
