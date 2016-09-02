package com.google.ads.ima.wrappers
{
   import com.google.ads.ima.api.AdErrorEvent;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import com.google.ads.ima.api.AdError;
   
   class AdErrorEventWrapper extends AdErrorEvent
   {
       
      
      private var localInstance:Object;
      
      private var wrappersValue:com.google.ads.ima.wrappers.Wrappers;
      
      private var remoteMethodResultsStore:Dictionary;
      
      private var remoteInstance:Object;
      
      function AdErrorEventWrapper(param1:com.google.ads.ima.wrappers.Wrappers, param2:Object, param3:Object = null)
      {
         remoteMethodResultsStore = new Dictionary();
         this.remoteInstance = param2;
         this.localInstance = param3;
         wrappersValue = param1;
         super(param1.remoteToLocal(remoteMethodResultsStore,param2.error,localInstance) as AdError,param2.userRequestContext);
      }
      
      override public function clone() : Event
      {
         return new AdErrorEventWrapper(wrappersValue,remoteInstance,localInstance);
      }
   }
}
