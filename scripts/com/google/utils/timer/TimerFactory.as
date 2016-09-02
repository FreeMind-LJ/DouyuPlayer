package com.google.utils.timer
{
   import flash.utils.Timer;
   
   public class TimerFactory
   {
      
      private static var timerClass:Class = Timer;
       
      
      public function TimerFactory()
      {
         super();
      }
      
      public static function createTimer(param1:Number, param2:Number = 0) : Timer
      {
         return new timerClass(param1,param2);
      }
      
      public static function setTimerClassForTesting(param1:Class) : void
      {
         timerClass = param1;
      }
   }
}
