package com.google.ads.ima.wrappers
{
   import com.google.ads.ima.api.ImaSdkSettings;
   
   public class ImaSdkSettingsWrapper extends Wrapper implements ImaSdkSettings, DelayedRemoteInstance
   {
       
      
      private var delayedMethods:Array;
      
      public function ImaSdkSettingsWrapper(param1:Wrappers, param2:Object, param3:Object = null)
      {
         super(param1,param2,param3);
         delayedMethods = [];
      }
      
      public function set companionBackfill(param1:String) : void
      {
         if(remoteInstance == null)
         {
            delayedMethods.push(delayMethod(arguments.callee,arguments));
         }
         else
         {
            remoteInstance.companionBackfill = param1;
         }
      }
      
      public function set uniqueAds(param1:Boolean) : void
      {
         if(remoteInstance == null)
         {
            delayedMethods.push(delayMethod(arguments.callee,arguments));
         }
         else
         {
            remoteInstance.uniqueAds = param1;
         }
      }
      
      public function set enableUiRegistry(param1:Boolean) : void
      {
         if(remoteInstance == null)
         {
            delayedMethods.push(delayMethod(arguments.callee,arguments));
         }
         else
         {
            remoteInstance.enableUiRegistry = param1;
         }
      }
      
      public function set numRedirects(param1:uint) : void
      {
         if(remoteInstance == null)
         {
            delayedMethods.push(delayMethod(arguments.callee,arguments));
         }
         else
         {
            remoteInstance.numRedirects = param1;
         }
      }
      
      private function delayMethod(param1:Function, param2:Array) : Function
      {
         var scope:ImaSdkSettingsWrapper = null;
         var method:Function = param1;
         var args:Array = param2;
         scope = this;
         return function():void
         {
            method.apply(scope,args);
         };
      }
      
      public function invokeDelayedMethods(param1:Object) : void
      {
         var _loc2_:Function = null;
         super.remoteInstance = param1;
         for each(_loc2_ in delayedMethods)
         {
            _loc2_();
         }
      }
      
      public function set autoPlayAdBreaks(param1:Boolean) : void
      {
         if(remoteInstance == null)
         {
            delayedMethods.push(delayMethod(arguments.callee,arguments));
         }
         else
         {
            remoteInstance.autoPlayAdBreaks = param1;
         }
      }
      
      public function set playerVersion(param1:String) : void
      {
         if(remoteInstance == null)
         {
            delayedMethods.push(delayMethod(arguments.callee,arguments));
         }
         else
         {
            remoteInstance.playerVersion = param1;
         }
      }
      
      public function set playerType(param1:String) : void
      {
         if(remoteInstance == null)
         {
            delayedMethods.push(delayMethod(arguments.callee,arguments));
         }
         else
         {
            remoteInstance.playerType = param1;
         }
      }
      
      public function set ppid(param1:String) : void
      {
         if(remoteInstance == null)
         {
            delayedMethods.push(delayMethod(arguments.callee,arguments));
         }
         else
         {
            remoteInstance.ppid = param1;
         }
      }
      
      public function set competitiveExclusion(param1:String) : void
      {
         if(remoteInstance == null)
         {
            delayedMethods.push(delayMethod(arguments.callee,arguments));
         }
         else
         {
            remoteInstance.competitiveExclusion = param1;
         }
      }
   }
}
