package com.google.ads.ima.apidependency
{
   import flash.utils.Dictionary;
   import com.google.ads.ima.api.AdError;
   
   public class BufferedSdkStatisticsLoggerImpl implements SdkStatisticsLogger
   {
       
      
      private var methodCallsAndArguments:Array;
      
      public function BufferedSdkStatisticsLoggerImpl()
      {
         super();
         methodCallsAndArguments = [];
      }
      
      public function get loggingEnabled() : Boolean
      {
         throw new Error("Dummy method to satisfy API contract, do not use it.");
      }
      
      public function set loggingEnabled(param1:Boolean) : void
      {
         throw new Error("Dummy method to satisfy API contract, do not use it.");
      }
      
      public function get logPercent() : uint
      {
         throw new Error("Dummy method to satisfy API contract, do not use it.");
      }
      
      public function reportApi(param1:uint, param2:Dictionary = null) : void
      {
         store("reportApi",arguments);
      }
      
      public function setPersistentProperty(param1:String, param2:Object) : void
      {
         store("setPersistentProperty",arguments);
      }
      
      private function store(param1:String, param2:Object) : void
      {
         methodCallsAndArguments.push({
            "methodName":param1,
            "args":param2
         });
      }
      
      public function reportAdError(param1:uint, param2:String, param3:AdError, param4:Dictionary = null) : void
      {
         store("reportAdError",arguments);
      }
      
      public function reportError(param1:uint, param2:String, param3:Dictionary = null) : void
      {
         store("reportError",arguments);
      }
      
      public function executeStoredMethodsOn(param1:SdkStatisticsLogger) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in methodCallsAndArguments)
         {
            param1[_loc2_.methodName].apply(param1,_loc2_.args);
         }
         methodCallsAndArguments = [];
      }
      
      public function report(param1:uint, param2:String = null, param3:Dictionary = null) : void
      {
         store("report",arguments);
      }
   }
}
