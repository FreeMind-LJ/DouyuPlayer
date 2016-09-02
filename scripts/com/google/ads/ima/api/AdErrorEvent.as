package com.google.ads.ima.api
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.system.Capabilities;
   
   public class AdErrorEvent extends ErrorEvent
   {
      
      private static const DEBUG_PLAYER_RECOMMENDED:String = "Use Flash debug player to see stack trace for the error.";
      
      public static const AD_ERROR:String = "adError";
       
      
      private var adError:com.google.ads.ima.api.AdError;
      
      private var userRequestContextObject:Object = null;
      
      public function AdErrorEvent(param1:com.google.ads.ima.api.AdError, param2:Object = null)
      {
         super(AD_ERROR);
         this.adError = param1;
         if(param1)
         {
            this.text = param1.errorMessage;
            if(param1.innerError)
            {
               if(param1.innerError.getStackTrace())
               {
                  this.text = this.text + ("\n" + param1.innerError.getStackTrace());
               }
               else if(!Capabilities.isDebugger)
               {
                  this.text = this.text + ("\n" + DEBUG_PLAYER_RECOMMENDED);
               }
            }
         }
         this.userRequestContextObject = param2;
      }
      
      public function get error() : com.google.ads.ima.api.AdError
      {
         return adError;
      }
      
      public function get userRequestContext() : Object
      {
         return userRequestContextObject;
      }
      
      override public function clone() : Event
      {
         return new AdErrorEvent(adError,userRequestContextObject);
      }
   }
}
