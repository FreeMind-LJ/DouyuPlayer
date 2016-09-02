package util
{
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import com.adobe.crypto.Base64;
   import flash.net.sendToURL;
   
   public class UserBehaviorLog
   {
      
      public static const POINT_ID_PLAY:int = 101;
      
      public static const POINT_ID_PAUSE:int = 102;
      
      public static const POINT_ID_VOLUME_CHANGE:int = 103;
      
      public static const POINT_ID_SILENT:int = 104;
      
      public static const POINT_ID_SILENT_CANCEL:int = 105;
      
      public static const POINT_ID_COMMENT_SHOW:int = 106;
      
      public static const POINT_ID_COMMENT_HIDE:int = 107;
      
      public static const POINT_ID_FULLSCREEN_WEB:int = 108;
      
      public static const POINT_ID_FULLSCREEN_DESKTOP:int = 109;
      
      public static const POINT_ID_FULLSCREEN_CANCEL:int = 110;
      
      public static const POINT_ID_COMMENT_SEND:int = 111;
      
      public static const POINT_ID_RELOAD:int = 112;
      
      public static const POINT_ID_FEEDBACK_OPEN:int = 113;
      
      public static const POINT_ID_FEEDBACK_SUBMIT:int = 114;
      
      public static const POINT_ID_CONFIG_OPEN:int = 115;
      
      public static const POINT_ID_CONFIG_FULLSCREEN_INPUT_TRUE:int = 116;
      
      public static const POINT_ID_CONFIG_FULLSCREEN_INPUT_FALSE:int = 117;
      
      public static const POINT_ID_CONFIG_ALPHA_NONE:int = 118;
      
      public static const POINT_ID_CONFIG_ALPHA_LOW:int = 119;
      
      public static const POINT_ID_CONFIG_ALPHA_MID:int = 120;
      
      public static const POINT_ID_CONFIG_ALPHA_HIGN:int = 121;
      
      public static const POINT_ID_CONFIG_COMMENT_POSITION_FULL:int = 122;
      
      public static const POINT_ID_CONFIG_COMMENT_POSITION_BELOW:int = 123;
      
      public static const POINT_ID_CONFIG_COMMENT_POSITION_ABOVE:int = 124;
      
      public static const POINT_ID_LINE_MAIN:int = 201;
      
      public static const POINT_ID_LINE_BACKUP1:int = 202;
      
      public static const POINT_ID_LINE_BACKUP2:int = 203;
      
      public static const POINT_ID_LINE_BACKUP3:int = 204;
      
      public static const POINT_ID_DEFINITION_NORMAL:int = 301;
      
      public static const POINT_ID_DEFINITION_HIGN:int = 302;
      
      public static const POINT_ID_DEFINITION_SUPER:int = 303;
      
      public static const POINT_ID_COMMENT_MORE_TRUE:int = 401;
      
      public static const POINT_ID_COMMENT_MORE_FALSE:int = 402;
      
      public static const POINT_ID_GETROCK_GIFT:int = 403;
      
      public static const POINT_ID_GETPLANE_GIFT:int = 404;
      
      public static const POINT_ID_PWD_RIGHT:int = 405;
      
      public static const POINT_ID_GET_REDPOCKETS_GIFT:int = 406;
      
      public static const POINT_ID_GET_ROCKET:int = 407;
      
      public static const POINT_ID_TICKET_TIP_SHOW:int = 408;
      
      public static const POINT_ID_TICKET_TIP_CLICK:int = 409;
      
      public static const POINT_ID_TICKET_PLAYER_SHOW:int = 410;
      
      public static const POINT_ID_TICKET_PLAYER_CLICK:int = 411;
      
      public static const POINT_ID_ANOTHER_PLAYER:int = 501;
      
      public static const POINT_ID_CHAT_DELAY:int = 502;
      
      public static const POINT_ID_INDEX_ENTER_ROOM:int = 503;
      
      public static const POINT_ID_RECOMMEND_ENTER_ROOM:int = 504;
      
      public static const POINT_ID_LOGIN_SERVER:int = 505;
      
      public static const POINT_ID_LOGIN_SERVER_FAIL_:int = 506;
      
      public static const POINT_ID_LOGIN_DANMU:int = 507;
      
      public static const POINT_ID_LOGIN_DANMU_FAIL:int = 508;
      
      public static const POINT_ID_FIRST_LOGIN_:int = 509;
      
      public static const POINT_ID_FIRST_LOGIN_DANMU:int = 510;
      
      public static const POINT_ID_GATESERVER_CONNECT:int = 511;
      
      public static const POINT_ID_LOGIN_GATESERVER:int = 512;
      
      public static const POINT_ID_HEART_BEAT:int = 513;
      
      public static const POINT_ID_GG_PRE_APPEAR:int = 601;
      
      public static const POINT_ID_GG_PRE_CLICK:int = 602;
      
      public static const POINT_ID_GG_OVER_APPEAR:int = 603;
      
      public static const POINT_ID_GG_OVER_CLICK:int = 604;
      
      private static const DEFINITION_EXT_ARRAY:Array = [3,1,2];
      
      private static var LOG_URL:String = "http://dotcounter.douyucdn.cn/deliver/fish";
      
      private static var instance:util.UserBehaviorLog;
       
      
      private var timer:Timer;
      
      private var logs:Array;
      
      private var url:String;
      
      private var did:String;
      
      private var rid:String;
      
      private var pageT:int;
      
      private var occurT:int;
      
      private var ext:String;
      
      private var device:String;
      
      private var version:String;
      
      private var isInitialized:Boolean = false;
      
      private var initLogs:Array;
      
      public function UserBehaviorLog()
      {
         this.initLogs = [];
         super();
         LOG_URL = GlobalData.prefix + "dotcounter.douyucdn.cn/deliver/fish";
      }
      
      public static function getInstance() : util.UserBehaviorLog
      {
         if(instance == null)
         {
            instance = new util.UserBehaviorLog();
         }
         return instance;
      }
      
      public static function getDefinitionExt(param1:int) : int
      {
         return int(DEFINITION_EXT_ARRAY[param1]) || 0;
      }
      
      public function initialise() : void
      {
         if(!this.isInitialized)
         {
            this.url = $.jscall("function(){return window.location.href;}");
            this.did = Util.getGuid();
            this.rid = Param.RoomId;
            this.pageT = int(new Date().time / 1000);
            this.device = "flash";
            this.version = GlobalData.SWF_VERSION;
            this.logs = [];
            this.timer = new Timer(60000);
            this.timer.addEventListener(TimerEvent.TIMER,this.onTimer);
            this.timer.start();
            this.isInitialized = true;
         }
      }
      
      protected function onTimer(param1:TimerEvent) : void
      {
         this.sendLog();
      }
      
      public function addLog(param1:int, param2:* = "") : void
      {
         if(!this.isInitialized)
         {
            $.jscall("console.log","UserBehaviorLog need initialized first.");
            return;
         }
         var _loc3_:Object = {
            "u":this.url,
            "p":param1,
            "d":this.did,
            "i":Param.userId,
            "rid":Param.RoomId,
            "pt":this.pageT,
            "ot":int(new Date().time / 1000),
            "a":this.device,
            "v":this.version,
            "e":param2,
            "r":"",
            "fp":""
         };
         if(this.logs == null)
         {
            this.logs = [];
         }
         this.logs.push(_loc3_);
         if(this.logs.length >= 10)
         {
            this.sendLog();
            this.timer.reset();
            this.timer.start();
         }
      }
      
      private function sendLog() : void
      {
         var _loc1_:URLRequest = null;
         var _loc2_:String = null;
         if(this.logs.length > 0)
         {
            _loc1_ = new URLRequest(LOG_URL);
            _loc1_.method = URLRequestMethod.POST;
            _loc2_ = Base64.encode(JSON.stringify(this.logs));
            _loc1_.data = "multi=" + _loc2_;
            sendToURL(_loc1_);
            this.logs.length = 0;
         }
      }
      
      public function sendChatLog(param1:int, param2:Number, param3:* = "") : void
      {
         if(!this.isInitialized)
         {
            $.jscall("console.log","UserBehaviorLog need initialized first.");
            return;
         }
         var _loc4_:Object = {
            "u":GlobalData.domainName,
            "p":param1,
            "d":this.did,
            "i":Param.userId,
            "rid":Param.RoomId,
            "pt":this.pageT,
            "ot":param2,
            "a":this.device,
            "v":this.version,
            "e":param3,
            "r":"",
            "fp":""
         };
         this.initLogs.push(_loc4_);
         var _loc5_:URLRequest = new URLRequest(LOG_URL);
         _loc5_.method = URLRequestMethod.POST;
         var _loc6_:String = Base64.encode(JSON.stringify(this.initLogs));
         _loc5_.data = "multi=" + _loc6_;
         sendToURL(_loc5_);
         this.initLogs.length = 0;
      }
      
      public function addRealLog(param1:int, param2:* = "") : void
      {
         if(!this.isInitialized)
         {
            $.jscall("console.log","UserBehaviorLog need initialized first.");
            return;
         }
         var _loc3_:Object = {
            "u":this.url,
            "p":param1 + "",
            "d":this.did,
            "i":Param.userId,
            "rid":Param.RoomId,
            "pt":this.pageT,
            "ot":int(new Date().time / 1000),
            "a":this.device,
            "v":this.version,
            "e":param2,
            "r":"",
            "fp":""
         };
         var _loc4_:URLRequest = new URLRequest(LOG_URL);
         _loc4_.method = URLRequestMethod.POST;
         var _loc5_:Array = [_loc3_];
         var _loc6_:String = Base64.encode(JSON.stringify(_loc5_));
         _loc4_.data = "multi=" + _loc6_;
         sendToURL(_loc4_);
      }
   }
}
