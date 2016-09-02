package com.google.utils
{
   import flash.display.DisplayObject;
   import flash.utils.Dictionary;
   import flash.events.EventDispatcher;
   import flash.events.Event;
   import flash.system.Capabilities;
   import flash.utils.getQualifiedClassName;
   
   public class Trace
   {
      
      private static const CONSOLE_FUNCTION_NAMES:Dictionary = new Dictionary();
      
      private static const ERROR_LOGGING_LEVEL:int = 3;
      
      private static const INFO_LOGGING_LEVEL:int = 1;
      
      private static const FLASH_LOGGING_LEVELS:Dictionary = new Dictionary();
      
      private static const DEBUG_LOGGING_LEVEL:int = 0;
      
      private static const WARNING_LOGGING_LEVEL:int = 2;
      
      public static var useConsoleLogForDebug:Boolean;
      
      {
         FLASH_LOGGING_LEVELS[DEBUG_LOGGING_LEVEL] = "info";
         FLASH_LOGGING_LEVELS[INFO_LOGGING_LEVEL] = "info";
         FLASH_LOGGING_LEVELS[WARNING_LOGGING_LEVEL] = "warning";
         FLASH_LOGGING_LEVELS[ERROR_LOGGING_LEVEL] = "error";
         CONSOLE_FUNCTION_NAMES[DEBUG_LOGGING_LEVEL] = "window.console.log";
         CONSOLE_FUNCTION_NAMES[INFO_LOGGING_LEVEL] = "window.console.info";
         CONSOLE_FUNCTION_NAMES[WARNING_LOGGING_LEVEL] = "window.console.warn";
         CONSOLE_FUNCTION_NAMES[ERROR_LOGGING_LEVEL] = "window.console.error";
      }
      
      public function Trace()
      {
         super();
      }
      
      private static function log(param1:int, param2:Array) : void
      {
         logToFlash(param1,param2.concat());
         logToConsole(param1,param2.concat());
      }
      
      public static function traceUncaughtErrors(param1:DisplayObject) : void
      {
         addUncaughtErrorEventlistener(param1);
         if(param1.hasOwnProperty("loaderInfo"))
         {
            addUncaughtErrorEventlistener(param1.loaderInfo);
         }
      }
      
      public static function error(... rest) : void
      {
         log(ERROR_LOGGING_LEVEL,rest);
      }
      
      private static function logToFlash(param1:int, param2:Array) : void
      {
         param2.unshift(FLASH_LOGGING_LEVELS[param1]);
         trace.apply(null,param2);
      }
      
      public static function debug(... rest) : void
      {
         log(DEBUG_LOGGING_LEVEL,rest);
      }
      
      public static function warning(... rest) : void
      {
         log(WARNING_LOGGING_LEVEL,rest);
      }
      
      private static function addUncaughtErrorEventlistener(param1:EventDispatcher) : void
      {
         if(param1 && param1.hasOwnProperty("uncaughtErrorEvents"))
         {
            Object(param1).uncaughtErrorEvents.addEventListener("uncaughtError",uncaughtErrorEventHandler,false,0,true);
         }
      }
      
      public static function traceObject(param1:Object, param2:String = "") : void
      {
         Trace.info(buildObjectTrace(param1,param2));
      }
      
      private static function uncaughtErrorEventHandler(param1:Event) : void
      {
         var _loc3_:Error = null;
         var _loc2_:String = "Uncaught error: " + param1;
         if(param1.hasOwnProperty("error"))
         {
            if(param1["error"] is Error)
            {
               _loc3_ = param1["error"] as Error;
               _loc2_ = "Uncaught error: " + _loc3_;
            }
            else
            {
               _loc2_ = "Uncaught error: " + param1["error"];
            }
         }
         if(Capabilities.isDebugger)
         {
            Trace.error(_loc2_);
         }
         else
         {
            Trace.error(_loc2_ + "\n" + "Use debug flash player to get full trace.");
         }
      }
      
      public static function info(... rest) : void
      {
         log(INFO_LOGGING_LEVEL,rest);
      }
      
      private static function logToConsole(param1:int, param2:Array) : void
      {
         if(param1 >= WARNING_LOGGING_LEVEL || useConsoleLogForDebug)
         {
            param2.unshift(CONSOLE_FUNCTION_NAMES[param1]);
            ExternalInterfaceSecureWrapper.call.apply(null,param2);
         }
      }
      
      public static function buildObjectTrace(param1:Object, param2:String = "") : String
      {
         var _loc4_:* = null;
         var _loc3_:String = "";
         for(_loc4_ in param1)
         {
            if(typeof param1[_loc4_] == "object")
            {
               _loc3_ = _loc3_ + (param2 + _loc4_ + ": [" + getQualifiedClassName(param1[_loc4_]) + "]\n");
               _loc3_ = _loc3_ + buildObjectTrace(param1[_loc4_],"  " + param2);
            }
            else
            {
               _loc3_ = _loc3_ + (param2 + _loc4_ + ": " + param1[_loc4_] + "\n");
            }
         }
         return _loc3_;
      }
   }
}
