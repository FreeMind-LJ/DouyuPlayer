package util
{
   import flash.net.LocalConnection;
   import flash.events.StatusEvent;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   
   public class LocalConnectionManager
   {
      
      private static var localConnectManager:util.LocalConnectionManager;
       
      
      private var conn:LocalConnection;
      
      private var obj:Object;
      
      private var hsTimer:Timer;
      
      private var isFail:Boolean = true;
      
      public function LocalConnectionManager()
      {
         super();
      }
      
      public static function get instance() : util.LocalConnectionManager
      {
         if(localConnectManager == null)
         {
            localConnectManager = new util.LocalConnectionManager();
         }
         return localConnectManager;
      }
      
      public function init() : void
      {
         if(this.conn == null)
         {
            this.conn = new LocalConnection();
            this.conn.addEventListener(StatusEvent.STATUS,this.onStatus);
         }
      }
      
      public function Send(param1:Object) : void
      {
         this.obj = param1;
         this.conn.send("AdLocalConnection","adDataHandler",this.obj);
      }
      
      private function onStatus(param1:StatusEvent) : void
      {
         switch(param1.level)
         {
            case "status":
               this.isFail = true;
               $.jscall("console.log","send sucess");
               break;
            case "error":
               this.isFail = false;
               this.resetSendData();
               $.jscall("console.log","send fail");
         }
      }
      
      private function resetSendData() : void
      {
         if(this.hsTimer == null)
         {
            this.hsTimer = new Timer(5 * 1000,0);
            this.hsTimer.addEventListener(TimerEvent.TIMER,this.hsDataLive,false,0,true);
            this.hsTimer.start();
         }
      }
      
      private function hsDataLive(param1:TimerEvent) : void
      {
         if(!this.isFail)
         {
            this.conn.send("AdLocalConnection","adDataHandler",this.obj);
         }
         else if(this.hsTimer != null)
         {
            this.hsTimer.stop();
            this.hsTimer.removeEventListener(TimerEvent.TIMER,this.hsDataLive);
            this.hsTimer = null;
         }
      }
   }
}
