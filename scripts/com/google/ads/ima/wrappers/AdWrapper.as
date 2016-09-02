package com.google.ads.ima.wrappers
{
   import com.google.ads.ima.api.Ad;
   import flash.utils.Dictionary;
   import com.google.ads.ima.api.AdPodInfo;
   import com.google.ads.ima.api.CompanionAdSelectionSettings;
   
   class AdWrapper extends Wrapper implements Ad
   {
       
      
      function AdWrapper(param1:Wrappers, param2:Object, param3:Object = null)
      {
         super(param1,param2,param3);
      }
      
      public function reportCustomKeysAndValues(param1:Dictionary) : void
      {
         remoteInstance.reportCustomKeysAndValues(param1);
      }
      
      public function get description() : String
      {
         return remoteInstance.description;
      }
      
      public function get apiFramework() : String
      {
         return remoteInstance.apiFramework;
      }
      
      public function get clientPlaybackNonce() : String
      {
         return remoteInstance.clientPlaybackNonce;
      }
      
      public function getCompanionAdUrl(param1:String, param2:String = null) : String
      {
         return remoteInstance.getCompanionAdUrl(param1,param2);
      }
      
      public function get isci() : String
      {
         return remoteInstance.isci;
      }
      
      public function get id() : String
      {
         return remoteInstance.id;
      }
      
      public function get traffickingParameters() : Dictionary
      {
         return remoteInstance.traffickingParameters;
      }
      
      public function get traffickingParametersAsString() : String
      {
         return remoteInstance.traffickingParametersAsString;
      }
      
      public function get duration() : Number
      {
         return remoteInstance.duration;
      }
      
      public function get height() : Number
      {
         return remoteInstance.height;
      }
      
      public function get skippable() : Boolean
      {
         return remoteInstance.skippable;
      }
      
      public function get minSuggestedDuration() : Number
      {
         return remoteInstance.minSuggestedDuration;
      }
      
      public function get wrapperAdSystems() : Array
      {
         return remoteInstance.wrapperAdSystems;
      }
      
      public function get adSkippableState() : Boolean
      {
         return remoteInstance.adSkippableState;
      }
      
      public function get adSystem() : String
      {
         return remoteInstance.adSystem;
      }
      
      public function enableManualEventsReporting() : void
      {
         remoteInstance.enableManualEventsReporting();
      }
      
      public function get surveyUrl() : String
      {
         return remoteInstance.surveyUrl;
      }
      
      public function get linear() : Boolean
      {
         return remoteInstance.linear;
      }
      
      public function get wrapperAdIds() : Array
      {
         return remoteInstance.wrapperAdIds;
      }
      
      public function get width() : Number
      {
         return remoteInstance.width;
      }
      
      public function get contentType() : String
      {
         return remoteInstance.contentType;
      }
      
      public function call(param1:String, ... rest) : void
      {
         rest.unshift(param1);
         remoteInstance.call.apply(remoteInstance,rest);
      }
      
      public function get title() : String
      {
         return remoteInstance.title;
      }
      
      public function get remainingTime() : Number
      {
         return remoteInstance.remainingTime;
      }
      
      public function get currentTime() : Number
      {
         return remoteInstance.currentTime;
      }
      
      public function get mediaUrl() : String
      {
         return remoteInstance.mediaUrl;
      }
      
      public function get adPodInfo() : AdPodInfo
      {
         return wrappers.remoteToLocal(remoteMethodResultsStore,remoteInstance.adPodInfo) as AdPodInfo;
      }
      
      public function reportEvents() : void
      {
         remoteInstance.reportEvents();
      }
      
      public function getCompanionAds(param1:String, param2:Number, param3:Number, param4:CompanionAdSelectionSettings = null) : Array
      {
         return wrappers.remoteToLocal(remoteMethodResultsStore,remoteInstance.getCompanionAds(param1,param2,param3,wrappers.localToRemote(param4)),localInstance) as Array;
      }
   }
}
