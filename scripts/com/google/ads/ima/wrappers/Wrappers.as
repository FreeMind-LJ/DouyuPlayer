package com.google.ads.ima.wrappers
{
   import com.google.ads.ima.api.AdsRequest;
   import com.google.ads.ima.api.CompanionAdSelectionSettings;
   import flash.system.ApplicationDomain;
   import flash.utils.describeType;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   
   public class Wrappers
   {
      
      private static const INTERFACE_IMPLEMENTS_NUM_OF_INTERFACES:Object = {};
      
      private static const WRAPPED_CLASSES:Object = {
         "AdEvent":AdEventWrapper,
         "AdErrorEvent":AdErrorEventWrapper,
         "AdPodInfo":AdPodInfoWrapper,
         "AdsManagerLoadedEvent":AdsManagerLoadedEventWrapper,
         "CustomContentLoadedEvent":CustomContentLoadedEventWrapper,
         "NetStreamReadyEvent":NetStreamReadyEventWrapper
      };
      
      private static const WRAPPED_INTERFACES:Object = {
         "Ad":AdWrapper,
         "AdError":AdErrorWrapper,
         "AdsManager":AdsManagerWrapper,
         "CompanionAd":CompanionAdWrapper,
         "FlashCompanionAd":FlashCompanionAdWrapper,
         "HtmlCompanionAd":HtmlCompanionAdWrapper,
         "ImaSdkSettings":ImaSdkSettingsWrapper
      };
      
      private static const API_NAMESPACE:String = "com.google.ads.ima.api";
      
      private static const WRAPPERS_NAMESPACE:String = "com.google.ads.ima.wrappers";
      
      private static const LOCAL_TO_REMOTE_CLASSES:Object = {
         "AdsRequest":AdsRequest,
         "CompanionAdSelectionSettings":CompanionAdSelectionSettings,
         "AdsRenderingSettingsWrapper":AdsRenderingSettingsWrapper
      };
       
      
      private var remoteApplicationDomainValue:ApplicationDomain;
      
      public function Wrappers(param1:ApplicationDomain)
      {
         super();
         remoteApplicationDomainValue = param1;
      }
      
      private function getTypeNameFromFullyQualifiedName(param1:String) : String
      {
         var _loc2_:Array = param1.split("::");
         var _loc3_:String = null;
         if(_loc2_.length == 2)
         {
            _loc3_ = _loc2_[1];
         }
         else
         {
            _loc3_ = _loc2_[0];
         }
         return _loc3_;
      }
      
      private function filterByNamespace(param1:XML, param2:String) : Boolean
      {
         return param1.@type.indexOf(param2) == 0;
      }
      
      private function getApiInterfaces(param1:Object) : XMLList
      {
         var interfacesSource:Object = param1;
         return interfacesSource.implementsInterface.(filterByNamespace(valueOf(),API_NAMESPACE)).@type;
      }
      
      private function getRemoteInstanceClass(param1:String) : Object
      {
         var _loc4_:String = null;
         var _loc2_:String = API_NAMESPACE + "." + param1;
         var _loc3_:Object = getDefinition(_loc2_,remoteApplicationDomain);
         if(!_loc3_)
         {
            _loc4_ = WRAPPERS_NAMESPACE + "." + param1;
            _loc3_ = getDefinition(_loc4_,remoteApplicationDomain);
         }
         if(!_loc3_)
         {
            throw new Error("Could not find " + param1 + " in api or wrapper " + "namespace.");
         }
         return _loc3_;
      }
      
      public function getLocalDefinition(param1:String) : Object
      {
         var fullyQualifiedName:String = param1;
         var applicationDomain:ApplicationDomain = ApplicationDomain.currentDomain;
         if(applicationDomain.hasDefinition(fullyQualifiedName))
         {
            try
            {
               return applicationDomain.getDefinition(fullyQualifiedName);
            }
            catch(error:Error)
            {
            }
         }
         return null;
      }
      
      private function getImplementedInterfacesCount(param1:Object) : uint
      {
         var _loc2_:XML = null;
         var _loc3_:XMLList = null;
         if(!INTERFACE_IMPLEMENTS_NUM_OF_INTERFACES[param1])
         {
            _loc2_ = describeType(param1);
            _loc3_ = getApiInterfaces(_loc2_.factory);
            INTERFACE_IMPLEMENTS_NUM_OF_INTERFACES[param1] = _loc3_.length();
         }
         return INTERFACE_IMPLEMENTS_NUM_OF_INTERFACES[param1];
      }
      
      public function remoteToLocal(param1:Dictionary, param2:Object, param3:Object = null) : Object
      {
         var _loc4_:XML = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:Class = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         if(param2 == null)
         {
            return null;
         }
         if(!param1[param2])
         {
            _loc4_ = describeType(param2);
            _loc5_ = getTypeName(param2);
            _loc6_ = getWrapperType(_loc4_,_loc5_);
            if(_loc6_ != null)
            {
               param1[param2] = param3 != null?param3:new _loc6_(this,param2,param3);
            }
            else
            {
               _loc7_ = getLocalDefinition(getQualifiedClassName(param2)) as Class;
               if(_loc7_ === Array)
               {
                  _loc8_ = new _loc7_();
                  for each(_loc9_ in param2)
                  {
                     _loc8_.push(remoteToLocal(param1,_loc9_,param3));
                  }
                  param1[param2] = _loc8_;
               }
               else
               {
                  param1[param2] = param2;
               }
            }
         }
         return param1[param2];
      }
      
      private function getQualifiedClassNameHelper(param1:*) : String
      {
         return getQualifiedClassName(param1);
      }
      
      public function localToRemote(param1:Object) : Object
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:String = getTypeName(param1);
         if(LOCAL_TO_REMOTE_CLASSES[_loc2_] != null)
         {
            _loc3_ = getRemoteInstanceClass(_loc2_);
            _loc4_ = new _loc3_();
            copy(param1,_loc4_);
            return _loc4_;
         }
         return param1;
      }
      
      private function getInstanceProperties(param1:Object) : Array
      {
         var node:XML = null;
         var instance:Object = param1;
         var typeXml:XML = describeType(instance);
         var propertyNames:Array = [];
         for each(node in typeXml..variable)
         {
            propertyNames.push(node.@name);
         }
         for each(node in typeXml..accessor.(@access == "readwrite"))
         {
            propertyNames.push(node.@name);
         }
         return propertyNames;
      }
      
      private function get remoteApplicationDomain() : ApplicationDomain
      {
         return remoteApplicationDomainValue;
      }
      
      private function getDefinition(param1:String, param2:ApplicationDomain) : Object
      {
         var fullyQualifiedName:String = param1;
         var applicationDomain:ApplicationDomain = param2;
         if(applicationDomain.hasDefinition(fullyQualifiedName))
         {
            try
            {
               return applicationDomain.getDefinition(fullyQualifiedName);
            }
            catch(error:Error)
            {
            }
         }
         return null;
      }
      
      private function getWrapperTypeByClass(param1:String) : Object
      {
         return WRAPPED_CLASSES[param1];
      }
      
      private function getWrapperTypeByInterface(param1:XML) : Object
      {
         var _loc4_:XML = null;
         var _loc5_:Object = null;
         var _loc6_:uint = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Object = null;
         var _loc11_:uint = 0;
         var _loc2_:Array = [];
         var _loc3_:XMLList = getApiInterfaces(param1);
         for each(_loc4_ in _loc3_)
         {
            _loc8_ = getTypeNameFromFullyQualifiedName(_loc4_);
            if(WRAPPED_INTERFACES[_loc8_])
            {
               _loc2_.push(_loc8_);
            }
         }
         _loc5_ = null;
         _loc6_ = 0;
         for each(_loc7_ in _loc2_)
         {
            _loc9_ = API_NAMESPACE + "." + _loc7_;
            _loc10_ = getLocalDefinition(_loc9_);
            _loc11_ = getImplementedInterfacesCount(_loc10_);
            if(!_loc5_ || _loc11_ > _loc6_)
            {
               _loc5_ = _loc10_;
               _loc6_ = _loc11_;
            }
         }
         if(_loc5_)
         {
            return WRAPPED_INTERFACES[getTypeName(_loc5_)];
         }
         return null;
      }
      
      public function copy(param1:Object, param2:Object) : void
      {
         var _loc3_:String = null;
         for each(_loc3_ in getInstanceProperties(param1))
         {
            if(param2.hasOwnProperty(_loc3_))
            {
               param2[_loc3_] = localToRemote(param1[_loc3_]);
            }
            else
            {
               trace("warning","Mismatch between swc code and implementation " + "swfs. Destination " + param2 + " does not have " + _loc3_);
            }
         }
      }
      
      private function getWrapperType(param1:XML, param2:String) : Object
      {
         var _loc3_:Object = getWrapperTypeByClass(param2);
         if(!_loc3_)
         {
            _loc3_ = getWrapperTypeByInterface(param1);
         }
         return _loc3_;
      }
      
      private function getTypeName(param1:Object) : String
      {
         var _loc2_:String = getQualifiedClassNameHelper(param1);
         return getTypeNameFromFullyQualifiedName(_loc2_);
      }
      
      public function unwrappedRemoteToLocal(param1:Dictionary, param2:Object, param3:Object = null) : Object
      {
         return remoteToLocal(param1,param2,param3);
      }
   }
}
