package cc.dy.view.play
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import util.SkinEvent;
   import flash.display.SimpleButton;
   import flash.text.TextFormat;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import flash.events.FullScreenEvent;
   import flash.utils.Timer;
   import util.$;
   import flash.events.TimerEvent;
   import com.greensock.TweenLite;
   import com.greensock.easing.Cubic;
   import flash.display.StageDisplayState;
   import common.event.EventCenter;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import util.Util;
   import util.LocalStorage;
   import util.UserBehaviorLog;
   import common.event.ObjectEvent;
   import flash.events.KeyboardEvent;
   import flash.events.FocusEvent;
   import flash.ui.Keyboard;
   import mx.utils.StringUtil;
   import flash.system.Capabilities;
   import flash.system.IME;
   import util.FloatTip;
   
   public class PlayView extends Sprite
   {
      
      public static var VOLUME_BAR_MAX:Number = 94;
      
      public static const SKIN_SHOW_THRESHOLD:int = 200;
      
      public static const SKIN_HEIGHT:Number = 36;
       
      
      private var _controlBar:MovieClip;
      
      private var quickChatBar:MovieClip;
      
      private var tip:cc.dy.view.play.TipView;
      
      private var _enterRoom:IndexEnterRoom;
      
      private var _volume:Number;
      
      private var bitrateTip:MovieClip;
      
      private var closeTipBtn:SimpleButton;
      
      private var _chatTxtW:Number;
      
      private var recordTime:uint;
      
      private var tipTxt:TextField;
      
      private var maskTipBg:Sprite;
      
      private var tipContainer:Sprite;
      
      private var _hideCbTimer:Timer;
      
      private var _animateState:String = "showing";
      
      private var _skinAnimate:TweenLite;
      
      private var _w:int;
      
      private var _quickW:int;
      
      private var lastWidth:int;
      
      private var distanseW:int = 0;
      
      private var _isSilent:Boolean = false;
      
      private var selectBg:MovieClip;
      
      private var yuanhuaBtn:MovieClip;
      
      private var gaoBtn:MovieClip;
      
      private var lowerBtn:MovieClip;
      
      private var yuanhuaMC:MovieClip;
      
      private var gaoMC:MovieClip;
      
      private var lowerMC:MovieClip;
      
      private var currentBg:MovieClip;
      
      private var _normalFormat:TextFormat;
      
      private var _disableFormat:TextFormat;
      
      private var chatTxt:TextField;
      
      private var tipInputTxt:TextField;
      
      private var commentInput:MovieClip;
      
      private var commentInputBG:MovieClip;
      
      private var _disableSendComment:Boolean = false;
      
      public var iSendVisible:Boolean = false;
      
      private var msgTimer:Timer;
      
      private var msg:String;
      
      private var time:int;
      
      private var _enterAnimate:TweenLite;
      
      private var _enterState:String = "enterHiding";
      
      public var settingPanel:MovieClip;
      
      public var settingBtn:SimpleButton;
      
      public var noLabel:MovieClip;
      
      public var highLabel:MovieClip;
      
      public var middleLabel:MovieClip;
      
      public var lowLabel:MovieClip;
      
      public var fullLabel:MovieClip;
      
      public var downLabel:MovieClip;
      
      public var upLabel:MovieClip;
      
      public var isOpenInput:Boolean = false;
      
      public var fullScreenInputBtn:MovieClip;
      
      public function PlayView()
      {
         this.tip = new cc.dy.view.play.TipView();
         this._normalFormat = new TextFormat("微软雅黑",12,0);
         this._disableFormat = new TextFormat("微软雅黑",12,0);
         super();
         if(!Param.IsIndex)
         {
            VOLUME_BAR_MAX = 94;
         }
         this.volume = LocalStorage.getVolume();
         EventCenter.addEventListener("forcedToSwitch",this.__forceToSwitch);
         EventCenter.addEventListener("jsExitFullScreen",this.__jsExitFullScreen);
      }
      
      public function get volume() : Number
      {
         return this._volume;
      }
      
      public function set volume(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > 1)
         {
            param1 = 1;
         }
         this._volume = param1;
         var _loc2_:Number = param1 * VOLUME_BAR_MAX;
         if(this._controlBar)
         {
            this._controlBar.VolumeBar.VolumeTg.x = _loc2_;
            this._controlBar.VolumeBar.VolumeSlider.width = _loc2_;
         }
         if(this._volume == 0)
         {
            this._isSilent = true;
            if(this._controlBar && (this._controlBar.VolumeBtm as MovieClip).currentFrame == 1)
            {
               (this._controlBar.VolumeBtm as MovieClip).gotoAndStop(2);
            }
         }
         else
         {
            this._isSilent = false;
            if(this._controlBar && (this._controlBar.VolumeBtm as MovieClip).currentFrame == 2)
            {
               (this._controlBar.VolumeBtm as MovieClip).gotoAndStop(1);
            }
         }
         dispatchEvent(new SkinEvent(SkinEvent.SKIN_VOLUME_CHANGE,param1));
      }
      
      public function initPanel() : void
      {
         var _loc1_:TextFormat = null;
         if(this._controlBar == null)
         {
            this.quickChatBar = new QuickChatBar();
            this._quickW = this.quickChatBar.width;
            this._chatTxtW = this.quickChatBar.chatTxt.width;
            this.quickChatBar.sendBtn.addEventListener(MouseEvent.CLICK,this.__quickSendMessage);
            if(Param.IsIndex)
            {
               this._controlBar = new NewControlBar();
            }
            else
            {
               this._controlBar = new ControlBar();
            }
            this.bitrateTip = this._controlBar.BitrateTip;
            this.bitrateTip.visible = false;
            this.closeTipBtn = this.bitrateTip.closeBtn;
            this._controlBar.PlayBtn.visible = false;
            this._controlBar.fullScreen.visible = true;
            this._controlBar.NormalScreen.visible = false;
            this._controlBar.showCmt.visible = true;
            this._controlBar.hideBtm.visible = false;
            this._controlBar.PlayBtn.addEventListener(MouseEvent.CLICK,this.onPlayBtnClicked);
            this._controlBar.PauseBtn.addEventListener(MouseEvent.CLICK,this.onPauseBtnClicked);
            this._controlBar.VolumeBtm.addEventListener(MouseEvent.CLICK,this.onVolumeBtnClicked);
            (this._controlBar.VolumeBtm as MovieClip).buttonMode = true;
            (this._controlBar.VolumeBtm as MovieClip).gotoAndStop(1);
            this._controlBar.showCmt.addEventListener(MouseEvent.MOUSE_DOWN,this.onshowCmtClicked);
            this._controlBar.hideBtm.addEventListener(MouseEvent.MOUSE_DOWN,this.onhideCmtClicked);
            this._controlBar.fullScreen.addEventListener(MouseEvent.CLICK,this.onFullscreenClicked);
            this._controlBar.NormalScreen.addEventListener(MouseEvent.CLICK,this.onNormalscreenClicked);
            this._controlBar.pageFullScreenBtn.addEventListener(MouseEvent.CLICK,this.onPageFullscreenClicked);
            this._controlBar.quitPageFullScreenBtn.addEventListener(MouseEvent.CLICK,this.onPageNormalscreenClicked);
            this._controlBar.feedBackBtn.addEventListener(MouseEvent.CLICK,this.feedBackClick);
            this.closeTipBtn.addEventListener(MouseEvent.CLICK,this.__closeTip);
            this.bitrateTip.addEventListener(MouseEvent.CLICK,this.__login);
            if(Param.IsIndex)
            {
               this._controlBar.pageFullScreenBtn.visible = false;
               this._controlBar.quitPageFullScreenBtn.visible = false;
               this._controlBar.showCmt.visible = false;
               this._controlBar.hideBtm.visible = false;
               this._controlBar.settingBtn.visible = false;
               this._controlBar.enterRoomBtn.addEventListener(MouseEvent.CLICK,this.__enterClick);
            }
            else
            {
               this._controlBar.quitPageFullScreenBtn.visible = false;
            }
            this._controlBar.reLoadBtn.addEventListener(MouseEvent.CLICK,this.reloadClicked);
            this.initVolumeBar();
            this.initBitrateLabel();
            this.initCommentInput();
            this.initSettingLabel();
            addChild(this.quickChatBar);
            addChild(this._controlBar);
            this._w = this._controlBar.width;
            this.tip.resize(this._w);
            this.tip.y = -this.tip.height;
            this._controlBar.addChildAt(this.tip,0);
            addEventListener(Event.ADDED_TO_STAGE,this.onAddToStage);
            _loc1_ = new TextFormat("Microsoft YaHei",12,0);
            _loc1_.leading = 2;
            this.tipTxt = new TextField();
            this.tipTxt.defaultTextFormat = _loc1_;
            this.maskTipBg = new Sprite();
            this.tipContainer = new Sprite();
            this.tipContainer.mouseEnabled = false;
            this.tipContainer.mouseChildren = false;
            this.addOverOutTip();
            this._controlBar.y = GlobalData.root.stage.stageHeight - this._controlBar.bg.height;
            this.quickChatBar.visible = false;
            this.quickChatBar.chatTxt.text = "";
            this.quickChatBar.y = GlobalData.root.stage.stageHeight - 150;
         }
      }
      
      public function resetPlayPause() : void
      {
         if(this._controlBar)
         {
            this._controlBar.PlayBtn.visible = false;
            this._controlBar.PauseBtn.visible = true;
            (this._controlBar.VolumeBtm as MovieClip).gotoAndStop(1);
         }
         this._isSilent = false;
      }
      
      public function get isPageFullScreen() : Boolean
      {
         return this._controlBar.quitPageFullScreenBtn.visible;
      }
      
      public function resetFullOrNormaBtnVisible(param1:Boolean) : void
      {
         if(!Param.IsIndex)
         {
            this._controlBar.pageFullScreenBtn.visible = param1;
            this._controlBar.quitPageFullScreenBtn.visible = !param1;
         }
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         var event:MouseEvent = param1;
         this.showEnterRoom(true);
         clearTimeout(this.recordTime);
         this.recordTime = setTimeout(function():void
         {
            showEnterRoom(false);
         },2000);
      }
      
      protected function onMouseLeave(param1:Event) : void
      {
         this.showEnterRoom(false);
      }
      
      private function addOverOutTip() : void
      {
         this._controlBar.PlayBtn.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            overShow("播放",_controlBar.PlayBtn.x + 2,_controlBar.PlayBtn.y);
         });
         this._controlBar.PlayBtn.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
         this._controlBar.PauseBtn.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            overShow("暂停",_controlBar.PauseBtn.x + 2,_controlBar.PauseBtn.y);
         });
         this._controlBar.PauseBtn.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
         this._controlBar.reLoadBtn.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            overShow("重新载入",_controlBar.reLoadBtn.x - 13,_controlBar.reLoadBtn.y);
         });
         this._controlBar.reLoadBtn.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
         this._controlBar.VolumeBtm.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            if(_isSilent)
            {
               overShow("取消静音",_controlBar.VolumeBtm.x - 17,_controlBar.VolumeBtm.y);
            }
            else
            {
               overShow("设置静音",_controlBar.VolumeBtm.x - 17,_controlBar.VolumeBtm.y);
            }
         });
         this._controlBar.VolumeBtm.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
         this._controlBar.VolumeBar.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            overShow("音量" + int(_volume * 100) + "%",_controlBar.VolumeBar.x + 20,_controlBar.VolumeBar.y);
         });
         this._controlBar.VolumeBar.addEventListener(MouseEvent.MOUSE_MOVE,function():void
         {
            overShow("音量" + int(_volume * 100) + "%",_controlBar.VolumeBar.x + 20,_controlBar.VolumeBar.y);
         });
         this._controlBar.VolumeBar.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
         this._controlBar.showCmt.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            overShow("关闭弹幕",_controlBar.showCmt.x + 15,_controlBar.showCmt.y);
         });
         this._controlBar.showCmt.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
         this._controlBar.hideBtm.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            overShow("显示弹幕",_controlBar.hideBtm.x + 15,_controlBar.hideBtm.y);
         });
         this._controlBar.hideBtm.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
         this._controlBar.fullScreen.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            overShow("窗口全屏",_controlBar.fullScreen.x - 25,_controlBar.fullScreen.y);
         });
         this._controlBar.fullScreen.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
         this._controlBar.NormalScreen.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            overShow("退出全屏",_controlBar.NormalScreen.x - 25,_controlBar.NormalScreen.y);
         });
         this._controlBar.NormalScreen.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
         this._controlBar.pageFullScreenBtn.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            overShow("网页全屏",_controlBar.pageFullScreenBtn.x - 20,_controlBar.pageFullScreenBtn.y);
         });
         this._controlBar.pageFullScreenBtn.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
         this._controlBar.quitPageFullScreenBtn.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            overShow("退出网页全屏",_controlBar.quitPageFullScreenBtn.x - 30,_controlBar.quitPageFullScreenBtn.y);
         });
         this._controlBar.quitPageFullScreenBtn.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
         this._controlBar.feedBackBtn.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            overShow("问题反馈",_controlBar.feedBackBtn.x - 15,_controlBar.feedBackBtn.y);
         });
         this._controlBar.feedBackBtn.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
         this._controlBar.settingBtn.addEventListener(MouseEvent.MOUSE_OVER,function():void
         {
            overShow("弹幕设置",_controlBar.settingBtn.x - 15,_controlBar.settingBtn.y);
         });
         this._controlBar.settingBtn.addEventListener(MouseEvent.MOUSE_OUT,function():void
         {
            outHide();
         });
      }
      
      public function overShow(param1:String, param2:int, param3:int) : void
      {
         param3 = param3 - 25;
         this.tipTxt.htmlText = "<font color=\'#3b3b3b\'>" + param1 + "</font>";
         this.maskTipBg.graphics.clear();
         this.maskTipBg.graphics.beginFill(16777215,1);
         this.maskTipBg.graphics.drawRoundRect(-5,0,int(this.tipTxt.textWidth + 13),int(this.tipTxt.textHeight + 4),12);
         this.maskTipBg.graphics.endFill();
         this.tipTxt.width = this.tipTxt.textWidth + 4;
         this.tipContainer.addChild(this.maskTipBg);
         this.tipContainer.addChild(this.tipTxt);
         this.tipContainer.x = param2;
         this.tipContainer.y = param3;
         if(this.tipContainer.parent == null)
         {
            this._controlBar.addChild(this.tipContainer);
         }
      }
      
      public function outHide() : void
      {
         if(this.tipContainer.parent != null)
         {
            this.tipContainer.parent.removeChild(this.tipContainer);
         }
      }
      
      protected function onAddToStage(param1:Event) : void
      {
         if(Param.IsIndex)
         {
            stage.addEventListener(Event.MOUSE_LEAVE,this.onMouseLeave);
            stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         }
         stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.onFullscreen);
      }
      
      protected function onFullscreen(param1:FullScreenEvent) : void
      {
         param1.stopImmediatePropagation();
         this._controlBar.fullScreen.visible = !param1.fullScreen;
         this._controlBar.NormalScreen.visible = param1.fullScreen;
         dispatchEvent(new SkinEvent(SkinEvent.SKIN_SYSTEM_FULLSCREEN,{"isFullScreen":param1.fullScreen}));
      }
      
      public function controlBarDisplayFullScreen() : void
      {
         $.jscall("console.log","controlBarDisplayFullScreen");
         if(stage.stageHeight - stage.mouseY >= PlayView.SKIN_SHOW_THRESHOLD)
         {
            this._hideCbTimer = new Timer(2000,1);
            this._hideCbTimer.addEventListener(TimerEvent.TIMER,this.hideCbHandler);
            this._hideCbTimer.start();
         }
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.mousemoveHandler);
      }
      
      public function controlBarDisplayNormal() : void
      {
         $.jscall("console.log","controlBarDisplayNormal");
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.mousemoveHandler);
         if(this._hideCbTimer)
         {
            this._hideCbTimer.stop();
            this._hideCbTimer.removeEventListener(TimerEvent.TIMER,this.hideCbHandler);
            this._hideCbTimer = null;
         }
      }
      
      private function hideCbHandler(param1:TimerEvent) : void
      {
         var event:TimerEvent = param1;
         this._hideCbTimer.removeEventListener(TimerEvent.TIMER,this.hideCbHandler);
         this._hideCbTimer = null;
         this._animateState = "hiding";
         this._skinAnimate = TweenLite.to(this._controlBar,0.5,{
            "y":stage.stageHeight,
            "alpha":0,
            "ease":Cubic.easeOut,
            "onComplete":function():void
            {
               settingPanel.visible = false;
               selectBg.visible = false;
               yuanhuaBtn.visible = false;
               gaoBtn.visible = false;
               lowerBtn.visible = false;
            }
         });
      }
      
      private function mousemoveHandler(param1:MouseEvent) : void
      {
         var event:MouseEvent = param1;
         if(stage.stageHeight - stage.mouseY < PlayView.SKIN_SHOW_THRESHOLD)
         {
            if(this._animateState == "hiding")
            {
               this._animateState = "showing";
               if(this._hideCbTimer && this._hideCbTimer.running)
               {
                  this._hideCbTimer.stop();
                  this._hideCbTimer.removeEventListener(TimerEvent.TIMER,this.hideCbHandler);
                  this._hideCbTimer = null;
               }
               if(this._skinAnimate)
               {
                  this._skinAnimate.kill();
               }
               this._skinAnimate = TweenLite.to(this._controlBar,0.5,{
                  "y":stage.stageHeight - this._controlBar.bg.height,
                  "alpha":1,
                  "ease":Cubic.easeOut
               });
            }
         }
         else if(this._animateState == "showing")
         {
            if(!(this._hideCbTimer && this._hideCbTimer.running))
            {
               this._animateState = "hiding";
               if(this._skinAnimate)
               {
                  this._skinAnimate.kill();
               }
               this._skinAnimate = TweenLite.to(this._controlBar,0.5,{
                  "y":stage.stageHeight,
                  "alpha":0,
                  "ease":Cubic.easeOut,
                  "onComplete":function():void
                  {
                     settingPanel.visible = false;
                     selectBg.visible = false;
                     yuanhuaBtn.visible = false;
                     gaoBtn.visible = false;
                     lowerBtn.visible = false;
                  }
               });
            }
         }
      }
      
      public function showControlBarSkin() : void
      {
         if(this.bitrateTip != null)
         {
            this.bitrateTip.visible = true;
            this._animateState = "showing";
            if(this._skinAnimate)
            {
               this._skinAnimate.kill();
            }
            if(stage)
            {
               this._controlBar.y = stage.stageHeight - this._controlBar.bg.height;
               this._controlBar.alpha = 1;
            }
         }
      }
      
      public function hideShowSkin() : void
      {
         if(this.bitrateTip != null && !this.bitrateTip.visible)
         {
            if(this._skinAnimate)
            {
               this._skinAnimate.kill();
            }
            if(this._animateState == "showing" || stage.displayState == StageDisplayState.NORMAL && !this.isPageFullScreen)
            {
               this._controlBar.y = stage.stageHeight - this._controlBar.bg.height;
               this._controlBar.alpha = 1;
               this._animateState = "showing";
            }
            else
            {
               this._controlBar.y = stage.stageHeight;
               this._controlBar.alpha = 0;
               this.settingPanel.visible = false;
               this.selectBg.visible = false;
               this.yuanhuaBtn.visible = false;
               this.gaoBtn.visible = false;
               this.lowerBtn.visible = false;
            }
            if(this.quickChatBar)
            {
               this.quickChatBar.y = GlobalData.root.stage.stageHeight - 150;
            }
         }
         else
         {
            this.showControlBarSkin();
         }
      }
      
      public function resize(param1:Number, param2:Number) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc3_:int = param1 - this._w;
         var _loc4_:Number = Math.min(param1,this._quickW);
         var _loc5_:Number = this._quickW - _loc4_;
         _loc5_ = Math.min(_loc5_,this._chatTxtW);
         this.quickChatBar.bg.width = this._quickW - _loc5_;
         this.quickChatBar.bg1.width = this.quickChatBar.bg.width - 124;
         this.quickChatBar.chatTxt.width = this.quickChatBar.bg.width - 133;
         this.quickChatBar.sendBtn.x = this.quickChatBar.bg1.x + this.quickChatBar.bg1.width;
         this.quickChatBar.x = (GlobalData.root.stage.stageWidth - this.quickChatBar.width) / 2;
         this._controlBar.bg.width = param1;
         this._controlBar.fullScreen.x = this._controlBar.NormalScreen.x = this._controlBar.NormalScreen.x + _loc3_;
         this._controlBar.pageFullScreenBtn.x = this._controlBar.quitPageFullScreenBtn.x = this._controlBar.quitPageFullScreenBtn.x + _loc3_;
         this._controlBar.BitrateLabel.x = this._controlBar.BitrateLabel.x + _loc3_;
         this._controlBar.settingBtn.x = this._controlBar.settingBtn.x + _loc3_;
         this._controlBar.settingPanel.x = this._controlBar.settingPanel.x + _loc3_;
         this._controlBar.showCmt.x = this._controlBar.hideBtm.x = this._controlBar.hideBtm.x + _loc3_;
         this._controlBar.VolumeBtm.x = this._controlBar.VolumeBtm.x + _loc3_;
         this._controlBar.VolumeBar.x = this._controlBar.VolumeBar.x + _loc3_;
         this._controlBar.feedBackBtn.x = this._controlBar.feedBackBtn.x + _loc3_;
         this._controlBar.commentSend.x = this._controlBar.commentSend.x + _loc3_;
         this._controlBar.BitrateTip.x = this._controlBar.BitrateTip.x + _loc3_;
         this.lastWidth = this.lastWidth + _loc3_;
         if(Param.IsIndex)
         {
            this._controlBar.enterRoomBtn.x = this._controlBar.enterRoomBtn.x + _loc3_;
         }
         if(this.lastWidth <= 0)
         {
            this.commentInputBG.width = 0;
         }
         else
         {
            this.commentInputBG.width = this.lastWidth;
         }
         this.chatTxt.width = this.commentInputBG.width - 60;
         this._w = param1;
         if(this._enterRoom)
         {
            this._enterRoom.x = (param1 - this._enterRoom.width) / 2;
            this._enterRoom.y = (param2 - this._enterRoom.height) / 2;
         }
         if(Param.IsIndex)
         {
            _loc6_ = this._controlBar.VolumeBar.x - this._controlBar.VolumeBtm.x;
            this._controlBar.BitrateLabel.x = this._controlBar.fullScreen.x - 60;
            this._controlBar.VolumeBar.x = this._controlBar.fullScreen.x - 115;
            if(GlobalData.hasMultirate == 1)
            {
               this._controlBar.VolumeBar.x = this._controlBar.fullScreen.x - 175;
            }
            this._controlBar.VolumeBtm.x = this._controlBar.VolumeBar.x - _loc6_;
            this._controlBar.feedBackBtn.x = this._controlBar.VolumeBtm.x - 35;
         }
         else
         {
            _loc7_ = this._controlBar.VolumeBar.x - this._controlBar.VolumeBtm.x;
            if(GlobalData.hasMultirate == 0)
            {
               this._controlBar.showCmt.x = this._controlBar.hideBtm.x = this._controlBar.settingBtn.x - 95;
            }
            this._controlBar.VolumeBar.x = this._controlBar.showCmt.x - 110;
            this._controlBar.VolumeBtm.x = this._controlBar.VolumeBar.x - this._controlBar.VolumeBtm.width - 10;
            this._controlBar.feedBackBtn.x = this._controlBar.VolumeBtm.x - 35;
         }
         this.tip.resize(param1);
      }
      
      public function updateRateLabel() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this._controlBar && this._controlBar.BitrateLabel)
         {
            this._controlBar.BitrateLabel.visible = GlobalData.hasMultirate == 0?false:true;
            if(Param.IsIndex)
            {
               _loc1_ = this._controlBar.VolumeBar.x - this._controlBar.VolumeBtm.x;
               this._controlBar.BitrateLabel.x = this._controlBar.fullScreen.x - 60;
               this._controlBar.VolumeBar.x = this._controlBar.fullScreen.x - 95;
               if(GlobalData.hasMultirate == 1)
               {
                  this._controlBar.VolumeBar.x = this._controlBar.fullScreen.x - 155;
               }
               this._controlBar.VolumeBtm.x = this._controlBar.VolumeBar.x - _loc1_;
               this._controlBar.feedBackBtn.x = this._controlBar.VolumeBtm.x - 35;
            }
            else
            {
               _loc2_ = this._controlBar.VolumeBar.x - this._controlBar.VolumeBtm.x;
               if(GlobalData.hasMultirate == 0)
               {
                  this._controlBar.showCmt.x = this._controlBar.hideBtm.x = this._controlBar.settingBtn.x - 100;
               }
               this._controlBar.VolumeBar.x = this._controlBar.showCmt.x - 105;
               this._controlBar.VolumeBtm.x = this._controlBar.VolumeBar.x - this._controlBar.VolumeBtm.width - 10;
               this._controlBar.feedBackBtn.x = this._controlBar.VolumeBtm.x - 35;
            }
            if(Param.currentStreamType == 0)
            {
               this.yuanhuaBtn.gotoAndStop(3);
               this.yuanhuaMC.gotoAndStop(3);
               this.gaoBtn.gotoAndStop(2);
               this.lowerBtn.gotoAndStop(2);
               this.yuanhuaMC.visible = true;
               this.gaoMC.visible = false;
               this.lowerMC.visible = false;
            }
            else if(Param.currentStreamType == 2)
            {
               this.gaoBtn.gotoAndStop(3);
               this.gaoMC.gotoAndStop(3);
               this.yuanhuaBtn.gotoAndStop(2);
               this.lowerBtn.gotoAndStop(2);
               this.yuanhuaMC.visible = false;
               this.gaoMC.visible = true;
               this.lowerMC.visible = false;
            }
            else
            {
               this.yuanhuaBtn.gotoAndStop(2);
               this.gaoBtn.gotoAndStop(2);
               this.lowerBtn.gotoAndStop(3);
               this.lowerMC.gotoAndStop(3);
               this.lowerMC.visible = true;
               this.gaoMC.visible = false;
               this.yuanhuaMC.visible = false;
            }
         }
      }
      
      protected function onNormalscreenClicked(param1:Event) : void
      {
         this._controlBar.NormalScreen.visible = false;
         this._controlBar.fullScreen.visible = true;
         param1.stopImmediatePropagation();
         dispatchEvent(new SkinEvent(SkinEvent.SKIN_NORMALSCREEN));
      }
      
      private function onPageFullscreenClicked(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         dispatchEvent(new SkinEvent(SkinEvent.SKIN_PAGEFULLSCREEN));
      }
      
      private function onPageNormalscreenClicked(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         dispatchEvent(new SkinEvent(SkinEvent.SKIN_QUITPAGEFULLSCREEN));
      }
      
      private function reloadClicked(param1:MouseEvent) : void
      {
         dispatchEvent(new SkinEvent(SkinEvent.SKIN_RELOAD));
      }
      
      private function feedBackClick(param1:MouseEvent) : void
      {
         dispatchEvent(new SkinEvent(SkinEvent.SKIN_FEEDBACK));
      }
      
      private function __closeTip(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         this.bitrateTip.visible = false;
         EventCenter.dispatch("StarttimeLoginTip");
      }
      
      private function __login(param1:MouseEvent) : void
      {
         $.asTojs("room_login_show");
         $.jscall("console.log","treasureclick");
         if(GlobalData.root.stage.displayState != StageDisplayState.NORMAL)
         {
            this.onNormalscreenClicked(param1);
         }
      }
      
      private function __enterClick(param1:MouseEvent) : void
      {
         this.onPauseBtnClicked(null);
         if(Param.roomLink == null || Param.roomLink == "")
         {
            navigateToURL(new URLRequest(GlobalData.prefix + Param.DomainName + "/" + Param.RoomId),"_self");
         }
         else
         {
            navigateToURL(new URLRequest(GlobalData.prefix + Param.DomainName + Param.roomLink),"_self");
         }
      }
      
      public function onFullscreenClicked(param1:MouseEvent) : void
      {
         this._controlBar.NormalScreen.visible = true;
         this._controlBar.fullScreen.visible = false;
         param1.stopImmediatePropagation();
         dispatchEvent(new SkinEvent(SkinEvent.SKIN_FULLSCREEN));
      }
      
      protected function onhideCmtClicked(param1:MouseEvent) : void
      {
         this._controlBar.hideBtm.visible = false;
         this._controlBar.showCmt.visible = true;
         dispatchEvent(new SkinEvent(SkinEvent.SKIN_COMMENT_SHOW));
      }
      
      protected function onshowCmtClicked(param1:MouseEvent) : void
      {
         this._controlBar.hideBtm.visible = true;
         this._controlBar.showCmt.visible = false;
         dispatchEvent(new SkinEvent(SkinEvent.SKIN_COMMENT_HIDE));
      }
      
      protected function onVolumeBtnClicked(param1:MouseEvent) : void
      {
         if(this._isSilent)
         {
            (this._controlBar.VolumeBtm as MovieClip).gotoAndStop(1);
            dispatchEvent(new SkinEvent(SkinEvent.SKIN_SILENT_CANCEL));
         }
         else
         {
            (this._controlBar.VolumeBtm as MovieClip).gotoAndStop(2);
            dispatchEvent(new SkinEvent(SkinEvent.SKIN_SILENT));
         }
         if(this._isSilent)
         {
            this.overShow("取消静音",this._controlBar.VolumeBtm.x - 17,this._controlBar.VolumeBtm.y);
         }
         else
         {
            this.overShow("设置静音",this._controlBar.VolumeBtm.x - 17,this._controlBar.VolumeBtm.y);
         }
      }
      
      protected function onPauseBtnClicked(param1:MouseEvent) : void
      {
         this._controlBar.PauseBtn.visible = false;
         this._controlBar.PlayBtn.visible = true;
         dispatchEvent(new SkinEvent(SkinEvent.SKIN_PAUSE));
      }
      
      protected function onPlayBtnClicked(param1:MouseEvent) : void
      {
         this._controlBar.PauseBtn.visible = true;
         this._controlBar.PlayBtn.visible = false;
         dispatchEvent(new SkinEvent(SkinEvent.SKIN_PLAY));
      }
      
      public function ChangePauseButton(param1:int = 0) : void
      {
         if(this._controlBar)
         {
            if(param1 == 0)
            {
               this._controlBar.PauseBtn.visible = false;
               this._controlBar.PlayBtn.visible = true;
            }
            else
            {
               this._controlBar.PauseBtn.visible = true;
               this._controlBar.PlayBtn.visible = false;
            }
         }
      }
      
      private function initBitrateLabel() : void
      {
         if(GlobalData.hasMultirate == 0)
         {
            this._controlBar.BitrateLabel.visible = false;
         }
         this.selectBg = this._controlBar.BitrateLabel.selectBg;
         this.currentBg = this._controlBar.BitrateLabel.currentBg;
         this.yuanhuaBtn = this._controlBar.BitrateLabel.yuanhuaBtn;
         this.gaoBtn = this._controlBar.BitrateLabel.gaoBtn;
         this.lowerBtn = this._controlBar.BitrateLabel.lowerBtn;
         this.yuanhuaMC = this._controlBar.BitrateLabel.yuanhuaMC;
         this.gaoMC = this._controlBar.BitrateLabel.gaoMC;
         this.lowerMC = this._controlBar.BitrateLabel.lowerMC;
         var addRateScript:Function = function(param1:MovieClip, param2:int):void
         {
            var target:MovieClip = param1;
            var rate:int = param2;
            var func:Function = function():void
            {
               target["tf"].text = Param.streamNames[rate];
            };
            var i:int = 0;
            while(i < target.totalFrames)
            {
               target.addFrameScript(i,func);
               i++;
            }
         };
         addRateScript(this.yuanhuaBtn,0);
         addRateScript(this.yuanhuaMC,0);
         addRateScript(this.gaoBtn,2);
         addRateScript(this.gaoMC,2);
         addRateScript(this.lowerBtn,1);
         addRateScript(this.lowerMC,1);
         if(Param.currentStreamType == 0)
         {
            this.yuanhuaBtn.gotoAndStop(3);
            this.yuanhuaMC.gotoAndStop(3);
            this.gaoBtn.gotoAndStop(2);
            this.lowerBtn.gotoAndStop(2);
            this.yuanhuaMC.visible = true;
            this.gaoMC.visible = false;
            this.lowerMC.visible = false;
         }
         else if(Param.currentStreamType == 2)
         {
            this.gaoBtn.gotoAndStop(3);
            this.gaoMC.gotoAndStop(3);
            this.yuanhuaBtn.gotoAndStop(2);
            this.lowerBtn.gotoAndStop(2);
            this.yuanhuaMC.visible = false;
            this.gaoMC.visible = true;
            this.lowerMC.visible = false;
         }
         else
         {
            this.yuanhuaBtn.gotoAndStop(2);
            this.gaoBtn.gotoAndStop(2);
            this.lowerBtn.gotoAndStop(3);
            this.lowerMC.gotoAndStop(3);
            this.lowerMC.visible = true;
            this.gaoMC.visible = false;
            this.yuanhuaMC.visible = false;
         }
         this.yuanhuaMC.mouseEnabled = false;
         this.yuanhuaMC.mouseChildren = false;
         this.gaoMC.mouseEnabled = false;
         this.gaoMC.mouseChildren = false;
         this.lowerMC.mouseEnabled = false;
         this.lowerMC.mouseChildren = false;
         this.selectBg.visible = false;
         this.currentBg.visible = true;
         this.yuanhuaBtn.visible = false;
         this.gaoBtn.visible = false;
         this.lowerBtn.visible = false;
         this.currentBg.buttonMode = true;
         this.yuanhuaBtn.buttonMode = true;
         this.gaoBtn.buttonMode = true;
         this.lowerBtn.buttonMode = true;
         this.yuanhuaBtn.addEventListener(MouseEvent.MOUSE_OVER,function(param1:MouseEvent):void
         {
            if(yuanhuaBtn.currentFrame != 3)
            {
               yuanhuaBtn.gotoAndStop(1);
            }
         });
         this.yuanhuaBtn.addEventListener(MouseEvent.MOUSE_OUT,function(param1:MouseEvent):void
         {
            if(yuanhuaBtn.currentFrame != 3)
            {
               yuanhuaBtn.gotoAndStop(2);
            }
         });
         this.gaoBtn.addEventListener(MouseEvent.MOUSE_OVER,function(param1:MouseEvent):void
         {
            if(gaoBtn.currentFrame != 3)
            {
               gaoBtn.gotoAndStop(1);
            }
         });
         this.gaoBtn.addEventListener(MouseEvent.MOUSE_OUT,function(param1:MouseEvent):void
         {
            if(gaoBtn.currentFrame != 3)
            {
               gaoBtn.gotoAndStop(2);
            }
         });
         this.lowerBtn.addEventListener(MouseEvent.MOUSE_OVER,function(param1:MouseEvent):void
         {
            if(lowerBtn.currentFrame != 3)
            {
               lowerBtn.gotoAndStop(1);
            }
         });
         this.lowerBtn.addEventListener(MouseEvent.MOUSE_OUT,function(param1:MouseEvent):void
         {
            if(lowerBtn.currentFrame != 3)
            {
               lowerBtn.gotoAndStop(2);
            }
         });
         this.yuanhuaBtn.addEventListener(MouseEvent.CLICK,this.__yuanhuaBit);
         this.gaoBtn.addEventListener(MouseEvent.CLICK,this.__gaoBit);
         this.lowerBtn.addEventListener(MouseEvent.CLICK,this.__lowerBit);
         GlobalData.root.stage.addEventListener(MouseEvent.CLICK,this.__stageClick);
         this.currentBg.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            if(!selectBg.visible)
            {
               selectBg.visible = true;
               yuanhuaBtn.visible = true;
               gaoBtn.visible = true;
               lowerBtn.visible = true;
            }
            else
            {
               selectBg.visible = false;
               yuanhuaBtn.visible = false;
               gaoBtn.visible = false;
               lowerBtn.visible = false;
            }
         });
      }
      
      private function __yuanhuaBit(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         if(Param.isTicketNeed)
         {
            if((Param.eticket == 1 || Param.eticket == 2) && GlobalData.ticketData.data.need_pay == 1)
            {
               _loc2_ = GlobalData.ticketData || {};
               _loc2_ = Util.clone(_loc2_);
               _loc2_.flash_switch_definition = true;
               $.asTojs("room_data_buytickets",_loc2_);
               return;
            }
            Param.currentTicketStreamType = 0;
         }
         else
         {
            if(!Param.IsIndex && GlobalData.hasMultirate == 1 && Param.isLoginUser == 0 && !Util.switchRateTip())
            {
               this.selectBg.visible = false;
               this.yuanhuaBtn.visible = false;
               this.gaoBtn.visible = false;
               this.lowerBtn.visible = false;
               EventCenter.dispatch("ChangeRateNotifyEvent",{"type":1});
               if(GlobalData.root.stage.displayState != StageDisplayState.NORMAL)
               {
                  this.onNormalscreenClicked(param1);
               }
               return;
            }
            Param.currentStreamType = 0;
            if(Param.liveType == 0)
            {
               LocalStorage.setValue("rateModelRecord",0);
            }
            else
            {
               LocalStorage.setValue("rateModelGaoRecord",0);
            }
         }
         this.yuanhuaBtn.gotoAndStop(3);
         this.yuanhuaMC.gotoAndStop(3);
         this.gaoBtn.gotoAndStop(2);
         this.lowerBtn.gotoAndStop(2);
         this.yuanhuaMC.visible = true;
         this.gaoMC.visible = false;
         this.lowerMC.visible = false;
         this.selectBg.visible = false;
         this.yuanhuaBtn.visible = false;
         this.gaoBtn.visible = false;
         this.lowerBtn.visible = false;
         this.resetPlayPause();
         EventCenter.dispatch("Reload");
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_DEFINITION_SUPER,UserBehaviorLog.getDefinitionExt(0));
      }
      
      private function __gaoBit(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         if(Param.isTicketNeed)
         {
            if(Param.eticket == 1 && GlobalData.ticketData.data.need_pay == 1)
            {
               _loc2_ = GlobalData.ticketData || {};
               _loc2_ = Util.clone(_loc2_);
               _loc2_.flash_switch_definition = true;
               $.asTojs("room_data_buytickets",_loc2_);
               return;
            }
            Param.currentTicketStreamType = 2;
         }
         else
         {
            if(!Param.IsIndex && GlobalData.hasMultirate == 1 && Param.isLoginUser == 0 && !Util.switchRateTip())
            {
               this.selectBg.visible = false;
               this.yuanhuaBtn.visible = false;
               this.gaoBtn.visible = false;
               this.lowerBtn.visible = false;
               EventCenter.dispatch("ChangeRateNotifyEvent",{"type":1});
               if(GlobalData.root.stage.displayState != StageDisplayState.NORMAL)
               {
                  this.onNormalscreenClicked(param1);
               }
               return;
            }
            Param.currentStreamType = 2;
            if(Param.liveType == 0)
            {
               LocalStorage.setValue("rateModelRecord",2);
            }
            else
            {
               LocalStorage.setValue("rateModelGaoRecord",2);
            }
         }
         this.yuanhuaBtn.gotoAndStop(2);
         this.gaoBtn.gotoAndStop(3);
         this.gaoMC.gotoAndStop(3);
         this.lowerBtn.gotoAndStop(2);
         this.yuanhuaMC.visible = false;
         this.gaoMC.visible = true;
         this.lowerMC.visible = false;
         this.selectBg.visible = false;
         this.yuanhuaBtn.visible = false;
         this.gaoBtn.visible = false;
         this.lowerBtn.visible = false;
         this.resetPlayPause();
         EventCenter.dispatch("Reload");
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_DEFINITION_HIGN,UserBehaviorLog.getDefinitionExt(2));
      }
      
      public function __lowerBit(param1:Event = null) : void
      {
         if(Param.isTicketNeed)
         {
            Param.currentTicketStreamType = 1;
         }
         else if(param1 != null)
         {
            Param.currentStreamType = 1;
            if(Param.liveType == 0)
            {
               LocalStorage.setValue("rateModelRecord",1);
            }
            else
            {
               LocalStorage.setValue("rateModelGaoRecord",1);
            }
         }
         this.yuanhuaBtn.gotoAndStop(2);
         this.gaoBtn.gotoAndStop(2);
         this.lowerBtn.gotoAndStop(3);
         this.lowerMC.gotoAndStop(3);
         this.lowerMC.visible = true;
         this.gaoMC.visible = false;
         this.yuanhuaMC.visible = false;
         this.selectBg.visible = false;
         this.yuanhuaBtn.visible = false;
         this.gaoBtn.visible = false;
         this.lowerBtn.visible = false;
         this.resetPlayPause();
         EventCenter.dispatch("Reload");
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_DEFINITION_NORMAL,UserBehaviorLog.getDefinitionExt(1));
      }
      
      private function __forceToSwitch(param1:ObjectEvent) : void
      {
         var _loc2_:int = param1.data.code;
         if(_loc2_ == 0)
         {
            this.__lowerBit();
         }
         if(GlobalData.root.stage.displayState != StageDisplayState.NORMAL)
         {
            this.onNormalscreenClicked(param1);
         }
      }
      
      private function __jsExitFullScreen(param1:ObjectEvent) : void
      {
         if(GlobalData.root.stage.displayState != StageDisplayState.NORMAL)
         {
            this.onNormalscreenClicked(param1);
         }
      }
      
      private function initVolumeBar() : void
      {
         var startVolumeDrag:Function = null;
         var endVolumeDrag:Function = null;
         var volumeDrag:Function = null;
         startVolumeDrag = function(param1:MouseEvent):void
         {
            stage.addEventListener(MouseEvent.MOUSE_MOVE,volumeDrag);
            stage.addEventListener(MouseEvent.MOUSE_UP,endVolumeDrag);
         };
         endVolumeDrag = function(param1:MouseEvent):void
         {
            stage.removeEventListener(MouseEvent.MOUSE_MOVE,volumeDrag);
            stage.removeEventListener(MouseEvent.MOUSE_UP,endVolumeDrag);
            LocalStorage.saveVolume(volume);
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_VOLUME_CHANGE);
         };
         volumeDrag = function(param1:MouseEvent):void
         {
            var _loc2_:Number = _controlBar.VolumeBar.mouseX;
            if(_loc2_ < 0)
            {
               _loc2_ = 0;
            }
            if(_loc2_ > VOLUME_BAR_MAX)
            {
               _loc2_ = VOLUME_BAR_MAX;
            }
            volume = _loc2_ / VOLUME_BAR_MAX;
            if(param1.type == MouseEvent.CLICK)
            {
               LocalStorage.saveVolume(volume);
               UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_VOLUME_CHANGE);
            }
         };
         this._controlBar.VolumeBar.VolumeTg.x = VOLUME_BAR_MAX;
         this._controlBar.VolumeBar.VolumeSlider.width = VOLUME_BAR_MAX;
         this._controlBar.VolumeBar.VolumeTg.addEventListener(MouseEvent.MOUSE_DOWN,startVolumeDrag);
         this._controlBar.VolumeBar.addEventListener(MouseEvent.CLICK,volumeDrag);
      }
      
      private function initCommentInput() : void
      {
         this.tipInputTxt = this._controlBar.tipInputTxt;
         this.tipInputTxt.visible = false;
         this.commentInput = this._controlBar.commentInputSlider;
         this.commentInputBG = this.commentInput.commentInputBG;
         this.lastWidth = this.commentInputBG.width;
         this.chatTxt = this.commentInput.chatTxt;
         this.chatTxt.defaultTextFormat = this._normalFormat;
         this.chatTxt.addEventListener(KeyboardEvent.KEY_DOWN,this.sendComment);
         this._controlBar.commentSend.addEventListener(MouseEvent.CLICK,this.sendCommentClick);
         this.chatTxt.addEventListener(MouseEvent.ROLL_OUT,this.setSRF);
         this.chatTxt.addEventListener(FocusEvent.FOCUS_IN,this.__focusIn);
         this.chatTxt.text = "使用回车可以快速发送弹幕";
         this.setCommentInputVisible(false);
      }
      
      private function sendComment(param1:KeyboardEvent) : void
      {
         var _loc2_:String = null;
         if(param1.keyCode == Keyboard.ENTER)
         {
            if(this._disableSendComment)
            {
               return;
            }
            _loc2_ = this.chatTxt.text;
            if(StringUtil.trim(_loc2_).length == 0 || _loc2_ == "使用回车可以快速发送弹幕")
            {
               this.showMessage("发送内容为空，请重新输入！",1);
            }
            else
            {
               param1.stopImmediatePropagation();
               dispatchEvent(new SkinEvent(SkinEvent.SKIN_SENDCOMMENT,_loc2_));
               this.chatTxt.text = "";
            }
         }
      }
      
      private function sendCommentClick(param1:MouseEvent) : void
      {
         this.sendMessage();
      }
      
      private function __quickSendMessage(param1:MouseEvent) : void
      {
         this.showAloneChatPanel();
      }
      
      private function sendMessage() : void
      {
         if(this._disableSendComment)
         {
            return;
         }
         var _loc1_:String = this.chatTxt.text;
         if(StringUtil.trim(_loc1_).length == 0 || _loc1_ == "使用回车可以快速发送弹幕")
         {
            this.showMessage("发送内容为空，请重新输入！",1);
         }
         else
         {
            dispatchEvent(new SkinEvent(SkinEvent.SKIN_SENDCOMMENT,_loc1_));
            this.chatTxt.text = "";
         }
      }
      
      private function quickMessage() : void
      {
         if(this._disableSendComment)
         {
            return;
         }
         var _loc1_:String = this.quickChatBar.chatTxt.text;
         if(StringUtil.trim(_loc1_).length != 0)
         {
            dispatchEvent(new SkinEvent(SkinEvent.SKIN_SENDCOMMENT,_loc1_));
            this.quickChatBar.chatTxt.text = "";
         }
      }
      
      public function setCommentInputVisible(param1:Boolean) : void
      {
         if(!Param.IsIndex)
         {
            if(Param.DOTATALK != "show_talk")
            {
               this.commentInput.visible = this._controlBar.commentSend.visible = param1;
               this.iSendVisible = param1;
            }
            else
            {
               this.commentInput.visible = this._controlBar.commentSend.visible = true;
               this.iSendVisible = true;
            }
            if(GlobalData.root.stage.displayState == StageDisplayState.NORMAL)
            {
               if(this.tipInputTxt.visible)
               {
                  this.tipInputTxt.visible = false;
               }
            }
            else if(this.commentInput.visible)
            {
               if(this.tipInputTxt.visible)
               {
                  this.tipInputTxt.visible = false;
               }
            }
            else if(!this.tipInputTxt.visible)
            {
               this.tipInputTxt.visible = true;
            }
         }
         else
         {
            this.commentInput.visible = this._controlBar.commentSend.visible = false;
            this.iSendVisible = false;
         }
         if(!this.iSendVisible)
         {
            this.hideAloneChatPanel();
         }
      }
      
      public function showAloneChatPanel() : void
      {
         if(this.quickChatBar && this.iSendVisible)
         {
            if(this.quickChatBar.visible)
            {
               this.quickChatBar.visible = false;
               this.quickMessage();
               this.quickChatBar.chatTxt.text = "";
            }
            else
            {
               this.quickChatBar.visible = true;
               stage.focus = this.quickChatBar.chatTxt;
            }
         }
      }
      
      public function hideAloneChatPanel() : void
      {
         if(this.quickChatBar)
         {
            this.quickChatBar.visible = false;
            this.quickChatBar.chatTxt.text = "";
         }
      }
      
      private function setSRF(param1:MouseEvent) : void
      {
         $.jscall("console.log","输入法Capabilities.hasIME [%s]",Capabilities.hasIME);
         if(Capabilities.hasIME)
         {
            try
            {
               if(!IME.enabled)
               {
                  IME.enabled = true;
               }
               IME.conversionMode = "CHINESE";
               $.jscall("console.log","输入法conversionMode [%s]",IME.conversionMode);
               return;
            }
            catch(error:Error)
            {
               return;
            }
         }
      }
      
      public function showMessage(param1:String, param2:int, param3:Boolean = false) : void
      {
         this.msg = param1;
         this.time = param2;
         $.jscall("console.log","showMessage",this.msg,this.time,param3);
         if(this.time <= 0)
         {
            return;
         }
         if(this.msgTimer)
         {
            this.msgTimer.stop();
            this.msgTimer.dispatchEvent(new TimerEvent(TimerEvent.TIMER_COMPLETE));
         }
         this._disableSendComment = true;
         this.chatTxt.selectable = false;
         this.chatTxt.text = this.msg;
         this.chatTxt.defaultTextFormat = this._disableFormat;
         if(this.msgTimer)
         {
            this.msgTimer.reset();
            this.msgTimer.repeatCount = this.time;
         }
         else
         {
            this.msgTimer = new Timer(1000,this.time);
            this.msgTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.complete,false,0,true);
            this.msgTimer.addEventListener(TimerEvent.TIMER,this.onTimer,false,0,true);
         }
         this.msgTimer.start();
         if(param3)
         {
            this.chatTxt.text = this.msg + " \t倒计时：" + this.time + " ";
         }
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         this.chatTxt.text = this.msg + " \t倒计时：" + (this.time - this.msgTimer.currentCount) + " ";
      }
      
      private function complete(param1:TimerEvent) : void
      {
         this._disableSendComment = false;
         this.chatTxt.selectable = true;
         this.chatTxt.text = "";
         this.chatTxt.defaultTextFormat = this._normalFormat;
      }
      
      private function __focusIn(param1:FocusEvent) : void
      {
         this.chatTxt.text = "";
         if(Param.usergroupid == "5" || Param.userId == Param.ownerId)
         {
            this.chatTxt.maxChars = 200;
         }
         else
         {
            this.chatTxt.maxChars = GlobalData.chatMaxChars;
         }
      }
      
      private function __focusOut(param1:FocusEvent) : void
      {
         this.chatTxt.text = "使用回车可以快速发送弹幕";
      }
      
      public function showEnterRoom(param1:Boolean) : void
      {
         var show:Boolean = param1;
         if(stage)
         {
            if(this._enterRoom == null)
            {
               this._enterRoom = new IndexEnterRoom();
               this._enterRoom.mouseChildren = false;
               this._enterRoom.buttonMode = true;
               this._enterRoom.addEventListener(MouseEvent.MOUSE_OVER,function(param1:MouseEvent):void
               {
                  _enterRoom.gotoAndStop(2);
                  _enterRoom.keyFrameMC.gotoAndPlay(1);
               });
               this._enterRoom.addEventListener(MouseEvent.MOUSE_OUT,function(param1:MouseEvent):void
               {
                  _enterRoom.gotoAndStop(1);
               });
               this._enterRoom.addEventListener(MouseEvent.CLICK,function():void
               {
                  onPauseBtnClicked(null);
                  UserBehaviorLog.getInstance().addRealLog(UserBehaviorLog.POINT_ID_INDEX_ENTER_ROOM);
                  if(Param.roomLink == null || Param.roomLink == "")
                  {
                     navigateToURL(new URLRequest(GlobalData.prefix + Param.DomainName + "/" + Param.RoomId),"_self");
                  }
                  else
                  {
                     navigateToURL(new URLRequest(GlobalData.prefix + Param.DomainName + Param.roomLink),"_self");
                  }
               });
            }
            if(show)
            {
               if(this._enterState == "enterHiding")
               {
                  if(this._enterAnimate)
                  {
                     this._enterAnimate.kill();
                  }
                  if(!GlobalData.TIPLAYER.contains(this._enterRoom))
                  {
                     GlobalData.TIPLAYER.addChildAt(this._enterRoom,0);
                  }
                  this._enterRoom.alpha = 0;
                  this._enterAnimate = TweenLite.to(this._enterRoom,0.3,{"alpha":1});
                  this.resize(stage.stageWidth,stage.stageHeight);
                  this._enterState = "enterShowing";
               }
            }
            else if(this._enterState == "enterShowing")
            {
               if(this._enterAnimate)
               {
                  this._enterAnimate.kill();
               }
               this._enterAnimate = TweenLite.to(this._enterRoom,0.3,{"alpha":0});
               this._enterState = "enterHiding";
            }
         }
      }
      
      private function initSettingLabel() : void
      {
         this.settingPanel = this._controlBar.settingPanel;
         this.settingPanel.visible = false;
         this.noLabel = this.settingPanel.noLabel;
         this.highLabel = this.settingPanel.highLabel;
         this.middleLabel = this.settingPanel.middleLabel;
         this.lowLabel = this.settingPanel.lowLabel;
         this.fullLabel = this.settingPanel.fullLabel;
         this.downLabel = this.settingPanel.downLabel;
         this.upLabel = this.settingPanel.upLabel;
         this.fullScreenInputBtn = this.settingPanel.fullScreenInputBtn;
         this.noLabel.gotoAndStop(1);
         this.highLabel.gotoAndStop(1);
         this.middleLabel.gotoAndStop(1);
         this.lowLabel.gotoAndStop(1);
         this.fullLabel.gotoAndStop(1);
         this.downLabel.gotoAndStop(1);
         this.upLabel.gotoAndStop(1);
         this.fullScreenInputBtn.gotoAndStop(2);
         this.fullScreenInputBtn.buttonMode = true;
         if(GlobalData.textAlphaValue == 0.85)
         {
            this.lowLabel.gotoAndStop(2);
         }
         else if(GlobalData.textAlphaValue == 1)
         {
            this.noLabel.gotoAndStop(2);
         }
         else if(GlobalData.textAlphaValue == 0.35)
         {
            this.highLabel.gotoAndStop(2);
         }
         else if(GlobalData.textAlphaValue == 0.7)
         {
            this.middleLabel.gotoAndStop(2);
         }
         if(GlobalData.danmuModel == 1)
         {
            this.fullLabel.gotoAndStop(2);
         }
         else if(GlobalData.danmuModel == 2)
         {
            this.upLabel.gotoAndStop(2);
         }
         else if(GlobalData.danmuModel == 3)
         {
            this.downLabel.gotoAndStop(2);
         }
         var openInputStatus:int = LocalStorage.getValue("isOpenInput",0);
         if(openInputStatus == 0)
         {
            this.fullScreenInputBtn.gotoAndStop(2);
            this.isOpenInput = false;
         }
         else
         {
            this.fullScreenInputBtn.gotoAndStop(1);
            this.isOpenInput = true;
         }
         this.fullScreenInputBtn.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            if(fullScreenInputBtn.currentFrame == 2)
            {
               fullScreenInputBtn.gotoAndStop(1);
               isOpenInput = true;
               LocalStorage.setValue("isOpenInput",1);
               if(GlobalData.root.stage.displayState != StageDisplayState.NORMAL)
               {
                  new FloatTip("重新切换播放器至全屏状态后即可进行弹幕发送",GlobalData.root.stage,GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight);
                  if(tipInputTxt.visible)
                  {
                     tipInputTxt.visible = false;
                  }
               }
               UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_CONFIG_FULLSCREEN_INPUT_TRUE);
            }
            else if(fullScreenInputBtn.currentFrame == 1)
            {
               fullScreenInputBtn.gotoAndStop(2);
               isOpenInput = false;
               LocalStorage.setValue("isOpenInput",0);
               if(GlobalData.root.stage.displayState != StageDisplayState.NORMAL)
               {
                  setCommentInputVisible(false);
               }
               UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_CONFIG_FULLSCREEN_INPUT_FALSE);
            }
         });
         this.settingPanel.addEventListener(MouseEvent.MOUSE_MOVE,function(param1:MouseEvent):void
         {
            param1.stopImmediatePropagation();
         });
         this.settingPanel.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            param1.stopImmediatePropagation();
         });
         this._controlBar.settingBtn.addEventListener(MouseEvent.CLICK,function():void
         {
            if(!settingPanel.visible)
            {
               settingPanel.visible = true;
               UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_CONFIG_OPEN);
            }
            else
            {
               settingPanel.visible = false;
            }
         });
         this.noLabel.addEventListener(MouseEvent.CLICK,function():void
         {
            noLabel.gotoAndStop(2);
            highLabel.gotoAndStop(1);
            middleLabel.gotoAndStop(1);
            lowLabel.gotoAndStop(1);
            GlobalData.textAlphaValue = 1;
            LocalStorage.setValue("textAlpha",1);
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_CONFIG_ALPHA_NONE);
         });
         this.highLabel.addEventListener(MouseEvent.CLICK,function():void
         {
            noLabel.gotoAndStop(1);
            highLabel.gotoAndStop(2);
            middleLabel.gotoAndStop(1);
            lowLabel.gotoAndStop(1);
            GlobalData.textAlphaValue = 0.35;
            LocalStorage.setValue("textAlpha",0.35);
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_CONFIG_ALPHA_HIGN);
         });
         this.middleLabel.addEventListener(MouseEvent.CLICK,function():void
         {
            noLabel.gotoAndStop(1);
            highLabel.gotoAndStop(1);
            middleLabel.gotoAndStop(2);
            lowLabel.gotoAndStop(1);
            GlobalData.textAlphaValue = 0.7;
            LocalStorage.setValue("textAlpha",0.7);
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_CONFIG_ALPHA_MID);
         });
         this.lowLabel.addEventListener(MouseEvent.CLICK,function():void
         {
            noLabel.gotoAndStop(1);
            highLabel.gotoAndStop(1);
            middleLabel.gotoAndStop(1);
            lowLabel.gotoAndStop(2);
            GlobalData.textAlphaValue = 0.85;
            LocalStorage.setValue("textAlpha",0.85);
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_CONFIG_ALPHA_LOW);
         });
         this.fullLabel.addEventListener(MouseEvent.CLICK,function():void
         {
            fullLabel.gotoAndStop(2);
            downLabel.gotoAndStop(1);
            upLabel.gotoAndStop(1);
            GlobalData.offsetUpHeight = 0;
            GlobalData.offsetDownHeight = 0;
            GlobalData.danmuModel = 1;
            LocalStorage.setValue("danmuModel",1);
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_CONFIG_COMMENT_POSITION_FULL);
         });
         this.downLabel.addEventListener(MouseEvent.CLICK,function():void
         {
            fullLabel.gotoAndStop(1);
            downLabel.gotoAndStop(2);
            upLabel.gotoAndStop(1);
            GlobalData.offsetUpHeight = int(GlobalData.root.stage.stageHeight * 0.65);
            GlobalData.offsetDownHeight = 0;
            GlobalData.danmuModel = 3;
            LocalStorage.setValue("danmuModel",3);
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_CONFIG_COMMENT_POSITION_BELOW);
         });
         this.upLabel.addEventListener(MouseEvent.CLICK,function():void
         {
            fullLabel.gotoAndStop(1);
            downLabel.gotoAndStop(1);
            upLabel.gotoAndStop(2);
            GlobalData.offsetUpHeight = 0;
            GlobalData.offsetDownHeight = int(GlobalData.root.stage.stageHeight * 0.65);
            GlobalData.danmuModel = 2;
            LocalStorage.setValue("danmuModel",2);
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_CONFIG_COMMENT_POSITION_ABOVE);
         });
      }
      
      private function __stageClick(param1:MouseEvent) : void
      {
         if(param1.target != this.settingPanel && param1.target != this._controlBar.settingBtn)
         {
            this.settingPanel.visible = false;
         }
         if(param1.target != this.selectBg && param1.target != this.currentBg && param1.target != this.yuanhuaBtn && param1.target != this.gaoBtn && param1.target != this.lowerBtn && param1.target != this.yuanhuaMC && param1.target != this.gaoMC && param1.target != this.lowerMC)
         {
            this.selectBg.visible = false;
            this.yuanhuaBtn.visible = false;
            this.gaoBtn.visible = false;
            this.lowerBtn.visible = false;
         }
      }
      
      public function get isPause() : Boolean
      {
         return !!this._controlBar?Boolean(this._controlBar.PlayBtn.visible):false;
      }
   }
}
