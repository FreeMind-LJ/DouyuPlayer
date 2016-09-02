package util
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.display.MovieClip;
   
   public class ResManager
   {
      
      private static var res:util.ResManager;
       
      
      private var callBack:Function;
      
      private var url:String;
      
      private var loader:Loader;
      
      private var callResBroadBack:Function;
      
      private var resBroadurl:String;
      
      private var resBroadLoader:Loader;
      
      private var yanzhiCallBack:Function;
      
      private var yanzhiResUrl:String;
      
      private var yanzhiLoader:Loader;
      
      public function ResManager()
      {
         super();
      }
      
      public static function get instance() : util.ResManager
      {
         if(res == null)
         {
            res = new util.ResManager();
         }
         return res;
      }
      
      public function loadRes(param1:String, param2:Function = null) : void
      {
         var loader:Loader = null;
         var urlVar:String = param1;
         var call:Function = param2;
         this.url = urlVar;
         this.callBack = call;
         try
         {
            loader = new Loader();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.__complete);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
            loader.load(new URLRequest(this.url));
            return;
         }
         catch(e:Error)
         {
            $.jscall("console.log","资源不存在 " + url);
            return;
         }
      }
      
      private function __complete(param1:Event) : void
      {
         this.loader = param1.currentTarget.loader as Loader;
         if(this.callBack != null)
         {
            this.callBack(this.url);
         }
      }
      
      private function ioErrorHandler(param1:IOErrorEvent) : void
      {
         $.jscall("console.log","加载资源IO错误!" + this.url);
         if(this.callBack != null)
         {
            this.callBack(this.url);
         }
      }
      
      public function getResByName(param1:String) : Object
      {
         var obj:Object = null;
         var clazz:Class = null;
         var resName:String = param1;
         try
         {
            clazz = this.loader.contentLoaderInfo.applicationDomain.getDefinition(resName) as Class;
            if(clazz != null)
            {
               obj = new clazz() as MovieClip;
            }
            else
            {
               obj = null;
            }
         }
         catch(error:Error)
         {
            obj = null;
         }
         return obj;
      }
      
      public function loadBroadRes(param1:String, param2:Function = null) : void
      {
         var loader:Loader = null;
         var urlVar:String = param1;
         var call:Function = param2;
         this.resBroadurl = urlVar;
         this.callResBroadBack = call;
         try
         {
            loader = new Loader();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.__completeRes);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandlerRes);
            loader.load(new URLRequest(this.resBroadurl));
            return;
         }
         catch(e:Error)
         {
            $.jscall("console.log","资源不存在 " + resBroadurl);
            return;
         }
      }
      
      private function __completeRes(param1:Event) : void
      {
         this.resBroadLoader = param1.currentTarget.loader as Loader;
         if(this.callResBroadBack != null)
         {
            this.callResBroadBack(this.resBroadurl);
         }
      }
      
      private function ioErrorHandlerRes(param1:IOErrorEvent) : void
      {
         $.jscall("console.log","加载资源IO错误!" + this.resBroadurl);
         if(this.callResBroadBack != null)
         {
            this.callResBroadBack(this.resBroadurl);
         }
      }
      
      public function getResBroadByName(param1:String) : Object
      {
         var _loc2_:Class = this.resBroadLoader.contentLoaderInfo.applicationDomain.getDefinition(param1) as Class;
         if(_loc2_ != null)
         {
            return new _loc2_() as MovieClip;
         }
         return null;
      }
      
      public function loadYanzhiRes(param1:String, param2:Function = null) : void
      {
         var loader:Loader = null;
         var urlVar:String = param1;
         var call:Function = param2;
         this.yanzhiResUrl = urlVar;
         this.yanzhiCallBack = call;
         try
         {
            loader = new Loader();
            loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.yanzhiLoadCompleteHandler);
            loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.yanzhiIoErrorHandler);
            loader.load(new URLRequest(this.yanzhiResUrl));
            return;
         }
         catch(e:Error)
         {
            $.jscall("console.log","资源不存在 " + yanzhiResUrl);
            return;
         }
      }
      
      private function yanzhiLoadCompleteHandler(param1:Event) : void
      {
         this.yanzhiLoader = param1.currentTarget.loader as Loader;
         if(this.yanzhiCallBack != null)
         {
            this.yanzhiCallBack(this.yanzhiResUrl);
         }
      }
      
      private function yanzhiIoErrorHandler(param1:IOErrorEvent) : void
      {
         $.jscall("console.log","加载资源IO错误!" + this.yanzhiResUrl);
         if(this.yanzhiCallBack != null)
         {
            this.yanzhiCallBack(this.yanzhiResUrl);
         }
      }
      
      public function getYanzhiResByName(param1:String) : Object
      {
         var obj:Object = null;
         var clazz:Class = null;
         var resName:String = param1;
         try
         {
            clazz = this.yanzhiLoader.contentLoaderInfo.applicationDomain.getDefinition(resName) as Class;
            if(clazz != null)
            {
               obj = new clazz() as MovieClip;
            }
            else
            {
               obj = null;
            }
         }
         catch(error:Error)
         {
            obj = null;
         }
         return obj;
      }
   }
}
