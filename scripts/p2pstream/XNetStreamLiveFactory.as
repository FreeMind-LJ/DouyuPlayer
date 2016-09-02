package p2pstream
{
   import flash.net.NetStream;
   import conf.SwcVO;
   
   public class XNetStreamLiveFactory extends XNetStreamFactory
   {
       
      
      public function XNetStreamLiveFactory(param1:Function, param2:String = null)
      {
         SwcVO.instance.isLive = true;
         super(param1,param2);
      }
      
      public static function checkCompatibility() : Boolean
      {
         return XNetStreamFactory.checkCompatibility();
      }
      
      public function newNetStreamLive(param1:String, param2:String, param3:*, param4:String = "", param5:Boolean = false) : NetStream
      {
         var _loc6_:Class = null;
         if(_isSuccess)
         {
            param1 = PARTNERID;
            param2 = "";
            _loc6_ = loader.getClass("p2pstream.StreamAdaptor");
            return _loc6_["createNetStream"](param1,param2,param3,param4,param5) as NetStream;
         }
         return null;
      }
   }
}
