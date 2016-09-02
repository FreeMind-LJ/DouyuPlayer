package baseswc
{
   public class SDKInterface
   {
      
      private static var _instance:baseswc.SDKInterface;
       
      
      protected var _sdkClass:Class;
      
      public function SDKInterface()
      {
         super();
      }
      
      public static function get instance() : baseswc.SDKInterface
      {
         if(_instance == null)
         {
            _instance = new baseswc.SDKInterface();
         }
         return _instance;
      }
      
      public function get P2PValidDownloadBytes() : Number
      {
         return !!this._sdkClass?Number(this._sdkClass["TotalP2PDownloadValidBytes"]):Number(0);
      }
      
      public function get CDNDownloadBytes() : Number
      {
         return !!this._sdkClass?Number(this._sdkClass["TotalCDNDownloadValidBytes"]):Number(0);
      }
      
      public function setSdkReady(param1:XClassBytesLoader) : void
      {
         this._sdkClass = param1.getClass("com.yc.base.SwcInterface");
      }
      
      public function get P2PUploadBytes() : Number
      {
         return !!this._sdkClass?Number(this._sdkClass["TotalP2PUploadBytes"]):Number(0);
      }
   }
}
