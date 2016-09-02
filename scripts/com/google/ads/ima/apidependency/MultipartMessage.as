package com.google.ads.ima.apidependency
{
   import flash.utils.ByteArray;
   import mx.utils.Base64Encoder;
   import com.google.utils.StringUtils;
   
   public class MultipartMessage
   {
      
      private static const URL_LENGTH_LIMIT:uint = 2000;
       
      
      private var originalMessageValue:String;
      
      private var urlLengthLimitValue:uint;
      
      private var idValue:String;
      
      private var dataLeft:String;
      
      public function MultipartMessage(param1:String, param2:Boolean = true, param3:uint = 2000)
      {
         super();
         idValue = "id_" + Math.floor(Math.random() * 1000000);
         urlLengthLimitValue = param3;
         originalMessageValue = param1;
         if(param2)
         {
            dataLeft = compress(param1);
         }
         else
         {
            dataLeft = param1;
         }
      }
      
      public function getNextDataPart(param1:String) : String
      {
         var _loc2_:int = getAvailableSpace(param1);
         if(_loc2_ > 0)
         {
            return takeDataForAvailableSpace(_loc2_);
         }
         return "";
      }
      
      private function compress(param1:String) : String
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(param1);
         _loc2_.compress();
         var _loc3_:Base64Encoder = new Base64Encoder();
         _loc3_.encodeBytes(_loc2_);
         return _loc3_.toString();
      }
      
      public function hasDataLeft() : Boolean
      {
         return !StringUtils.isNullOrEmpty(dataLeft);
      }
      
      private function takeDataForAvailableSpace(param1:int) : String
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:uint = 0;
         var _loc2_:String = "";
         if(hasDataLeft())
         {
            _loc5_ = 0;
            while(_loc5_ < dataLeft.length)
            {
               _loc3_ = dataLeft.charAt(_loc5_);
               _loc4_ = encodeURIComponent(_loc3_);
               param1 = param1 - _loc4_.length;
               if(param1 >= 0)
               {
                  _loc2_ = _loc2_ + _loc3_;
                  _loc5_++;
                  continue;
               }
               break;
            }
            dataLeft = dataLeft.slice(_loc2_.length);
         }
         return _loc2_;
      }
      
      private function getAvailableSpace(param1:String) : int
      {
         return urlLengthLimitValue - param1.length;
      }
      
      public function get id() : String
      {
         return idValue;
      }
      
      public function appendDataPartToUrl(param1:String) : String
      {
         return param1 + encodeURIComponent(getNextDataPart(param1));
      }
   }
}
