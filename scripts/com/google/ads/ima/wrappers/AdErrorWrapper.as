package com.google.ads.ima.wrappers
{
   import com.google.ads.ima.api.AdError;
   import flash.utils.Dictionary;
   
   class AdErrorWrapper extends Error implements AdError
   {
       
      
      private var localInstanceReference:Object;
      
      private var remoteInstanceReference:Object;
      
      private var wrappersValue:com.google.ads.ima.wrappers.Wrappers;
      
      private var remoteMethodResultsDictionary:Dictionary;
      
      function AdErrorWrapper(param1:com.google.ads.ima.wrappers.Wrappers, param2:Object, param3:Object = null)
      {
         super();
         remoteMethodResultsDictionary = new Dictionary();
         this.remoteInstanceReference = param2;
         this.localInstanceReference = param3;
         wrappersValue = param1;
      }
      
      public function get adSystems() : Array
      {
         return remoteInstance.adSystems;
      }
      
      public function get adIds() : Array
      {
         return remoteInstance.adIds;
      }
      
      public function get innerError() : Error
      {
         return remoteInstance.innerError;
      }
      
      public function get errorCode() : int
      {
         return remoteInstance.errorCode;
      }
      
      public function get errorMessage() : String
      {
         return remoteInstance.errorMessage;
      }
      
      public function get localInstance() : Object
      {
         return localInstanceReference;
      }
      
      public function get errorType() : String
      {
         return remoteInstance.errorType;
      }
      
      public function get vastErrorCode() : int
      {
         return remoteInstance.vastErrorCode;
      }
      
      protected function get remoteMethodResultsStore() : Dictionary
      {
         return remoteMethodResultsDictionary;
      }
      
      public function get remoteInstance() : Object
      {
         return remoteInstanceReference;
      }
   }
}
