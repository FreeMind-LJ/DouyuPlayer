package com.google.utils
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   
   public class StringUtils
   {
      
      private static const ALPHANUM_CHAR_ARRAY:Array = new String("abcdefghijkl" + "mnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789").split("");
      
      private static const NUMBER_GROUP_RE:RegExp = /([0-9]{3})/g;
      
      private static const TIME_DELIM_RE:RegExp = /^\s*(?P<sign>-)?((?P<h>\d+:)?(?P<m>\d+:))?(?P<s>\d+(\.(?P<ss>\d*))?)/i;
      
      private static const TIME_HMS_RE:RegExp = /^\s*(?P<sign>-)?(?P<h>\d+h)?(?P<m>\d+m)?(?P<s>\d+(\.(?P<ss>\d*))?s)?/i;
      
      private static const MISSING_CLOSE_BRACKET:String = "Single close bracket not found \"{\"";
      
      private static const NUMBER_RE:RegExp = /^(?P<prefix>[0-9]*?)([0-9]{3})*$/;
       
      
      public function StringUtils()
      {
         super();
      }
      
      public static function toCamelCase(param1:String) : String
      {
         var _loc4_:int = 0;
         var _loc2_:Array = param1.toLowerCase().split("_");
         var _loc3_:String = "";
         if(_loc2_.length > 0)
         {
            _loc3_ = _loc2_[0];
            _loc4_ = 1;
            while(_loc4_ < _loc2_.length)
            {
               if(_loc3_.length > 0)
               {
                  _loc3_ = _loc3_.concat(_loc2_[_loc4_].charAt(0).toUpperCase(),_loc2_[_loc4_].substring(1,_loc2_[_loc4_].length));
               }
               else
               {
                  _loc3_ = _loc2_[_loc4_];
               }
               _loc4_++;
            }
         }
         return _loc3_;
      }
      
      public static function ellipsis(param1:String, param2:TextField, param3:TextFormat = null, param4:String = "...") : String
      {
         var _loc10_:int = 0;
         var _loc5_:String = param2.text;
         var _loc6_:Number = param2.width - 4;
         var _loc7_:Number = param2.height - 4;
         if(_loc6_ <= 0 || _loc7_ <= 0)
         {
            return "";
         }
         param2.text = param1;
         if(param3)
         {
            param2.setTextFormat(param3);
         }
         if(param2.textWidth <= _loc6_ && param2.textHeight <= _loc7_)
         {
            param2.text = _loc5_;
            return param1;
         }
         var _loc8_:int = 0;
         var _loc9_:int = param1.length;
         while(_loc8_ < _loc9_)
         {
            _loc10_ = (_loc8_ + _loc9_) / 2;
            param2.text = param1.substring(0,_loc10_) + param4;
            if(param3)
            {
               param2.setTextFormat(param3);
            }
            if(param2.textWidth > _loc6_ || param2.textHeight > _loc7_)
            {
               _loc9_ = _loc10_;
            }
            else
            {
               _loc8_ = _loc10_ + 1;
            }
         }
         param2.text = _loc5_;
         if(_loc8_ == 0)
         {
            return "";
         }
         return param1.substring(0,_loc8_ - 1) + param4;
      }
      
      public static function rtrim(param1:String) : String
      {
         var _loc2_:int = param1.length;
         while(_loc2_--)
         {
            if(param1.charCodeAt(_loc2_) > 32)
            {
               return param1.substring(0,_loc2_ + 1);
            }
         }
         return "";
      }
      
      public static function beginsWith(param1:String, param2:String) : Boolean
      {
         if(param1 == null || !param1.length || param2 == null || !param2.length || param1.length < param2.length)
         {
            return false;
         }
         var _loc3_:Number = 0;
         while(_loc3_ < param2.length)
         {
            if(param1.charCodeAt(_loc3_) != param2.charCodeAt(_loc3_))
            {
               return false;
            }
            _loc3_++;
         }
         return true;
      }
      
      public static function generateRandomString(param1:uint) : String
      {
         var _loc2_:int = ALPHANUM_CHAR_ARRAY.length;
         var _loc3_:String = "";
         var _loc4_:uint = 0;
         while(_loc4_ < param1)
         {
            _loc3_ = _loc3_ + ALPHANUM_CHAR_ARRAY[int(Math.floor(Math.random() * _loc2_))];
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function isNullOrEmpty(param1:String) : Boolean
      {
         if(param1 && Boolean(trim(param1)))
         {
            return false;
         }
         return true;
      }
      
      public static function repeat(param1:String, param2:Number) : String
      {
         var _loc3_:String = "";
         var _loc4_:uint = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc3_ + param1;
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function ltrim(param1:String) : String
      {
         var _loc2_:uint = param1.length;
         var _loc3_:uint = 0;
         while(_loc3_ < _loc2_)
         {
            if(param1.charCodeAt(_loc3_) > 32)
            {
               return param1.substring(_loc3_);
            }
            _loc3_++;
         }
         return "";
      }
      
      public static function formatNumber(param1:Number) : String
      {
         var _loc2_:String = param1.toString();
         var _loc3_:Object = NUMBER_RE.exec(_loc2_);
         if(_loc3_[2])
         {
            if(_loc3_.prefix)
            {
               _loc2_ = _loc2_.substr(_loc3_.prefix.length);
               _loc2_ = _loc2_.replace(NUMBER_GROUP_RE,"$1,").slice(0,-1);
               return _loc3_.prefix + "," + _loc2_;
            }
            _loc2_ = _loc2_.replace(NUMBER_GROUP_RE,"$1,").slice(0,-1);
            return _loc2_;
         }
         return _loc2_;
      }
      
      public static function formatTime(param1:Number, param2:Boolean = false, param3:uint = 3, param4:Boolean = false) : String
      {
         var _loc15_:Number = NaN;
         if(isNaN(param1))
         {
            return "";
         }
         var _loc5_:Array = [];
         var _loc6_:String = "";
         if(param1 < 0)
         {
            _loc6_ = "-";
            param1 = -Math.ceil(param1);
         }
         else
         {
            param1 = Math.floor(param1);
         }
         var _loc7_:Number = Math.floor(param1 / 1000) % 60;
         var _loc8_:Number = Math.floor(param1 / 60000) % 60;
         var _loc9_:Number = !!param4?Number(Math.floor(param1 / 3600000) % 24):Number(Math.floor(param1 / 3600000));
         var _loc10_:Number = Math.floor(param1 / 86400000);
         var _loc11_:String = _loc7_ < 10?"0" + _loc7_.toString():_loc7_.toString();
         if(!param2)
         {
            _loc15_ = param1 % 1000;
            _loc11_ = _loc11_.concat(".",_loc15_ < 10?"0":"",_loc15_ < 100?"0":"",_loc15_.toString());
         }
         var _loc12_:String = _loc8_ < 10 && (_loc9_ > 0 || _loc10_ > 0 || param3 > 3)?"0" + _loc8_.toString():_loc8_.toString();
         var _loc13_:String = "";
         var _loc14_:String = "";
         if(param4)
         {
            _loc13_ = _loc9_ < 10 && (_loc10_ > 0 || param3 > 5)?"0" + _loc9_.toString():_loc9_.toString();
            _loc14_ = !!_loc10_?_loc10_.toString():"";
            _loc14_ = repeat("0",param3 - _loc14_.length - 6) + _loc14_;
         }
         else
         {
            _loc13_ = !!_loc9_?_loc9_.toString():"";
            _loc13_ = repeat("0",param3 - _loc13_.length - 4) + _loc13_;
         }
         pushNonEmptyStrings(_loc5_,_loc14_,_loc13_,_loc12_,_loc11_);
         return _loc6_.concat(_loc5_.join(":"));
      }
      
      public static function parseTime(param1:String) : Number
      {
         var _loc2_:Object = TIME_DELIM_RE.exec(param1);
         if(!_loc2_ || _loc2_[0].length == 0)
         {
            return NaN;
         }
         return (!!_loc2_.sign?-1:1) * ((parseInt(_loc2_.h) || 0) * 3600000 + (parseInt(_loc2_.m) || 0) * 60000 + (parseInt(_loc2_.s) || 0) * 1000 + (parseInt(_loc2_.ss.concat("000").substr(0,3)) || 0));
      }
      
      private static function pushNonEmptyStrings(param1:Array, ... rest) : void
      {
         var _loc3_:String = null;
         for each(_loc3_ in rest)
         {
            if(_loc3_)
            {
               param1.push(_loc3_);
            }
         }
      }
      
      public static function parseTimeEnglish(param1:String) : Number
      {
         var _loc2_:Object = TIME_HMS_RE.exec(param1);
         if(!_loc2_ || _loc2_[0].length == 0)
         {
            return NaN;
         }
         return (!!_loc2_.sign?-1:1) * ((parseInt(_loc2_.h) || 0) * 3600000 + (parseInt(_loc2_.m) || 0) * 60000 + (parseInt(_loc2_.s) || 0) * 1000 + (parseInt(_loc2_.ss.concat("000").substr(0,3)) || 0));
      }
      
      public static function trim(param1:String) : String
      {
         return ltrim(rtrim(param1));
      }
      
      public static function addWholeWords(param1:Array, param2:uint, param3:String = "") : String
      {
         var _loc6_:String = null;
         var _loc7_:uint = 0;
         if(param1 == null)
         {
            return param3;
         }
         var _loc4_:Array = !!StringUtils.isNullOrEmpty(param3)?[]:[param3];
         var _loc5_:uint = param3.length;
         for each(_loc6_ in param1)
         {
            _loc7_ = _loc5_ + _loc6_.length;
            _loc7_ = _loc7_ + (_loc5_ > 0?1:0);
            if(_loc7_ <= param2)
            {
               _loc4_.push(_loc6_);
               _loc5_ = _loc7_;
               continue;
            }
            break;
         }
         return _loc4_.join(" ");
      }
      
      public static function parseStringToMap(param1:String, param2:String = ",", param3:String = "=") : Dictionary
      {
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         if(isNullOrEmpty(param1))
         {
            return new Dictionary();
         }
         var _loc4_:Dictionary = new Dictionary();
         var _loc5_:Array = param1.split(param2);
         for each(_loc6_ in _loc5_)
         {
            _loc7_ = _loc6_.split(param3);
            if(_loc7_.length != 2)
            {
               return null;
            }
            _loc8_ = trim(_loc7_[0]);
            _loc9_ = trim(_loc7_[1]);
            _loc4_[_loc8_] = _loc9_;
         }
         return _loc4_;
      }
      
      public static function format(param1:String, param2:Object) : String
      {
         var part:String = null;
         var pos:int = 0;
         var key:String = null;
         var template:String = param1;
         var args:Object = param2;
         var unescapeClosingBrackets:Function = function(param1:String):String
         {
            param1 = param1.replace(/\}\}/g,"{");
            if(param1.indexOf("}") > -1)
            {
               throw new ArgumentError("Found close bracket without open bracket \"}\"");
            }
            return param1.replace(/\{/g,"}");
         };
         var parts:Array = template.split("{");
         var max:int = parts.length;
         parts[0] = unescapeClosingBrackets(parts[0]);
         var i:int = 1;
         while(i < max)
         {
            part = parts[i];
            if(part == "")
            {
               parts[i] = "{";
               i++;
               if(i < max)
               {
                  parts[i] = unescapeClosingBrackets(parts[i]);
               }
               else
               {
                  throw new ArgumentError(MISSING_CLOSE_BRACKET);
               }
            }
            else
            {
               pos = part.indexOf("}");
               if(pos == -1)
               {
                  throw new ArgumentError(MISSING_CLOSE_BRACKET);
               }
               key = part.substr(0,pos);
               if(key in args)
               {
                  parts[i] = args[key] + unescapeClosingBrackets(part.substr(pos + 1));
               }
               else
               {
                  throw new ArgumentError("Args object didn\'t contain argument \"" + key + "\" but " + "it was found in the template string");
               }
            }
            i++;
         }
         return parts.join("");
      }
      
      private static function getKeyIndex(param1:String, param2:String, param3:String, param4:int) : int
      {
         var _loc5_:String = param3 + param2;
         return param1.indexOf(_loc5_,param4);
      }
      
      public static function fromCamelCase(param1:String) : String
      {
         var _loc5_:Number = NaN;
         var _loc2_:String = "";
         var _loc3_:int = 0;
         var _loc4_:int = 1;
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1.charCodeAt(_loc4_);
            if(_loc5_ >= 65 && _loc5_ <= 90)
            {
               if(_loc2_.length == 0)
               {
                  _loc2_ = _loc2_.concat(param1.substring(_loc3_,_loc4_).toLowerCase());
               }
               else
               {
                  _loc2_ = _loc2_.concat("_",param1.substring(_loc3_,_loc4_).toLowerCase());
               }
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc2_.length == 0)
         {
            _loc2_ = _loc2_.concat(param1.substring(_loc3_).toLowerCase());
         }
         else
         {
            _loc2_ = _loc2_.concat("_",param1.substring(_loc3_).toLowerCase());
         }
         return _loc2_;
      }
      
      public static function removeKeyValues(param1:String, param2:String, param3:String) : String
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc4_:String = param1;
         var _loc5_:int = 0;
         var _loc6_:int = getKeyIndex(_loc4_,param2,param3,_loc5_);
         while(_loc6_ != -1)
         {
            _loc7_ = _loc4_.indexOf("=",_loc6_);
            if(_loc7_ == -1)
            {
               _loc5_ = _loc6_ + param2.length + 1;
            }
            else
            {
               _loc8_ = _loc4_.indexOf(param3,_loc7_);
               if(_loc8_ == -1)
               {
                  _loc4_ = _loc4_.substring(0,_loc6_);
               }
               else
               {
                  _loc9_ = _loc4_.substring(0,_loc6_);
                  _loc10_ = _loc4_.substring(_loc8_);
                  _loc4_ = _loc9_ + _loc10_;
               }
            }
            _loc6_ = getKeyIndex(_loc4_,param2,param3,_loc5_);
         }
         return _loc4_;
      }
   }
}
