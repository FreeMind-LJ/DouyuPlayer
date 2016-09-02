package p2pstream
{
   import flash.events.EventDispatcher;
   import flash.system.Capabilities;
   import baseswc.XClassBytesLoader;
   import flash.utils.Timer;
   import flash.events.Event;
   import flash.utils.getTimer;
   import flash.events.TimerEvent;
   import baseswc.SDKInterface;
   import flash.system.ApplicationDomain;
   import conf.SwcConfig;
   
   public class XNetStreamFactory extends EventDispatcher
   {
      
      protected static var _reportInfo:Object = new Object();
      
      public static const PARTNERID:String = "douyu";
      
      public static var errorFunc:Function;
      
      protected static var hasReported:Boolean = false;
      
      protected static var _startTime:Number;
      
      protected static var loader:XClassBytesLoader;
       
      
      protected var _libraryUrl:String = "";
      
      protected var _timeoutTimer:Timer;
      
      protected var _onInit:Function;
      
      protected var _ycDomains:ApplicationDomain;
      
      protected var _isSuccess:Boolean;
      
      public function XNetStreamFactory(param1:Function, param2:String = null)
      {
         this._ycDomains = new ApplicationDomain();
         super();
         this._onInit = param1;
         if(param2 != null)
         {
            this._libraryUrl = param2;
         }
         else
         {
            this._libraryUrl = SwcConfig.libraryURL;
         }
      }
      
      public static function checkCompatibility() : Boolean
      {
         return useXNet();
      }
      
      protected static function get playFormIsGood() : Boolean
      {
         var _loc1_:String = Capabilities.version;
         if(_loc1_.indexOf("WIN") >= 0 || _loc1_.indexOf("MAC") >= 0)
         {
            return true;
         }
         return false;
      }
      
      protected static function useXNet(param1:Boolean = true) : Boolean
      {
         var shouldReport:Boolean = param1;
         try
         {
            if(versionIsGood && playFormIsGood)
            {
               return true;
            }
            if(shouldReport && !hasReported)
            {
               hasReported = true;
               if(!versionIsGood)
               {
                  FactoryReporter.sendReport(FactoryReporter.CODE_FLASH_VERSION_OVERDUE,_reportInfo);
               }
               else if(!playFormIsGood)
               {
                  FactoryReporter.sendReport(FactoryReporter.CODE_PLANT_VERSION_NOT_SATISFIED,_reportInfo);
               }
               else
               {
                  FactoryReporter.sendReport(FactoryReporter.CODE_FLASH_VERSION_DEBUGER,_reportInfo);
               }
            }
            return false;
         }
         catch(e:Error)
         {
            return false;
         }
         return false;
      }
      
      protected static function get versionIsGood() : Boolean
      {
         var _loc1_:String = Capabilities.version;
         var _loc2_:Number = new Number(_loc1_.split(" ")[1].split(",")[0]);
         var _loc3_:Number = new Number(_loc1_.split(" ")[1].split(",")[1]);
         if(_loc2_ > 10)
         {
            return true;
         }
         return false;
      }
      
      protected function log(param1:String) : void
      {
         if(errorFunc != null)
         {
            errorFunc(param1);
         }
      }
      
      protected function classLoadedHandler(param1:Event) : void
      {
         _reportInfo.t = getTimer() - _startTime;
         FactoryReporter.sendReport(FactoryReporter.CODE_DOWNLOAD_SUCCESS,_reportInfo);
         if(this._timeoutTimer != null)
         {
            this._timeoutTimer.stop();
            this._timeoutTimer.removeEventListener(TimerEvent.TIMER,this.onTimeout);
         }
         this._isSuccess = true;
         SDKInterface.instance.setSdkReady(loader);
         this._onInit();
      }
      
      protected function onTimeout(param1:TimerEvent) : void
      {
         this._timeoutTimer.stop();
         this._timeoutTimer.removeEventListener(TimerEvent.TIMER,this.onTimeout);
         loader.removeEventListener(XClassBytesLoader.LOAD_IO_ERROR,this.errorHandler);
         loader.removeEventListener(XClassBytesLoader.LOAD_SECURITY_RROR,this.errorHandler);
         loader.removeEventListener(XClassBytesLoader.DOWNLOAD_IO_ERROR,this.errorHandler);
         loader.removeEventListener(XClassBytesLoader.DOWNLOAD_SECURITY_ERROR,this.errorHandler);
         loader.removeEventListener(XClassBytesLoader.CLASS_LOADED,this.classLoadedHandler);
         this.errorHandler(null);
      }
      
      protected function errorHandler(param1:Event) : void
      {
         _reportInfo.t = getTimer() - _startTime;
         if(this._timeoutTimer != null)
         {
            this._timeoutTimer.stop();
            this._timeoutTimer.removeEventListener(TimerEvent.TIMER,this.onTimeout);
         }
         if(param1 == null)
         {
            FactoryReporter.sendReport(FactoryReporter.CODE_DOWNLOAD_TIMEOUT,_reportInfo);
         }
         else
         {
            _reportInfo.e = param1.type;
            _reportInfo.bl = loader.bytesLoaded;
            _reportInfo.bt = loader.bytesTotal;
            FactoryReporter.sendReport(FactoryReporter.CODE_DOWNLOAD_ERROR,_reportInfo);
         }
         this._isSuccess = false;
         this._onInit();
      }
      
      private function set isSuccess(param1:Boolean) : void
      {
         this._isSuccess = param1;
      }
      
      public function get isSuccess() : Boolean
      {
         return this._isSuccess;
      }
      
      public function load(param1:int = 10000, param2:Boolean = true) : void
      {
         _startTime = getTimer();
         if(!useXNet())
         {
            this._isSuccess = false;
            this._onInit();
         }
         else
         {
            loader = new XClassBytesLoader(this._ycDomains);
            loader.addEventListener(XClassBytesLoader.LOAD_IO_ERROR,this.errorHandler);
            loader.addEventListener(XClassBytesLoader.LOAD_SECURITY_RROR,this.errorHandler);
            loader.addEventListener(XClassBytesLoader.DOWNLOAD_IO_ERROR,this.errorHandler);
            loader.addEventListener(XClassBytesLoader.DOWNLOAD_SECURITY_ERROR,this.errorHandler);
            loader.addEventListener(XClassBytesLoader.CLASS_LOADED,this.classLoadedHandler);
            loader.load(this._libraryUrl,param2);
            if(param1 > 0)
            {
               this._timeoutTimer = new Timer(param1,1);
               this._timeoutTimer.addEventListener(TimerEvent.TIMER,this.onTimeout);
               this._timeoutTimer.start();
            }
         }
      }
   }
}
