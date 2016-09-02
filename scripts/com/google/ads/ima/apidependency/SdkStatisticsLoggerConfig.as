package com.google.ads.ima.apidependency
{
   import flash.utils.Dictionary;
   
   public class SdkStatisticsLoggerConfig
   {
       
      
      private var logPercentValue:Number;
      
      private var loggablePointsValue:Dictionary;
      
      public function SdkStatisticsLoggerConfig(param1:XML)
      {
         super();
         loggablePointsValue = new Dictionary();
         parse(param1);
      }
      
      private function parseIds(param1:XMLList, param2:Boolean) : void
      {
         var _loc3_:XML = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:uint = 0;
         var _loc7_:LoggablePoint = null;
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.toString().split(",");
            if(_loc4_.length > 0)
            {
               for each(_loc5_ in _loc4_)
               {
                  _loc6_ = parseInt(_loc5_);
                  if(loggablePoints[_loc6_] == null)
                  {
                     _loc7_ = new LoggablePoint(_loc6_,param2,_loc3_.@logAlways == "true",_loc3_.@cexp);
                     loggablePoints[_loc6_] = _loc7_;
                  }
               }
            }
         }
      }
      
      public function get loggablePoints() : Dictionary
      {
         return loggablePointsValue;
      }
      
      public function get logPercent() : Number
      {
         return logPercentValue;
      }
      
      private function parse(param1:XML) : void
      {
         var logConfig:XML = param1;
         try
         {
            logPercentValue = parseFloat(logConfig.@p);
            parseIds(logConfig.Youtube.Ids,true);
            parseIds(logConfig.All.Ids,false);
            return;
         }
         catch(error:Error)
         {
            return;
         }
      }
   }
}
