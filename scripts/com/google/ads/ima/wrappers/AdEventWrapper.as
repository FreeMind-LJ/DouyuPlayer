package com.google.ads.ima.wrappers
{
   import com.google.ads.ima.api.AdEvent;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import com.google.ads.ima.api.Ad;
   
   class AdEventWrapper extends AdEvent
   {
       
      
      private var localInstance:Object;
      
      private var wrappersValue:com.google.ads.ima.wrappers.Wrappers;
      
      private var remoteMethodResultsStore:Dictionary;
      
      private var remoteInstance:Object;
      
      function AdEventWrapper(param1:com.google.ads.ima.wrappers.Wrappers, param2:Object, param3:Object = null)
      {
         remoteMethodResultsStore = new Dictionary();
         this.remoteInstance = param2;
         this.localInstance = param3;
         wrappersValue = param1;
         super(param2.type,param1.remoteToLocal(remoteMethodResultsStore,param2.ad,localInstance) as Ad,param2.adData);
      }
      
      override public function clone() : Event
      {
         return new AdEventWrapper(wrappersValue,remoteInstance,localInstance);
      }
   }
}
