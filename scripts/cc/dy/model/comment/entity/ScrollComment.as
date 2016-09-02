package cc.dy.model.comment.entity
{
   import cc.dy.model.comment.entity.base.Comment;
   import com.greensock.TweenLite;
   import com.greensock.easing.Linear;
   
   public class ScrollComment extends Comment
   {
       
      
      protected var _tw:TweenLite;
      
      public var leftTime:Number;
      
      public var endTime:Number;
      
      public var speed:Number;
      
      public function ScrollComment()
      {
         super();
      }
      
      override public function start() : void
      {
         this._tw = new TweenLite(this,duration,{
            "x":-width,
            "onComplete":this.completeHandler,
            "ease":Linear.easeInOut
         });
         this._tw.play();
      }
      
      override public function completeHandler() : void
      {
         _complete(this);
         this._tw.kill();
         delete this[this];
      }
      
      override public function resume() : void
      {
         this._tw.resume();
      }
      
      override public function pause() : void
      {
         this._tw.pause();
      }
      
      override public function doComplete() : void
      {
         this._tw.complete();
      }
   }
}
