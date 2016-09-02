package com.google.ads.ima.apidependency
{
   import com.google.ads.ima.api.AdError;
   import flash.utils.Dictionary;
   
   public interface SdkStatisticsLogger
   {
       
      
      function reportAdError(param1:uint, param2:String, param3:AdError, param4:Dictionary = null) : void;
      
      function get loggingEnabled() : Boolean;
      
      function reportError(param1:uint, param2:String, param3:Dictionary = null) : void;
      
      function report(param1:uint, param2:String = null, param3:Dictionary = null) : void;
      
      function reportApi(param1:uint, param2:Dictionary = null) : void;
      
      function get logPercent() : uint;
      
      function set loggingEnabled(param1:Boolean) : void;
      
      function setPersistentProperty(param1:String, param2:Object) : void;
   }
}
