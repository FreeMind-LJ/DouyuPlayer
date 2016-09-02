package cc.dy.view.activity
{
   import flash.display.Sprite;
   import at666.Box;
   import flash.display.MovieClip;
   import flash.utils.Timer;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import at666.Float1;
   import at666.Float2;
   import at666.Float3;
   import util.Util;
   
   public class At666View extends Sprite
   {
       
      
      private var _666Box:Box;
      
      private var _floatBox:Sprite;
      
      private var _totalVotesBox:Sprite;
      
      private var _lightEffect:MovieClip;
      
      private var _inited666:Boolean = false;
      
      private var _timer:Timer;
      
      private var _pool:Array;
      
      private var _totalVotes:int;
      
      public function At666View()
      {
         this._pool = [];
         super();
      }
      
      public function get totalVotes() : int
      {
         return this._totalVotes;
      }
      
      public function set totalVotes(param1:int) : void
      {
         this._totalVotes = param1;
         if(this._totalVotesBox)
         {
            this.showVotes(this._totalVotes);
         }
      }
      
      public function voteChanged(param1:int) : void
      {
         var _loc2_:int = 0;
         if(param1 <= 0)
         {
            return;
         }
         this.totalVotes = this.totalVotes + param1;
         param1 = Math.min(param1,100);
         if(this._timer.running)
         {
            _loc2_ = this._timer.repeatCount - this._timer.currentCount;
            param1 = Math.min(100,param1 + _loc2_);
            this._timer.repeatCount = param1;
         }
         else
         {
            this._timer.reset();
            this._timer.repeatCount = param1;
            this._timer.start();
            if(this._lightEffect)
            {
               this._lightEffect.gotoAndStop(2);
            }
         }
      }
      
      public function initAc666() : void
      {
         var _loc1_:SimpleButton = null;
         if(!this._inited666)
         {
            this._666Box = new Box();
            addChild(this._666Box);
            this._floatBox = new Sprite();
            this._666Box.addChildAt(this._floatBox,0);
            this._totalVotesBox = this._666Box["totalVotesBox"] as Sprite;
            _loc1_ = this._666Box["closeBtn"] as SimpleButton;
            _loc1_.addEventListener(MouseEvent.CLICK,this.close666Handler);
            this._lightEffect = this._666Box["lightEffect"] as MovieClip;
            this._floatBox.mouseChildren = this._floatBox.mouseEnabled = false;
            this._totalVotesBox.mouseChildren = this._totalVotesBox.mouseEnabled = false;
            this._lightEffect.buttonMode = true;
            this._lightEffect.addEventListener(MouseEvent.CLICK,this.linkHandler);
            this.set666Position();
            this._inited666 = true;
            this._timer = new Timer(200);
            this._timer.addEventListener(TimerEvent.TIMER,this.timerHandler);
            this._timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.timerCompleHandler);
         }
      }
      
      public function resize() : void
      {
         this.set666Position();
      }
      
      private function showVotes(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:VoteNumber = null;
         if(this._totalVotesBox)
         {
            while(this._totalVotesBox.numChildren)
            {
               this._totalVotesBox.removeChildAt(0);
            }
            _loc2_ = param1.toString();
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = new VoteNumber();
               this._totalVotesBox.addChild(_loc5_);
               (_loc5_ as MovieClip).gotoAndStop(int(_loc2_.charAt(_loc4_)) + 1);
               _loc5_.x = -_loc5_.width * _loc3_ / 2 + _loc5_.width * _loc4_;
               _loc5_.y = -_loc5_.height / 2;
               _loc4_++;
            }
         }
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         this.playOneFloat();
      }
      
      private function timerCompleHandler(param1:TimerEvent) : void
      {
         if(this._lightEffect)
         {
            this._lightEffect.gotoAndStop(1);
         }
      }
      
      private function playOneFloat() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         if(this._pool.length >= 10)
         {
            _loc2_ = int(this._pool.length * Math.random());
            _loc1_ = this._pool[_loc2_];
         }
         else
         {
            _loc1_ = this.createFloat();
         }
         this._floatBox.addChild(_loc1_);
         _loc1_.gotoAndPlay(1);
         _loc1_.addEventListener(Event.ENTER_FRAME,this.playingHandler);
      }
      
      private function playingHandler(param1:Event) : void
      {
         var _loc2_:MovieClip = param1.currentTarget as MovieClip;
         if(_loc2_.currentFrame >= _loc2_.totalFrames)
         {
            _loc2_.removeEventListener(Event.ENTER_FRAME,this.playingHandler);
            this._floatBox.removeChild(_loc2_);
            if(this._pool.length <= 30)
            {
               this._pool.push(_loc2_);
            }
            else
            {
               _loc2_ = null;
            }
         }
      }
      
      private function createFloat() : MovieClip
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = int(Math.random() * 3);
         switch(_loc2_)
         {
            case 0:
               _loc1_ = new Float1();
               break;
            case 1:
               _loc1_ = new Float2();
               break;
            case 2:
               _loc1_ = new Float3();
         }
         return _loc1_;
      }
      
      private function set666Position() : void
      {
         if(this._666Box)
         {
            this._666Box.x = GlobalData.root.stage.stageWidth;
            this._666Box.y = GlobalData.root.stage.stageHeight - GlobalData.distanHeight;
         }
      }
      
      private function close666Handler(param1:MouseEvent) : void
      {
         var _loc2_:MovieClip = null;
         this._inited666 = false;
         this._timer.stop();
         this._timer.removeEventListener(TimerEvent.TIMER,this.timerHandler);
         this._timer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.timerCompleHandler);
         this._timer = null;
         while(this._floatBox.numChildren)
         {
            _loc2_ = this._floatBox.getChildAt(0) as MovieClip;
            _loc2_.stop();
            _loc2_.removeEventListener(Event.ENTER_FRAME,this.playingHandler);
            this._floatBox.removeChild(_loc2_);
         }
         this._pool = null;
         this._floatBox = null;
         while(this._totalVotesBox.numChildren)
         {
            this._totalVotesBox.removeChildAt(0);
         }
         this._totalVotesBox = null;
         removeChild(this._666Box);
         this._666Box = null;
      }
      
      private function linkHandler(param1:MouseEvent) : void
      {
         Util.openLink(GlobalData.prefix + Param.DomainName + "/cms/zt/DouYu666.html");
      }
   }
}
