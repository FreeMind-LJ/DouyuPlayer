package com.ws.net
{
   import flash.events.EventDispatcher;
   import flash.net.URLStream;
   import flash.display.Loader;
   import flash.utils.ByteArray;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.events.HTTPStatusEvent;
   import flash.net.URLRequest;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class VodClassLoader extends EventDispatcher
   {
      
      public static const CLASS_LOADED:String = "classLoaded";
      
      public static const DOWNLOAD_IO_ERROR:String = "downloadError";
      
      public static const DOWNLOAD_SECURITY_ERROR:String = "downloadError";
      
      public static const LOAD_IO_ERROR:String = "loadIOError";
      
      public static const LOAD_SECURITY_RROR:String = "loadSecurityError";
       
      
      private var _urlstream:URLStream;
      
      private var _isAnalysis:Boolean;
      
      private var _bytesLoaded:uint;
      
      private var _bytesTotal:uint;
      
      private var _loader:Loader = null;
      
      private var _url:String;
      
      private var _bytes:ByteArray;
      
      private var _doLib = null;
      
      private var _isSmallOperators:Boolean = false;
      
      public function VodClassLoader()
      {
         super();
         this._urlstream = new URLStream();
         this._loader = new Loader();
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loader_completeHander);
         this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.loader_ioErrorHander);
         this._loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.loader_securityHander);
      }
      
      public function get isSmallOperators() : Boolean
      {
         return this._isSmallOperators;
      }
      
      public function getClass(param1:String) : Class
      {
         return this._loader.contentLoaderInfo.applicationDomain.getDefinition(param1) as Class;
      }
      
      public function createStream(param1:Boolean = false) : Class
      {
         if(!param1)
         {
            return this._doLib.streamClass;
         }
         return this._doLib.liveStreamClass;
      }
      
      protected function loader_completeHander(param1:Event) : void
      {
         var _loc3_:ByteArray = null;
         var _loc2_:Class = this._loader.contentLoaderInfo.applicationDomain.getDefinition("PFVDoLib") as Class;
         if(_loc2_ != null)
         {
            this._doLib = new _loc2_();
            this._doLib.addEventListener("lib_loaded",this.onLibLoaderHandler);
            this._doLib.addEventListener("lib_error",this.onLibErrorHandler);
            _loc3_ = new ByteArray();
            this._bytes.readBytes(_loc3_);
            this._doLib.libBytes = _loc3_;
         }
      }
      
      private function onLibLoaderHandler(param1:Event) : void
      {
         dispatchEvent(new Event(VodClassLoader.CLASS_LOADED));
      }
      
      private function onLibErrorHandler(param1:Event) : void
      {
         dispatchEvent(new Event(VodClassLoader.LOAD_IO_ERROR));
      }
      
      protected function loader_ioErrorHander(param1:Event) : void
      {
         dispatchEvent(new Event(VodClassLoader.LOAD_IO_ERROR));
      }
      
      protected function loader_securityHander(param1:Event) : void
      {
         dispatchEvent(new Event(VodClassLoader.LOAD_SECURITY_RROR));
      }
      
      protected function us_completeHander(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:ByteArray = null;
         if(this._urlstream.bytesAvailable > 0)
         {
            this._bytesLoaded = this._urlstream.bytesAvailable;
            this._bytesTotal = this._urlstream.bytesAvailable;
            this._urlstream.readBytes(this._bytes,0,this._urlstream.bytesAvailable);
            _loc2_ = this._bytes.readInt();
            _loc3_ = new ByteArray();
            if(this._bytes.length < _loc2_)
            {
               dispatchEvent(new Event(VodClassLoader.DOWNLOAD_IO_ERROR));
            }
            else
            {
               this._bytes.readBytes(_loc3_,0,_loc2_);
               this._loader.loadBytes(_loc3_);
            }
         }
      }
      
      protected function us_ioErrorHander(param1:Event) : void
      {
         dispatchEvent(new Event(VodClassLoader.DOWNLOAD_IO_ERROR));
      }
      
      protected function us_securityHander(param1:Event) : void
      {
         dispatchEvent(new Event(VodClassLoader.DOWNLOAD_SECURITY_ERROR));
      }
      
      protected function us_progressHander(param1:ProgressEvent) : void
      {
         this._bytesLoaded = param1.bytesLoaded;
         this._bytesTotal = param1.bytesTotal;
      }
      
      protected function onHttpStatusHandler(param1:HTTPStatusEvent) : void
      {
         switch(param1.status)
         {
            case 503:
               this._isSmallOperators = true;
         }
      }
      
      public function load(param1:String, param2:Boolean = true) : void
      {
         this._bytesLoaded = 0;
         this._bytesTotal = 0;
         this._url = param1;
         this._isSmallOperators = false;
         var _loc3_:URLRequest = new URLRequest(this._url);
         this._urlstream.addEventListener(Event.COMPLETE,this.us_completeHander);
         this._urlstream.addEventListener(IOErrorEvent.IO_ERROR,this.us_ioErrorHander);
         this._urlstream.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.us_securityHander);
         this._urlstream.addEventListener(ProgressEvent.PROGRESS,this.us_progressHander);
         if(this._bytes == null)
         {
            this._bytes = new ByteArray();
         }
         this._urlstream.load(_loc3_);
      }
      
      public function get bytesLoaded() : uint
      {
         return this._bytesLoaded;
      }
      
      public function get bytesTotal() : uint
      {
         return this._bytesTotal;
      }
   }
}
