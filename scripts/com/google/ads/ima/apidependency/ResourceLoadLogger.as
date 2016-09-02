package com.google.ads.ima.apidependency
{
   import flash.events.ErrorEvent;
   import flash.utils.Dictionary;
   import flash.events.ProgressEvent;
   import flash.events.HTTPStatusEvent;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.events.EventDispatcher;
   
   public class ResourceLoadLogger extends ResourceLoadTracker
   {
      
      private static var MAX_REPORTED_URL_LENGTH:int = 100;
       
      
      private var receivedEvents:Array;
      
      public function ResourceLoadLogger(param1:EventDispatcher, param2:int = -1)
      {
         receivedEvents = [];
         super(param1,param2);
      }
      
      public static function formatEventsData(param1:String, param2:Array) : String
      {
         var _loc3_:String = param1;
         if(param2.length > 0)
         {
            _loc3_ = _loc3_ + ("_" + param2.join(","));
         }
         return _loc3_ + ";";
      }
      
      override protected function destroy() : void
      {
         receivedEvents = [];
         super.destroy();
      }
      
      override protected function errorHandler(param1:ErrorEvent) : void
      {
         var _loc2_:Dictionary = createCommonReportableValues();
         _loc2_[SdkStatisticsLoggerImpl.REPORT_KEY_ERROR_EVENT_TEXT] = param1.text;
         SdkStatisticsLoggerImpl.instance.reportError(LogIds.ResourceLoadLogger_errorHandler,null,_loc2_);
         super.errorHandler(param1);
      }
      
      private function getReceivedEvent(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in receivedEvents)
         {
            if(_loc2_.eventType == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function progressEventHandler(param1:ProgressEvent) : void
      {
         recordReceivedEvent(param1.type);
      }
      
      override protected function addEventListeners() : void
      {
         super.addEventListeners();
         resourceLoaderValue.addEventListener(HTTPStatusEvent.HTTP_STATUS,httpStatusEventHandler);
         resourceLoaderValue.addEventListener(Event.OPEN,openEventHandler);
         resourceLoaderValue.addEventListener(ProgressEvent.PROGRESS,progressEventHandler);
      }
      
      private function recordReceivedEvent(param1:String, param2:Array = null) : void
      {
         if(param2 == null)
         {
            param2 = [];
         }
         var _loc3_:Object = getReceivedEvent(param1);
         if(_loc3_ == null)
         {
            receivedEvents.push({
               "eventType":param1,
               "eventData":param2
            });
         }
         else
         {
            _loc3_.eventData = _loc3_.eventData.concat(param2);
         }
      }
      
      override protected function removeEventListeners() : void
      {
         resourceLoaderValue.removeEventListener(HTTPStatusEvent.HTTP_STATUS,httpStatusEventHandler);
         resourceLoaderValue.removeEventListener(Event.OPEN,openEventHandler);
         resourceLoaderValue.removeEventListener(ProgressEvent.PROGRESS,progressEventHandler);
      }
      
      private function httpStatusEventHandler(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Array = [];
         _loc2_.push(param1.status);
         recordReceivedEvent(param1.type,_loc2_);
      }
      
      override protected function loadTimeoutHandler(param1:TimerEvent) : void
      {
         logTimeout();
         super.loadTimeoutHandler(param1);
      }
      
      private function createCommonReportableValues() : Dictionary
      {
         var _loc3_:Object = null;
         var _loc1_:Dictionary = new Dictionary();
         var _loc2_:String = "";
         for each(_loc3_ in receivedEvents)
         {
            _loc2_ = _loc2_ + formatEventsData(_loc3_.eventType,_loc3_.eventData);
         }
         if(_loc2_ != "")
         {
            _loc1_[SdkStatisticsLoggerImpl.REPORT_KEY_EVENTS] = _loc2_;
         }
         _loc1_[SdkStatisticsLoggerImpl.REPORT_KEY_ERROR_URL] = request.url.substr(0,MAX_REPORTED_URL_LENGTH);
         return _loc1_;
      }
      
      private function openEventHandler(param1:Event) : void
      {
         recordReceivedEvent(param1.type);
      }
      
      private function logTimeout() : void
      {
         var _loc1_:Dictionary = createCommonReportableValues();
         SdkStatisticsLoggerImpl.instance.reportError(LogIds.ResourceLoadLogger_logTimeout,null,_loc1_);
      }
   }
}
