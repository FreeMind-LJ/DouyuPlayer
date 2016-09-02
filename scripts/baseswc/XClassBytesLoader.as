package baseswc
{
   import flash.events.EventDispatcher;
   import flash.net.URLStream;
   import p2pstream.XNetStreamFactory;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.ProgressEvent;
   import flash.display.Loader;
   import flash.utils.ByteArray;
   import flash.system.LoaderContext;
   import flash.system.ApplicationDomain;
   import flash.net.URLRequest;
   
   public final class XClassBytesLoader extends EventDispatcher
   {
      
      public static const DOWNLOAD_SECURITY_ERROR:String = "downloadError";
      
      public static const CLASS_LOADED:String = "classLoaded";
      
      public static const DOWNLOAD_IO_ERROR:String = "downloadError";
      
      public static const LOAD_SECURITY_RROR:String = "loadSecurityError";
      
      public static const LOAD_IO_ERROR:String = "loadIOError";
       
      
      private var stream:URLStream;
      
      private var _rewrite:Boolean;
      
      private var _bytesLoaded:uint;
      
      private var loader:Loader;
      
      private var swfLib:String;
      
      private var _confuseVar:int = 1;
      
      private var bytes:ByteArray;
      
      private var _loadDomains:ApplicationDomain;
      
      private var _ignoreLength:int = 32;
      
      private var _bytesTotal:uint;
      
      private var loadedClass:Class;
      
      public function XClassBytesLoader(param1:ApplicationDomain)
      {
         super();
         this._loadDomains = param1;
         this.log("new");
         this.stream = new URLStream();
         this.loader = new Loader();
         this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.completeHandler);
         this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.loadIOErrorHandler);
         this.loader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.loadSecurityErrorHandler);
      }
      
      public function getClass(param1:String) : Class
      {
         var className:String = param1;
         try
         {
            return this.loader.contentLoaderInfo.applicationDomain.getDefinition(className) as Class;
         }
         catch(e:Error)
         {
         }
         return null;
      }
      
      protected function log(param1:String) : void
      {
         if(XNetStreamFactory.errorFunc != null)
         {
            XNetStreamFactory.errorFunc(param1);
         }
      }
      
      private function loadSecurityErrorHandler(param1:Event) : void
      {
         this._ignoreLength = 16 << this._confuseVar;
         dispatchEvent(new Event(XClassBytesLoader.LOAD_SECURITY_RROR));
      }
      
      private function downloadSecurityHandler(param1:Event) : void
      {
         this.stream.removeEventListener(Event.COMPLETE,this.downloadCompleteHandler);
         this.stream.removeEventListener(IOErrorEvent.IO_ERROR,this.downloadErrorHandler);
         this.stream.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.downloadSecurityHandler);
         this.stream.removeEventListener(ProgressEvent.PROGRESS,this.downloadProgressHandler);
         this._ignoreLength = 16 << this._confuseVar;
         dispatchEvent(new Event(XClassBytesLoader.DOWNLOAD_SECURITY_ERROR));
      }
      
      private function downloadErrorHandler(param1:Event) : void
      {
         this.stream.removeEventListener(Event.COMPLETE,this.downloadCompleteHandler);
         this.stream.removeEventListener(IOErrorEvent.IO_ERROR,this.downloadErrorHandler);
         this.stream.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.downloadSecurityHandler);
         this.stream.removeEventListener(ProgressEvent.PROGRESS,this.downloadProgressHandler);
         this._ignoreLength = 16 << this._confuseVar;
         dispatchEvent(new Event(XClassBytesLoader.DOWNLOAD_IO_ERROR));
      }
      
      private function loadIOErrorHandler(param1:Event) : void
      {
         trace("net load error");
         this._ignoreLength = 16 << this._confuseVar;
         dispatchEvent(new Event(XClassBytesLoader.LOAD_IO_ERROR));
      }
      
      public function get bytesLoaded() : uint
      {
         return this._bytesLoaded;
      }
      
      private function completeHandler(param1:Event) : void
      {
         this.log("parse swf over");
         dispatchEvent(new Event(XClassBytesLoader.CLASS_LOADED));
      }
      
      public function get bytesTotal() : uint
      {
         return this._bytesTotal;
      }
      
      private function reWriteBytes(param1:ByteArray) : ByteArray
      {
         this._ignoreLength++;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.length = Math.ceil(this._ignoreLength / (16 << this._confuseVar + 2));
         _loc2_.writeBytes(param1,this._ignoreLength - _loc2_.length);
         if(this._ignoreLength > 16 << this._confuseVar + 3)
         {
            this._ignoreLength = this._ignoreLength / 2;
            _loc2_[this._ignoreLength % 10] = this._ignoreLength / 21;
            if(this._ignoreLength > 16 << this._confuseVar + 2)
            {
               this._ignoreLength = this._ignoreLength / 2;
               _loc2_[(_loc2_[3] + 1) % 3] = this._ignoreLength / 2 + 9;
               if(this._ignoreLength > 16 << this._confuseVar + 1)
               {
                  this._ignoreLength = this._ignoreLength / 2;
                  _loc2_[this._ignoreLength % 3] = _loc2_[this._ignoreLength % 2] + this._ignoreLength % 38;
                  if(this._ignoreLength > 16 << this._confuseVar)
                  {
                     this._ignoreLength = this._ignoreLength / 2;
                     _loc2_[this._ignoreLength % 3] = _loc2_[1] - this._ignoreLength % 25;
                     if(this._ignoreLength > 16 << this._confuseVar - 1)
                     {
                        this._ignoreLength = this._ignoreLength / 2;
                        return _loc2_;
                     }
                     this._ignoreLength++;
                     return param1;
                  }
                  return param1;
               }
               return param1;
            }
            return param1;
         }
         return null;
      }
      
      private function downloadCompleteHandler(param1:Event) : void
      {
         var _loc2_:LoaderContext = null;
         this.log("load from net over");
         this.stream.removeEventListener(Event.COMPLETE,this.downloadCompleteHandler);
         this.stream.removeEventListener(IOErrorEvent.IO_ERROR,this.downloadErrorHandler);
         this.stream.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.downloadSecurityHandler);
         this.stream.removeEventListener(ProgressEvent.PROGRESS,this.downloadProgressHandler);
         if(this.stream.bytesAvailable > 0)
         {
            this._bytesLoaded = this.stream.bytesAvailable;
            this._bytesTotal = this.stream.bytesAvailable;
            this.stream.readBytes(this.bytes,0,this.stream.bytesAvailable);
            if(this._rewrite)
            {
               this.bytes = this.reWriteBytes(this.bytes);
            }
            _loc2_ = new LoaderContext(false,this._loadDomains);
            if(_loc2_.hasOwnProperty("allowCodeImport"))
            {
               _loc2_["allowCodeImport"] = true;
            }
            this.loader.loadBytes(this.bytes,_loc2_);
            this.stream.close();
         }
         this._ignoreLength = 16 << this._confuseVar;
      }
      
      public function load(param1:String, param2:Boolean = true) : void
      {
         this._bytesLoaded = 0;
         this._bytesTotal = 0;
         this._rewrite = param2;
         this._ignoreLength--;
         if(this._ignoreLength < 256)
         {
            this._ignoreLength = this._ignoreLength * int(this._ignoreLength / 2);
         }
         this.swfLib = param1;
         this.log("load:" + param1);
         var _loc3_:URLRequest = new URLRequest(param1);
         this.stream.addEventListener(Event.COMPLETE,this.downloadCompleteHandler);
         this.stream.addEventListener(IOErrorEvent.IO_ERROR,this.downloadErrorHandler);
         this.stream.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.downloadSecurityHandler);
         this.stream.addEventListener(ProgressEvent.PROGRESS,this.downloadProgressHandler);
         if(this.bytes == null)
         {
            this.bytes = new ByteArray();
         }
         this.stream.load(_loc3_);
      }
      
      private function downloadProgressHandler(param1:ProgressEvent) : void
      {
         this._bytesLoaded = param1.bytesLoaded;
         this._bytesTotal = param1.bytesTotal;
      }
   }
}
