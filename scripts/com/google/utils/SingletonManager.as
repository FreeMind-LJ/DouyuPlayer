package com.google.utils
{
   import flash.utils.Dictionary;
   
   public class SingletonManager
   {
       
      
      private var defaultClass:Class;
      
      private var baseClass:Class;
      
      private var instanceMap:Dictionary;
      
      public function SingletonManager(param1:Class)
      {
         instanceMap = new Dictionary();
         super();
         baseClass = param1;
         defaultClass = baseClass;
      }
      
      function setInstance(param1:Class, param2:Object) : void
      {
         instanceMap[param1] = param2;
      }
      
      public function destroy() : void
      {
         instanceMap = new Dictionary();
         defaultClass = baseClass;
      }
      
      public function getInstance(param1:Class = null) : Object
      {
         param1 = param1 == null?defaultClass:param1;
         var _loc2_:Object = instanceMap[param1];
         if(_loc2_ == null)
         {
            _loc2_ = new param1();
            if(!(_loc2_ is baseClass))
            {
               throw new Error(param1 + " must extend " + baseClass + " in " + "order to be accessed through the same SingletonManager.");
            }
            if(_loc2_ != instanceMap[param1])
            {
               throw new Error("The constructor of " + param1 + " did not " + "validate the new instance using validateAndStoreInstance.");
            }
         }
         defaultClass = param1;
         return _loc2_;
      }
      
      public function validateAndStoreInstance(param1:Object) : void
      {
         var _loc2_:Class = param1.constructor as Class;
         if(instanceMap[_loc2_] != null)
         {
            throw new Error(_loc2_ + " is a singleton. Access it using the " + "correct static method.");
         }
         instanceMap[_loc2_] = param1;
      }
   }
}
