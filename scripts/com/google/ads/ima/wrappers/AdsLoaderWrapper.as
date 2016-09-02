package com.google.ads.ima.wrappers
{
   import com.google.ads.ima.api.AdsLoaderInterface;
   import com.google.ads.ima.api.AdsRequest;
   import com.google.ads.ima.api.ImaSdkSettings;
   
   public class AdsLoaderWrapper extends EventDispatcherWrapper implements AdsLoaderInterface
   {
       
      
      public function AdsLoaderWrapper(param1:Wrappers, param2:Object, param3:Object = null)
      {
         super(param1,param2,param3);
      }
      
      public function contentComplete(param1:String = null) : void
      {
         remoteInstance.contentComplete(param1);
      }
      
      public function requestAds(param1:AdsRequest, param2:Object = null) : void
      {
         remoteInstance.requestAds(wrappers.localToRemote(param1),param2);
      }
      
      public function destroy() : void
      {
         remoteInstance.destroy();
      }
      
      public function get settings() : ImaSdkSettings
      {
         var _loc1_:AdsLoaderInterface = localInstance as AdsLoaderInterface;
         return wrappers.remoteToLocal(remoteMethodResultsStore,remoteInstance.settings,_loc1_ != null?_loc1_.settings:null) as ImaSdkSettings;
      }
   }
}
