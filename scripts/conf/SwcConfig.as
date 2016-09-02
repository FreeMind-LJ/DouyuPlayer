package conf
{
   import p2pstream.XNetStreamFactory;
   
   public class SwcConfig
   {
      
      private static const _libraryURLPrefix:String = "http://infosrc.cloudacc-inc.com/";
      
      public static const REPORTER_HOST:String = "realtime.monitor.cloudacc-inc.com";
      
      public static const REPORTER_URI:String = "/FlashP2PMonitorNew/RealTimeReport";
      
      public static const REPORTER_PORT:String = "6001";
       
      
      public function SwcConfig()
      {
         super();
      }
      
      public static function get libraryURL() : String
      {
         var _loc1_:* = _libraryURLPrefix;
         _loc1_ = _loc1_ + (!!SwcVO.instance.isLive?"linfo":"vinfo");
         _loc1_ = _loc1_ + "/";
         _loc1_ = _loc1_ + XNetStreamFactory.PARTNERID;
         _loc1_ = _loc1_ + ("/" + (!!SwcVO.instance.isLive?"linfo":"vinfo") + ".php");
         return _loc1_;
      }
   }
}
