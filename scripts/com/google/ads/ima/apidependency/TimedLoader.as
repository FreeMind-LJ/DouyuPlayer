package com.google.ads.ima.apidependency
{
   import com.google.utils.SafeLoader;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import com.google.utils.Trace;
   
   public class TimedLoader extends SafeLoader
   {
       
      
      private var resourceLoadLogger:com.google.ads.ima.apidependency.ResourceLoadLogger;
      
      public function TimedLoader(param1:com.google.ads.ima.apidependency.ResourceLoadLogger = null)
      {
         super();
         Trace.traceUncaughtErrors(this);
         if(param1 == null)
         {
            param1 = new com.google.ads.ima.apidependency.ResourceLoadLogger(contentLoaderInfo);
         }
         this.resourceLoadLogger = param1;
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null) : void
      {
         resourceLoadLogger.aboutToLoad(param1);
         doActualLoad(param1,param2);
      }
      
      protected function doActualLoad(param1:URLRequest, param2:LoaderContext = null) : void
      {
         super.load(param1,param2);
      }
   }
}
