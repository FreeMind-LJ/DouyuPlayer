package cc.dy.view.effect
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.utils.Timer;
   import util.$;
   import util.ResManager;
   import flash.events.Event;
   import flash.display.Graphics;
   import flash.events.TimerEvent;
   import common.event.EventCenter;
   import cc.dy.model.net.Decode;
   
   public class BigEffectCell extends Sprite
   {
       
      
      private const MC_WIDTH:Number = 720;
      
      private const MC_HEIGHT:Number = 1280;
      
      private var _mc:MovieClip;
      
      private var _mask:Sprite;
      
      private var _tip:Tip;
      
      private var _data:Object;
      
      private var _timer:Timer;
      
      private var _isSelfGive:Boolean;
      
      public function BigEffectCell(param1:Object)
      {
         super();
         this._data = param1;
         var _loc2_:Decode = new Decode();
         _loc2_.Parse(this._data.ext as String);
         var _loc3_:String = _loc2_.GetItem("uid");
         this._isSelfGive = _loc3_ == Param.userId;
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStageHandler);
      }
      
      public function get isSelfGive() : Boolean
      {
         return this._isSelfGive;
      }
      
      private function build() : void
      {
         $.asTojs("room_data_giftbat1",this._data.ext);
         var _loc1_:int = this._data.eid;
         if(Param.getActivityFlag() == null)
         {
            this.executeException();
            return;
         }
         var _loc2_:String = Param.getActivityFlag() + _loc1_;
         this._mc = ResManager.instance.getYanzhiResByName(_loc2_) as MovieClip;
         if(this._mc == null)
         {
            this.executeException();
            return;
         }
         this._mc.addEventListener(Event.ENTER_FRAME,this.playHandler);
         addChild(this._mc);
         this._mc.gotoAndPlay(1);
         this._mask = new Sprite();
         var _loc3_:Graphics = this._mask.graphics;
         _loc3_.beginFill(16711680);
         _loc3_.drawRect(0,0,100,100);
         _loc3_.endFill();
         addChild(this._mask);
         this._mc.mask = this._mask;
         this._timer = new Timer(1000,1);
         this._timer.addEventListener(TimerEvent.TIMER,this.timerHandler);
         this._timer.start();
         EventCenter.addEventListener("ResizeChange",this.resizeHandler);
      }
      
      private function playHandler(param1:Event) : void
      {
         if(this._mc.currentFrame == this._mc.totalFrames)
         {
            this.dispatchEvent(new Event("playComplete"));
         }
      }
      
      public function clear() : void
      {
         EventCenter.removeEventListener("ResizeChange",this.resizeHandler);
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStageHandler);
         if(this._mc)
         {
            this._mc.stop();
            this._mc.removeEventListener(Event.ENTER_FRAME,this.playHandler);
            if(this.contains(this._mc))
            {
               this.removeChild(this._mc);
            }
            this._mc = null;
         }
         if(this._mask && this.contains(this._mask))
         {
            this.removeChild(this._mask);
         }
         this._mask = null;
         if(this._timer)
         {
            this._timer.stop();
            this._timer.removeEventListener(TimerEvent.TIMER,this.timerHandler);
            this._timer = null;
         }
         if(this._tip)
         {
            if(this.contains(this._tip))
            {
               this.removeChild(this._tip);
               this._tip = null;
            }
         }
      }
      
      private function addedToStageHandler(param1:Event) : void
      {
         this.build();
         this.resizeHandler(null);
      }
      
      private function resizeHandler(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(isNaN(Param.videoRate))
         {
            return;
         }
         if(GlobalData.root.stage.stageWidth / (GlobalData.root.stage.stageHeight - GlobalData.distanHeight) > Param.videoRate)
         {
            _loc3_ = GlobalData.root.stage.stageHeight - GlobalData.distanHeight;
            _loc2_ = _loc3_ * Param.videoRate;
         }
         else
         {
            _loc2_ = GlobalData.root.stage.stageWidth;
            _loc3_ = _loc2_ / Param.videoRate;
         }
         if(this._mask)
         {
            this._mask.width = _loc2_;
            this._mask.height = _loc3_;
            this._mask.x = (GlobalData.root.stage.stageWidth - _loc2_) / 2;
            this._mask.y = (GlobalData.root.stage.stageHeight - GlobalData.distanHeight - _loc3_) / 2;
         }
         if(this._mc)
         {
            if(this.MC_WIDTH / this.MC_HEIGHT > Param.videoRate)
            {
               this._mc.scaleX = this._mc.scaleY = _loc3_ / this.MC_HEIGHT;
            }
            else
            {
               this._mc.scaleX = this._mc.scaleY = _loc2_ / this.MC_WIDTH;
            }
            this._mc.x = GlobalData.root.stage.stageWidth / 2;
            this._mc.y = (GlobalData.root.stage.stageHeight - GlobalData.distanHeight) / 2;
         }
         this.resizeTip();
      }
      
      private function resizeTip() : void
      {
         if(this._tip)
         {
            this._tip.x = (GlobalData.root.stage.stageWidth - this._tip.width) / 2;
            this._tip.y = GlobalData.root.stage.stageHeight * 0.45;
         }
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         var _loc2_:String = this._data.nn + " 赠送" + this._data.gn;
         this._tip = new Tip(_loc2_);
         addChild(this._tip);
         this.resizeTip();
      }
      
      private function executeException() : void
      {
         this.dispatchEvent(new Event("playComplete"));
      }
   }
}

import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFormat;
import flash.display.Graphics;

class Tip extends Sprite
{
    
   
   private var _tf:TextField;
   
   function Tip(param1:String)
   {
      super();
      this._tf = new TextField();
      this._tf.autoSize = "left";
      var _loc2_:TextFormat = new TextFormat("Microsoft YaHei",12,16777215);
      this._tf.defaultTextFormat = _loc2_;
      this._tf.text = param1;
      this._tf.x = 6;
      this._tf.y = (23 - this._tf.textHeight) / 2 - 2;
      addChild(this._tf);
      var _loc3_:Graphics = this.graphics;
      _loc3_.beginFill(0,0.5);
      _loc3_.drawRoundRect(0,0,this._tf.textWidth + 16,23,5,5);
      _loc3_.endFill();
   }
}
