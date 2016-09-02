package com.google.utils
{
   import flash.external.ExternalInterface;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   
   public class ExternalInterfaceSecureWrapper
   {
      
      protected static const LEGAL_JS_FUNCTION_NAME:RegExp = /^[a-zA-Z0-9_.$]+$/;
      
      protected static var testedCall:Boolean;
      
      protected static var callFailed:Boolean;
      
      public static var longCallErrorHandler:Function;
       
      
      public function ExternalInterfaceSecureWrapper()
      {
         super();
      }
      
      public static function addCallback(param1:String, param2:Function) : void
      {
         var name:String = param1;
         var fn:Function = param2;
         if(!available)
         {
            return;
         }
         var sanitized:Function = function():Object
         {
            return sanitizeArg(fn.apply(null,arguments));
         };
         ExternalInterface.addCallback(checkName(name),sanitized);
      }
      
      public static function get available() : Boolean
      {
         return ExternalInterface.available && !callFailed;
      }
      
      public static function getValue(param1:String) : *
      {
         return sanitizedCall("function () { return " + checkName(param1) + "; }");
      }
      
      public static function sendPingWithoutReferrer(param1:String) : void
      {
         sanitizedCall("(function() {" + "var iframe = document.createElement(\'iframe\');" + "iframe.style.display = \'none\';" + "iframe.src=\'javascript:\"data:text/html,<body><img src=\\\'" + sanitizeArg(escape(param1)) + "\\\'></body>\"\';" + "document.body.appendChild(iframe);" + "})");
      }
      
      public static function checkName(param1:String) : String
      {
         if(param1.match(LEGAL_JS_FUNCTION_NAME))
         {
            return param1;
         }
         throw new SecurityError("Illegal ExternalInterface call argument \'" + param1 + "\'.");
      }
      
      public static function sanitizeArg(param1:Object) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:* = null;
         if(param1 == null)
         {
            return null;
         }
         switch(getQualifiedClassName(param1.constructor))
         {
            case "Array":
            case "Object":
               _loc2_ = param1 is Array?[]:{};
               for(_loc3_ in param1)
               {
                  _loc2_[checkName(_loc3_)] = sanitizeArg(param1[_loc3_]);
               }
               return _loc2_;
            case "Number":
            case "Boolean":
               return param1;
            case "String":
            default:
               return String(param1).replace(/\\/g,"\\\\").replace(/ /g," ");
         }
      }
      
      public static function get allowScriptAccess() : Boolean
      {
         if(testedCall)
         {
            return available;
         }
         try
         {
            return available && call("isNaN");
         }
         catch(error:SecurityError)
         {
         }
         return false;
      }
      
      private static function sanitizedCall(... rest) : *
      {
         var result:* = undefined;
         var args:Array = rest;
         var startTime:int = getTimer();
         try
         {
            result = ExternalInterface.call.apply(ExternalInterface,args);
         }
         catch(error:SecurityError)
         {
            callFailed = true;
            throw error;
         }
         catch(error:TypeError)
         {
            if(error.errorID == 1090 && args.length >= 2 && longCallErrorHandler != null)
            {
               longCallErrorHandler(new Error("ExternalInterface call contains malformed XML: " + args[0] + "(" + args[1] + ", ...)"));
            }
            throw error;
         }
         testedCall = true;
         var callTime:int = getTimer() - startTime;
         if(callTime > 10000 && longCallErrorHandler != null)
         {
            longCallErrorHandler(new Error("ExternalInterface call to " + args[0] + " took a long time."));
         }
         return result;
      }
      
      public static function call(... rest) : *
      {
         if(!available)
         {
            return null;
         }
         rest[0] = checkName(rest[0]);
         var _loc2_:Number = 1;
         while(_loc2_ < rest.length)
         {
            rest[_loc2_] = sanitizeArg(rest[_loc2_]);
            _loc2_++;
         }
         return sanitizedCall.apply(null,rest);
      }
   }
}
