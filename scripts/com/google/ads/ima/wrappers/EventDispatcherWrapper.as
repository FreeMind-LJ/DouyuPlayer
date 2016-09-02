package com.google.ads.ima.wrappers
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import flash.events.Event;
   
   public class EventDispatcherWrapper extends EventDispatcher
   {
       
      
      private var remoteMethodResultsDictionary:Dictionary;
      
      private var localInstanceReference:Object;
      
      private var remoteInstanceReference:Object;
      
      private var wrappersValue:com.google.ads.ima.wrappers.Wrappers;
      
      private var listenersMap:Object;
      
      public function EventDispatcherWrapper(param1:com.google.ads.ima.wrappers.Wrappers, param2:Object, param3:Object = null)
      {
         listenersMap = {};
         super();
         remoteMethodResultsDictionary = new Dictionary();
         this.remoteInstanceReference = param2;
         this.localInstanceReference = param3;
         wrappersValue = param1;
      }
      
      private function listenerAdded(param1:String, param2:Function) : void
      {
         var type:String = param1;
         var listener:Function = param2;
         if(!listenersMap[type])
         {
            listenersMap[type] = {};
            listenersMap[type].count = 0;
            listenersMap[type].localListeners = new Dictionary();
            listenersMap[type].listener = function(param1:Event):void
            {
               dispatchEvent(wrappers.unwrappedRemoteToLocal(remoteMethodResultsStore,param1) as Event);
               delete remoteMethodResultsStore[param1];
            };
            remoteInstance.addEventListener(type,listenersMap[type].listener);
         }
         if(!localListenerExists(listener,listenersMap[type].localListeners))
         {
            listenersMap[type].localListeners[listener] = listener;
            listenersMap[type].count++;
         }
      }
      
      public function get localInstance() : Object
      {
         return localInstanceReference;
      }
      
      private function localListenerExists(param1:Function, param2:Dictionary) : Boolean
      {
         return param2[param1] == param1;
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.addEventListener(param1,param2,param3,param4,param5);
         listenerAdded(param1,param2);
      }
      
      private function listenerRemoved(param1:String, param2:Function) : void
      {
         if(listenersMap[param1])
         {
            if(localListenerExists(param2,listenersMap[param1].localListeners))
            {
               listenersMap[param1].localListeners[param2] = null;
               delete listenersMap[param1].localListeners[param2];
               listenersMap[param1].count--;
               if(listenersMap[param1].count == 0)
               {
                  remoteInstance.removeEventListener(param1,listenersMap[param1].listener);
                  listenersMap[param1] = null;
               }
            }
         }
      }
      
      protected function get wrappers() : com.google.ads.ima.wrappers.Wrappers
      {
         return wrappersValue;
      }
      
      protected function get remoteMethodResultsStore() : Dictionary
      {
         return remoteMethodResultsDictionary;
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         super.removeEventListener(param1,param2,param3);
         listenerRemoved(param1,param2);
      }
      
      public function get remoteInstance() : Object
      {
         return remoteInstanceReference;
      }
   }
}
