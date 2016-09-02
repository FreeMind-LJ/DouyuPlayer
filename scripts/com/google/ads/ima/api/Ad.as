package com.google.ads.ima.api
{
   import flash.utils.Dictionary;
   
   public interface Ad
   {
       
      
      function reportCustomKeysAndValues(param1:Dictionary) : void;
      
      function get wrapperAdIds() : Array;
      
      function get mediaUrl() : String;
      
      function get apiFramework() : String;
      
      function get width() : Number;
      
      function get clientPlaybackNonce() : String;
      
      function get isci() : String;
      
      function get contentType() : String;
      
      function get duration() : Number;
      
      function getCompanionAdUrl(param1:String, param2:String = null) : String;
      
      function get title() : String;
      
      function get id() : String;
      
      function get traffickingParameters() : Dictionary;
      
      function get traffickingParametersAsString() : String;
      
      function get remainingTime() : Number;
      
      function get minSuggestedDuration() : Number;
      
      function get currentTime() : Number;
      
      function get height() : Number;
      
      function get adSkippableState() : Boolean;
      
      function get skippable() : Boolean;
      
      function get linear() : Boolean;
      
      function reportEvents() : void;
      
      function get wrapperAdSystems() : Array;
      
      function get adPodInfo() : AdPodInfo;
      
      function get adSystem() : String;
      
      function enableManualEventsReporting() : void;
      
      function get surveyUrl() : String;
      
      function call(param1:String, ... rest) : void;
      
      function getCompanionAds(param1:String, param2:Number, param3:Number, param4:CompanionAdSelectionSettings = null) : Array;
      
      function get description() : String;
   }
}
