package com.google.ads.ima.api
{
   class AdsLoaderError extends Error implements AdError
   {
       
      
      private var vastErrorCodeValue:int;
      
      private var adIdsValue:Array;
      
      private var adSystemsValue:Array;
      
      private var type:String;
      
      private var flashError:Error;
      
      function AdsLoaderError(param1:String = "", param2:int = 0, param3:int = 0)
      {
         super(param1,param2);
         vastErrorCodeValue = param3;
      }
      
      public function get adSystems() : Array
      {
         return adSystemsValue;
      }
      
      public function set errorType(param1:String) : void
      {
         this.type = param1;
      }
      
      public function set adSystems(param1:Array) : void
      {
         adSystemsValue = param1;
      }
      
      public function get vastErrorCode() : int
      {
         return vastErrorCodeValue;
      }
      
      public function get innerError() : Error
      {
         return flashError;
      }
      
      public function get errorCode() : int
      {
         return super.errorID;
      }
      
      public function get errorMessage() : String
      {
         return super.message;
      }
      
      public function get errorType() : String
      {
         return type;
      }
      
      public function set innerError(param1:Error) : void
      {
         this.flashError = param1;
      }
      
      public function set adIds(param1:Array) : void
      {
         adIdsValue = param1;
      }
      
      public function get adIds() : Array
      {
         return adIdsValue;
      }
   }
}
