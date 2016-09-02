package com.google.ads.ima.apidependency
{
   import flash.utils.Dictionary;
   import flash.net.URLRequest;
   import com.google.ads.ima.api.AdError;
   import flash.net.sendToURL;
   import flash.system.Capabilities;
   
   public class SdkStatisticsLoggerImpl implements com.google.ads.ima.apidependency.SdkStatisticsLogger
   {
      
      public static const REPORT_KEY_AD_SYSTEM:String = "adsys";
      
      public static const REPORT_KEY_LOG_ID:String = "lid";
      
      public static const REPORT_KEY_EVENTS:String = "evts";
      
      public static const REPORT_KEY_SOURCE:String = "src";
      
      public static const REPORT_VALUE_FALSE:String = "f";
      
      public static const REPORT_KEY_USER_CHOICE_ADS_COUNT:String = "ucac";
      
      public static const REPORT_KEY_AD_CLICK_TYPE:String = "aclick";
      
      public static const LOGGING_ID:String = "ima_sdk";
      
      public static const REPORT_KEY_MULTIPART_MESSAGE_VALUE:String = "mtpv";
      
      public static const REPORT_KEY_AD_SERVER:String = "adsrv";
      
      public static const REPORT_KEY_TIMEOUT_COUNT:String = "tc";
      
      public static const REPORT_PUBLISHER_PAGE_HOST:String = "pph";
      
      public static const REPORT_KEY_ADS_MANAGER_TYPE:String = "mt";
      
      public static const ERROR_TYPE:String = "ima_error";
      
      public static const REPORT_KEY_AFV_PUBLISHER_ID:String = "pid";
      
      public static const REPORT_KEY_ADS_RESPONSE_TYPE:String = "art";
      
      public static const REPORT_KEY_USER_CHOICE_EVENT_TIME:String = "ucevtt";
      
      public static const REPORT_KEY_USER_CHOICE_RENDERING_STYLE:String = "ucrs";
      
      public static const REPORT_KEY_AD_TYPE:String = "adt";
      
      private static const REPORT_KEY_DEBUGGER:String = "d";
      
      private static const REPORT_KEY_OS:String = "os";
      
      public static const REPORT_VALUE_NONE:String = "none";
      
      public static const REPORT_KEY_EXPERIMENT_ID:String = "exp";
      
      public static const ADS_LOADER_SOURCE:String = "adsldr";
      
      public static const REPORT_KEY_USER_CHOICE_ALTERNATIVE_ADS_COUNT:String = "ucalt_ads";
      
      public static const REPORT_KEY_ADS_MANAGER_VERSION:String = "mv";
      
      public static const API_TYPE:String = "ima_api";
      
      public static const SDK_LOADER_SOURCE:String = "sdkldr";
      
      public static const REPORT_KEY_AD_SLOT_ID:String = "slot";
      
      public static const REPORT_KEY_SDK_LOADER_URL:String = "lurl";
      
      public static const REPORT_KEY_AD_ID:String = "aid";
      
      public static const REPORT_URL_PREFIX:String = "https://pagead2.googlesyndication.com/pagead/gen_204";
      
      private static const youtubeHosts:Array = ["youtube.com","ytimg.com"];
      
      public static const REPORT_KEY_YOUTUBE:String = "yt";
      
      public static const REPORT_KEY_USER_CHOICE_CLICKED_UI_ID:String = "uccui";
      
      private static const REPORT_KEY_MANUFACTURER:String = "m";
      
      public static const REPORT_KEY_VIDEO_AD_DURATION:String = "vdur";
      
      private static const REPORT_KEY_LANGUAGE:String = "l";
      
      public static const REPORT_KEY_ID:String = "id";
      
      public static const REPORT_KEY_SDK_VERSION:String = "sv";
      
      public static const REPORT_KEY_AD_EVENT:String = "aevt";
      
      public static const REPORT_KEY_YOUTUBE_VIDEO_AD_ID:String = "ytvid";
      
      public static const REPORT_VALUE_TRUE:String = "t";
      
      public static const REPORT_KEY_ERROR_URL:String = "url";
      
      public static const REPORT_KEY_MULTIPART_MESSAGE_ID:String = "mtpid";
      
      public static const REPORT_KEY_ERROR_EVENT_TEXT:String = "eet";
      
      public static const REPORT_KEY_ADS_MANAGER_CONTEXT_ID:String = "amcid";
      
      public static const REPORT_KEY_SHORT_MESSAGE:String = "msg";
      
      public static const REPORT_KEY_DFP_TO_XFP_MIGRATION:String = "dxm";
      
      public static const REPORT_KEY_VALUE_SEPARATOR:String = "|";
      
      private static const REPORT_KEY_PLAYER_TYPE:String = "pt";
      
      public static const REPORT_KEY_VAST_AD_DATA_TYPE:String = "vadt";
      
      private static var instanceValue:com.google.ads.ima.apidependency.SdkStatisticsLogger;
      
      public static const REPORT_KEY_TYPE:String = "type";
      
      public static const REPORT_KEY_VAST_LINEARS_COUNT:String = "vlc";
      
      public static const REPORT_KEY_VAST_NONLINEARS_COUNT:String = "vnlc";
      
      public static const SWC_SOURCE:String = "swc";
      
      private static const REPORT_KEY_FLASH_VERSION:String = "fv";
       
      
      private var config:com.google.ads.ima.apidependency.SdkStatisticsLoggerConfig;
      
      private var logPercentValue:uint;
      
      private var persistentProperties:Dictionary;
      
      private var loggingEnabledValue:Boolean;
      
      public function SdkStatisticsLoggerImpl(param1:com.google.ads.ima.apidependency.SdkStatisticsLoggerConfig)
      {
         persistentProperties = new Dictionary();
         super();
         this.config = param1;
         loggingEnabled = Math.random() <= param1.logPercent;
      }
      
      public static function set instance(param1:com.google.ads.ima.apidependency.SdkStatisticsLogger) : void
      {
         var _loc2_:BufferedSdkStatisticsLoggerImpl = null;
         if(instanceValue is BufferedSdkStatisticsLoggerImpl)
         {
            _loc2_ = instanceValue as BufferedSdkStatisticsLoggerImpl;
            _loc2_.executeStoredMethodsOn(param1);
         }
         instanceValue = param1;
      }
      
      private static function matchesHostname(param1:String, param2:String) : Boolean
      {
         param2 = param2.toLowerCase();
         if(param2.substr(0,2) == "*.")
         {
            param2 = param2.slice(2);
            if(param2.length > param1.length)
            {
               return false;
            }
            return param1.slice(-param2.length) == param2 && (param1.length == param2.length || param1.charAt(param1.length - param2.length - 1) == ".");
         }
         return param2 == param1;
      }
      
      public static function get instance() : com.google.ads.ima.apidependency.SdkStatisticsLogger
      {
         if(instanceValue == null)
         {
            instanceValue = new BufferedSdkStatisticsLoggerImpl();
         }
         return instanceValue;
      }
      
      private static function createQueryParam(param1:String, param2:String) : String
      {
         return encodeURIComponent(param1) + "=" + encodeURIComponent(param2);
      }
      
      public static function isYoutubeHost(param1:String) : Boolean
      {
         var hostName:String = null;
         var domain:String = null;
         var subdomain:String = null;
         var publisherUrl:String = param1;
         try
         {
            hostName = publisherUrl.split("/")[2];
            for each(domain in youtubeHosts)
            {
               subdomain = "*." + domain;
               if(matchesHostname(hostName,domain) || matchesHostname(hostName,subdomain))
               {
                  return true;
               }
            }
         }
         catch(error:Error)
         {
         }
         return false;
      }
      
      public function reportApi(param1:uint, param2:Dictionary = null) : void
      {
         if(param2 == null)
         {
            param2 = new Dictionary();
         }
         param2[REPORT_KEY_TYPE] = API_TYPE;
         report(param1,null,param2);
      }
      
      private function shouldReportData(param1:Dictionary, param2:LoggablePoint) : Boolean
      {
         if(param2.logForYoutubeOnly)
         {
            return param1[SdkStatisticsLoggerImpl.REPORT_KEY_YOUTUBE] == SdkStatisticsLoggerImpl.REPORT_VALUE_TRUE;
         }
         return true;
      }
      
      public function report(param1:uint, param2:String = null, param3:Dictionary = null) : void
      {
         var _loc6_:URLRequest = null;
         if(!shouldLog(param1))
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new Dictionary();
         }
         if(param2 != null)
         {
            param3[REPORT_KEY_SHORT_MESSAGE] = param2;
         }
         param3[REPORT_KEY_LOG_ID] = param1;
         var _loc4_:MultipartMessage = removeMultipartMessage(param3);
         if(_loc4_ != null)
         {
            param3[REPORT_KEY_MULTIPART_MESSAGE_ID] = _loc4_.id;
         }
         var _loc5_:Dictionary = processQueryParams(param3);
         if(shouldReportData(_loc5_,config.loggablePoints[param1]))
         {
            _loc6_ = createReportingUrl(_loc5_);
            sendToURL(_loc6_);
            if(_loc4_ != null)
            {
               sendMultipartMessage(_loc4_);
            }
         }
      }
      
      public function setPersistentProperty(param1:String, param2:Object) : void
      {
         persistentProperties[param1] = getParamValue(param2);
      }
      
      private function mergeProperties(param1:Dictionary, param2:Dictionary) : void
      {
         var _loc3_:* = null;
         for(_loc3_ in param1)
         {
            param2[_loc3_] = param1[_loc3_];
         }
      }
      
      public function set loggingEnabled(param1:Boolean) : void
      {
         loggingEnabledValue = param1;
      }
      
      public function reportAdError(param1:uint, param2:String, param3:AdError, param4:Dictionary = null) : void
      {
         if(param4 == null)
         {
            param4 = new Dictionary();
         }
         if(param3.errorType != null)
         {
            param4["errType"] = param3.errorType;
         }
         if(param3.errorMessage != null)
         {
            param4["errMsg"] = param3.errorMessage;
         }
         if(param3.errorCode > 0)
         {
            param4["errCode"] = param3.errorCode;
         }
         if(param3.innerError != null)
         {
            param4["innerCode"] = param3.innerError.errorID;
         }
         reportError(param1,param2,param4);
      }
      
      private function getParamValue(param1:Object) : String
      {
         if(param1 is String)
         {
            return param1 as String;
         }
         if(param1 is Boolean)
         {
            return !!param1?REPORT_VALUE_TRUE:REPORT_VALUE_FALSE;
         }
         return param1 == null?"null":param1.toString();
      }
      
      protected function sendToURL(param1:URLRequest) : void
      {
         sendToURL(param1);
      }
      
      private function removeMultipartMessage(param1:Dictionary) : MultipartMessage
      {
         var _loc2_:MultipartMessage = null;
         var _loc3_:* = null;
         for(_loc3_ in param1)
         {
            if(param1[_loc3_] is MultipartMessage)
            {
               _loc2_ = param1[_loc3_] as MultipartMessage;
               param1[_loc3_] = null;
               delete param1[_loc3_];
               break;
            }
         }
         return _loc2_;
      }
      
      public function get logPercent() : uint
      {
         return logPercentValue;
      }
      
      public function get loggingEnabled() : Boolean
      {
         return loggingEnabledValue;
      }
      
      private function sendMultipartMessage(param1:MultipartMessage) : void
      {
         var _loc6_:URLRequest = null;
         var _loc2_:Dictionary = new Dictionary();
         _loc2_[REPORT_KEY_MULTIPART_MESSAGE_ID] = param1.id;
         var _loc3_:Dictionary = processQueryParams(_loc2_,false);
         var _loc4_:URLRequest = createReportingUrl(_loc3_);
         var _loc5_:* = _loc4_.url + "&" + REPORT_KEY_MULTIPART_MESSAGE_VALUE + "=";
         while(param1.hasDataLeft())
         {
            _loc6_ = new URLRequest(param1.appendDataPartToUrl(_loc5_));
            sendToURL(_loc6_);
         }
      }
      
      public function reportError(param1:uint, param2:String, param3:Dictionary = null) : void
      {
         if(param3 == null)
         {
            param3 = new Dictionary();
         }
         param3[REPORT_KEY_TYPE] = ERROR_TYPE;
         report(param1,param2,param3);
      }
      
      private function createReportingUrl(param1:Dictionary) : URLRequest
      {
         var _loc4_:* = null;
         var _loc2_:URLRequest = new URLRequest();
         _loc2_.url = REPORT_URL_PREFIX + "?";
         var _loc3_:Boolean = false;
         for(_loc4_ in param1)
         {
            if(_loc3_)
            {
               _loc2_.url = _loc2_.url + ("&" + createQueryParam(_loc4_,param1[_loc4_]));
            }
            else
            {
               _loc2_.url = _loc2_.url + createQueryParam(_loc4_,param1[_loc4_]);
               _loc3_ = true;
            }
         }
         return _loc2_;
      }
      
      private function shouldLog(param1:uint) : Boolean
      {
         var _loc2_:LoggablePoint = null;
         if(param1 > 0 && config.loggablePoints[param1] != null)
         {
            _loc2_ = config.loggablePoints[param1];
            if(loggingEnabled)
            {
               return true;
            }
            return _loc2_.logAlways;
         }
         return false;
      }
      
      private function processQueryParams(param1:Dictionary, param2:Boolean = true) : Dictionary
      {
         var _loc4_:* = null;
         var _loc3_:Dictionary = new Dictionary();
         mergeProperties(persistentProperties,param1);
         for(_loc4_ in param1)
         {
            _loc3_[_loc4_] = getParamValue(param1[_loc4_]);
         }
         _loc3_[REPORT_KEY_ID] = getParamValue(LOGGING_ID);
         if(param2)
         {
            _loc3_[REPORT_KEY_DEBUGGER] = getParamValue(!!Capabilities.isDebugger?REPORT_VALUE_TRUE:REPORT_VALUE_FALSE);
            _loc3_[REPORT_KEY_LANGUAGE] = getParamValue(Capabilities.language);
            _loc3_[REPORT_KEY_MANUFACTURER] = getParamValue(Capabilities.manufacturer);
            _loc3_[REPORT_KEY_OS] = getParamValue(Capabilities.os);
            _loc3_[REPORT_KEY_PLAYER_TYPE] = getParamValue(Capabilities.playerType);
            _loc3_[REPORT_KEY_FLASH_VERSION] = getParamValue(Capabilities.version);
         }
         return _loc3_;
      }
   }
}
