package com.google.ads.ima.api
{
   import flash.display.DisplayObjectContainer;
   
   public interface FlashCompanionAd extends CompanionAd
   {
       
      
      function init() : void;
      
      function get adsContainer() : DisplayObjectContainer;
      
      function start() : void;
      
      function destroy() : void;
   }
}
