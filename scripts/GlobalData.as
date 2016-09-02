package
{
   import flash.display.Sprite;
   import cc.dy.view.effect.BigEffectContainer;
   
   public class GlobalData
   {
      
      public static var VIDEOLAYER:Sprite;
      
      public static var USERNOHANDLELAYER:Sprite;
      
      public static var COMMENTLAYER:Sprite;
      
      public static var EFFECTLAYER:Sprite;
      
      public static var PLAYLAYER:Sprite;
      
      public static var RECOMMENDLAYER:Sprite;
      
      public static var TIPLAYER:Sprite;
      
      public static var LOADLAYER:Sprite;
      
      public static var LOGINLAYER:Sprite;
      
      public static var ILLEGAL_LAYER:Sprite;
      
      public static var TITLEBAR_LAYER:Sprite;
      
      public static var AdLAYER:Sprite;
      
      public static var TICKET_LAYER:Sprite;
      
      public static var PWD_LAYER:Sprite;
      
      public static var CHANGE_RATE_LAYER:Sprite;
      
      public static var ACTIVITY_LAYER:Sprite;
      
      public static var VIDEO_BG_LAYER:Sprite;
      
      public static var YANZHI_CODE:Sprite;
      
      public static var GIFT_EFFECT_LAYER:BigEffectContainer;
      
      public static var SWF_VERSION:String = "2016083101";
      
      public static var PLAYER_VERSION:String = "Douyu_" + SWF_VERSION;
      
      public static var VERSION:String = "20150929";
      
      public static var RECOMMEND_API:String = "/swf_api/recommend_live";
      
      public static var backApi:String = "/lapi/live/getPlay";
      
      public static var SHARE_API:String = "/swf_api/room";
      
      public static var PWD_CHECK_API:String = "/swf_api/checkPlayerPassword";
      
      public static var TICKET_API:String = "/lapi/live/app/getTicketPlay";
      
      public static var HIDE_API:String = "/room/my_hide/room";
      
      public static var FEEDBACK_API:String = "/api/network_stat_report/report";
      
      public static const MAX_FPS:int = 60;
      
      public static var root:WebRoom;
      
      public static var isStageVideo:Boolean = false;
      
      public static var isYouke:int;
      
      public static var rg:int;
      
      public static var pg:int;
      
      public static var chatMaxChars:int = 50;
      
      public static var isChromeBrowser:Boolean = false;
      
      public static var textSizeValue:Number = 28;
      
      public static var textAlphaValue:Number = 0.85;
      
      public static var offsetUpHeight:int = 0;
      
      public static var offsetDownHeight:int = 0;
      
      public static var danmuModel:int = 1;
      
      public static var rateModel:int = 0;
      
      public static var hasMultirate:int = 0;
      
      public static var byteCount:Number = 0;
      
      public static var distanHeight:int = 42;
      
      public static var P2PStatus:Boolean = false;
      
      public static var CDNType:int = 0;
      
      public static var domainName:String;
      
      public static var isHSAdOK:Boolean = false;
      
      public static var isPlayOK:Boolean = false;
      
      public static var isDebug:Boolean = false;
      
      public static var YCServer:Boolean = true;
      
      public static var FontStr:String = "";
      
      public static var isSecurError1:Boolean = false;
      
      public static var isSecurError2:Boolean = false;
      
      public static const ILLEGAL_CLOSE_TIME:int = 3600;
      
      public static var GPUStatus:Boolean = true;
      
      public static var qqappRooms:Array;
      
      public static var yinghunRooms:Array;
      
      public static var OldModel:Boolean = false;
      
      public static var ticketData:Object;
      
      public static var prefix:String = "http://";
      
      public static var giftBatterConfig:Object;
       
      
      public function GlobalData()
      {
         super();
      }
   }
}
