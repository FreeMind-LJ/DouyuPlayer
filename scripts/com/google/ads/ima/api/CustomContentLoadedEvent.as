package com.google.ads.ima.api
{
   import flash.events.Event;
   
   public class CustomContentLoadedEvent extends Event
   {
      
      public static var CUSTOM_CONTENT_LOADED:String = "customContentLoaded";
       
      
      private var userRequestContextValue:Object;
      
      private var customContentAdValue:Object;
      
      public function CustomContentLoadedEvent(param1:Object, param2:Object = null)
      {
         super(CUSTOM_CONTENT_LOADED);
         customContentAdValue = param1;
         userRequestContextValue = param2;
      }
      
      public function displayCompanions() : void
      {
         customContentAdValue.displayCompanions();
      }
      
      public function get userRequestContext() : Object
      {
         return userRequestContextValue;
      }
      
      override public function clone() : Event
      {
         return new CustomContentLoadedEvent(customContentAdValue,userRequestContextValue);
      }
      
      function getCustomContentAd() : Object
      {
         return customContentAdValue;
      }
      
      public function get content() : String
      {
         return customContentAdValue.content;
      }
   }
}
