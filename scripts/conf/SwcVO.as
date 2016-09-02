package conf
{
   public class SwcVO
   {
      
      private static var _instance:conf.SwcVO;
       
      
      public var isLive:Boolean = false;
      
      public function SwcVO()
      {
         super();
      }
      
      public static function get instance() : conf.SwcVO
      {
         if(_instance == null)
         {
            _instance = new conf.SwcVO();
         }
         return _instance;
      }
   }
}
