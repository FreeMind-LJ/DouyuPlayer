package com.google.utils
{
   import flash.display.Loader;
   import flash.utils.ByteArray;
   import flash.system.LoaderContext;
   
   public class SafeLoader extends Loader
   {
      
      public static var uncaughtErrorEventHandler:Function;
       
      
      public function SafeLoader()
      {
         super();
         if(uncaughtErrorEventHandler != null && hasOwnProperty("uncaughtErrorEvents"))
         {
            Object(this).uncaughtErrorEvents.addEventListener("uncaughtError",uncaughtErrorEventHandler,false,-1);
         }
      }
      
      override public function loadBytes(param1:ByteArray, param2:LoaderContext = null) : void
      {
         throw new SecurityError();
      }
   }
}
