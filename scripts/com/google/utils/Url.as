package com.google.utils
{
   public class Url
   {
      
      private static const IMPORT_LOADING:String = "/[[IMPORT]]/";
      
      private static const DYNAMIC_LOADING:String = "/[[DYNAMIC]]/";
      
      protected static const AUTHORITY_MATCH:RegExp = /^(\/\/)? (?#authority) ([^\/]*) (?#rest) (.*)$/ix;
      
      protected static const PATH_MATCH:RegExp = /^(?#fullPath) (\/[^;]*) (?#parameters) (;(.*))?$/ix;
      
      protected static const QUERY_MATCH:RegExp = /(?#id)([^=&]+) (=?) (?#value)([^&]*) [&|$]?/ixg;
      
      protected static const QUERY_FRAG_MATCH:RegExp = /^(?#rest) ([^\?\#]*) (?#query) (\?([^\#]*))? (?#frag) (\#(.*))?$/ix;
      
      protected static const PARAM_MATCH:RegExp = /(?#id)([^=;]+) (=?) (?#value)([^;]*) [;|$]?/ixg;
      
      protected static const USER_PASS_HOST_PORT_MATCH:RegExp = /^(?#uspa) (([^:@]*)(:([^@]*))?@)? (?#host)([^:]*) (?#port)(:(.*))?/ix;
      
      protected static const PROTO_MATCH:RegExp = /^(?#protocol) (([a-zA-Z0-9\+\.\-]+):)? (?#rest) (.*)$/ix;
       
      
      public var port:String = "";
      
      public var authority:String = "";
      
      public var query:String = "";
      
      public var queryVars:Object;
      
      public var username:String = "";
      
      public var fragment:String = "";
      
      public var protocol:String = "";
      
      public var fullPath:String = "";
      
      public var originalUrl:String = "";
      
      public var isResource:Boolean;
      
      public var password:String = "";
      
      public var parameters:String = "";
      
      public var hostname:String = "";
      
      public var parameterVars:Array;
      
      public function Url(param1:String = "", param2:Boolean = true)
      {
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         parameterVars = [];
         queryVars = {};
         super();
         originalUrl = (param1 || "").replace(/[\r\n]/gim,"");
         _loc4_ = PROTO_MATCH.exec(originalUrl) as Array;
         protocol = _loc4_[2] || "";
         _loc3_ = _loc4_[3] || "";
         protocol = protocol.toLowerCase();
         _loc4_ = QUERY_FRAG_MATCH.exec(_loc3_) as Array;
         _loc3_ = _loc4_[1] || "";
         query = _loc4_[3] || "";
         fragment = _loc4_[5] || "";
         _loc4_ = AUTHORITY_MATCH.exec(_loc3_) as Array;
         isResource = _loc4_[1] == "//";
         authority = _loc4_[2] || "";
         _loc3_ = _loc4_[3] || "";
         _loc4_ = PATH_MATCH.exec(_loc3_) as Array;
         if(_loc4_)
         {
            fullPath = _loc4_[1] || "";
            parameters = _loc4_[3] || "";
         }
         _loc4_ = USER_PASS_HOST_PORT_MATCH.exec(authority) as Array;
         username = _loc4_[2] || "";
         password = _loc4_[4] || "";
         hostname = _loc4_[5] || "";
         port = _loc4_[7] || "";
         hostname = hostname.toLowerCase();
         if(parameters)
         {
            PARAM_MATCH.lastIndex = 0;
            while(_loc4_ = PARAM_MATCH.exec(parameters) as Array)
            {
               _loc5_ = _loc4_[1];
               _loc6_ = !!_loc4_[2]?_loc4_[3]:null;
               parameterVars.push(new KeyValuePair(_loc5_,_loc6_));
            }
         }
         if(query)
         {
            QUERY_MATCH.lastIndex = 0;
            while(_loc4_ = QUERY_MATCH.exec(query) as Array)
            {
               _loc7_ = _loc4_[1];
               _loc8_ = !!_loc4_[2]?_loc4_[3]:null;
               _loc7_ = !!param2?decodeURIComponent(_loc7_):_loc7_;
               if(_loc8_)
               {
                  _loc8_ = !!param2?decodeURIComponent(_loc8_):_loc8_;
               }
               queryVars[_loc7_] = _loc8_;
            }
         }
      }
      
      private static function setProperty(param1:Array, param2:String, param3:String) : void
      {
         var _loc4_:KeyValuePair = getProperty(param1,param2);
         if(_loc4_)
         {
            _loc4_.value = param3;
         }
         else
         {
            param1.push(new KeyValuePair(param2,param3));
         }
      }
      
      public static function isWhiteListedUrl(param1:String, param2:Array) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:Url = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         if(param1 == null)
         {
            return false;
         }
         var _loc3_:Url = new Url(param1);
         if(_loc3_.protocol == "http" || _loc3_.protocol == "https" || _loc3_.protocol == "ftp")
         {
            _loc4_ = 0;
            while(_loc4_ < param2.length)
            {
               _loc5_ = new Url(param2[_loc4_]);
               _loc6_ = _loc5_.hostname;
               _loc7_ = "*." + _loc6_;
               if(_loc3_.matchesHostname(_loc6_) || _loc3_.matchesHostname(_loc7_))
               {
                  if(!_loc5_.fullPath || _loc3_.matchesPath(_loc5_.fullPath))
                  {
                     return true;
                  }
               }
               _loc4_++;
            }
         }
         return false;
      }
      
      private static function deleteProperty(param1:Array, param2:String) : void
      {
         var _loc4_:String = null;
         var _loc3_:uint = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = String(param1[_loc3_].key);
            if(_loc4_ == param2)
            {
               param1.splice(_loc3_,1);
               return;
            }
            _loc3_++;
         }
      }
      
      public static function normalizeUrl(param1:String) : String
      {
         var _loc5_:int = 0;
         var _loc2_:String = param1;
         var _loc3_:int = _loc2_.indexOf(IMPORT_LOADING);
         if(_loc3_ != -1)
         {
            _loc5_ = _loc2_.indexOf("://");
            _loc2_ = _loc2_.substring(0,_loc5_ + 3) + _loc2_.substring(_loc3_ + 12);
         }
         var _loc4_:int = _loc2_.indexOf(DYNAMIC_LOADING);
         if(_loc4_ != -1)
         {
            _loc2_ = _loc2_.substring(0,_loc4_);
         }
         return _loc2_;
      }
      
      private static function findUrlParameter(param1:String, param2:String) : Object
      {
         var _loc5_:Number = NaN;
         var _loc3_:Object = new Object();
         _loc3_.found = false;
         _loc3_.hasQuestionMark = false;
         var _loc4_:int = param1.indexOf("?");
         if(_loc4_ > 0)
         {
            _loc3_.hasQuestionMark = true;
         }
         while(_loc4_ > 0 && _loc4_ < param1.length)
         {
            _loc4_ = param1.indexOf(param2,_loc4_ + 1);
            if(_loc4_ > 0 && (param1.charAt(_loc4_ - 1) == "?" || param1.charAt(_loc4_ - 1) == "&") && param1.charAt(_loc4_ + param2.length) == "=")
            {
               _loc5_ = param1.indexOf("&",_loc4_);
               if(_loc5_ < 0)
               {
                  _loc5_ = param1.length;
               }
               _loc3_.found = true;
               _loc3_.nameStart = _loc4_;
               _loc3_.nameEnd = _loc4_ + param2.length;
               _loc3_.valueStart = _loc4_ + param2.length + 1;
               _loc3_.valueEnd = _loc5_;
               break;
            }
         }
         return _loc3_;
      }
      
      public static function resolve(param1:String, param2:Url) : Url
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc3_:Url = new Url(param1);
         while(!_loc3_.protocol)
         {
            _loc3_.protocol = param2.protocol;
            if(_loc3_.isResource)
            {
               break;
            }
            if(_loc3_.authority)
            {
               _loc3_.fullPath = _loc3_.authority + _loc3_.fullPath;
            }
            _loc3_.username = !!param2.isResource?param2.username:"";
            _loc3_.password = !!param2.isResource?param2.password:"";
            _loc3_.hostname = !!param2.isResource?param2.hostname:"";
            _loc3_.authority = !!param2.isResource?param2.authority:"";
            _loc3_.port = !!param2.isResource?param2.port:"";
            _loc3_.isResource = param2.isResource;
            if(_loc3_.fullPath.charAt(0) == "/")
            {
               break;
            }
            if(_loc3_.fullPath)
            {
               _loc5_ = !!param2.isResource?param2.fullPath:param2.authority + param2.fullPath;
               _loc5_ = _loc5_.substr(0,_loc5_.lastIndexOf("/") + 1);
               _loc3_.fullPath = _loc5_ + _loc3_.fullPath;
               break;
            }
            _loc3_.fullPath = param2.fullPath;
            _loc3_.parameters = param2.parameters;
            _loc3_.parameterVars = param2.parameterVars.concat();
            if(_loc3_.query)
            {
               break;
            }
            _loc3_.query = param2.query;
            _loc3_.queryVars = {};
            for(_loc4_ in param2.queryVars)
            {
               _loc3_.queryVars[_loc4_] = param2.queryVars[_loc4_];
            }
            _loc3_.fragment = _loc3_.fragment || param2.fragment;
            if(true)
            {
               break;
            }
         }
         _loc3_.removeDotSegments();
         return _loc3_;
      }
      
      private static function getProperty(param1:Array, param2:String) : KeyValuePair
      {
         var _loc3_:KeyValuePair = null;
         var _loc4_:String = null;
         for each(_loc3_ in param1)
         {
            _loc4_ = String(_loc3_.key);
            if(_loc4_ == param2)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public static function getUrlParameter(param1:String, param2:String) : String
      {
         var _loc3_:Object = findUrlParameter(param1,param2);
         if(!_loc3_.found)
         {
            return null;
         }
         return param1.slice(_loc3_.valueStart,_loc3_.valueEnd);
      }
      
      public static function setUrlParameter(param1:String, param2:String, param3:String) : String
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc4_:Object = findUrlParameter(param1,param2);
         if(_loc4_.found)
         {
            _loc5_ = param1.slice(0,_loc4_.valueStart);
            _loc6_ = param1.slice(_loc4_.valueEnd);
            return _loc5_ + param3 + _loc6_;
         }
         if(_loc4_.hasQuestionMark)
         {
            return param1 + "&" + param2 + "=" + param3;
         }
         return param1 + "?" + param2 + "=" + param3;
      }
      
      public static function equals(param1:String, param2:String) : Boolean
      {
         var _loc3_:Url = new Url(param1);
         var _loc4_:Url = new Url(param2);
         return _loc3_.equals(_loc4_);
      }
      
      private function diffValues(param1:Object, param2:Object) : String
      {
         if(param1 != param2)
         {
            return "Expected ".concat(param1,", but found ",param2,".");
         }
         return "";
      }
      
      public function getExtension() : String
      {
         var _loc1_:int = 0;
         if(fullPath)
         {
            _loc1_ = fullPath.lastIndexOf(".");
            if(_loc1_ != -1)
            {
               return fullPath.substring(_loc1_ + 1);
            }
         }
         return null;
      }
      
      public function setParam(param1:String, param2:String) : void
      {
         setProperty(parameterVars,param1,param2);
      }
      
      public function diffUrl(param1:Url) : String
      {
         var _loc3_:* = null;
         var _loc2_:String = "";
         _loc2_ = _loc2_.concat(calculateDiffPartToAppend(_loc2_,diffValues(this.protocol,param1.protocol),"protocol"));
         _loc2_ = _loc2_.concat(calculateDiffPartToAppend(_loc2_,diffValues(this.isResource,param1.isResource),"isResource"));
         _loc2_ = _loc2_.concat(calculateDiffPartToAppend(_loc2_,diffValues(this.hostname,param1.hostname),"hostname"));
         _loc2_ = _loc2_.concat(calculateDiffPartToAppend(_loc2_,diffValues(this.username,param1.username),"username"));
         _loc2_ = _loc2_.concat(calculateDiffPartToAppend(_loc2_,diffValues(this.password,param1.password),"password"));
         _loc2_ = _loc2_.concat(calculateDiffPartToAppend(_loc2_,diffValues(this.port,param1.port),"port"));
         _loc2_ = _loc2_.concat(calculateDiffPartToAppend(_loc2_,diffValues(this.fullPath,param1.fullPath),"fullPath"));
         _loc2_ = _loc2_.concat(calculateDiffPartToAppend(_loc2_,diffValues(this.fragment,param1.fragment),"fragment"));
         _loc2_ = _loc2_.concat(calculateDiffPartToAppend(_loc2_,diffProperties(this.parameterVars,param1.parameterVars),"parameterVars"));
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         for(_loc3_ in this.queryVars)
         {
            _loc4_.push(new KeyValuePair(_loc3_,this.queryVars[_loc3_]));
         }
         for(_loc3_ in param1.queryVars)
         {
            _loc5_.push(new KeyValuePair(_loc3_,param1.queryVars[_loc3_]));
         }
         _loc2_ = _loc2_.concat(calculateDiffPartToAppend(_loc2_,diffProperties(_loc4_,_loc5_),"queryVars"));
         return _loc2_;
      }
      
      public function matchesHostname(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         if(param1.substr(0,2) == "*.")
         {
            param1 = param1.slice(2);
            if(param1.length > hostname.length)
            {
               return false;
            }
            return hostname.slice(-param1.length) == param1 && (hostname.length == param1.length || hostname.charAt(hostname.length - param1.length - 1) == ".");
         }
         return param1 == hostname;
      }
      
      private function calculateDiffPartToAppend(param1:String, param2:String, param3:String) : String
      {
         if(param2)
         {
            return (!!param1?"\n":"").concat(param3,": ",param2);
         }
         return "";
      }
      
      protected function removeDotSegments() : void
      {
         var _loc2_:* = false;
         var _loc1_:Array = fullPath.split("/");
         if(_loc1_.length && _loc1_[0] == "")
         {
            _loc2_ = true;
            _loc1_.shift();
         }
         var _loc3_:Array = [];
         while(_loc1_.length)
         {
            if(!_loc2_ && _loc1_[0] == ".." || _loc1_[0] == ".")
            {
               _loc1_.shift();
            }
            else if(_loc2_ && _loc1_[0] == ".")
            {
               _loc1_.shift();
            }
            else if(_loc2_ && _loc1_[0] == "..")
            {
               _loc1_.shift();
               _loc3_.pop();
            }
            else
            {
               if(!_loc3_.length && _loc2_)
               {
                  _loc3_.push("");
               }
               _loc3_.push(_loc1_.shift());
               _loc2_ = _loc1_.length > 0;
            }
         }
         if(_loc2_)
         {
            _loc3_.push("");
         }
         fullPath = _loc3_.join("/");
      }
      
      private function diffProperties(param1:Array, param2:Array) : String
      {
         var _loc4_:KeyValuePair = null;
         var _loc5_:KeyValuePair = null;
         var _loc6_:Boolean = false;
         var _loc3_:String = "";
         for each(_loc4_ in param2)
         {
            _loc6_ = false;
            for each(_loc5_ in param1)
            {
               if(_loc5_.key == _loc4_.key && _loc5_.value == _loc4_.value)
               {
                  _loc6_ = true;
                  break;
               }
            }
            if(!_loc6_)
            {
               _loc3_ = _loc3_.concat(!!_loc3_?"\n\t":"","Extra ",_loc4_," found.");
            }
         }
         for each(_loc5_ in param1)
         {
            _loc6_ = false;
            for each(_loc4_ in param2)
            {
               if(_loc5_.key == _loc4_.key && _loc5_.value == _loc4_.value)
               {
                  _loc6_ = true;
                  break;
               }
            }
            if(!_loc6_)
            {
               _loc3_ = _loc3_.concat(!!_loc3_?"\n\t":"",_loc5_," not found.");
            }
         }
         return _loc3_;
      }
      
      public function deleteParam(param1:String) : void
      {
         deleteProperty(parameterVars,param1);
      }
      
      public function recombineUrl(param1:Boolean = false, param2:Object = null, param3:Boolean = true) : String
      {
         var _loc5_:KeyValuePair = null;
         var _loc8_:Object = null;
         var _loc9_:Array = null;
         var _loc10_:* = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc4_:String = "".concat(!!protocol?protocol + ":":"",!!isResource?"//":"");
         if(param1)
         {
            _loc4_ = _loc4_ + authority;
         }
         else
         {
            if(username || password)
            {
               _loc4_ = _loc4_.concat(!!username?username:"",!!password?":" + password:"","@");
            }
            _loc4_ = _loc4_.concat(hostname,!!port?":" + port:"");
         }
         _loc4_ = _loc4_ + fullPath;
         var _loc6_:String = parameters;
         if(!param1)
         {
            _loc6_ = "";
            for each(_loc5_ in parameterVars)
            {
               _loc6_ = _loc6_ + ((!!_loc6_?";":"") + _loc5_.key);
               if(_loc5_.value != null)
               {
                  _loc6_ = _loc6_ + ("=" + _loc5_.value);
               }
            }
         }
         _loc4_ = _loc4_ + (!!_loc6_?";" + _loc6_:"");
         var _loc7_:String = query;
         if(!param1)
         {
            _loc7_ = "";
            _loc8_ = !!param2?param2:this.queryVars;
            _loc9_ = [];
            for(_loc10_ in _loc8_)
            {
               _loc9_.push(_loc10_);
            }
            _loc9_.sort();
            for each(_loc10_ in _loc9_)
            {
               _loc11_ = !!param3?encodeURIComponent(_loc10_):_loc10_;
               _loc7_ = _loc7_ + ((!!_loc7_?"&":"") + _loc11_);
               if(_loc8_[_loc10_] != null)
               {
                  _loc12_ = !!param3?encodeURIComponent(String(_loc8_[_loc10_])):String(_loc8_[_loc10_]);
                  _loc7_ = _loc7_ + ("=" + _loc12_);
               }
            }
         }
         _loc4_ = _loc4_ + (!!_loc7_?"?" + _loc7_:"");
         _loc4_ = _loc4_ + (!!fragment?"#" + fragment:"");
         return _loc4_;
      }
      
      public function matchesPath(param1:String) : Boolean
      {
         var _loc2_:String = fullPath;
         if(param1.charAt(param1.length - 1) == "*")
         {
            _loc2_ = _loc2_.slice(0,param1.length - 1);
            param1 = param1.slice(0,param1.length - 1);
         }
         return _loc2_ == param1 || param1 == "/" && !_loc2_;
      }
      
      public function getParam(param1:String) : String
      {
         var _loc2_:KeyValuePair = getProperty(parameterVars,param1);
         if(_loc2_ != null)
         {
            return _loc2_.value as String;
         }
         return null;
      }
      
      public function toString() : String
      {
         return "[Url url=".concat(recombineUrl()," originalUrl=",originalUrl,"]");
      }
      
      public function equals(param1:Url) : Boolean
      {
         return !diffUrl(param1);
      }
   }
}
