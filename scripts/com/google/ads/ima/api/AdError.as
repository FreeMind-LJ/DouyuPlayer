package com.google.ads.ima.api
{
   public interface AdError
   {
       
      
      function get vastErrorCode() : int;
      
      function get adSystems() : Array;
      
      function get errorType() : String;
      
      function get adIds() : Array;
      
      function get innerError() : Error;
      
      function get errorCode() : int;
      
      function get errorMessage() : String;
   }
}
