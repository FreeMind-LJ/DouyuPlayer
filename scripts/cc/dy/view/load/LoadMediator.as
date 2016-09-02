package cc.dy.view.load
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import util.Util;
   import common.event.EventCenter;
   import common.event.ObjectEvent;
   import flash.net.URLRequest;
   import flash.net.URLLoader;
   import flash.events.SecurityErrorEvent;
   import flash.events.IOErrorEvent;
   import flash.events.Event;
   import cc.dy.model.net.Encode;
   import util.$;
   import util.LocalStorage;
   import flash.system.Capabilities;
   import sample.xx.CModule;
   import flash.net.URLRequestMethod;
   import com.greensock.events.LoaderEvent;
   import flash.net.URLVariables;
   import cc.dy.view.plug.GoogleAdManager;
   import flash.text.TextField;
   import flash.events.TextEvent;
   import util.UserBehaviorLog;
   import cc.dy.view.play.PlayMediator;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class LoadMediator extends Mediator implements IMediator
   {
      
      public static var NAME:String = "LoadMediator";
       
      
      private var indexLoad:uint;
      
      public var Servers:String;
      
      public var Serversinfo:Array;
      
      public var maskArr:Array;
      
      private var isVideoShowed:Boolean = false;
      
      private var loader:URLLoader;
      
      private var reLoader:URLLoader;
      
      private var bakLoader:URLLoader;
      
      private var reloadbakLoader:URLLoader;
      
      private var ticketTimeout:uint;
      
      private var expireTimeout:uint;
      
      private var ticketTip:TextField;
      
      private var jsTipShowed:Boolean = false;
      
      private var buyticketsFlag:int = 0;
      
      public function LoadMediator(param1:Object)
      {
         super(NAME,param1);
         EventCenter.addEventListener("LoadOK",this.__loadOk);
         EventCenter.addEventListener("Reload",this.__onReload);
         EventCenter.addEventListener("SkipLoad",this.__loadOk);
         EventCenter.addEventListener("TicketStreamNotify",this.loadTicketStream);
         EventCenter.addEventListener("BuyticketsSuccess",this.buyticketsSuccess);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.Show_Load_Request,Order.Hide_Load_Request,Order.On_Resize,Order.Video_Reload_Request,Order.Video_Reset_Request,Order.Show_Play_Request];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.Show_Load_Request:
               this.showLoad();
               break;
            case Order.Hide_Load_Request:
               this.hideLoad();
               break;
            case Order.On_Resize:
               this.onResize(param1.getBody());
               break;
            case Order.Video_Reload_Request:
               this.reload();
               break;
            case Order.Video_Reset_Request:
               this.onReset();
               break;
            case Order.Show_Play_Request:
               this.onPlay();
         }
      }
      
      private function showLoad() : void
      {
         clearTimeout(this.indexLoad);
         if(this.loadView.parent == null)
         {
            GlobalData.LOADLAYER.addChild(this.loadView);
         }
         this.loadView.thridLoad();
         this.loadView.switchStatus();
      }
      
      private function reload() : void
      {
         if(this.loadView.parent == null)
         {
            GlobalData.LOADLAYER.addChild(this.loadView);
         }
         else
         {
            this.loadView.parent.removeChild(this.loadView);
            clearTimeout(this.indexLoad);
            this.indexLoad = setTimeout(function():void
            {
               GlobalData.LOADLAYER.addChild(loadView);
            },1000);
         }
         this.loadView.switchStatus();
         this.loadView.onResize();
      }
      
      private function onReset() : void
      {
         clearTimeout(this.indexLoad);
         if(this.loadView.parent != null)
         {
            this.loadView.parent.removeChild(this.loadView);
         }
      }
      
      private function onPlay() : void
      {
         if(!Param.IsIndex && GlobalData.hasMultirate == 1 && Param.isLoginUser == 0 && !Util.switchRateTip())
         {
            if(!Param.isFifteen)
            {
               EventCenter.dispatch("ChangeRateNotifyEvent",{"type":1});
            }
            else
            {
               Param.isFifteen = false;
            }
         }
         this.isVideoShowed = true;
      }
      
      private function hideLoad() : void
      {
         clearTimeout(this.indexLoad);
         if(this.loadView.parent != null)
         {
            this.loadView.parent.removeChild(this.loadView);
         }
      }
      
      private function __loadOk(param1:ObjectEvent) : void
      {
         var urlrequest1:URLRequest = null;
         var urlrequest:URLRequest = null;
         var e:ObjectEvent = param1;
         if(Param.RoomId == null || Param.RoomId == "")
         {
            return;
         }
         if(this.loader == null)
         {
            this.loader = new URLLoader();
            this.loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.__securityErrorHandler);
            this.loader.addEventListener(IOErrorEvent.IO_ERROR,this.__ioErrorHandler);
            this.loader.addEventListener(Event.COMPLETE,function(param1:Event):void
            {
               var _loc5_:Encode = null;
               var _loc6_:int = 0;
               var _loc7_:int = 0;
               var _loc8_:int = 0;
               var _loc9_:Object = null;
               var _loc2_:Object = JSON.parse(param1.target.data);
               var _loc3_:int = _loc2_.error;
               if(_loc3_ == -2)
               {
                  $.asTojs("room_bus_checksevertime");
                  return;
               }
               GlobalData.hasMultirate = _loc2_.data.rtmp_multi_bitrate == ""?0:1;
               Param.liveType = _loc2_.data.is_high_game;
               if(Util.isAnotherDay())
               {
                  LocalStorage.setValue("rateModelRecord",null);
                  LocalStorage.setValue("rateModelGaoRecord",null);
               }
               var _loc4_:Number = Param.liveType == 0?Number(LocalStorage.getValue("rateModelRecord",-1)):Number(LocalStorage.getValue("rateModelGaoRecord",-1));
               Param.RtmpUrl = _loc2_.data.rtmp_url;
               if(!Param.IsIndex && GlobalData.hasMultirate == 1 && Param.isLoginUser == 0 && !Util.switchRateTip())
               {
                  Param.LiveID = _loc2_.data.rtmp_multi_bitrate.middle;
                  Param.currentStreamType = 1;
                  EventCenter.dispatch("forcedToSwitch",{"code":1});
               }
               else
               {
                  Param.currentStreamType = 0;
                  if(GlobalData.hasMultirate == 1)
                  {
                     if(_loc4_ >= 0)
                     {
                        Param.currentStreamType = _loc4_;
                     }
                     else if(Param.definitionConfig)
                     {
                        if(Param.liveType == 0)
                        {
                           if(Capabilities.screenResolutionX > Param.definitionConfig[0])
                           {
                              Param.currentStreamType = 0;
                           }
                           else
                           {
                              Param.currentStreamType = 2;
                           }
                        }
                        else if(Param.definitionConfig[2] == 1)
                        {
                           Param.currentStreamType = 2;
                        }
                        else if(Capabilities.screenResolutionX > Param.definitionConfig[0])
                        {
                           Param.currentStreamType = 0;
                        }
                        else
                        {
                           Param.currentStreamType = 2;
                        }
                     }
                  }
               }
               Param.RoomId = _loc2_.data.room_id;
               Param.cateId = _loc2_.data.cate_id;
               Param.CDN = _loc2_.data.rtmp_cdn;
               Param.ownerId = _loc2_.data.owner_uid;
               Param.p2pType = _loc2_.data.p2p_settings.name_id;
               Param.mobileDelayTime = _loc2_.data.p2p_settings.m_dm;
               Param.pcDelayTime = _loc2_.data.p2p_settings.w_dm;
               Param.playDelayTime = _loc2_.data.p2p_settings.player;
               if(Param.p2pType != 0 && Param.p2pType != 4)
               {
                  Param.P2P = 1;
               }
               else
               {
                  Param.P2P = 0;
               }
               Param.mobileDelayTime = Param.isLoginUser == 0 || Param.isPhone == 0?int(Param.mobileDelayTime):0;
               Param.pcDelayTime = Param.isLoginUser == 0 || Param.isPhone == 0?int(Param.pcDelayTime):0;
               Param.delayTime = _loc2_.data.room_dm_delay;
               Param.isVertical = _loc2_.data.isVertical == 1;
               if(Param.isVertical)
               {
                  Param.isYanzhi = true;
               }
               Param.videoBgUrls = [];
               if(_loc2_.data.coverSrc != null && _loc2_.data.coverSrc != "")
               {
                  Param.videoBgUrls.push(_loc2_.data.coverSrc);
               }
               if(_loc2_.data.owner_avatar != null && _loc2_.data.owner_avatar != "")
               {
                  Param.videoBgUrls.push(_loc2_.data.owner_avatar);
               }
               if(_loc2_.data.defaultSrc != null && _loc2_.data.defaultSrc != "")
               {
                  Param.videoBgUrls.push(Param.getResDomain() + (_loc2_.data.defaultSrc as String).substr(1));
               }
               Serversinfo = _loc2_.data.servers;
               maskArr = _loc2_.data.black;
               if(_loc2_.data.hasOwnProperty("room_idle") && _loc2_.data.room_idle.hasOwnProperty("active") && _loc2_.data.room_idle.hasOwnProperty("minute_limit"))
               {
                  _loc5_ = new Encode();
                  _loc6_ = _loc2_.data.room_idle.active;
                  _loc7_ = _loc2_.data.room_idle.minute_limit;
                  _loc5_.AddItem_int("active",_loc6_);
                  _loc5_.AddItem_int("minute_limit",_loc7_);
                  $.asTojs("room_data_idle",_loc5_.Get_SttString());
               }
               if(_loc2_.data.hasOwnProperty("cdnsWithName"))
               {
                  Param.CDNlist = _loc2_.data.cdnsWithName;
                  if(Param.CDNlist)
                  {
                     EventCenter.dispatch("refreshRightMenu",null);
                  }
               }
               else
               {
                  $.jscall("console.log","Param.CDNlist frist返回没有数值");
               }
               if(Serversinfo)
               {
                  if(Serversinfo && Serversinfo.length != 0)
                  {
                     _loc8_ = int(Math.random() * 10000) % Serversinfo.length;
                     _loc9_ = Serversinfo[_loc8_];
                     Param.ServerIp = _loc9_.ip;
                     Param.ServerPort = _loc9_.port;
                  }
                  else
                  {
                     Param.ServerIp = _loc2_.data.ServerIp;
                     Param.ServerPort = _loc2_.data.ServerPort;
                  }
               }
               if(maskArr && maskArr.length != 0)
               {
                  Param.maskObj = maskArr[0];
               }
               if(_loc2_.data.eticket != undefined && _loc2_.data.eticket != null)
               {
                  Param.eticket = int(_loc2_.data.eticket);
                  Param.isTicketNeed = true;
               }
               loadWSNewStream();
               if(Param.isYinghun)
               {
                  EventCenter.dispatch("TitleBarDataEvent",_loc2_.data);
               }
               if(_loc2_.data.is_pass_player == 1)
               {
                  EventCenter.dispatch("PwdNotifyEvent",{"type":1});
               }
            });
         }
         var min:Number = int(new Date().time / 60000);
         var signStr:String = Util.getSecretStr(Param.RoomId + "&" + min,"2");
         var StreamSignDataPtr:int = CModule.malloc(4);
         var data_len:int = xx.sub_12(int(Param.RoomId),min,StreamSignDataPtr);
         var resData:int = CModule.read32(StreamSignDataPtr);
         signStr = CModule.readString(resData,data_len);
         if(!Param.Status && (Param.IS_HOSTLIVE == 1 || Param.usergroupid == "5"))
         {
            urlrequest1 = new URLRequest(GlobalData.HIDE_API + "/" + Param.RoomId);
            urlrequest1.method = URLRequestMethod.POST;
            this.loader.load(urlrequest1);
         }
         else
         {
            urlrequest = new URLRequest(GlobalData.SHARE_API + "/" + Param.RoomId + "?cdn=" + Param.CDN + "&nofan=yes&_t=" + min + "&sign=" + signStr);
            urlrequest.method = URLRequestMethod.POST;
            this.loader.load(urlrequest);
         }
         xx.sub_10(StreamSignDataPtr);
         CModule.free(StreamSignDataPtr);
      }
      
      private function __securityErrorHandler(param1:SecurityErrorEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
         $.jscall("console.log","securityError___" + param1);
      }
      
      private function __ioErrorHandler(param1:IOErrorEvent) : void
      {
         $.jscall("console.log","IOError___" + param1);
      }
      
      private function __onReload(param1:ObjectEvent) : void
      {
         var _loc7_:URLRequest = null;
         var _loc8_:URLRequest = null;
         if(Param.RoomId == null || Param.RoomId == "")
         {
            return;
         }
         Util.resetRateRecordTime();
         if(this.reLoader == null)
         {
            this.reLoader = new URLLoader();
            this.reLoader.addEventListener(Event.COMPLETE,this.loadComplete);
         }
         var _loc2_:Number = int(new Date().time / 60000);
         var _loc3_:String = Util.getSecretStr(Param.RoomId + "&" + _loc2_,"2");
         var _loc4_:int = CModule.malloc(4);
         var _loc5_:int = xx.sub_12(int(Param.RoomId),_loc2_,_loc4_);
         var _loc6_:int = CModule.read32(_loc4_);
         _loc3_ = CModule.readString(_loc6_,_loc5_);
         if(!Param.Status && (Param.IS_HOSTLIVE == 1 || Param.usergroupid == "5"))
         {
            _loc7_ = new URLRequest(GlobalData.HIDE_API + "/" + Param.RoomId);
            _loc7_.method = URLRequestMethod.POST;
            this.loader.load(_loc7_);
         }
         else
         {
            _loc8_ = new URLRequest(GlobalData.SHARE_API + "/" + Param.RoomId + "?cdn=" + Param.CDN + "&nofan=yes&_t=" + _loc2_ + "&sign=" + _loc3_);
            _loc8_.method = URLRequestMethod.POST;
            this.reLoader.load(_loc8_);
         }
         xx.sub_10(_loc4_);
         CModule.free(_loc4_);
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc2_:Object = JSON.parse(param1.target.data);
         GlobalData.hasMultirate = _loc2_.data.rtmp_multi_bitrate == ""?0:1;
         Param.RtmpUrl = _loc2_.data.rtmp_url;
         Param.liveType = _loc2_.data.is_high_game;
         if(!Param.IsIndex && GlobalData.hasMultirate == 1 && Param.isLoginUser == 0 && !Util.switchRateTip())
         {
            Param.LiveID = _loc2_.data.rtmp_multi_bitrate.middle;
            Param.currentStreamType = 1;
            EventCenter.dispatch("forcedToSwitch",{"code":1});
         }
         else if(GlobalData.hasMultirate == 0)
         {
            Param.currentStreamType = 0;
         }
         Param.RoomId = _loc2_.data.room_id;
         Param.cateId = _loc2_.data.cate_id;
         Param.CDN = _loc2_.data.rtmp_cdn;
         Param.ownerId = _loc2_.data.owner_uid;
         Param.delayTime = _loc2_.data.room_dm_delay;
         Param.p2pType = _loc2_.data.p2p_settings.name_id;
         Param.mobileDelayTime = _loc2_.data.p2p_settings.m_dm;
         Param.pcDelayTime = _loc2_.data.p2p_settings.w_dm;
         Param.playDelayTime = _loc2_.data.p2p_settings.player;
         if(Param.p2pType != 0 && Param.p2pType != 4)
         {
            Param.P2P = 1;
         }
         else
         {
            Param.P2P = 0;
         }
         Param.mobileDelayTime = Param.isLoginUser == 0 || Param.isPhone == 0?int(Param.mobileDelayTime):0;
         Param.pcDelayTime = Param.isLoginUser == 0 || Param.isPhone == 0?int(Param.pcDelayTime):0;
         this.Serversinfo = _loc2_.data.servers;
         if(_loc2_.data.hasOwnProperty("cdnsWithName"))
         {
            Param.CDNlist = _loc2_.data.cdnsWithName;
            if(Param.CDNlist)
            {
               EventCenter.dispatch("refreshRightMenu",null);
            }
         }
         else
         {
            $.jscall("console.log","Param.CDNlist 重载返回没有数值");
         }
         if(this.Serversinfo)
         {
            if(this.Serversinfo && this.Serversinfo.length != 0)
            {
               _loc3_ = int(Math.random() * 10000) % this.Serversinfo.length;
               _loc4_ = this.Serversinfo[_loc3_];
               Param.ServerIp = _loc4_.ip;
               Param.ServerPort = _loc4_.port;
            }
            else
            {
               Param.ServerIp = _loc2_.data.ServerIp;
               Param.ServerPort = _loc2_.data.ServerPort;
            }
         }
         this.reloadWSNewStream();
      }
      
      private function _paramInit(param1:LoaderEvent) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.content) as Object;
         $.jscall("console.log","重新载入数据响应=" + _loc2_.toString());
         Param.RtmpUrl = _loc2_.data.rtmp_url;
         Param.LiveID = _loc2_.data.rtmp_live;
         sendNotification(Order.Video_Reload_Request,null);
      }
      
      private function onResize(param1:Object) : void
      {
         this.loadView.onResize();
      }
      
      public function get loadView() : LoadView
      {
         return viewComponent as LoadView;
      }
      
      private function loadWSNewStream() : void
      {
         var min:Number = NaN;
         var signStr:String = null;
         var StreamSignDataPtr:int = 0;
         var data_len:int = 0;
         var resData:int = 0;
         var urlrequest:URLRequest = null;
         var values:URLVariables = null;
         if(Param.isTicketNeed)
         {
            GlobalData.isHSAdOK = true;
            this.loadTicketStream();
         }
         else
         {
            try
            {
               if(this.bakLoader == null)
               {
                  this.bakLoader = new URLLoader();
                  this.bakLoader.addEventListener(Event.COMPLETE,this.loadBakComplete);
                  this.bakLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.__bakSecurityErrorOrIoHandler);
                  this.bakLoader.addEventListener(IOErrorEvent.IO_ERROR,this.__bakSecurityErrorOrIoHandler);
               }
               min = int(new Date().time / 60000);
               signStr = Util.getSecretStr(Param.RoomId + "&" + min,"2");
               StreamSignDataPtr = CModule.malloc(4);
               data_len = xx.sub_13(int(Param.RoomId),min,Util.getGuid(),StreamSignDataPtr);
               resData = CModule.read32(StreamSignDataPtr);
               signStr = CModule.readString(resData,data_len);
               urlrequest = new URLRequest(GlobalData.backApi + "/" + Param.RoomId);
               urlrequest.method = URLRequestMethod.POST;
               values = new URLVariables();
               values.cdn = Param.browerCDN == ""?Util.recodeCDN():Param.browerCDN;
               values.sign = signStr;
               values.tt = min;
               values.rate = Param.currentStreamType;
               values.did = Util.getGuid();
               urlrequest.data = values;
               this.bakLoader.load(urlrequest);
               xx.sub_10(StreamSignDataPtr);
               CModule.free(StreamSignDataPtr);
               return;
            }
            catch(e:Error)
            {
               sendNotification(Order.Rate_Status_Response,null);
               sendNotification(Order.Show_Video_Request,null);
               EventCenter.dispatch("lineCDNEvent",null);
               $.jscall("console.log","firstload=" + Param.RtmpUrl + "     Param.LiveID=" + Param.LiveID);
               return;
            }
         }
      }
      
      private function loadBakComplete(param1:Event) : void
      {
         var e:Event = param1;
         var receiveObj:Object = JSON.parse(e.target.data);
         if(receiveObj.error != 0)
         {
            sendNotification(Order.Show_Recommend_Request);
            sendNotification(Order.Hide_Load_Request);
            sendNotification(Order.Hide_Play_Request);
            sendNotification(Order.Hide_Video_Request);
            return;
         }
         Param.RtmpUrl = receiveObj.data.rtmp_url;
         Param.LiveID = receiveObj.data.rtmp_live;
         Param.CDN = receiveObj.data.rtmp_cdn;
         Param.RoomId = receiveObj.data.room_id;
         var ads:int = receiveObj.data.inNA;
         if(!Param.IsIndex && ads == 1 && Param.Status)
         {
            GoogleAdManager.instance.initAdsLoader();
            GoogleAdManager.instance.requestAds(Param.RoomId,function():void
            {
               GlobalData.isHSAdOK = true;
               EventCenter.dispatch("HSADComplete",null);
            },"");
         }
         else
         {
            GlobalData.isHSAdOK = true;
         }
         sendNotification(Order.Rate_Status_Response,null);
         sendNotification(Order.Show_Video_Request,null);
         EventCenter.dispatch("lineCDNEvent",null);
      }
      
      private function __bakSecurityErrorOrIoHandler(param1:Event) : void
      {
         sendNotification(Order.Rate_Status_Response,null);
         sendNotification(Order.Show_Video_Request,null);
         EventCenter.dispatch("lineCDNEvent",null);
         $.jscall("console.log","firsterrorload=" + Param.RtmpUrl + "     Param.LiveID=" + Param.LiveID);
      }
      
      private function reloadWSNewStream() : void
      {
         var min:Number = NaN;
         var signStr:String = null;
         var StreamSignDataPtr:int = 0;
         var data_len:int = 0;
         var resData:int = 0;
         var urlrequest:URLRequest = null;
         var values:URLVariables = null;
         if(Param.isTicketNeed)
         {
            this.loadTicketStream();
         }
         else
         {
            try
            {
               if(this.reloadbakLoader == null)
               {
                  this.reloadbakLoader = new URLLoader();
                  this.reloadbakLoader.addEventListener(Event.COMPLETE,this.reloadBakComplete);
                  this.reloadbakLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.__reloadBakSecurityErrorOrIoHandler);
                  this.reloadbakLoader.addEventListener(IOErrorEvent.IO_ERROR,this.__reloadBakSecurityErrorOrIoHandler);
               }
               min = int(new Date().time / 60000);
               signStr = Util.getSecretStr(Param.RoomId + "&" + min,"2");
               StreamSignDataPtr = CModule.malloc(4);
               data_len = xx.sub_13(int(Param.RoomId),min,Util.getGuid(),StreamSignDataPtr);
               resData = CModule.read32(StreamSignDataPtr);
               signStr = CModule.readString(resData,data_len);
               urlrequest = new URLRequest(GlobalData.backApi + "/" + Param.RoomId);
               urlrequest.method = URLRequestMethod.POST;
               values = new URLVariables();
               values.cdn = Param.CDN;
               values.sign = signStr;
               values.tt = min;
               values.rate = Param.currentStreamType;
               values.did = Util.getGuid();
               urlrequest.data = values;
               this.reloadbakLoader.load(urlrequest);
               xx.sub_10(StreamSignDataPtr);
               CModule.free(StreamSignDataPtr);
               return;
            }
            catch(e:Error)
            {
               sendNotification(Order.Rate_Status_Response,null);
               sendNotification(Order.Video_Reload_Request,null);
               EventCenter.dispatch("lineCDNEvent",null);
               $.jscall("console.log","reload=" + Param.RtmpUrl + "     Param.LiveID=" + Param.LiveID);
               return;
            }
         }
      }
      
      private function reloadBakComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.target.data);
         if(_loc2_.error != 0)
         {
            sendNotification(Order.Show_Recommend_Request);
            sendNotification(Order.Hide_Load_Request);
            sendNotification(Order.Hide_Play_Request);
            sendNotification(Order.Hide_Video_Request);
            return;
         }
         Param.RtmpUrl = _loc2_.data.rtmp_url;
         Param.LiveID = _loc2_.data.rtmp_live;
         Param.CDN = _loc2_.data.rtmp_cdn;
         Param.RoomId = _loc2_.data.room_id;
         sendNotification(Order.Rate_Status_Response,null);
         sendNotification(Order.Video_Reload_Request,null);
         EventCenter.dispatch("lineCDNEvent",null);
      }
      
      private function __reloadBakSecurityErrorOrIoHandler(param1:Event) : void
      {
         sendNotification(Order.Rate_Status_Response,null);
         sendNotification(Order.Video_Reload_Request,null);
         EventCenter.dispatch("lineCDNEvent",null);
         $.jscall("console.log","reloaderror=" + Param.RtmpUrl + "     Param.LiveID=" + Param.LiveID);
      }
      
      private function loadTicketStream(param1:ObjectEvent = null) : void
      {
         var _loc10_:Boolean = false;
         if(param1 && param1.data)
         {
            _loc10_ = param1.data.reset;
            if(_loc10_)
            {
               Param.eticket = -1;
               Param.isTicketNeed = false;
               clearTimeout(this.ticketTimeout);
               clearTimeout(this.expireTimeout);
               this.jsTipShowed = false;
               return;
            }
         }
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:Number = int(new Date().time / 60000);
         var _loc4_:String = Util.getSecretStr(Param.RoomId + "&" + _loc3_,"2");
         var _loc5_:int = CModule.malloc(4);
         var _loc6_:int = xx.sub_13(int(Param.RoomId),_loc3_,Util.getGuid(),_loc5_);
         var _loc7_:int = CModule.read32(_loc5_);
         _loc4_ = CModule.readString(_loc7_,_loc6_);
         xx.sub_10(_loc5_);
         CModule.free(_loc5_);
         var _loc8_:URLVariables = new URLVariables();
         _loc8_.cdn = Param.CDN;
         _loc8_.sign = _loc4_;
         _loc8_.tt = _loc3_;
         _loc8_.rate = Param.currentTicketStreamType;
         _loc8_.did = Util.getGuid();
         var _loc9_:URLRequest = new URLRequest(GlobalData.TICKET_API + "/" + Param.RoomId);
         _loc9_.method = URLRequestMethod.POST;
         _loc9_.data = _loc8_;
         _loc2_.addEventListener(Event.COMPLETE,this.onLoadTicketStreamComplete);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onLoadTicketStreamError);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onLoadTicketStreamError);
         _loc2_.load(_loc9_);
      }
      
      private function onTicketTipLink(param1:TextEvent) : void
      {
         if(param1.text == "pay")
         {
            $.asTojs("room_data_buytickets",GlobalData.ticketData);
            $.jscall("console.log","buy ticket");
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_TICKET_TIP_CLICK);
         }
      }
      
      private function onTryEnd() : void
      {
         var _loc1_:PlayMediator = null;
         if(Param.isTicketNeed)
         {
            if(Param.eticket == 1 || Param.eticket == 2)
            {
               $.asTojs("room_data_endtrysee",GlobalData.ticketData);
               Param.currentTicketStreamType = 1;
               _loc1_ = MainCoreFacade.getInstance().retrieveMediator("PlayMediator") as PlayMediator;
               if(!_loc1_.playView.isPause)
               {
                  EventCenter.dispatch("TicketStreamNotify");
               }
            }
            else
            {
               EventCenter.dispatch("TicketNotifyEvent",{
                  "type":1,
                  "data":GlobalData.ticketData
               });
            }
         }
         else
         {
            EventCenter.dispatch("TipHide",{"type":1});
            EventCenter.dispatch("Reload");
         }
      }
      
      private function onLoadTicketStreamComplete(param1:Event) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:* = false;
         var _loc7_:* = false;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:Number = NaN;
         var _loc2_:Object = JSON.parse(param1.target.data);
         _loc2_.flash_is_yuanhua = !!Param.isYuanhua?1:0;
         var _loc3_:int = _loc2_.error;
         var _loc4_:String = _loc2_.msg;
         GlobalData.ticketData = _loc2_;
         if(_loc2_.data.payment_mode != undefined)
         {
            Param.eticket = _loc2_.data.payment_mode;
            Param.isTicketNeed == Param.eticket != -1;
            GlobalData.hasMultirate = _loc2_.data.rate_switch;
         }
         $.jscall("console.log","ticket code=" + _loc3_ + ",msg=" + _loc4_ + ",type=" + Param.eticket);
         if(!this.jsTipShowed && Param.eticket == 0)
         {
            this.jsTipShowed = true;
            $.asTojs("room_data_chargelive",_loc2_);
         }
         if(this.ticketTip == null)
         {
            this.ticketTip = new TextField();
            this.ticketTip.autoSize = TextFieldAutoSize.LEFT;
            this.ticketTip.defaultTextFormat = new TextFormat("微软雅黑",14,16777215);
            this.ticketTip.addEventListener(TextEvent.LINK,this.onTicketTipLink);
         }
         if(_loc3_ == 0)
         {
            clearTimeout(this.ticketTimeout);
            Param.RtmpUrl = _loc2_.data.rtmp_url;
            Param.LiveID = _loc2_.data.rtmp_live;
            Param.CDN = _loc2_.data.rtmp_cdn;
            Param.RoomId = _loc2_.data.room_id;
            Param.currentStreamType = Param.currentTicketStreamType;
            _loc5_ = _loc2_.data.expire_time;
            _loc6_ = _loc2_.data.is_forever == 1;
            _loc7_ = _loc2_.data.need_pay == 1;
            clearTimeout(this.expireTimeout);
            if(!_loc6_)
            {
               _loc8_ = _loc5_ + 0.5;
               this.expireTimeout = setTimeout(this.onTryEnd,_loc8_ * 1000);
               _loc9_ = _loc5_ / 60;
               _loc10_ = _loc9_ < 1?"&lt;1":_loc9_.toString();
               if(Param.eticket == 0)
               {
                  this.ticketTip.htmlText = "您可以免费试看" + _loc10_ + "分钟，购买门票继续观看。<a href=\'event:pay\'><font color=\'#FF7700\'>立即购买</font></a>";
                  EventCenter.dispatch("TipShow",{
                     "type":1,
                     "src":this.ticketTip
                  });
                  UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_TICKET_TIP_SHOW);
               }
               $.jscall("console.log","ticket try expire ",_loc5_);
            }
            else
            {
               if(_loc7_ && Param.currentTicketStreamType != 0)
               {
               }
               if(Param.currentTicketStreamType == 0 && this.buyticketsFlag)
               {
                  if(this.buyticketsFlag == 2)
                  {
                     this.ticketTip.htmlText = "门票购买成功，可继续观看" + Param.streamNames[0] + "画质";
                  }
                  else
                  {
                     this.ticketTip.htmlText = "门票购买成功，已为您切换到" + Param.streamNames[0] + "画质";
                  }
                  EventCenter.dispatch("TipShow",{
                     "type":1,
                     "src":this.ticketTip,
                     "timeout":10000
                  });
                  this.buyticketsFlag = 0;
               }
               $.jscall("console.log","ticket play stream",_loc7_,Param.currentTicketStreamType);
            }
            if(!this.jsTipShowed)
            {
               this.jsTipShowed = true;
               $.asTojs("room_data_chargelive",_loc2_);
            }
         }
         else if(_loc3_ == 110010)
         {
            _loc11_ = _loc2_.data.wait_time;
            clearTimeout(this.ticketTimeout);
            this.ticketTimeout = setTimeout(this.loadTicketStream,_loc11_ * 1000);
            $.jscall("console.log","ticket wait " + _loc11_);
         }
         else if(_loc3_ == 110011)
         {
            $.jscall("console.log","ticket ended");
         }
         else
         {
            if(_loc3_ == 110013)
            {
               if(Param.eticket == 1 || Param.eticket == 2)
               {
                  if(GlobalData.hasMultirate && Param.currentTicketStreamType != 1)
                  {
                     Param.currentTicketStreamType = 1;
                     EventCenter.dispatch("TicketStreamNotify");
                  }
                  else
                  {
                     EventCenter.dispatch("TicketNotifyEvent",{
                        "type":3,
                        "data":_loc2_
                     });
                  }
               }
               else
               {
                  EventCenter.dispatch("TicketNotifyEvent",{
                     "type":2,
                     "data":_loc2_
                  });
               }
               return;
            }
            if(_loc3_ == 110015)
            {
               if(Param.eticket == 1 || Param.eticket == 2)
               {
                  if(GlobalData.hasMultirate && Param.currentTicketStreamType != 1)
                  {
                     $.asTojs("room_data_endtrysee",_loc2_);
                     this.jsTipShowed = true;
                     Param.currentTicketStreamType = 1;
                     EventCenter.dispatch("TicketStreamNotify");
                  }
                  else
                  {
                     EventCenter.dispatch("TicketNotifyEvent",{
                        "type":3,
                        "data":_loc2_
                     });
                  }
               }
               else
               {
                  EventCenter.dispatch("TicketNotifyEvent",{
                     "type":1,
                     "data":_loc2_
                  });
               }
               return;
            }
            if(_loc3_ == 110018)
            {
               EventCenter.dispatch("TicketNotifyEvent",{
                  "type":3,
                  "data":_loc2_
               });
               return;
            }
            sendNotification(Order.Video_Pause_Request);
            return;
         }
         sendNotification(Order.Rate_Status_Response,null);
         if(this.isVideoShowed)
         {
            sendNotification(Order.Video_Reload_Request,null);
         }
         else
         {
            sendNotification(Order.Show_Video_Request,null);
         }
         EventCenter.dispatch("lineCDNEvent",null);
      }
      
      private function onLoadTicketStreamError(param1:Event) : void
      {
         sendNotification(Order.Video_Pause_Request);
         $.jscall("console.log","ticket api error!");
      }
      
      private function buyticketsSuccess(param1:ObjectEvent) : void
      {
         this.buyticketsFlag = Param.currentTicketStreamType == 0?2:1;
         Param.currentTicketStreamType = 0;
         EventCenter.dispatch("TicketStreamNotify");
         EventCenter.dispatch("TicketNotifyEvent",{"type":0});
      }
   }
}
