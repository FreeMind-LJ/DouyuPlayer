package cc.dy.view.effect
{
   import common.event.ObjectEvent;
   import flash.utils.Timer;
   import common.event.EventCenter;
   
   public class EffectManager
   {
      
      private static var effectManager:cc.dy.view.effect.EffectManager;
       
      
      public var effectContainer:cc.dy.view.effect.EffectViewContainer;
      
      public var rankContainer:cc.dy.view.effect.EffectViewContainer;
      
      public var giftContainer:cc.dy.view.effect.EffectViewContainer;
      
      public var redPacketsContainer:cc.dy.view.effect.EffectViewContainer;
      
      public var christmasContainer:cc.dy.view.effect.EffectViewContainer;
      
      public var doubleHitContainer:cc.dy.view.effect.EffectViewContainer;
      
      public var Width:int;
      
      public var Height:int;
      
      public var dataArr:Array;
      
      protected var isComplete:Boolean = true;
      
      private var giftArr:Array;
      
      protected var isGiftComplete:Boolean = true;
      
      private var giftTimer:Timer;
      
      public function EffectManager()
      {
         this.dataArr = [];
         this.giftArr = [];
         super();
         this.effectContainer = new cc.dy.view.effect.EffectViewContainer(this,false);
         this.rankContainer = new cc.dy.view.effect.EffectViewContainer(this,true);
         this.giftContainer = new cc.dy.view.effect.EffectViewContainer(this,true);
         this.redPacketsContainer = new cc.dy.view.effect.EffectViewContainer(this,false);
         this.christmasContainer = new cc.dy.view.effect.EffectViewContainer(this,false);
         this.doubleHitContainer = new cc.dy.view.effect.EffectViewContainer(this,true);
         GlobalData.EFFECTLAYER.addChild(this.effectContainer);
         GlobalData.EFFECTLAYER.addChild(this.rankContainer);
         GlobalData.EFFECTLAYER.addChild(this.redPacketsContainer);
         GlobalData.EFFECTLAYER.addChild(this.giftContainer);
         GlobalData.EFFECTLAYER.addChild(this.christmasContainer);
         GlobalData.EFFECTLAYER.addChild(this.doubleHitContainer);
         EventCenter.addEventListener("GiftBroadcastEvent",this.__giftBroadcastHandler);
         EventCenter.addEventListener("DoubleHitEffectEvent",this.__DoubleHitEffectHandler);
         if(!Param.isQQApp && !Param.isYinghun)
         {
            EventCenter.addEventListener("MobileRewardEvent",this.__mobileRewardHandler);
            EventCenter.addEventListener("RankBroadcastEvent",this.__rankBroadcastHandler);
            EventCenter.addEventListener("GbroadcastEvent",this.broadcastHandler);
            EventCenter.addEventListener("YanzhiGiftMessageEvent",this.dgbHandler);
         }
      }
      
      public static function get instance() : cc.dy.view.effect.EffectManager
      {
         if(effectManager == null)
         {
            effectManager = new cc.dy.view.effect.EffectManager();
         }
         return effectManager;
      }
      
      public function addEffectData(param1:Object) : void
      {
         var _loc2_:EffectView = null;
         var _loc3_:Object = null;
         this.dataArr.push(param1);
         while(this.dataArr.length != 0)
         {
            if(this.isComplete)
            {
               this.isComplete = false;
               _loc3_ = this.dataArr[0] as Object;
               if(_loc3_.type == 2)
               {
                  _loc2_ = new MobileRewardTipView(_loc3_);
               }
               else if(_loc3_.type == 3)
               {
                  _loc2_ = new SuperDanmuView(_loc3_);
               }
               _loc2_.complete = this.commentComplete;
               this.effectContainer.addChild(_loc2_);
               _loc2_.start();
               this.isComplete = true;
               this.dataArr.shift();
            }
         }
      }
      
      public function resize(param1:int, param2:int) : void
      {
         this.Width = param1 - 10;
         this.Height = param2;
      }
      
      public function commentComplete(param1:EffectView) : void
      {
         if(param1.parent)
         {
            param1.parent.removeChild(param1);
         }
         param1 = null;
      }
      
      private function __mobileRewardHandler(param1:ObjectEvent) : void
      {
         this.addEffectData(param1.data);
      }
      
      private function __giftBroadcastHandler(param1:ObjectEvent) : void
      {
         var _loc2_:GiftEffectView = null;
         var _loc5_:cc.dy.view.effect.EffectViewContainer = null;
         var _loc3_:Object = param1.data;
         var _loc4_:int = param1.data.haslb;
         if(Param.isYinghun && (_loc4_ != 1 && _loc4_ != 2 || (!GlobalData.yinghunRooms || GlobalData.yinghunRooms.indexOf(_loc3_.rid.toString()) == -1)))
         {
            return;
         }
         if(Param.isQQApp && (_loc4_ != 1 && _loc4_ != 2 || (!GlobalData.qqappRooms || GlobalData.qqappRooms.indexOf(_loc3_.rid.toString()) == -1)))
         {
            return;
         }
         _loc5_ = _loc4_ > 1000?this.christmasContainer:this.giftContainer;
         _loc2_ = new GiftEffectView(_loc3_);
         _loc2_.complete = this.commentComplete;
         _loc2_.x = this.Width;
         _loc2_.y = 0;
         _loc5_.addChild(_loc2_);
         _loc2_.start();
      }
      
      private function dgbHandler(param1:ObjectEvent) : void
      {
         var _loc2_:Object = param1.data;
         var _loc3_:BigEffectCell = new BigEffectCell(_loc2_);
         GlobalData.GIFT_EFFECT_LAYER.addChild(_loc3_);
      }
      
      private function broadcastHandler(param1:ObjectEvent) : void
      {
         var _loc2_:cc.dy.view.effect.EffectViewContainer = null;
         var _loc3_:GiftEffectView2 = new GiftEffectView2(param1.data);
         _loc3_.complete = this.commentComplete;
         _loc3_.x = this.Width;
         var _loc4_:int = int(param1.data.gbcss);
         if(_loc4_ == 3)
         {
            _loc2_ = this.redPacketsContainer;
            _loc3_.y = 0;
         }
         else if(_loc4_ == 4 || _loc4_ == 5)
         {
            _loc2_ = this.doubleHitContainer;
            _loc3_.y = 80;
         }
         _loc2_.addChild(_loc3_);
         _loc3_.start();
      }
      
      private function __DoubleHitEffectHandler(param1:ObjectEvent) : void
      {
         var _loc2_:GiftEffectView = new GiftEffectView(param1.data);
         _loc2_.complete = this.commentComplete;
         _loc2_.x = this.Width;
         _loc2_.y = 80;
         this.doubleHitContainer.addChild(_loc2_);
         _loc2_.start();
      }
      
      private function __rankBroadcastHandler(param1:ObjectEvent) : void
      {
         var _loc3_:WeekRankView = null;
         var _loc2_:Object = param1.data;
         if(_loc2_.rankType == 1 || _loc2_.rankType == 2)
         {
            _loc3_ = new WeekRankView(_loc2_);
            _loc3_.complete = this.commentComplete;
            _loc3_.x = this.Width;
            _loc3_.y = 85;
            this.rankContainer.addChild(_loc3_);
            _loc3_.start();
         }
      }
   }
}
