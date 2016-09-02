package com.google.utils
{
   import flash.display.Loader;
   import flash.external.ExternalInterface;
   
   public class HttpSecure
   {
      
      private static const DEFAULT_PROTOCOL:String = HTTP;
      
      public static const HTTP:String = "http";
      
      private static var singletonManager:com.google.utils.SingletonManager = new com.google.utils.SingletonManager(HttpSecure);
      
      public static const HTTP_SECURE:String = "https";
       
      
      protected var referrerUrlValue:String;
      
      protected var embeddedUrlRetrieved:Boolean;
      
      protected var embeddedUrlValue:String;
      
      protected var pageLocationValue:String;
      
      protected var embeddedUrlProtocolValue:String;
      
      protected var loaderUrlValue:String;
      
      public function HttpSecure()
      {
         super();
         singletonManager.validateAndStoreInstance(this);
      }
      
      public static function getInstance(param1:Class = null) : HttpSecure
      {
         return singletonManager.getInstance(param1) as HttpSecure;
      }
      
      public function get pageLocation() : String
      {
         if(pageLocationValue != null)
         {
            return pageLocationValue;
         }
         pageLocationValue = makeExternalCall("top.location.href.toString") as String;
         return !!StringUtils.isNullOrEmpty(pageLocationValue)?null:pageLocationValue;
      }
      
      public function get embeddedUrl() : String
      {
         var _loc1_:String = null;
         if(!embeddedUrlRetrieved)
         {
            _loc1_ = loaderUrl;
            if(_loc1_ == null)
            {
               _loc1_ = pageLocation;
            }
            if(_loc1_ == null)
            {
               _loc1_ = referrerUrl;
            }
            embeddedUrlRetrieved = true;
            embeddedUrlValue = _loc1_;
         }
         return embeddedUrlValue;
      }
      
      public function useCorrectProtocolForUrl(param1:String, param2:String = null) : String
      {
         var _loc3_:Url = null;
         if(param2 != null)
         {
            _loc3_ = new Url(param1);
            _loc3_.protocol = embeddedUrlProtocol;
            if(param2 != null && _loc3_.protocol == HTTP_SECURE)
            {
               _loc3_.hostname = param2;
            }
            return _loc3_.recombineUrl();
         }
         return param1.replace(/^((https?:)?\/\/)?/,embeddedUrlProtocol + "://");
      }
      
      public function get referrerUrl() : String
      {
         if(referrerUrlValue != null)
         {
            return referrerUrlValue;
         }
         referrerUrlValue = makeExternalCall("document.referrer.toString") as String;
         return !!StringUtils.isNullOrEmpty(referrerUrlValue)?null:referrerUrlValue;
      }
      
      public function get isSecure() : Boolean
      {
         return embeddedUrlProtocol == HTTP_SECURE;
      }
      
      public function get loaderUrl() : String
      {
         if(loaderUrlValue == null)
         {
            loaderUrlValue = new Loader().contentLoaderInfo.loaderURL;
         }
         return !!StringUtils.isNullOrEmpty(loaderUrlValue)?null:loaderUrlValue;
      }
      
      public function get embeddedUrlProtocol() : String
      {
         var _loc1_:String = null;
         var _loc2_:Url = null;
         if(embeddedUrlProtocolValue == null)
         {
            _loc1_ = embeddedUrl;
            embeddedUrlProtocolValue = DEFAULT_PROTOCOL;
            if(_loc1_ != null)
            {
               _loc2_ = new Url(_loc1_);
               if(_loc2_.protocol == HTTP_SECURE)
               {
                  embeddedUrlProtocolValue = HTTP_SECURE;
               }
            }
         }
         return embeddedUrlProtocolValue;
      }
      
      protected function makeExternalCall(param1:String, ... rest) : Object
      {
         var functionName:String = param1;
         var args:Array = rest;
         try
         {
            if(ExternalInterface.available)
            {
               args.unshift(functionName);
               return ExternalInterface.call.apply(null,args) as Object;
            }
         }
         catch(error:SecurityError)
         {
         }
         return null;
      }
   }
}
