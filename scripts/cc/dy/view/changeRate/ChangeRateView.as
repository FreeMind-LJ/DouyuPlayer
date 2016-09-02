package cc.dy.view.changeRate
{
   import ui.ChangeRate;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.display.SimpleButton;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import common.event.EventCenter;
   import flash.events.MouseEvent;
   import util.Util;
   import util.$;
   
   public class ChangeRateView extends ChangeRate
   {
      
      private static const LOGIN_QQ:String = "/member/oauth/signin/qq";
      
      private static const LOGIN_WEIXIN:String = "/member/oauth/signin/weixin";
      
      private static const LOGIN_WEIBO:String = "/member/oauth/signin/weibo";
      
      private static const DOWNLOAD_URL:String = "/client?platform=0";
       
      
      private var tip1:MovieClip;
      
      private var tip2:MovieClip;
      
      private var second:TextField;
      
      private var qq:SimpleButton;
      
      private var weixin:SimpleButton;
      
      private var weibo:SimpleButton;
      
      private var login:SimpleButton;
      
      private var reg:SimpleButton;
      
      private var download:MovieClip;
      
      private var secondTimer:Timer;
      
      private var currentSecond:uint;
      
      public function ChangeRateView()
      {
         super();
         this.tip1 = content.tip1;
         this.tip2 = content.tip2;
         this.tip2.visible = false;
         this.second = this.tip1.second;
         this.qq = content.qq;
         this.qq.addEventListener(MouseEvent.CLICK,function():void
         {
            Util.openWindow(LOGIN_QQ,"_blank");
         });
         this.weixin = content.weixin;
         this.weixin.addEventListener(MouseEvent.CLICK,function():void
         {
            Util.openWindow(LOGIN_WEIXIN,"_blank");
         });
         this.weibo = content.weibo;
         this.weibo.addEventListener(MouseEvent.CLICK,function():void
         {
            Util.openWindow(LOGIN_WEIBO,"_blank");
         });
         this.login = content.login;
         this.login.addEventListener(MouseEvent.CLICK,function():void
         {
            Util.exitFullscreen();
            $.asTojs("room_login_show");
         });
         this.reg = content.reg;
         this.reg.addEventListener(MouseEvent.CLICK,function():void
         {
            Util.exitFullscreen();
            $.asTojs("room_reg_show");
         });
         this.download = content.download;
         this.download.mouseChildren = false;
         this.download.buttonMode = true;
         this.download.addEventListener(MouseEvent.CLICK,function():void
         {
            Util.openWindow(DOWNLOAD_URL,"_blank");
         });
         close.addEventListener(MouseEvent.CLICK,function():void
         {
            EventCenter.dispatch("ChangeRateNotifyEvent",{"type":0});
         });
         this.secondTimer = new Timer(1000,5);
         this.secondTimer.addEventListener(TimerEvent.TIMER,this.onsecondTimer);
         this.secondTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.onsecondComplete);
      }
      
      public function resize() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(stage)
         {
            _loc1_ = stage.stageWidth;
            _loc2_ = stage.stageHeight;
            bg.scaleX = _loc1_ / 1218;
            this.download.x = this.reg.x + this.reg.width + (_loc1_ < 760?30:120);
            content.x = (_loc1_ - content.width) / 2;
            close.x = content.x + content.width + 45;
            if(close.x + close.width > _loc1_)
            {
               close.x = _loc1_ - close.width - 10;
            }
            this.y = _loc2_ - 294 - GlobalData.distanHeight;
         }
      }
      
      protected function onsecondTimer(param1:TimerEvent) : void
      {
         this.currentSecond--;
         this.second.text = this.currentSecond + "s";
      }
      
      protected function onsecondComplete(param1:TimerEvent) : void
      {
         this.tip1.visible = false;
         this.tip2.visible = true;
         Param.isFifteen = true;
         EventCenter.dispatch("forcedToSwitch",{"code":0});
      }
      
      public function start() : void
      {
         this.secondTimer.reset();
         if(Param.currentStreamType == 1)
         {
            this.tip1.visible = false;
            this.tip2.visible = true;
         }
         else
         {
            this.tip1.visible = true;
            this.tip2.visible = false;
            this.currentSecond = 5;
            this.second.text = this.currentSecond + "s";
            this.secondTimer.start();
         }
      }
   }
}
