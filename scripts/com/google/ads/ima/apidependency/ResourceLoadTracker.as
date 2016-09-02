package com.google.ads.ima.apidependency
{
   import flash.events.EventDispatcher;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.events.TimerEvent;
   import com.google.utils.timer.TimerFactory;
   import flash.utils.Timer;
   
   public class ResourceLoadTracker extends EventDispatcher
   {
      
      public static const LOAD_TIMEOUT_EVENT:String = "loadTimeoutEvent";
      
      private static const DEFAULT_LOAD_TIMEOUT_MS:int = 8000;
       
      
      protected var request:URLRequest;
      
      protected var resourceLoaderValue:EventDispatcher;
      
      public var loadTimeout:int = 8000;
      
      private var loadTimer:Timer;
      
      public function ResourceLoadTracker(param1:EventDispatcher, param2:int)
      {
         super();
         resourceLoaderValue = param1;
         if(param2 > 0)
         {
            loadTimeout = param2;
         }
      }
      
      protected function errorHandler(param1:ErrorEvent) : void
      {
         destroy();
      }
      
      protected function addEventListeners() : void
      {
         resourceLoaderValue.addEventListener(Event.COMPLETE,completeHandler);
         resourceLoaderValue.addEventListener(IOErrorEvent.IO_ERROR,errorHandler);
         resourceLoaderValue.addEventListener(SecurityErrorEvent.SECURITY_ERROR,errorHandler);
      }
      
      protected function removeEventListeners() : void
      {
         resourceLoaderValue.removeEventListener(Event.COMPLETE,completeHandler);
         resourceLoaderValue.removeEventListener(IOErrorEvent.IO_ERROR,errorHandler);
         resourceLoaderValue.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,errorHandler);
      }
      
      protected function destroyLoadTimer() : void
      {
         if(loadTimer != null)
         {
            loadTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,loadTimeoutHandler);
            loadTimer.stop();
            loadTimer = null;
         }
      }
      
      public function aboutToLoad(param1:URLRequest) : void
      {
         this.request = param1;
         destroy();
         addEventListeners();
         startLoadTimer(loadTimeout);
      }
      
      protected function loadTimeoutHandler(param1:TimerEvent) : void
      {
         dispatchEvent(new Event(LOAD_TIMEOUT_EVENT));
         destroy();
      }
      
      protected function completeHandler(param1:Event) : void
      {
         destroy();
      }
      
      protected function destroy() : void
      {
         removeEventListeners();
         destroyLoadTimer();
      }
      
      protected function startLoadTimer(param1:int) : void
      {
         destroyLoadTimer();
         loadTimer = TimerFactory.createTimer(param1,1);
         loadTimer.addEventListener(TimerEvent.TIMER_COMPLETE,loadTimeoutHandler);
         loadTimer.start();
      }
   }
}
