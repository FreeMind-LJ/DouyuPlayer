package cc.dy.view.play
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import common.event.ObjectEvent;
   import common.event.EventCenter;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import util.Util;
   import flash.events.MouseEvent;
   import util.SkinEvent;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import util.UserBehaviorLog;
   import util.LocalStorage;
   import flash.display.StageDisplayState;
   import util.$;
   import util.Log;
   import flash.events.Event;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   import util.FloatTip;
   import cc.dy.model.net.Encode;
   
   public class PlayMediator extends Mediator implements IMediator
   {
      
      public static var NAME:String = "PlayMediator";
       
      
      private var inputIsShow:Boolean = false;
      
      private var isFirstPlay:Boolean = true;
      
      public var tipTime:uint;
      
      private var _pageFullScreenState:int;
      
      private var loginTimeIndex:uint;
      
      private var isQuit:Boolean = false;
      
      private var disappear:Timer;
      
      private var isOpenInputTip:Boolean = false;
      
      public function PlayMediator(param1:Object)
      {
         this.disappear = new Timer(10000,1);
         super(NAME,param1);
         EventCenter.addEventListener("lineChangeEvent",this.__lineChange);
         EventCenter.addEventListener("P2pErrorChangeEvent",this.__lineChange);
         EventCenter.addEventListener("ReloadStreamEvent",this.__reloadStream);
         EventCenter.addEventListener("StarttimeLoginTip",this.__timeloginTip);
         EventCenter.addEventListener("breakRuleTipEvent",this.onPageNormalScreen);
         EventCenter.addEventListener("sendPlayerEvent",this.sendPlayerres);
         EventCenter.addEventListener("PageFullScreenState",this.__jsPageFullScreenState);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.Show_Play_Request,Order.Hide_Play_Request,Order.Video_StartPlay_Status,Order.On_Resize,Order.Video_Reset_Request,Order.Rate_Status_Response,Order.Video_Silent_Request,Order.Video_Pause_RequestByUserHandle,Order.Video_Reload_RequestByUserHandle];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.Show_Play_Request:
               this.showPlayControlBar();
               break;
            case Order.Hide_Play_Request:
               this.hidePlayControlBar();
               break;
            case Order.Video_StartPlay_Status:
               this.onVideoStartPlayStatus();
               break;
            case Order.Video_Reset_Request:
               this.onReset();
               break;
            case Order.On_Resize:
               this.onResize();
               break;
            case Order.Rate_Status_Response:
               this.rateLabelUpdate();
               break;
            case Order.Video_Silent_Request:
               this.onSilentRequest(param1.getBody());
               break;
            case Order.Video_Pause_RequestByUserHandle:
               this.onPauseByUserNoHandle();
               break;
            case Order.Video_Reload_RequestByUserHandle:
               this.reLoadByUserNoHandle();
         }
      }
      
      private function __lineChange(param1:ObjectEvent) : void
      {
         this.playView.resetPlayPause();
         EventCenter.dispatch("Reload");
      }
      
      private function __reloadStream(param1:ObjectEvent) : void
      {
         this.playView.resetPlayPause();
         EventCenter.dispatch("Reload");
         sendNotification(Order.Hide_Recommend_Request,null);
         EventCenter.dispatch("ShowVideoLayer");
      }
      
      private function __timeloginTip(param1:ObjectEvent) : void
      {
         var e:ObjectEvent = param1;
         clearTimeout(this.loginTimeIndex);
         this.loginTimeIndex = setTimeout(function():void
         {
            playView.showControlBarSkin();
         },15 * 60 * 1000);
      }
      
      public function showPlayControlBar() : void
      {
         this.playView.initPanel();
         this.addListener();
         if(this.playView.parent == null)
         {
            GlobalData.PLAYLAYER.addChild(this.playView);
         }
         this.playView.volume = !!Param.IS_HOSTLIVE?Number(0):Number(this.playView.volume);
         this.playView.resize(GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight);
         if(!Param.IsIndex && Param.currentStreamType != 1)
         {
            Util.switchRateTip(true);
         }
      }
      
      public function hidePlayControlBar() : void
      {
         if(this.playView.parent != null)
         {
            this.playView.parent.removeChild(this.playView);
         }
      }
      
      public function onVideoStartPlayStatus() : void
      {
         if(!GlobalData.root.stage.hasEventListener(MouseEvent.DOUBLE_CLICK))
         {
            GlobalData.root.stage.addEventListener(MouseEvent.DOUBLE_CLICK,this.onDoubleClick);
         }
      }
      
      public function onReset() : void
      {
         this.playView.resetPlayPause();
      }
      
      public function onResize() : void
      {
         if(this.playView.parent != null)
         {
            this.playView.resize(GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight);
         }
         this.playView.hideShowSkin();
      }
      
      public function rateLabelUpdate() : void
      {
         this.playView.updateRateLabel();
      }
      
      public function addListener() : void
      {
         if(!this.playView.hasEventListener(SkinEvent.SKIN_PLAY))
         {
            this.playView.addEventListener(SkinEvent.SKIN_PLAY,this.onPlay);
            this.playView.addEventListener(SkinEvent.SKIN_PAUSE,this.onPause);
            this.playView.addEventListener(SkinEvent.SKIN_SILENT,this.onSilent);
            this.playView.addEventListener(SkinEvent.SKIN_SILENT_CANCEL,this.onSilentCancel);
            this.playView.addEventListener(SkinEvent.SKIN_VOLUME_CHANGE,this.onVolumeChange);
            this.playView.addEventListener(SkinEvent.SKIN_COMMENT_SHOW,this.onCommentShow);
            this.playView.addEventListener(SkinEvent.SKIN_COMMENT_HIDE,this.onCommentHide);
            this.playView.addEventListener(SkinEvent.SKIN_FULLSCREEN,this.onFullscreen);
            this.playView.addEventListener(SkinEvent.SKIN_NORMALSCREEN,this.onNormalscreen);
            this.playView.addEventListener(SkinEvent.SKIN_SENDCOMMENT,this.onSkinSendComment);
            this.playView.addEventListener(SkinEvent.SKIN_RELOAD,this.reload);
            this.playView.addEventListener(SkinEvent.SKIN_PAGEFULLSCREEN,this.onPageFullScreen);
            this.playView.addEventListener(SkinEvent.SKIN_QUITPAGEFULLSCREEN,this.onPageNormalScreen);
            this.playView.addEventListener(SkinEvent.SKIN_FEEDBACK,this.onFeedBack);
            this.playView.addEventListener(SkinEvent.SKIN_SYSTEM_FULLSCREEN,this.systemFullScreen);
            GlobalData.root.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.__keydown);
            GlobalData.root.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.__mouseMove);
            if(!Param.IsIndex)
            {
               this.disappear.addEventListener(TimerEvent.TIMER,this.__disAppearChat);
               this.disappear.reset();
               this.disappear.start();
            }
         }
      }
      
      protected function onPlay(param1:SkinEvent) : void
      {
         this.playView.resetPlayPause();
         EventCenter.dispatch("Reload");
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_PLAY);
         EventCenter.dispatch("clickPlayButtonUserHandleEvent");
      }
      
      protected function onPause(param1:SkinEvent) : void
      {
         sendNotification(Order.Video_Pause_Request,null);
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_PAUSE);
      }
      
      protected function onSilent(param1:SkinEvent) : void
      {
         this.playView.volume = 0;
         LocalStorage.saveVolume(this.playView.volume);
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_SILENT);
      }
      
      protected function onSilentCancel(param1:SkinEvent) : void
      {
         this.playView.volume = 0.5;
         LocalStorage.saveVolume(this.playView.volume);
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_SILENT_CANCEL);
      }
      
      private function onSilentRequest(param1:Boolean) : void
      {
         this.playView.volume = !!param1?Number(0):Number(0.5);
      }
      
      protected function onVolumeChange(param1:SkinEvent) : void
      {
         sendNotification(Order.Video_VolumeChange_Request,{"size":param1.data});
      }
      
      protected function onCommentShow(param1:SkinEvent) : void
      {
         sendNotification(Order.Comment_OpenHide_Request,{"status":true});
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_COMMENT_SHOW);
      }
      
      protected function onCommentHide(param1:SkinEvent) : void
      {
         sendNotification(Order.Comment_OpenHide_Request,{"status":false});
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_COMMENT_HIDE);
      }
      
      protected function onFullscreen(param1:SkinEvent) : void
      {
         GlobalData.distanHeight = 0;
         GlobalData.root.stage.displayState = Param.IsIndex || GlobalData.isYouke == 0 || !this.playView.isOpenInput?StageDisplayState.FULL_SCREEN:StageDisplayState.FULL_SCREEN_INTERACTIVE;
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_FULLSCREEN_DESKTOP);
      }
      
      protected function onNormalscreen(param1:SkinEvent) : void
      {
         GlobalData.root.stage.displayState = StageDisplayState.NORMAL;
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_FULLSCREEN_CANCEL);
      }
      
      protected function onSkinSendComment(param1:SkinEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(Param.isPs == 1)
         {
            $.asTojs("room_bus_phock",null);
            return;
         }
         if(!GlobalData.OldModel)
         {
            $.asTojs("room_data_reg",param1.data);
         }
         else
         {
            _loc2_ = Util.sendMsgByJs(param1.data) as Array;
            Log.debug("send result is ...");
            if(_loc2_)
            {
               Log.debug(_loc2_.join(","));
               switch(_loc2_[0])
               {
                  case 0:
                     _loc3_ = int(_loc2_[1]);
                     if(_loc3_ > 2)
                     {
                        this.playView.showMessage("冷却时间未到",_loc3_,true);
                     }
                     break;
                  case 1:
                     this.playView.showMessage("冷却时间未到",_loc2_[1],true);
                     break;
                  case 2:
                     if(GlobalData.root.stage.displayState != StageDisplayState.NORMAL)
                     {
                        this.onNormalscreen(null);
                     }
                     $.asTojs("room_bus_pagescr",null);
                     this.inputIsShow = false;
                     this.playView.setCommentInputVisible(this.inputIsShow);
                     this.playView.resetFullOrNormaBtnVisible(true);
                     this.playView.controlBarDisplayNormal();
                     $.jscall(_loc2_[1]);
               }
            }
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_COMMENT_SEND);
         }
      }
      
      private function sendPlayerres(param1:ObjectEvent) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Array = param1.data.res as Array;
         Log.debug("send result is ...");
         if(_loc2_)
         {
            Log.debug(_loc2_.join(","));
            switch(_loc2_[0])
            {
               case 0:
                  _loc3_ = int(_loc2_[1]);
                  if(_loc3_ > 2)
                  {
                     this.playView.showMessage("冷却时间未到",_loc3_,true);
                  }
                  break;
               case 1:
                  this.playView.showMessage("冷却时间未到",_loc2_[1],true);
                  break;
               case 2:
                  if(GlobalData.root.stage.displayState != StageDisplayState.NORMAL)
                  {
                     this.onNormalscreen(null);
                  }
                  this.isQuit = true;
                  this.inputIsShow = false;
                  this.playView.setCommentInputVisible(this.inputIsShow);
                  this.playView.resetFullOrNormaBtnVisible(true);
                  this.playView.controlBarDisplayNormal();
                  if(this.isQuit)
                  {
                     this.isQuit = false;
                     $.asTojs("room_bus_pagescr",null);
                  }
            }
         }
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_COMMENT_SEND);
      }
      
      private function reload(param1:SkinEvent) : void
      {
         this.playView.resetPlayPause();
         EventCenter.dispatch("Reload");
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_RELOAD);
      }
      
      private function onPageFullScreen(param1:SkinEvent) : void
      {
         GlobalData.distanHeight = 0;
         this.playView.resetFullOrNormaBtnVisible(false);
         this.judgeInputIsShow();
         param1.preventDefault();
         param1.stopPropagation();
         if(GlobalData.root.stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE || GlobalData.root.stage.displayState == StageDisplayState.FULL_SCREEN)
         {
            this.onNormalscreen(null);
         }
         else
         {
            this.playView.controlBarDisplayFullScreen();
         }
         this.playView.setCommentInputVisible(this.inputIsShow);
         $.asTojs("room_bus_pagescr",null);
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_FULLSCREEN_WEB);
      }
      
      private function onPageNormalScreen(param1:Event) : void
      {
         this.playView.resetFullOrNormaBtnVisible(true);
         param1.preventDefault();
         param1.stopPropagation();
         if(GlobalData.root.stage.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE || GlobalData.root.stage.displayState == StageDisplayState.FULL_SCREEN)
         {
            this.onNormalscreen(null);
         }
         else
         {
            this.inputIsShow = false;
            GlobalData.distanHeight = 42;
            this.playView.controlBarDisplayNormal();
         }
         this.playView.setCommentInputVisible(this.inputIsShow);
         $.asTojs("room_bus_pagescr",null);
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_FULLSCREEN_CANCEL);
      }
      
      private function onFeedBack(param1:SkinEvent) : void
      {
         sendNotification(Order.Show_Feedback_Request,null);
      }
      
      private function __keydown(param1:KeyboardEvent) : void
      {
         this.resetDisppear();
         if(param1.keyCode == Keyboard.DOWN)
         {
            this.playView.volume = this.playView.volume - 0.05;
            LocalStorage.saveVolume(this.playView.volume);
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_VOLUME_CHANGE);
         }
         else if(param1.keyCode == Keyboard.UP)
         {
            this.playView.volume = this.playView.volume + 0.05;
            LocalStorage.saveVolume(this.playView.volume);
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_VOLUME_CHANGE);
         }
         else if(param1.keyCode == Keyboard.ENTER)
         {
            param1.stopImmediatePropagation();
            if(!Param.IsIndex)
            {
               if(!(!this.playView.isOpenInput && GlobalData.root.stage.displayState != StageDisplayState.NORMAL))
               {
                  this.playView.showAloneChatPanel();
               }
            }
         }
         else if(param1.keyCode == Keyboard.ESCAPE)
         {
            if(!Param.IsIndex)
            {
               this.playView.hideAloneChatPanel();
            }
         }
      }
      
      private function __mouseMove(param1:MouseEvent) : void
      {
         this.resetDisppear();
      }
      
      private function __disAppearChat(param1:TimerEvent) : void
      {
         if(!Param.IsIndex)
         {
            this.playView.hideAloneChatPanel();
         }
      }
      
      private function resetDisppear() : void
      {
         if(this.disappear)
         {
            this.disappear.reset();
            this.disappear.start();
         }
      }
      
      private function systemFullScreen(param1:SkinEvent) : void
      {
         var _loc2_:Boolean = param1.data.isFullScreen;
         if(_loc2_)
         {
            if(!this.playView.isPageFullScreen)
            {
               this.playView.controlBarDisplayFullScreen();
            }
            if(!Param.IsIndex && !this.isOpenInputTip)
            {
               this.tipOpeninputHandler();
            }
            this.playView.setCommentInputVisible(!Param.IsIndex && this.playView.isOpenInput);
            this.toJsScreenFullChange(1);
         }
         else
         {
            if(this.playView.isPageFullScreen)
            {
               GlobalData.distanHeight = 0;
               this.judgeInputIsShow();
            }
            else
            {
               GlobalData.distanHeight = 42;
               this.inputIsShow = false;
               this.playView.controlBarDisplayNormal();
            }
            this.playView.setCommentInputVisible(this.inputIsShow);
            if(!Param.IsIndex)
            {
               this.isOpenInputTip = false;
               clearTimeout(this.tipTime);
            }
            sendNotification(Order.On_Resize,null);
            this.toJsScreenFullChange(0);
         }
      }
      
      protected function onDoubleClick(param1:MouseEvent) : void
      {
         param1.preventDefault();
         if(GlobalData.root.stage.displayState == StageDisplayState.NORMAL)
         {
            if(!Param.IsIndex)
            {
               this.playView.resetFullOrNormaBtnVisible(this.playView.isPageFullScreen);
               if(this.playView.isPageFullScreen)
               {
                  GlobalData.distanHeight = 0;
                  this.judgeInputIsShow();
                  this.playView.controlBarDisplayFullScreen();
               }
               else
               {
                  GlobalData.distanHeight = 42;
                  this.inputIsShow = false;
                  this.playView.controlBarDisplayNormal();
               }
               this.playView.setCommentInputVisible(this.inputIsShow);
            }
            $.asTojs("room_bus_pagescr",null);
         }
         else
         {
            this.onNormalscreen(null);
         }
      }
      
      private function tipOpeninputHandler() : void
      {
         var dt:Date = null;
         var recordStatus:int = 0;
         var recordTime:Number = LocalStorage.getValue("recordTipTime",0);
         dt = new Date();
         if(recordTime == 0 || dt.time >= 24 * 60 * 60 * 1000 + recordTime)
         {
            this.isOpenInputTip = true;
            this.tipTime = setTimeout(function():void
            {
               LocalStorage.setValue("recordTipTime",dt.time);
               LocalStorage.setValue("recordTipStatus",1);
               new FloatTip("在设置中可以选择开关全屏弹幕输入",GlobalData.root.stage,GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight,3000);
            },5000);
         }
         else
         {
            recordStatus = LocalStorage.getValue("recordTipStatus",0);
            if(recordStatus == 0)
            {
               this.isOpenInputTip = true;
               this.tipTime = setTimeout(function():void
               {
                  LocalStorage.setValue("recordTipTime",dt.time);
                  LocalStorage.setValue("recordTipStatus",1);
                  new FloatTip("在设置中可以选择开关全屏弹幕输入",GlobalData.root.stage,GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight,3000);
               },5000);
            }
         }
      }
      
      public function get playView() : PlayView
      {
         return viewComponent as PlayView;
      }
      
      protected function onPauseByUserNoHandle() : void
      {
         this.playView.ChangePauseButton(0);
         sendNotification(Order.Video_Pause_Request,null);
      }
      
      protected function reLoadByUserNoHandle() : void
      {
         $.jscall("console.log","加载流---");
         this.playView.ChangePauseButton(1);
         this.playView.resetPlayPause();
         EventCenter.dispatch("Reload");
      }
      
      private function toJsScreenFullChange(param1:int) : void
      {
         var _loc2_:Encode = null;
         if(!Param.IsIndex)
         {
            _loc2_ = new Encode();
            _loc2_.AddItem_int("state",param1);
            $.asTojs("room_screenChange",_loc2_.Get_SttString());
         }
      }
      
      private function __jsPageFullScreenState(param1:ObjectEvent) : void
      {
         this._pageFullScreenState = param1.data.state;
         if(this.playView.isPageFullScreen)
         {
            this.judgeInputIsShow();
            this.playView.setCommentInputVisible(this.inputIsShow);
         }
      }
      
      private function judgeInputIsShow() : void
      {
         if(this._pageFullScreenState == 0)
         {
            this.inputIsShow = false;
         }
         else if(this._pageFullScreenState == 1)
         {
            this.inputIsShow = true;
         }
      }
   }
}
