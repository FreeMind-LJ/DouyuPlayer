package com.google.ads.ima.apidependency
{
   public class LoggablePoint
   {
       
      
      private var youtubeValue:Boolean;
      
      private var idValue:uint;
      
      private var experimentIdValue:String;
      
      private var logAlwaysValue:Boolean;
      
      public function LoggablePoint(param1:uint, param2:Boolean, param3:Boolean, param4:String = null)
      {
         super();
         this.idValue = param1;
         this.youtubeValue = param2;
         this.logAlwaysValue = param3;
         this.experimentIdValue = param4 == ""?null:param4;
      }
      
      public function toString() : String
      {
         return "id:" + id + " youtube:" + logForYoutubeOnly + " logAlways:" + logAlways + " experimentId:" + experimentId;
      }
      
      public function get logForYoutubeOnly() : Boolean
      {
         return youtubeValue;
      }
      
      public function get logAlways() : Boolean
      {
         return logAlwaysValue;
      }
      
      public function get experimentId() : String
      {
         return experimentIdValue;
      }
      
      public function get id() : uint
      {
         return idValue;
      }
      
      public function equals(param1:LoggablePoint) : Boolean
      {
         return id == param1.id && logForYoutubeOnly == param1.logForYoutubeOnly && logAlways == param1.logAlways && experimentId == param1.experimentId;
      }
   }
}
