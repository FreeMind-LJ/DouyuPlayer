package cc.dy.view.video
{
   import flash.display.Sprite;
   import flash.utils.Timer;
   import flash.utils.clearInterval;
   import util.$;
   import flash.utils.setInterval;
   import flash.events.FullScreenEvent;
   import flash.net.NetConnection;
   import flash.media.Video;
   import flash.media.StageVideo;
   import p2pstream.XNetStreamLiveFactory;
   import flash.events.NetStatusEvent;
   import flash.events.SecurityErrorEvent;
   import com.ws.video.PFVNetStream;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import flash.events.TimerEvent;
   import flash.media.SoundTransform;
   import com.ws.event.PFVEvent;
   import common.event.EventCenter;
   import flash.events.AsyncErrorEvent;
   import flash.net.NetStream;
   import util.Log;
   import flash.events.Event;
   import flash.events.StageVideoEvent;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.events.VideoEvent;
   import flash.geom.Rectangle;
   
   public class VideoView extends Sprite
   {
       
      
      private var _byteTimer:Timer;
      
      protected var startPlayCallBack:Function;
      
      private var maskSp:Sprite;
      
      private var maskAdsContainer:Sprite;
      
      private var maskAdsSp:Sprite;
      
      private var clearIndex:uint;
      
      protected var isFristPlay:Boolean = true;
      
      private var _byteTmp:Number = 0;
      
      private var _byteCount:Number = 0;
      
      private var my_nc:NetConnection;
      
      private var my_ns;
      
      private var my_video:Video;
      
      private var my_stageVideo:StageVideo;
      
      private var _byteAnotherTimer:Timer;
      
      private var emptyCount:int = 0;
      
      private var fullCount:int = 0;
      
      protected var factory:XNetStreamLiveFactory;
      
      private var hasNetStream:Boolean = false;
      
      private var _isServerAvailable:Boolean = true;
      
      private var _mainstreamUrl:String;
      
      private var _backupstreamUrl:String;
      
      private var _videoID:String = "tara";
      
      private var domain:String = "acfun.tv";
      
      private var token:String = "8d99c23f899a46412321779ab05664dd1353139204";
      
      private var _initMetata:Boolean;
      
      private var isP2pData:int = 0;
      
      private var renderStatus:String = "";
      
      private var hardwareDecodeMenuItem:ContextMenuItem;
      
      private var hardwareRenderMenuItem:ContextMenuItem;
      
      private var blurmask:leaveMask;
      
      private var surfaceRect:Rectangle;
      
      private var playTimeIndex:uint;
      
      private var failTimeIndex:uint;
      
      private var errStr:String = "";
      
      public function VideoView()
      {
         this._mainstreamUrl = "http://hdl3a.douyutv.com/index.php?stream=" + Param.RtmpUrl;
         this._backupstreamUrl = "http://hdl1a.douyutv.com/index.php?stream=" + Param.RtmpUrl;
         this.surfaceRect = new Rectangle();
         super();
         this.addMask();
         this.doubleClickEnabled = true;
         this.mouseEnabled = true;
         this.mouseChildren = true;
         GlobalData.root.stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.__fullScreen);
      }
      
      private function addMask() : void
      {
         this.maskAdsContainer = new Sprite();
         this.maskAdsSp = new Sprite();
         this.maskSp = new Sprite();
         this.maskSp.doubleClickEnabled = true;
         this.maskSp.graphics.beginFill(16711680,0);
         this.maskSp.graphics.drawRect(0,0,100,100);
         this.maskSp.graphics.endFill();
         addChild(this.maskAdsContainer);
         this.maskAdsContainer.addChild(this.maskAdsSp);
         addChild(this.maskSp);
      }
      
      public function addMaskAds() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(Param.maskObj == null)
         {
            return;
         }
         if(this.my_video != null && this.my_video.videoWidth != 0)
         {
            _loc4_ = this.my_video.height;
            _loc3_ = this.my_video.width;
            _loc1_ = this.my_video.x;
            _loc2_ = this.my_video.y;
         }
         else if(this.my_stageVideo != null && this.my_stageVideo.videoWidth != 0)
         {
            _loc4_ = this.surfaceRect.height;
            _loc3_ = this.surfaceRect.width;
            _loc1_ = this.surfaceRect.x;
            _loc2_ = this.surfaceRect.y;
         }
         this.maskAdsSp.graphics.clear();
         this.maskAdsSp.graphics.beginFill(16777215,1);
         this.maskAdsSp.graphics.drawRect(_loc3_ * Param.maskObj.x_scale,_loc4_ * Param.maskObj.y_scale,_loc3_ * Param.maskObj.w_scale,_loc4_ * Param.maskObj.h_scale);
         this.maskAdsSp.graphics.endFill();
         this.maskAdsContainer.x = _loc1_;
         this.maskAdsContainer.y = _loc2_;
         var _loc5_:int = Param.maskObj.endtime;
         clearInterval(this.clearIndex);
         $.jscall("console.log"," et=" + _loc5_ + "  local=" + new Date().time);
         if(new Date().time < _loc5_ * 1000)
         {
            this.clearIndex = setInterval(this.clearFun,1000 * 60);
         }
         else
         {
            this.removeMaskAds();
         }
      }
      
      private function clearFun() : void
      {
         if(Param.maskObj == null)
         {
            return;
         }
         var _loc1_:int = Param.maskObj.endtime;
         if(new Date().time >= _loc1_ * 1000)
         {
            this.removeMaskAds();
         }
      }
      
      private function removeMaskAds() : void
      {
         Param.maskObj = null;
         this.maskAdsSp.graphics.clear();
      }
      
      private function __fullScreen(param1:FullScreenEvent) : void
      {
         if(param1.fullScreen)
         {
            if(!Param.isYanzhi)
            {
               this.swithRender();
            }
            this.anotherResize();
         }
      }
      
      public function reload() : void
      {
         this.isFristPlay = true;
      }
      
      public function anotherLoadeVideo(param1:Function) : void
      {
         this.startPlayCallBack = param1;
         this.anotherInit();
      }
      
      private function anotherInit() : void
      {
         if(Param.CDN == "ws" || Param.CDN == "ws2")
         {
            this._videoID = Param.RtmpUrl.indexOf("http") != -1?Param.LiveID.substring(0,Param.LiveID.indexOf(".flv")):Param.LiveID.substring(0,Param.LiveID.indexOf("?"));
            $.jscall("console.log","____________videoID=" + this._videoID);
         }
         if(Param.p2pType == 4 && (Param.isLoginUser == 0 || Param.isPhone == 0))
         {
            $.jscall("console.log","进入云成p2p模式");
            if(this.factory != null)
            {
               this.factory = null;
            }
            this.factory = new XNetStreamLiveFactory(this.onInit,null);
            this.factory.load(10000,true);
         }
         else if(this.my_nc == null)
         {
            this.my_nc = new NetConnection();
            this.my_nc.addEventListener(NetStatusEvent.NET_STATUS,this.__netConnectStatusHandler);
            this.my_nc.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
            if(Param.IS_HOSTLIVE == 1 || Param.CDN != "ws" && Param.CDN != "ws2" || Param.P2P == 0 || !this._isServerAvailable)
            {
               if(Param.RtmpUrl.indexOf("http") != -1)
               {
                  this.my_nc.connect(null);
               }
               else
               {
                  this.my_nc.connect(Param.RtmpUrl);
               }
               GlobalData.P2PStatus = false;
               if(Param.CDN == "lx")
               {
                  GlobalData.CDNType = 1;
               }
               else if(Param.CDN == "ws" || Param.CDN == "ws2")
               {
                  GlobalData.CDNType = 2;
               }
               else if(Param.CDN == "dl")
               {
                  GlobalData.CDNType = 3;
               }
               else if(Param.CDN == "tct")
               {
                  GlobalData.CDNType = 5;
               }
            }
            else
            {
               if(Param.p2pType == 1 || Param.p2pType == 5)
               {
                  this.domain = "acfun.tv";
               }
               else if(Param.p2pType == 2)
               {
                  this.domain = "test.acfun.tv";
               }
               else if(Param.p2pType == 3)
               {
                  this.domain = "test2.acfun.tv";
               }
               GlobalData.P2PStatus = true;
               PFVNetStream.Load(this.startPFVPlay,this.domain,"",this._videoID,true);
               if(Param.CDN == "ws" || Param.CDN == "ws2")
               {
                  GlobalData.CDNType = 4;
               }
            }
            this.my_nc.client = this;
         }
         else
         {
            this.my_nc.close();
            if(this.my_ns != null)
            {
               this.my_ns.removeEventListener(NetStatusEvent.NET_STATUS,this.__netStreamStatusHandler);
               this.my_ns.close();
            }
            if(Param.IS_HOSTLIVE == 1 || Param.CDN != "ws" && Param.CDN != "ws2" || Param.P2P == 0 || !this._isServerAvailable)
            {
               if(Param.RtmpUrl.indexOf("http") != -1)
               {
                  this.my_nc.connect(null);
               }
               else
               {
                  this.my_nc.connect(Param.RtmpUrl);
               }
               GlobalData.P2PStatus = false;
               if(Param.CDN == "lx")
               {
                  GlobalData.CDNType = 1;
               }
               else if(Param.CDN == "ws" || Param.CDN == "ws2")
               {
                  GlobalData.CDNType = 2;
               }
               else if(Param.CDN == "dl")
               {
                  GlobalData.CDNType = 3;
               }
               else if(Param.CDN == "tct")
               {
                  GlobalData.CDNType = 5;
               }
            }
            else
            {
               GlobalData.P2PStatus = true;
               if(Param.p2pType == 1 || Param.p2pType == 5)
               {
                  this.domain = "acfun.tv";
               }
               else if(Param.p2pType == 2)
               {
                  this.domain = "test.acfun.tv";
               }
               else if(Param.p2pType == 3)
               {
                  this.domain = "test2.acfun.tv";
               }
               PFVNetStream.Load(this.startPFVPlay,this.domain,"",this._videoID,true);
               if(Param.CDN == "ws" || Param.CDN == "ws2")
               {
                  GlobalData.CDNType = 4;
               }
            }
         }
         clearTimeout(this.failTimeIndex);
         this.failTimeIndex = setTimeout(this.failStreamHander,30 * 1000);
         if(this._byteAnotherTimer == null)
         {
            this._byteAnotherTimer = new Timer(60 * 1000);
            this._byteAnotherTimer.addEventListener(TimerEvent.TIMER,this.getAnotherByteTimer);
            this._byteAnotherTimer.start();
         }
         else
         {
            this._byteAnotherTimer.reset();
            this._byteAnotherTimer.start();
         }
      }
      
      private function onInit() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:SoundTransform = null;
         var _loc4_:String = null;
         $.jscall("console.log"," isSuccess=" + this.factory.isSuccess);
         if(this.factory.isSuccess)
         {
            if(this.my_ns != null)
            {
               this.my_ns.close();
               this.my_ns.removeEventListener(NetStatusEvent.NET_STATUS,this.__netStreamStatusHandler);
               this.my_ns = null;
            }
            _loc1_ = 90;
            _loc2_ = Param.isLoginUser == 0 || Param.isPhone == 0?false:true;
            this.my_ns = this.factory.newNetStreamLive(null,null,Param.playDelayTime,Param.RoomId,_loc2_);
            _loc3_ = this.my_ns.soundTransform;
            _loc3_.volume = 0;
            this.my_ns.soundTransform = _loc3_;
            this.my_ns.client = new Object();
            this.my_ns.client.onMetaData = this.onReadMetaData;
            this.my_ns.addEventListener(NetStatusEvent.NET_STATUS,this.__netStreamStatusHandler);
            _loc4_ = "http://p2pcoop.coop.cloudacc-inc.com/p2pcoop/live.php?partnerId=douyu&rtmp=" + Param.RtmpUrl + "/" + Param.LiveID;
            $.jscall("console.log"," yunchengscrURL=" + _loc4_);
            this.swithRender();
            this.anotherResize();
            this.my_ns.play(_loc4_);
         }
         else
         {
            Param.p2pType = 0;
            this.anotherInit();
            $.jscall("console.log","进入云成常规模式1");
         }
      }
      
      private function handleURL() : String
      {
         var _loc1_:String = "";
         if(Param.p2pType == 1 || Param.p2pType == 2 || Param.p2pType == 5)
         {
            if(Param.RtmpUrl.indexOf("hdl3a") != -1)
            {
               _loc1_ = "send3a.douyu.com/live/";
            }
            else if(Param.RtmpUrl.indexOf("hdl1a") != -1)
            {
               _loc1_ = "send1a.douyu.com/live/";
            }
            else if(Param.RtmpUrl.indexOf("hdl3") != -1)
            {
               _loc1_ = "send3.douyu.com/live/";
            }
            else if(Param.RtmpUrl.indexOf("hdla") != -1)
            {
               _loc1_ = "send1.douyu.com/live/";
            }
         }
         else if(Param.p2pType == 3)
         {
            if(Param.RtmpUrl.indexOf("hdl3a") != -1)
            {
               _loc1_ = "send3a.douyu.com/";
            }
            else if(Param.RtmpUrl.indexOf("hdl1a") != -1)
            {
               _loc1_ = "send1a.douyu.com/";
            }
            else if(Param.RtmpUrl.indexOf("hdl3") != -1)
            {
               _loc1_ = "send3.douyu.com/";
            }
            else if(Param.RtmpUrl.indexOf("hdla") != -1)
            {
               _loc1_ = "send1.douyu.com/";
            }
         }
         return _loc1_;
      }
      
      private function startPFVPlay() : void
      {
         var _loc1_:SoundTransform = null;
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         $.jscall("console.log","p2p^^^^^^^^^^^^^^PFVNetStream.ServiceAvailable=" + PFVNetStream.ServiceAvailable);
         if(PFVNetStream.ServiceAvailable)
         {
            if(Param.p2pType == 3)
            {
               this._mainstreamUrl = "http://p2ptest3-hdl.douyucdn.cn/live/" + this.handleURL() + this._videoID + ".ts";
               this._backupstreamUrl = "http://p2ptest4-hdl.douyucdn.cn/live/" + this.handleURL() + this._videoID + ".ts";
            }
            else if(Param.p2pType == 2)
            {
               this._mainstreamUrl = GlobalData.prefix + "p2ptest1-hdl.douyucdn.cn/index2.php?stream=" + this.handleURL() + this._videoID;
               this._backupstreamUrl = GlobalData.prefix + "p2ptest2-hdl.douyucdn.cn/index2.php?stream=" + this.handleURL() + this._videoID;
            }
            else if(Param.p2pType == 1)
            {
               this._mainstreamUrl = GlobalData.prefix + "hdl5.douyucdn.cn/index2.php?stream=" + this.handleURL() + this._videoID;
               this._backupstreamUrl = GlobalData.prefix + "hdl6.douyucdn.cn/index2.php?stream=" + this.handleURL() + this._videoID;
            }
            else if(Param.p2pType == 5)
            {
               this._mainstreamUrl = GlobalData.prefix + "hdl5.douyucdn.cn/index2_douyu.php?stream=" + this.handleURL() + this._videoID;
               this._backupstreamUrl = GlobalData.prefix + "hdl6.douyucdn.cn/index2_douyu.php?stream=" + this.handleURL() + this._videoID;
            }
            this.my_nc.connect(null);
            this._isServerAvailable = true;
            if(this.my_ns != null)
            {
               this.my_ns.close();
               this.my_ns.removeEventListener(NetStatusEvent.NET_STATUS,this.__netStreamStatusHandler);
               this.my_ns = null;
            }
            this.my_ns = new PFVNetStream(this.my_nc);
            if(Param.p2pType == 5)
            {
               this.my_ns.registered = Param.isLoginUser == 0?false:true;
               $.jscall("console.log","p2pregister  =" + Param.isLoginUser);
            }
            this.my_ns.bufferTime = 3;
            this.my_ns.addEventListener(NetStatusEvent.NET_STATUS,this.__netStreamStatusHandler);
            this.my_ns.addEventListener(PFVEvent.SVC_STATUS,this.onPFVHandler);
            _loc1_ = this.my_ns.soundTransform;
            _loc1_.volume = 0;
            this.my_ns.soundTransform = _loc1_;
            _loc2_ = new Object();
            _loc2_.onMetaData = this.onReadMetaData;
            this.my_ns.client = _loc2_;
            this.swithRender();
            this.anotherResize();
            _loc3_ = new Array();
            _loc3_.push(this._mainstreamUrl);
            _loc3_.push(this._backupstreamUrl);
            this.my_ns.play(this._videoID,_loc3_);
         }
         else
         {
            this._isServerAvailable = false;
            this.anotherInit();
         }
      }
      
      private function onPFVHandler(param1:PFVEvent) : void
      {
         var _loc2_:Number = NaN;
         switch(param1.info.code)
         {
            case "PFVNetStream.Internal.Error":
               _loc2_ = param1.info.playTime;
               this._isServerAvailable = false;
               EventCenter.dispatch("P2pErrorChangeEvent");
         }
      }
      
      public function onBWDone() : void
      {
      }
      
      private function __netConnectStatusHandler(param1:NetStatusEvent) : void
      {
         var _loc2_:SoundTransform = null;
         var _loc3_:Object = null;
         this.errStr = param1.info.code;
         $.jscall("console.log","NetConnection连接状态:" + param1.info.code + " Param.RtmpUrl =" + Param.RtmpUrl + "   Param.LiveID=" + Param.LiveID);
         switch(param1.info.code)
         {
            case "NetConnection.Connect.Success":
               if(Param.IS_HOSTLIVE == 1 || Param.CDN != "ws" && Param.CDN != "ws2" || Param.P2P == 0 || !this._isServerAvailable)
               {
                  if(this.my_ns != null)
                  {
                     this.my_ns.close();
                     this.my_ns.removeEventListener(NetStatusEvent.NET_STATUS,this.__netStreamStatusHandler);
                     this.my_ns.removeEventListener(AsyncErrorEvent.ASYNC_ERROR,this.ayncErrorHandler);
                     this.my_ns = null;
                  }
                  this.my_ns = new NetStream(this.my_nc);
                  _loc2_ = this.my_ns.soundTransform;
                  _loc2_.volume = 0;
                  this.my_ns.soundTransform = _loc2_;
                  this.my_ns.addEventListener(NetStatusEvent.NET_STATUS,this.__netStreamStatusHandler);
                  this.my_ns.addEventListener(AsyncErrorEvent.ASYNC_ERROR,this.ayncErrorHandler);
                  _loc3_ = new Object();
                  _loc3_.onMetaData = this.onReadMetaData;
                  this.my_ns.client = _loc3_;
                  this.swithRender();
                  this.anotherResize();
                  if(Param.RtmpUrl.indexOf("http") != -1)
                  {
                     this.my_ns.play(Param.RtmpUrl + "/" + Param.LiveID);
                  }
                  else
                  {
                     this.my_ns.play(Param.LiveID);
                  }
               }
               break;
            case "NetStream.Play.StreamNotFound":
         }
      }
      
      private function onReadMetaData(param1:Object) : void
      {
         var metaData:Object = null;
         var metaDataArray:Array = null;
         var key:String = null;
         var videoWidth:int = 0;
         var videoHeight:int = 0;
         var info:Object = param1;
         metaData = null;
         metaData = info;
         metaDataArray = [];
         for(key in metaData)
         {
            if(metaData[key].toString().length > 0)
            {
               metaDataArray.push("  " + key + "=" + metaData[key]);
            }
         }
         metaDataArray.sort();
         setTimeout(function():void
         {
            Log.clear();
            var _loc1_:String = "MetaData：\n";
            _loc1_ = _loc1_ + metaDataArray.join("\n");
            Log.info("播放器版本：",GlobalData.PLAYER_VERSION);
            Log.info("视频分辨率：",metaData["width"],"x",metaData["height"]);
            Log.info(_loc1_);
         },2000);
         if(Param.isVertical)
         {
            if(metaData["height"] > metaData["width"])
            {
               videoWidth = metaData["width"];
               videoHeight = metaData["height"];
               Param.videoRate = videoWidth / videoHeight;
               Param.isYanzhi = true;
               if(!this._initMetata)
               {
                  this._initMetata = true;
                  EventCenter.dispatch("showVideoBg");
               }
            }
            else
            {
               Param.isYanzhi = false;
               EventCenter.dispatch("ShowGPUMenu");
            }
         }
      }
      
      private function __netStreamStatusHandler(param1:NetStatusEvent) : void
      {
         $.jscall("console.log","NetStreamstatus:" + param1.info.code);
         this.errStr = param1.info.code;
         if(param1.info.code != "NetStream.Publish.BadName")
         {
            if(param1.info.code == "NetStream.Play.Start")
            {
               if(Param.IS_HOSTLIVE == 1 || Param.CDN != "ws" && Param.CDN != "ws2" || Param.P2P == 0 || !this._isServerAvailable)
               {
                  if(Param.RtmpUrl.indexOf("http") == -1)
                  {
                     if(this.isFristPlay)
                     {
                        GlobalData.isPlayOK = true;
                        clearTimeout(this.failTimeIndex);
                        this.getP2Pstatus();
                        this.hasNetStream = true;
                        clearTimeout(this.playTimeIndex);
                        this.playTimeIndex = setTimeout(this.sendPlayStatus,10000);
                        if(GlobalData.isHSAdOK)
                        {
                           this.startPlayCallBack();
                        }
                     }
                     this.isFristPlay = false;
                  }
               }
            }
            else if(param1.info.code != "NetStream.Play.UnpublishNotify")
            {
               if(param1.info.code == "NetStream.Buffer.Empty")
               {
                  this.emptyCount++;
               }
               else if(param1.info.code == "NetStream.Buffer.Full")
               {
                  this.fullCount++;
                  if(this.isFristPlay)
                  {
                     GlobalData.isPlayOK = true;
                     clearTimeout(this.failTimeIndex);
                     this.getP2Pstatus();
                     this.hasNetStream = true;
                     clearTimeout(this.playTimeIndex);
                     this.playTimeIndex = setTimeout(this.sendPlayStatus,10000);
                     if(GlobalData.isHSAdOK)
                     {
                        this.startPlayCallBack();
                     }
                  }
                  this.isFristPlay = false;
               }
               else if(param1.info.code == "NetStream.Play.StreamNotFound")
               {
                  if(Param.p2pType == 4)
                  {
                     Param.p2pType = 0;
                     this.anotherInit();
                     $.jscall("console.log","进入云成常规模式2");
                  }
               }
            }
         }
      }
      
      public function ayncErrorHandler(param1:AsyncErrorEvent) : void
      {
      }
      
      public function securityErrorHandler(param1:Event) : void
      {
      }
      
      public function anotherPause() : void
      {
         if(this.my_ns != null)
         {
            this.my_ns.close();
         }
         this._byteTmp = 0;
         this.emptyCount = 0;
         this.fullCount = 0;
         this.hasNetStream = false;
      }
      
      public function anotherResetPlayer() : void
      {
         if(this.my_ns != null)
         {
            if(Param.RtmpUrl.indexOf("http") != -1)
            {
               this.my_ns.play(Param.RtmpUrl + "/" + Param.LiveID);
            }
            else
            {
               this.my_ns.play(Param.LiveID);
            }
         }
      }
      
      public function anotherReload() : void
      {
         this.anotherInit();
      }
      
      public function anotherReset() : void
      {
         if(this.my_ns != null)
         {
            this.my_ns.close();
         }
         this._byteTmp = 0;
         this.emptyCount = 0;
         this.fullCount = 0;
      }
      
      public function anotherVolumeChange(param1:Number) : void
      {
         var _loc2_:SoundTransform = null;
         if(this.my_ns)
         {
            _loc2_ = this.my_ns.soundTransform;
            _loc2_.volume = param1;
            this.my_ns.soundTransform = _loc2_;
         }
      }
      
      public function anotherResize(param1:Event = null) : void
      {
         if(stage == null)
         {
            return;
         }
         this.maskSp.width = stage.stageWidth;
         this.maskSp.height = stage.stageHeight;
         if(this.my_video != null && this.my_video.videoWidth != 0)
         {
            if(stage.stageWidth / (stage.stageHeight - GlobalData.distanHeight) > this.my_video.videoWidth / this.my_video.videoHeight)
            {
               this.my_video.height = stage.stageHeight - GlobalData.distanHeight;
               this.my_video.width = this.my_video.height * this.my_video.videoWidth / this.my_video.videoHeight;
               this.my_video.x = (stage.stageWidth - this.my_video.width) / 2;
               this.my_video.y = 0;
            }
            else
            {
               this.my_video.width = stage.stageWidth;
               this.my_video.height = this.my_video.width * this.my_video.videoHeight / this.my_video.videoWidth;
               this.my_video.x = 0;
               this.my_video.y = (stage.stageHeight - GlobalData.distanHeight - this.my_video.height) / 2;
            }
         }
         if(this.my_stageVideo != null && this.my_stageVideo.videoWidth != 0)
         {
            if(stage.stageWidth / (stage.stageHeight - GlobalData.distanHeight) > this.my_stageVideo.videoWidth / this.my_stageVideo.videoHeight)
            {
               this.surfaceRect.height = stage.stageHeight - GlobalData.distanHeight;
               this.surfaceRect.width = this.surfaceRect.height * this.my_stageVideo.videoWidth / this.my_stageVideo.videoHeight;
               this.surfaceRect.x = (stage.stageWidth - this.surfaceRect.width) / 2;
               this.surfaceRect.y = 0;
            }
            else
            {
               this.surfaceRect.width = stage.stageWidth;
               this.surfaceRect.height = this.surfaceRect.width * this.my_stageVideo.videoHeight / this.my_stageVideo.videoWidth;
               this.surfaceRect.x = 0;
               this.surfaceRect.y = (stage.stageHeight - GlobalData.distanHeight - this.surfaceRect.height) / 2;
            }
            this.my_stageVideo.viewPort = this.surfaceRect;
         }
         if(this.blurmask)
         {
            this.blurmask.width = GlobalData.root.stage.stageWidth;
            this.blurmask.height = GlobalData.root.stage.stageHeight;
         }
         this.addMaskAds();
      }
      
      private function __stageVideoChanged(param1:StageVideoEvent) : void
      {
         $.jscall("console.log","stageVideo status=" + param1.status);
         this.renderStatus = param1.status;
         if(param1.status == "unavailable")
         {
            this.swithRender();
         }
      }
      
      private function __frame(param1:Event) : void
      {
      }
      
      private function getAnotherByteTimer(param1:Event) : void
      {
         var event:Event = param1;
         try
         {
            if(this.my_ns)
            {
               if(Param.RtmpUrl.indexOf("http") != -1)
               {
                  if(Param.IS_HOSTLIVE == 1 || Param.P2P == 0 || !this._isServerAvailable)
                  {
                     this._byteCount = this.my_ns.bytesLoaded - this._byteTmp;
                     this._byteTmp = this.my_ns.bytesLoaded;
                  }
                  else
                  {
                     this._byteCount = this.my_ns.bytesLoaded - this._byteTmp;
                     this._byteTmp = this.my_ns.bytesLoaded;
                  }
               }
               else if(Param.IS_HOSTLIVE == 1 || Param.CDN != "ws" && Param.CDN != "ws2" || Param.P2P == 0 || !this._isServerAvailable)
               {
                  this._byteCount = this.my_ns.info.byteCount - this._byteTmp;
                  this._byteTmp = this.my_ns.info.byteCount;
               }
               else
               {
                  this._byteCount = this.my_ns.bytesLoaded - this._byteTmp;
                  this._byteTmp = this.my_ns.bytesLoaded;
               }
            }
            if(this._byteCount > 60 * 1024 * 1024)
            {
               this._byteCount = 60 * 1024 * 1024;
            }
            if(this._byteCount < 0)
            {
               this._byteCount = 0;
            }
            GlobalData.byteCount = this._byteCount;
            if(this.hasNetStream)
            {
               if(this.emptyCount >= 1)
               {
                  EventCenter.dispatch("emptyFullCountStatus",{
                     "playstate":0,
                     "enum":this.emptyCount,
                     "fnum":this.fullCount,
                     "rtmlUrl":Param.RtmpUrl + "/" + Param.LiveID,
                     "isP2p":this.isP2pData
                  });
               }
               EventCenter.dispatch("emptyFullCountStatus",{
                  "playstate":2,
                  "enum":this.emptyCount,
                  "fnum":this.fullCount,
                  "rtmlUrl":Param.RtmpUrl + "/" + Param.LiveID,
                  "isP2p":this.isP2pData
               });
            }
            this.emptyCount = 0;
            this.fullCount = 0;
            return;
         }
         catch(e:Error)
         {
            Log.error("getByteTimer",e.message);
            return;
         }
      }
      
      public function anotherShowRightMenu(param1:ContextMenu) : void
      {
         if(this.hardwareDecodeMenuItem == null)
         {
            this.hardwareDecodeMenuItem = new ContextMenuItem("硬件解码：" + (this.my_stageVideo != null?"开启":"关闭"),false,false,false);
            param1.customItems.push(this.hardwareDecodeMenuItem);
         }
         else
         {
            this.hardwareDecodeMenuItem.caption = "硬件解码：" + (this.my_stageVideo != null?"开启":"关闭");
         }
         if(this.hardwareRenderMenuItem == null)
         {
            this.hardwareRenderMenuItem = new ContextMenuItem("硬件渲染：" + (this.my_stageVideo != null && this.renderStatus != ""?"开启":"关闭"),false,false,false);
            param1.customItems.push(this.hardwareRenderMenuItem);
         }
         else
         {
            this.hardwareRenderMenuItem.caption = "硬件渲染：" + (this.my_stageVideo != null && this.renderStatus != ""?"开启":"关闭");
         }
      }
      
      public function swithRender() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:StageVideo = null;
         if(stage == null)
         {
            return;
         }
         if(this.my_stageVideo != null)
         {
            this.my_stageVideo.removeEventListener(StageVideoEvent.RENDER_STATE,this.__stageVideoChanged);
            this.my_stageVideo.removeEventListener(VideoEvent.RENDER_STATE,this.__videoState);
         }
         if(!Param.isYanzhi && stage.stageVideos.length != 0 && GlobalData.GPUStatus)
         {
            _loc1_ = 0;
            while(_loc1_ < stage.stageVideos.length)
            {
               _loc4_ = stage.stageVideos[_loc1_];
               if(_loc4_ != this.my_stageVideo)
               {
                  this.my_stageVideo = _loc4_;
                  break;
               }
               _loc1_++;
            }
            _loc2_ = 0;
            _loc3_ = 0;
            while(_loc3_ < stage.stageVideos.length)
            {
               if(_loc2_ < stage.stageVideos[_loc3_].depth)
               {
                  _loc2_ = stage.stageVideos[_loc3_].depth;
               }
               _loc3_++;
            }
            this.my_stageVideo.depth = _loc2_ + 1;
            this.my_stageVideo.addEventListener(StageVideoEvent.RENDER_STATE,this.__stageVideoChanged);
            this.my_stageVideo.addEventListener(VideoEvent.RENDER_STATE,this.__videoState);
            if(this.my_video != null && this.my_video.parent != null)
            {
               this.my_video.parent.removeChild(this.my_video);
            }
            if(Param.IS_HOSTLIVE == 1 || Param.CDN != "ws" && Param.CDN != "ws2" || Param.P2P == 0 || !this._isServerAvailable)
            {
               this.my_stageVideo.attachNetStream(this.my_ns);
            }
            else if(Param.p2pType == 4 && (Param.isLoginUser == 0 || Param.isPhone == 0))
            {
               this.my_stageVideo.attachNetStream(this.my_ns);
            }
            else
            {
               this.my_ns.attachStageVideo(this.my_stageVideo);
            }
         }
         else
         {
            if(this.my_video == null)
            {
               this.my_video = new Video();
               this.my_video.smoothing = true;
            }
            else
            {
               this.my_video.clear();
            }
            if(this.my_video.parent == null)
            {
               addChildAt(this.my_video,0);
            }
            if(Param.IS_HOSTLIVE == 1 || Param.CDN != "ws" && Param.CDN != "ws2" || Param.P2P == 0 || !this._isServerAvailable)
            {
               this.my_video.attachNetStream(this.my_ns);
            }
            else if(Param.p2pType == 4 && (Param.isLoginUser == 0 || Param.isPhone == 0))
            {
               this.my_video.attachNetStream(this.my_ns);
            }
            else
            {
               this.my_ns.attachVideo(this.my_video);
            }
            this.my_video.addEventListener(VideoEvent.RENDER_STATE,this.__videoState);
         }
      }
      
      public function addFilter() : void
      {
         var _loc1_:int = 0;
         if(!this.blurmask)
         {
            this.blurmask = new leaveMask();
            _loc1_ = GlobalData.VIDEOLAYER.numChildren;
            GlobalData.VIDEOLAYER.addChildAt(this.blurmask,_loc1_);
            this.blurmask.width = stage.stageWidth;
            this.blurmask.height = stage.stageHeight;
         }
         this.blurmask.tips.gotoAndPlay(1);
         this.blurmask.visible = true;
      }
      
      public function RemoveFilter() : void
      {
         if(this.blurmask)
         {
            this.blurmask.visible = false;
         }
      }
      
      private function __videoState(param1:Event) : void
      {
         this.anotherResize();
      }
      
      public function changRenderModel(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:StageVideo = null;
         if(stage == null)
         {
            return;
         }
         if(param1 == 0)
         {
            if(stage.stageVideos.length != 0)
            {
               if(this.my_stageVideo != null)
               {
                  this.my_stageVideo.removeEventListener(StageVideoEvent.RENDER_STATE,this.__stageVideoChanged);
                  this.my_stageVideo.removeEventListener(VideoEvent.RENDER_STATE,this.__videoState);
               }
               _loc2_ = 0;
               while(_loc2_ < stage.stageVideos.length)
               {
                  _loc5_ = stage.stageVideos[_loc2_];
                  if(_loc5_ != this.my_stageVideo)
                  {
                     this.my_stageVideo = _loc5_;
                     break;
                  }
                  _loc2_++;
               }
               _loc3_ = 0;
               _loc4_ = 0;
               while(_loc4_ < stage.stageVideos.length)
               {
                  if(_loc3_ < stage.stageVideos[_loc4_].depth)
                  {
                     _loc3_ = stage.stageVideos[_loc4_].depth;
                  }
                  _loc4_++;
               }
               this.my_stageVideo.depth = _loc3_ + 1;
               this.my_stageVideo.addEventListener(StageVideoEvent.RENDER_STATE,this.__stageVideoChanged);
               this.my_stageVideo.addEventListener(VideoEvent.RENDER_STATE,this.__videoState);
               if(this.my_video != null && this.my_video.parent != null)
               {
                  this.my_video.parent.removeChild(this.my_video);
               }
               if(Param.IS_HOSTLIVE == 1 || Param.CDN != "ws" && Param.CDN != "ws2" || Param.P2P == 0 || !this._isServerAvailable)
               {
                  this.my_stageVideo.attachNetStream(this.my_ns);
               }
               else if(Param.p2pType == 4 && (Param.isLoginUser == 0 || Param.isPhone == 0))
               {
                  this.my_stageVideo.attachNetStream(this.my_ns);
               }
               else
               {
                  this.my_ns.attachStageVideo(this.my_stageVideo);
               }
            }
         }
         else if(param1 == 1)
         {
            this.renderStatus = "";
            if(this.my_video == null)
            {
               this.my_video = new Video();
               this.my_video.smoothing = true;
            }
            else
            {
               this.my_video.clear();
            }
            if(this.my_video.parent == null)
            {
               addChildAt(this.my_video,0);
            }
            if(Param.IS_HOSTLIVE == 1 || Param.CDN != "ws" && Param.CDN != "ws2" || Param.P2P == 0 || !this._isServerAvailable)
            {
               this.my_video.attachNetStream(this.my_ns);
            }
            else if(Param.p2pType == 4 && (Param.isLoginUser == 0 || Param.isPhone == 0))
            {
               this.my_video.attachNetStream(this.my_ns);
            }
            else
            {
               this.my_ns.attachVideo(this.my_video);
            }
            this.my_video.addEventListener(VideoEvent.RENDER_STATE,this.__videoState);
         }
      }
      
      private function getP2Pstatus() : void
      {
         if(this.my_ns)
         {
            if(Param.RtmpUrl.indexOf("http") != -1)
            {
               if(Param.IS_HOSTLIVE == 1 || Param.P2P == 0 || !this._isServerAvailable)
               {
                  this.isP2pData = 0;
               }
               else
               {
                  this.isP2pData = 1;
               }
            }
            else if(Param.IS_HOSTLIVE == 1 || Param.CDN != "ws" && Param.CDN != "ws2" || Param.P2P == 0 || !this._isServerAvailable)
            {
               this.isP2pData = 0;
            }
            else
            {
               this.isP2pData = 1;
            }
         }
      }
      
      private function sendPlayStatus() : void
      {
         if(this.hasNetStream)
         {
            EventCenter.dispatch("emptyFullCountStatus",{
               "playstate":1,
               "enum":this.emptyCount,
               "fnum":this.fullCount,
               "rtmlUrl":Param.RtmpUrl + "/" + Param.LiveID,
               "isP2p":this.isP2pData
            });
         }
      }
      
      private function failStreamHander() : void
      {
         if(this.hasNetStream)
         {
            EventCenter.dispatch("emptyFullCountStatus",{
               "playstate":3,
               "enum":this.emptyCount,
               "fnum":this.fullCount,
               "rtmlUrl":Param.RtmpUrl + "/" + Param.LiveID,
               "isP2p":this.isP2pData,
               "error":this.errStr
            });
         }
      }
   }
}
