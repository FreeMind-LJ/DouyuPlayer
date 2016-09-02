package cc.dy.model.comment.entity.base
{
   import flash.utils.Timer;
   import cc.dy.model.comment.CommentConfig;
   import cc.dy.model.comment.SingleCommentData;
   import flash.filters.GlowFilter;
   import flash.events.TimerEvent;
   
   public class Comment extends SimpleCommentEngine implements IComment
   {
       
      
      protected var _complete:Function;
      
      protected var _index:int;
      
      protected var _bottom:int;
      
      protected var _tm:Timer;
      
      protected var config:CommentConfig;
      
      public var data:SingleCommentData;
      
      public var stime:Number;
      
      public var duration:Number;
      
      public function Comment()
      {
         this.config = CommentConfig.instance;
         super();
      }
      
      public function initCommentData(param1:SingleCommentData) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         if(this.data && this.data.canQuickSet(param1))
         {
            this.data = param1;
            this.stime = this.data.stime / 1000;
            quickSet(this.data.text);
         }
         else
         {
            this.data = param1;
            this.stime = this.data.stime / 1000;
            _loc2_ = this.data.size;
            _loc3_ = true;
            if(_loc2_ > 99)
            {
               _loc3_ = false;
               _loc2_ = _loc2_ - 100;
            }
            initData(this.config.font,this.config.sizee * _loc2_,this.data.color,this.config.bold,!!this.data.border?196607:-1,this.data.text);
            if(_loc3_)
            {
               this.filters = [new GlowFilter(0,1,2,2,3)];
            }
         }
         this.alpha = GlobalData.textAlphaValue;
      }
      
      public function setY(param1:int, param2:int, param3:Function) : void
      {
         this.y = param3(param1,this);
         this._index = param2;
         this._bottom = param1 + this.height + 2;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get bottom() : int
      {
         return this._bottom;
      }
      
      public function get right() : int
      {
         return this.x + this.width + 100;
      }
      
      public function resume() : void
      {
         this._tm.start();
      }
      
      public function pause() : void
      {
         this._tm.stop();
      }
      
      public function start() : void
      {
         this._tm = new Timer(250,10);
         this._tm.addEventListener(TimerEvent.TIMER_COMPLETE,function(param1:TimerEvent):void
         {
            completeHandler();
         });
         this._tm.start();
      }
      
      public function completeHandler() : void
      {
         this._complete();
      }
      
      public function set complete(param1:Function) : void
      {
         this._complete = param1;
      }
      
      public function doComplete() : void
      {
         this._tm.stop();
         this._tm.removeEventListener(TimerEvent.TIMER_COMPLETE,this.completeHandler);
         this.completeHandler();
      }
      
      public function get innerText() : String
      {
         return this.data.text;
      }
      
      public function get item() : SingleCommentData
      {
         return this.data;
      }
   }
}
