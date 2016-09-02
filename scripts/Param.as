package
{
   import flash.geom.Point;
   import util.$;
   
   public class Param
   {
      
      public static var LiveID:String;
      
      public static var RtmpUrl:String;
      
      public static var Servers:String;
      
      public static var Serversinfo:Array;
      
      public static var ServerIp:String;
      
      public static var ServerPort:int;
      
      public static var RoomId:String;
      
      public static var cateId:String;
      
      public static var Status:Boolean;
      
      public static var DomainName:String;
      
      public static var closeFMS:String;
      
      public static var IsIndex:Boolean;
      
      public static var ASSET_URL:String;
      
      public static var PASS_VERIFY:String = "";
      
      public static var IS_HOSTLIVE:int;
      
      public static var HAS_PASS:int;
      
      public static var currentNum:int;
      
      public static var userId:String = "0";
      
      public static var uid:int;
      
      public static var ownerId:String;
      
      public static var usergroupid:String;
      
      public static var CDN:String = "";
      
      public static var browerCDN:String = "";
      
      public static var DOTATALK:String;
      
      public static var P2P:int = 0;
      
      public static var isPs:int = 0;
      
      public static var isLoginUser:Number;
      
      public static var delayTime:int;
      
      public static var currentStreamType:int = 0;
      
      public static var currentTicketStreamType:int = 0;
      
      public static var streamNames:Array = ["超清","普清","高清"];
      
      public static var maskObj:Object = null;
      
      public static var roomLink:String = null;
      
      public static var isFifteen:Boolean = false;
      
      public static var swfVersion:String = "";
      
      public static var adUrl:String;
      
      public static var plugId:int;
      
      public static var adServerUrl:String;
      
      public static var cdnType:int;
      
      public static var pos:int;
      
      public static var adState:int;
      
      public static var liveType:int;
      
      public static var clientType:int;
      
      public static var isPhone:int;
      
      public static var isShow:int = 0;
      
      public static var sPlanecolor:String;
      
      public static var rPlanecolor:String;
      
      public static var dPlanecolor:String;
      
      public static var sRocketcolor:String;
      
      public static var rRocketcolor:String;
      
      public static var dRocketcolor:String;
      
      public static var planeResPoint:Point;
      
      public static var rocketResPoint:Point;
      
      public static var planeTxtPoint:Point;
      
      public static var rocketTxtPoint:Point;
      
      public static var isQQApp:Boolean = false;
      
      public static var isYinghun:Boolean = false;
      
      public static var isTicketNeed:Boolean = false;
      
      public static var eticket:int = -1;
      
      public static var CDNlist:Array;
      
      public static var definitionConfig:Array;
      
      public static var blackFullTimer:String;
      
      public static var StarNoHandleTipsTimer:String;
      
      public static var isYuanhua:Boolean = false;
      
      public static var isVertical:Boolean;
      
      public static var isYanzhi:Boolean;
      
      public static var videoBgUrls:Array;
      
      public static var videoRate:Number = 0.56;
      
      private static var giftEffectResUrl:String;
      
      private static var activityFlag:String;
      
      private static var avatar_url:String;
      
      public static var isSubject:int;
      
      public static var p2pType:int = 0;
      
      public static var mobileDelayTime:int = 0;
      
      public static var pcDelayTime:int = 0;
      
      public static var playDelayTime:int = 0;
      
      private static var effectArr:Array = [];
      
      public static var effectResUrl:String;
       
      
      public function Param()
      {
         super();
      }
      
      public static function init(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         LiveID = param1["LiveID"];
         RtmpUrl = param1["RtmpUrl"];
         Servers = param1["Servers"];
         if(Servers)
         {
            Serversinfo = JSON.parse(Servers) as Array;
            if(Serversinfo && Serversinfo.length != 0)
            {
               _loc3_ = int(Math.random() * 10000) % Serversinfo.length;
               _loc4_ = Serversinfo[_loc3_];
               ServerIp = _loc4_.ip;
               ServerPort = _loc4_.port;
            }
            else
            {
               ServerIp = param1["ServerIp"];
               ServerPort = param1["ServerPort"];
            }
         }
         isLoginUser = param1["uid"];
         RoomId = param1["RoomId"];
         cateId = param1["cate_id"];
         roomLink = param1["room_link"];
         Status = (param1["Status"] || "").toString().toLowerCase() == "true";
         DomainName = param1["DomainName"];
         closeFMS = param1["closeFMS"];
         IsIndex = (param1["IsIndex"] || "").toString().toLowerCase() == "true";
         isShow = param1["isshow"];
         ASSET_URL = param1["asset_url"];
         browerCDN = param1["cdn"];
         if(browerCDN == null)
         {
            browerCDN = "";
         }
         DOTATALK = param1["show_talk"];
         HAS_PASS = param1.roompass;
         IS_HOSTLIVE = param1.checkowne;
         ownerId = param1.OwnerId;
         usergroupid = param1.usergroupid;
         isPhone = param1.phonestatus;
         adUrl = param1.WidgetUrl;
         plugId = param1.WidgetId;
         adServerUrl = param1.WidgetServers;
         cdnType = param1.WidgetType;
         pos = param1.WidgetPosition;
         effectResUrl = param1.effectSwf;
         isSubject = param1.is_subject;
         if(!GlobalData.OldModel)
         {
            giftEffectResUrl = param1.effectGiftSwf;
            activityFlag = param1.giftActivityFlag;
            avatar_url = param1.avatar_url;
         }
         var _loc2_:String = param1.flashConfig;
         if(_loc2_ != null && _loc2_ != "")
         {
            effectArr = JSON.parse(_loc2_) as Array;
            _loc5_ = 0;
            while(_loc5_ < effectArr.length)
            {
               _loc6_ = effectArr[_loc5_];
               _loc5_++;
            }
         }
         isQQApp = param1["qqapp"] == 1;
         isYinghun = param1["yinghun"] == 1;
         if(param1["eticket"] != undefined && param1["eticket"] != "")
         {
            isTicketNeed = true;
            eticket = param1["eticket"];
         }
         if(param1["definitionConfig"] != undefined && param1["definitionConfig"] != "")
         {
            definitionConfig = JSON.parse(param1["definitionConfig"]) as Array;
         }
         if(["673327","429265"].indexOf(RoomId) != -1)
         {
            isYuanhua = true;
            streamNames[0] = "原画";
         }
      }
      
      public static function getEffcetConfig(param1:int) : Object
      {
         var _loc3_:Object = null;
         var _loc2_:int = 0;
         while(_loc2_ < effectArr.length)
         {
            _loc3_ = effectArr[_loc2_];
            if(int(_loc3_.id) == param1 && _loc3_.type == "1")
            {
               return _loc3_;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function getCoboEffcetConfig(param1:String) : Object
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc2_:int = 0;
         while(_loc2_ < effectArr.length)
         {
            _loc3_ = effectArr[_loc2_];
            _loc4_ = _loc3_.flag;
            _loc5_ = _loc4_.split("_");
            _loc6_ = _loc5_[_loc5_.length - 1];
            if(_loc6_ == param1 && _loc5_[2] == "hit")
            {
               return _loc3_;
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function getActivityFlag() : String
      {
         if(GlobalData.OldModel)
         {
            if(Param.activityFlag == null)
            {
               Param.activityFlag = $.jscall("(function (){return window.$ROOM.giftActivityFlag})");
               if(Param.activityFlag == null)
               {
                  $.jscall("console.log","视频区大动效资源导出类名前缀获取错误！");
                  return null;
               }
            }
         }
         return Param.activityFlag;
      }
      
      public static function getGiftEffectResUrl() : String
      {
         if(GlobalData.OldModel)
         {
            if(Param.giftEffectResUrl == null)
            {
               Param.giftEffectResUrl = $.jscall("(function (){return window.$ROOM.effectGiftSwf})");
               if(Param.giftEffectResUrl == null)
               {
                  $.jscall("console.log","视频区大特效资源路径获取错误！");
                  return "";
               }
            }
         }
         return Param.giftEffectResUrl;
      }
      
      public static function getResDomain() : String
      {
         if(GlobalData.OldModel)
         {
            if(Param.avatar_url == null)
            {
               Param.avatar_url = $.jscall("(function (){return window.$SYS.avatar_url})");
               if(Param.avatar_url == null)
               {
                  $.jscall("console.log","获取资源域名错误！");
                  return "";
               }
            }
         }
         return Param.avatar_url;
      }
   }
}
