package com.google.ads.ima.wrappers
{
   import com.google.ads.ima.api.FlashCompanionAd;
   import flash.display.DisplayObjectContainer;
   
   class FlashCompanionAdWrapper extends Wrapper implements FlashCompanionAd
   {
       
      
      function FlashCompanionAdWrapper(param1:Wrappers, param2:Object, param3:Object = null)
      {
         super(param1,param2,param3);
      }
      
      public function destroy() : void
      {
         remoteInstance.destroy();
      }
      
      public function start() : void
      {
         remoteInstance.start();
      }
      
      public function init() : void
      {
         remoteInstance.init();
      }
      
      public function get adsContainer() : DisplayObjectContainer
      {
         return remoteInstance.adsContainer;
      }
      
      public function get isBackfill() : Boolean
      {
         return remoteInstance.isBackfill;
      }
      
      public function get environment() : String
      {
         return remoteInstance.environment;
      }
   }
}
