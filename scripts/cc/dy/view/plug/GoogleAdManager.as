package cc.dy.view.plug
{
   import com.google.ads.ima.api.AdsLoader;
   import com.google.ads.ima.api.AdsManager;
   import flash.display.Sprite;
   import util.$;
   import com.google.ads.ima.api.AdsManagerLoadedEvent;
   import com.google.ads.ima.api.AdErrorEvent;
   import com.google.ads.ima.api.AdsRenderingSettings;
   import com.google.ads.ima.api.AdEvent;
   import com.google.ads.ima.api.ViewModes;
   import util.UserBehaviorLog;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import flash.utils.setInterval;
   import com.google.ads.ima.api.AdsRequest;
   
   public class GoogleAdManager
   {
      
      private static var googleAdManager:cc.dy.view.plug.GoogleAdManager;
       
      
      private var prerollAdsLoader:AdsLoader;
      
      private var overlayAdsLoader:AdsLoader;
      
      private var contentPlayheadTime:Number = 0;
      
      private var adsManager:AdsManager;
      
      private var overadsManager:AdsManager;
      
      public var adContaniner:Sprite;
      
      private var callBack:Function;
      
      private var preroll:String = "http://pubads.g.doubleclick.net/gampad/live/ads?sz=640x480&iu=/93983356/video_preroll&impl=s&gdfp_req=1&env=vp&unviewed_position_start=1&url=[referrer_url]&description_url=[description_url]&output=xml_vast3&hl=zh-hans&correlator=[timestamp]&cust_params=roomId%3D";
      
      private var overlay:String = "http://pubads.g.doubleclick.net/gampad/live/ads?sz=640x480&iu=/93983356/video_overlay&impl=s&gdfp_req=1&env=vp&unviewed_position_start=1&url=[referrer_url]&description_url=[description_url]&output=xml_vast3&hl=zh-hans&correlator=[timestamp]&cust_params=roomId%3D";
      
      private var closeOverTime:uint;
      
      private var roomid:String;
      
      private var isclose:Boolean = true;
      
      public function GoogleAdManager()
      {
         super();
      }
      
      public static function get instance() : cc.dy.view.plug.GoogleAdManager
      {
         if(googleAdManager == null)
         {
            googleAdManager = new cc.dy.view.plug.GoogleAdManager();
         }
         return googleAdManager;
      }
      
      public function initAdsLoader() : void
      {
         this.adContaniner = new Sprite();
         GlobalData.AdLAYER.addChild(this.adContaniner);
         $.jscall("console.log","初始化广告…………0");
         if(this.prerollAdsLoader == null)
         {
            this.prerollAdsLoader = new AdsLoader();
            this.prerollAdsLoader.loadSdk();
            this.prerollAdsLoader.addEventListener(AdsManagerLoadedEvent.ADS_MANAGER_LOADED,this.adsManagerLoadedHandler);
            this.prerollAdsLoader.addEventListener(AdErrorEvent.AD_ERROR,this.adsLoadErrorHandler);
         }
         if(this.overlayAdsLoader == null)
         {
            this.overlayAdsLoader = new AdsLoader();
            this.overlayAdsLoader.loadSdk();
            this.overlayAdsLoader.addEventListener(AdsManagerLoadedEvent.ADS_MANAGER_LOADED,this.adsOverplayManagerLoadedHandler);
            this.overlayAdsLoader.addEventListener(AdErrorEvent.AD_ERROR,this.adsOverplayLoadErrorHandler);
         }
      }
      
      private function adsManagerLoadedHandler(param1:AdsManagerLoadedEvent) : void
      {
         var event:AdsManagerLoadedEvent = param1;
         $.jscall("console.log","加载preroll广告");
         var adsRenderingSettings:AdsRenderingSettings = new AdsRenderingSettings();
         var contentPlayhead:Object = {};
         contentPlayhead.time = function():Number
         {
            return contentPlayheadTime * 1000;
         };
         this.adsManager = event.getAdsManager(contentPlayhead,adsRenderingSettings);
         if(this.adsManager)
         {
            this.adsManager.addEventListener(AdEvent.ALL_ADS_COMPLETED,this.allAdsCompletedHandler);
            this.adsManager.addEventListener(AdEvent.CONTENT_PAUSE_REQUESTED,this.contentPauseRequestedHandler);
            this.adsManager.addEventListener(AdEvent.CONTENT_RESUME_REQUESTED,this.contentResumeRequestedHandler);
            this.adsManager.addEventListener(AdEvent.STARTED,this.startedHandler);
            this.adsManager.addEventListener(AdEvent.CLICKED,this.clickAdEventHandler);
            this.adsManager.addEventListener(AdEvent.IMPRESSION,this.appearAdEventHandler);
            this.adsManager.addEventListener(AdErrorEvent.AD_ERROR,this.adsManagerPlayErrorHandler);
            this.adsManager.handshakeVersion("1.0");
            this.adsManager.init(this.adContaniner.stage.stageWidth,this.adContaniner.stage.stageHeight,ViewModes.NORMAL);
            this.adsManager.adsContainer.x = 0;
            this.adsManager.adsContainer.y = 0;
            this.adContaniner.addChild(this.adsManager.adsContainer);
            this.adsManager.start();
         }
      }
      
      private function adsOverplayManagerLoadedHandler(param1:AdsManagerLoadedEvent) : void
      {
         var event:AdsManagerLoadedEvent = param1;
         $.jscall("console.log","加载overplay广告");
         var adsRenderingSettings:AdsRenderingSettings = new AdsRenderingSettings();
         adsRenderingSettings.useStyledNonLinearAds = false;
         var contentPlayhead:Object = {};
         contentPlayhead.time = function():Number
         {
            return contentPlayheadTime * 1000;
         };
         this.overadsManager = event.getAdsManager(contentPlayhead,adsRenderingSettings);
         if(this.overadsManager)
         {
            this.overadsManager.addEventListener(AdEvent.ALL_ADS_COMPLETED,this.overplayallAdsCompletedHandler);
            this.overadsManager.addEventListener(AdEvent.CONTENT_PAUSE_REQUESTED,this.overplaycontentPauseRequestedHandler);
            this.overadsManager.addEventListener(AdEvent.CONTENT_RESUME_REQUESTED,this.overplaycontentResumeRequestedHandler);
            this.overadsManager.addEventListener(AdEvent.STARTED,this.overplaystartedHandler);
            this.overadsManager.addEventListener(AdEvent.CLICKED,this.overplayClickAdEventHandler);
            this.overadsManager.addEventListener(AdEvent.IMPRESSION,this.overplayAppearAdEventHandler);
            this.overadsManager.addEventListener(AdErrorEvent.AD_ERROR,this.overplayadsManagerPlayErrorHandler);
            this.overadsManager.handshakeVersion("1.0");
            this.overadsManager.init(this.adContaniner.stage.stageWidth,this.adContaniner.stage.stageHeight - 45,ViewModes.NORMAL);
            this.overadsManager.adsContainer.x = 0;
            this.overadsManager.adsContainer.y = 0;
            this.adContaniner.addChild(this.overadsManager.adsContainer);
            this.overadsManager.start();
         }
      }
      
      private function adsLoadErrorHandler(param1:AdErrorEvent) : void
      {
         this.callBack();
         $.jscall("console.log","warning  Ads load error: " + param1.error.errorMessage);
      }
      
      private function adsOverplayLoadErrorHandler(param1:AdErrorEvent) : void
      {
         $.jscall("console.log","warning overplay Ads load error: " + param1.error.errorMessage);
      }
      
      private function adsManagerPlayErrorHandler(param1:AdErrorEvent) : void
      {
         this.callBack();
         $.jscall("console.log","warningAd   playback error: " + param1.error.errorMessage);
         this.destroyAdsManager();
      }
      
      private function allAdsCompletedHandler(param1:AdEvent) : void
      {
         $.jscall("console.log","所有广告加载完成");
         this.destroyAdsManager();
      }
      
      private function destroyAdsManager() : void
      {
         if(this.adsManager)
         {
            if(this.adsManager.adsContainer.parent && this.adsManager.adsContainer.parent.contains(this.adsManager.adsContainer))
            {
               this.adsManager.adsContainer.parent.removeChild(this.adsManager.adsContainer);
            }
            this.adsManager.destroy();
         }
      }
      
      private function destroyoverplayAdsManager() : void
      {
         if(this.overadsManager)
         {
            if(this.overadsManager.adsContainer.parent && this.overadsManager.adsContainer.parent.contains(this.overadsManager.adsContainer))
            {
               this.overadsManager.adsContainer.parent.removeChild(this.overadsManager.adsContainer);
            }
            this.overadsManager.destroy();
         }
      }
      
      private function contentPauseRequestedHandler(param1:AdEvent) : void
      {
         $.jscall("console.log","暂停广告");
      }
      
      private function contentResumeRequestedHandler(param1:AdEvent) : void
      {
         $.jscall("console.log","恢复广告");
         this.callBack();
      }
      
      private function startedHandler(param1:AdEvent) : void
      {
         $.jscall("console.log","开启广告");
      }
      
      private function clickAdEventHandler(param1:AdEvent) : void
      {
         $.jscall("console.log","点击广告");
         UserBehaviorLog.getInstance().addRealLog(UserBehaviorLog.POINT_ID_GG_PRE_CLICK);
      }
      
      private function appearAdEventHandler(param1:AdEvent) : void
      {
         $.jscall("console.log","初现广告");
         UserBehaviorLog.getInstance().addRealLog(UserBehaviorLog.POINT_ID_GG_PRE_APPEAR);
      }
      
      private function overplayadsManagerPlayErrorHandler(param1:AdErrorEvent) : void
      {
         $.jscall("console.log","warningAd   overplay playback error: " + param1.error.errorMessage);
         this.destroyoverplayAdsManager();
      }
      
      private function overplayallAdsCompletedHandler(param1:AdEvent) : void
      {
         $.jscall("console.log","overplay所有广告加载完成");
         this.destroyoverplayAdsManager();
      }
      
      private function overplaycontentPauseRequestedHandler(param1:AdEvent) : void
      {
         $.jscall("console.log","overplay暂停广告");
      }
      
      private function overplaycontentResumeRequestedHandler(param1:AdEvent) : void
      {
         this.isclose = true;
         clearTimeout(this.closeOverTime);
         this.destroyoverplayAdsManager();
         $.jscall("console.log","overplay恢复广告");
      }
      
      private function overplaystartedHandler(param1:AdEvent) : void
      {
         $.jscall("console.log","overplay开启广告");
      }
      
      private function overplayClickAdEventHandler(param1:AdEvent) : void
      {
         $.jscall("console.log","overplay点击广告");
         UserBehaviorLog.getInstance().addRealLog(UserBehaviorLog.POINT_ID_GG_OVER_CLICK);
         clearTimeout(this.closeOverTime);
         if(this.overadsManager)
         {
            if(this.overadsManager.adsContainer.parent && this.overadsManager.adsContainer.parent.contains(this.overadsManager.adsContainer))
            {
               this.overadsManager.adsContainer.parent.removeChild(this.overadsManager.adsContainer);
            }
         }
      }
      
      private function overplayAppearAdEventHandler(param1:AdEvent) : void
      {
         var event:AdEvent = param1;
         $.jscall("console.log","overplay初现广告");
         UserBehaviorLog.getInstance().addRealLog(UserBehaviorLog.POINT_ID_GG_OVER_APPEAR);
         clearTimeout(this.closeOverTime);
         this.closeOverTime = setTimeout(function():void
         {
            destroyoverplayAdsManager();
         },15 * 1000);
      }
      
      public function requestAds(param1:String, param2:Function, param3:String = "") : void
      {
         var id:String = param1;
         var callBackVar:Function = param2;
         var adTag:String = param3;
         this.roomid = id;
         this.callBack = callBackVar;
         this.destroyAdsManager();
         setTimeout(function():void
         {
            loadOverplayAds(overlay + roomid + "&overlay=1");
            setInterval(function():void
            {
               destroyoverplayAdsManager();
               loadOverplayAds(overlay + roomid + "&overlay=1");
            },1000 * 60 * 30);
         },1000 * 60 * 3);
         this.loadAds(this.preroll + this.roomid);
      }
      
      private function loadAds(param1:String) : void
      {
         var _loc2_:AdsRequest = new AdsRequest();
         _loc2_.adTagUrl = param1;
         _loc2_.linearAdSlotWidth = this.adContaniner.stage.stageWidth;
         _loc2_.linearAdSlotHeight = this.adContaniner.stage.stageHeight;
         _loc2_.nonLinearAdSlotWidth = this.adContaniner.stage.stageWidth;
         _loc2_.nonLinearAdSlotHeight = this.adContaniner.stage.stageHeight;
         this.prerollAdsLoader.requestAds(_loc2_);
      }
      
      private function loadOverplayAds(param1:String) : void
      {
         this.isclose = false;
         var _loc2_:AdsRequest = new AdsRequest();
         _loc2_.adTagUrl = param1;
         _loc2_.linearAdSlotWidth = this.adContaniner.stage.stageWidth;
         _loc2_.linearAdSlotHeight = this.adContaniner.stage.stageHeight;
         _loc2_.nonLinearAdSlotWidth = this.adContaniner.stage.stageWidth;
         _loc2_.nonLinearAdSlotHeight = this.adContaniner.stage.stageHeight;
         this.overlayAdsLoader.requestAds(_loc2_);
      }
      
      public function resize(param1:int, param2:int) : void
      {
         if(this.adsManager)
         {
            this.adsManager.resize(param1,param2,ViewModes.NORMAL);
         }
         if(this.overadsManager)
         {
            this.overadsManager.resize(param1,param2 - 45,ViewModes.NORMAL);
         }
      }
   }
}
