package com.ws.net
{
   import flash.events.EventDispatcher;
   import flash.system.Capabilities;
   import flash.utils.Timer;
   import com.ws.stat.Statistics;
   import flash.utils.getTimer;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import flash.net.NetStream;
   
   public class VodClassFactory extends EventDispatcher
   {
       
      
      private var _libraryURL:String = "";
      
      private var _loader:com.ws.net.VodClassLoader = null;
      
      private var _startTime:Number = 0;
      
      private var _timer:Timer = null;
      
      private var _logStat:Statistics = null;
      
      private var _callback:Function = null;
      
      public var isSuccess:Boolean = false;
      
      public function VodClassFactory(param1:String, param2:Function, param3:Statistics = null)
      {
         super();
         this._libraryURL = param1;
         this._callback = param2;
         this._logStat = param3;
      }
      
      public static function checkCompatibility() : Boolean
      {
         var _loc3_:Array = null;
         var _loc1_:String = Capabilities.version;
         var _loc2_:int = _loc1_.search(/\d/);
         if(_loc2_ != -1)
         {
            _loc1_ = _loc1_.substr(_loc2_);
            _loc3_ = _loc1_.split(",");
            if(_loc3_.length == 4)
            {
               if(_loc3_[0] > 10)
               {
                  return true;
               }
               if(_loc3_[0] == 10 && _loc3_[1] >= 1)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function load(param1:int = 6000, param2:Boolean = true) : void
      {
         this._startTime = getTimer();
         this._loader = new com.ws.net.VodClassLoader();
         this._loader.addEventListener(com.ws.net.VodClassLoader.LOAD_IO_ERROR,this.loaderError_Hander);
         this._loader.addEventListener(com.ws.net.VodClassLoader.LOAD_SECURITY_RROR,this.loaderError_Hander);
         this._loader.addEventListener(com.ws.net.VodClassLoader.DOWNLOAD_IO_ERROR,this.loaderError_Hander);
         this._loader.addEventListener(com.ws.net.VodClassLoader.DOWNLOAD_SECURITY_ERROR,this.loaderError_Hander);
         this._loader.addEventListener(com.ws.net.VodClassLoader.CLASS_LOADED,this.loader_classLoadedHander);
         this._loader.load(this._libraryURL,param2);
         if(param1 > 0)
         {
            this._timer = new Timer(param1,1);
            this._timer.addEventListener(TimerEvent.TIMER,this.timer_Hander);
            this._timer.start();
         }
      }
      
      protected function loaderError_Hander(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this._timer != null)
         {
            this._timer.stop();
            this._timer.removeEventListener(TimerEvent.TIMER,this.timer_Hander);
         }
         if(this._loader != null)
         {
            this._loader.removeEventListener(com.ws.net.VodClassLoader.LOAD_IO_ERROR,this.loaderError_Hander);
            this._loader.removeEventListener(com.ws.net.VodClassLoader.LOAD_SECURITY_RROR,this.loaderError_Hander);
            this._loader.removeEventListener(com.ws.net.VodClassLoader.DOWNLOAD_IO_ERROR,this.loaderError_Hander);
            this._loader.removeEventListener(com.ws.net.VodClassLoader.DOWNLOAD_SECURITY_ERROR,this.loaderError_Hander);
            this._loader.removeEventListener(com.ws.net.VodClassLoader.CLASS_LOADED,this.loader_classLoadedHander);
         }
         this.isSuccess = false;
         if(this._logStat && !this._loader.isSmallOperators)
         {
            _loc2_ = new Object();
            _loc2_.type = "LoadFail";
            _loc2_.time = int(new Date().getTime() / 1000);
            this._logStat.reportStatInfo(Statistics.LIB_LOAD,_loc2_);
         }
         this._callback();
      }
      
      protected function timer_Hander(param1:Event) : void
      {
         if(this._timer != null)
         {
            this._timer.stop();
            this._timer.removeEventListener(TimerEvent.TIMER,this.timer_Hander);
         }
         this.loaderError_Hander(null);
      }
      
      protected function loader_classLoadedHander(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(this._timer != null)
         {
            this._timer.stop();
            this._timer.removeEventListener(TimerEvent.TIMER,this.timer_Hander);
         }
         this.isSuccess = true;
         if(this._logStat)
         {
            _loc2_ = new Object();
            _loc2_.type = "LoadSuccess";
            _loc2_.time = int(new Date().getTime() / 1000);
            this._logStat.reportStatInfo(Statistics.LIB_LOAD,_loc2_);
         }
         this._callback();
      }
      
      public function createNetStream(param1:Boolean) : NetStream
      {
         var _loc2_:* = undefined;
         if(this._loader != null)
         {
            _loc2_ = null;
            _loc2_ = this._loader.createStream(param1);
            return new _loc2_() as NetStream;
         }
         return null;
      }
      
      public function getClass(param1:String) : Class
      {
         if(this._loader != null)
         {
            return this._loader.getClass(param1);
         }
         return null;
      }
      
      public function get bytes() : Number
      {
         return this._loader.bytesTotal;
      }
   }
}
