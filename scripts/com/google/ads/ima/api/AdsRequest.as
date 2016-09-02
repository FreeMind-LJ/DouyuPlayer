package com.google.ads.ima.api
{
   import flash.utils.Dictionary;
   
   public class AdsRequest
   {
      
      public static const VIDEO_PLAY_ACTIVATION_AUTO:uint = 1;
      
      public static const VIDEO_PLAY_ACTIVATION_CLICK:uint = 2;
      
      public static const VIDEO_PLAY_ACTIVATION_UNKNOWN:uint = 0;
       
      
      public var tagForChildDirectedContent:Boolean;
      
      public var videoPlayActivation:uint = 0;
      
      public var customMacros:Dictionary;
      
      public var disableCompanionAds:Boolean = false;
      
      public var linearAdSlotHeight:Number = 0;
      
      public var adTagUrl:String;
      
      public var adsResponse:String;
      
      public var nonLinearAdSlotWidth:Number = 0;
      
      public var language:String = null;
      
      public var linearAdSlotWidth:Number = 0;
      
      public var youTubeVideoAdStartDelay:int;
      
      public var youTubeAdType:String;
      
      public var forcedExperimentIds:String;
      
      public var youTubeExperimentAndLaunchIds:String;
      
      public var contentId:String = null;
      
      public var usePostAdRequests:Boolean = false;
      
      public var youTubeExperimentIds:String;
      
      public var isYouTube:Boolean = false;
      
      public var nonLinearAdSlotHeight:Number = 0;
      
      public function AdsRequest()
      {
         super();
      }
      
      public function set adWillAutoPlay(param1:Boolean) : void
      {
         videoPlayActivation = !!param1?uint(VIDEO_PLAY_ACTIVATION_AUTO):uint(VIDEO_PLAY_ACTIVATION_CLICK);
      }
   }
}
