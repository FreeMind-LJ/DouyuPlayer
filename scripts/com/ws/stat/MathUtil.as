package com.ws.stat
{
   public class MathUtil
   {
       
      
      public function MathUtil()
      {
         super();
      }
      
      public static function random(param1:uint, param2:uint) : uint
      {
         var _loc3_:uint = Math.floor((param2 - param1) * Math.random() + param1);
         return _loc3_;
      }
      
      public static function constrain(param1:Number, param2:Number = 0, param3:Number = 1) : Number
      {
         param1 = Math.max(param1,param2);
         param1 = Math.min(param1,param3);
         return param1;
      }
      
      public static function forceParseFloat(param1:String) : Number
      {
         var _loc2_:Number = parseFloat(param1);
         return !!isNaN(_loc2_)?Number(0):Number(_loc2_);
      }
      
      public static function forceParseInt(param1:String, param2:uint = 0) : Number
      {
         var _loc3_:Number = parseInt(param1,param2);
         return !!isNaN(_loc3_)?Number(0):Number(_loc3_);
      }
      
      public static function zeroFill(param1:Number, param2:uint) : String
      {
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc3_:uint = param1.toFixed(0).match(/\d/g).length;
         var _loc4_:* = "";
         if(_loc3_ < param2)
         {
            _loc5_ = param2 - _loc3_;
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc4_ = _loc4_ + "0";
               _loc6_++;
            }
         }
         return _loc4_ + String(param1);
      }
   }
}
