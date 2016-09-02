package com.google.ads.ima.api
{
   public class AdPodInfo
   {
      
      public static const UNKNOWN_DURATION:int = -1;
       
      
      public var timeOffset:Number = 0;
      
      public var totalAds:Number = 1;
      
      public var podIndex:Number = 0;
      
      public var adPosition:Number = 1;
      
      public var isBumper:Boolean;
      
      public var maxDuration:Number = -1;
      
      public function AdPodInfo()
      {
         super();
      }
   }
}
