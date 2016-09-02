package util
{
   import flash.net.SharedObject;
   
   public class LocalStorage
   {
      
      public static const VOLUME_NUMBER:String = "volumeNumber";
      
      private static var _so:SharedObject = SharedObject.getLocal("acDouyu","/");
       
      
      public function LocalStorage()
      {
         super();
      }
      
      public static function getValue(param1:String, param2:* = null) : *
      {
         if(_so.data[param1] != null)
         {
            return _so.data[param1];
         }
         return param2;
      }
      
      public static function setValue(param1:String, param2:*) : void
      {
         if(_so.data[param1] != param2)
         {
            _so.data[param1] = param2;
            _so.flush();
         }
      }
      
      public static function saveVolume(param1:Number) : void
      {
         if(Param.IS_HOSTLIVE == 0)
         {
            setValue(VOLUME_NUMBER,param1);
         }
      }
      
      public static function getVolume() : Number
      {
         return getValue(VOLUME_NUMBER,0.5);
      }
   }
}
