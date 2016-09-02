package com.ws.stat
{
   public class StringUtil
   {
       
      
      public function StringUtil()
      {
         super();
      }
      
      public static function equals(param1:String, param2:String) : Boolean
      {
         return param1 == param2;
      }
      
      public static function equalsIgnoreCase(param1:String, param2:String) : Boolean
      {
         return param1.toLowerCase() == param2.toLowerCase();
      }
      
      public static function isNumber(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         return !isNaN(Number(param1));
      }
      
      public static function isIP(param1:String) : Boolean
      {
         var _loc2_:RegExp = /^(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9])\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[0-9])$/;
         return checkChar(param1,_loc2_);
      }
      
      public static function isEmail(param1:String) : Boolean
      {
         var _loc2_:RegExp = /(\w|[_.\-])+@((\w|-)+\.)+\w{2,4}+/;
         return checkChar(param1,_loc2_);
      }
      
      public static function isDouble(param1:String) : Boolean
      {
         var _loc2_:RegExp = /^[+\-]?\d+(\.\d+)?$/;
         return checkChar(param1,_loc2_);
      }
      
      public static function isInteger(param1:String) : Boolean
      {
         var _loc2_:RegExp = /^[-\+]?\d+$/;
         return checkChar(param1,_loc2_);
      }
      
      public static function isEnglish(param1:String) : Boolean
      {
         var _loc2_:RegExp = /^[A-Za-z]+$/;
         return checkChar(param1,_loc2_);
      }
      
      public static function isChinese(param1:String) : Boolean
      {
         var _loc2_:RegExp = /^[Α-￥]+$/;
         return checkChar(param1,_loc2_);
      }
      
      public static function isDoubleChar(param1:String) : Boolean
      {
         var _loc2_:RegExp = /^[^\x00-\xff]+$/;
         return checkChar(param1,_loc2_);
      }
      
      public static function hasChineseChar(param1:String) : Boolean
      {
         var _loc2_:RegExp = /[^\x00-\xff]/;
         return checkChar(param1,_loc2_);
      }
      
      public static function hasAccountChar(param1:String, param2:uint = 15) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(param2 < 10)
         {
            param2 = 15;
         }
         var _loc3_:RegExp = new RegExp("^[a-zA-Z0-9][a-zA-Z0-9_-]{0," + param2 + "}$","");
         return checkChar(param1,_loc3_);
      }
      
      public static function isURL(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         param1 = param1.toLowerCase();
         var _loc2_:RegExp = /^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"\"])*$/;
         return checkChar(param1,_loc2_);
      }
      
      public static function isWhitespace(param1:String) : Boolean
      {
         switch(param1)
         {
            case " ":
            case "\t":
            case "\r":
            case "\n":
            case "\f":
               return true;
            default:
               return false;
         }
      }
      
      public static function checkChar(param1:String, param2:RegExp) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         param1 = trim(param1);
         return param2.test(param1);
      }
      
      public static function trim(param1:String) : String
      {
         if(param1 == null)
         {
            return null;
         }
         return rtrim(ltrim(param1));
      }
      
      public static function ltrim(param1:String) : String
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:RegExp = /^\s*/;
         return param1.replace(_loc2_,"");
      }
      
      public static function rtrim(param1:String) : String
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:RegExp = /\s*$/;
         return param1.replace(_loc2_,"");
      }
      
      public static function beginsWith(param1:String, param2:String) : Boolean
      {
         return param2 == param1.substring(0,param2.length);
      }
      
      public static function endsWith(param1:String, param2:String) : Boolean
      {
         return param2 == param1.substring(param1.length - param2.length);
      }
      
      public static function remove(param1:String, param2:String) : String
      {
         return replace(param1,param2,"");
      }
      
      public static function replace(param1:String, param2:String, param3:String) : String
      {
         return param1.split(param2).join(param3);
      }
      
      public static function utf16to8(param1:String) : String
      {
         var _loc5_:int = 0;
         var _loc2_:Array = new Array();
         var _loc3_:uint = param1.length;
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.charCodeAt(_loc4_);
            if(_loc5_ >= 1 && _loc5_ <= 127)
            {
               _loc2_[_loc4_] = param1.charAt(_loc4_);
            }
            else if(_loc5_ > 2047)
            {
               _loc2_[_loc4_] = String.fromCharCode(224 | _loc5_ >> 12 & 15,128 | _loc5_ >> 6 & 63,128 | _loc5_ >> 0 & 63);
            }
            else
            {
               _loc2_[_loc4_] = String.fromCharCode(192 | _loc5_ >> 6 & 31,128 | _loc5_ >> 0 & 63);
            }
            _loc4_++;
         }
         return _loc2_.join("");
      }
      
      public static function utf8to16(param1:String) : String
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc2_:Array = new Array();
         var _loc3_:uint = param1.length;
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            _loc7_ = param1.charCodeAt(_loc4_++);
            switch(_loc7_ >> 4)
            {
               case 0:
               case 1:
               case 2:
               case 3:
               case 4:
               case 5:
               case 6:
               case 7:
                  _loc2_[_loc2_.length] = param1.charAt(_loc4_ - 1);
                  continue;
               case 12:
               case 13:
                  _loc5_ = param1.charCodeAt(_loc4_++);
                  _loc2_[_loc2_.length] = String.fromCharCode((_loc7_ & 31) << 6 | _loc5_ & 63);
                  continue;
               case 14:
                  _loc5_ = param1.charCodeAt(_loc4_++);
                  _loc6_ = param1.charCodeAt(_loc4_++);
                  _loc2_[_loc2_.length] = String.fromCharCode((_loc7_ & 15) << 12 | (_loc5_ & 63) << 6 | (_loc6_ & 63) << 0);
                  continue;
               default:
                  continue;
            }
         }
         return _loc2_.join("");
      }
      
      public static function trimBias(param1:String) : String
      {
         return ltrimBias(rtrimBias(param1));
      }
      
      public static function ltrimBias(param1:String) : String
      {
         var _loc2_:int = param1.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(param1.charCodeAt(_loc3_) != 47)
            {
               return param1.substring(_loc3_);
            }
            _loc3_++;
         }
         return "";
      }
      
      public static function rtrimBias(param1:String) : String
      {
         var _loc2_:int = param1.length;
         var _loc3_:int = _loc2_;
         while(_loc3_ > 0)
         {
            if(param1.charCodeAt(_loc3_ - 1) != 47)
            {
               return param1.substring(0,_loc3_);
            }
            _loc3_--;
         }
         return "";
      }
   }
}
