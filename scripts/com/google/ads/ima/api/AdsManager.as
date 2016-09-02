package com.google.ads.ima.api
{
   import flash.events.IEventDispatcher;
   import flash.display.InteractiveObject;
   import flash.display.DisplayObjectContainer;
   
   public interface AdsManager extends IEventDispatcher
   {
       
      
      function handshakeVersion(param1:String = "1.0") : String;
      
      function start() : void;
      
      function get remainingTime() : Number;
      
      function get linear() : Boolean;
      
      function get volume() : Number;
      
      function stop() : void;
      
      function getUiElement(param1:String) : InteractiveObject;
      
      function get uiElements() : Array;
      
      function resume() : void;
      
      function get cuePoints() : Array;
      
      function init(param1:Number, param2:Number, param3:String, param4:Number = -2, param5:String = null, param6:String = null) : void;
      
      function get adsContainer() : DisplayObjectContainer;
      
      function destroy() : void;
      
      function resize(param1:Number, param2:Number, param3:String) : void;
      
      function sendImpressionUrls() : void;
      
      function set uiElements(param1:Array) : void;
      
      function get expanded() : Boolean;
      
      function expand() : void;
      
      function set volume(param1:Number) : void;
      
      function collapse() : void;
      
      function pause() : void;
      
      function get currentAd() : Ad;
      
      function skip() : Boolean;
   }
}
