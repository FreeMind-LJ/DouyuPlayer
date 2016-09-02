package com.google.ads.ima.wrappers
{
   import com.google.ads.ima.api.AdPodInfo;
   
   class AdPodInfoWrapper extends AdPodInfo
   {
       
      
      private var localInstance:Object;
      
      private var wrappersValue:com.google.ads.ima.wrappers.Wrappers;
      
      private var remoteInstance:Object;
      
      function AdPodInfoWrapper(param1:com.google.ads.ima.wrappers.Wrappers, param2:Object, param3:Object = null)
      {
         super();
         this.remoteInstance = param2;
         this.localInstance = param3;
         wrappersValue = param1;
         totalAds = param2.totalAds;
         adPosition = param2.adPosition;
         isBumper = param2.isBumper;
         maxDuration = param2.maxDuration;
         podIndex = param2.podIndex;
         timeOffset = param2.timeOffset;
      }
   }
}
