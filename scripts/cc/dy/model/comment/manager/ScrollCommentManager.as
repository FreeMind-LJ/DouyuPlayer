package cc.dy.model.comment.manager
{
   import cc.dy.model.comment.manager.base.CommentManager;
   import cc.dy.model.comment.entity.ScrollCommentPool;
   import cc.dy.model.comment.space.ScrollCommentSpaceManager;
   import cc.dy.model.comment.entity.base.IComment;
   import cc.dy.model.comment.SingleCommentData;
   import cc.dy.model.comment.entity.ScrollComment;
   import flash.display.Sprite;
   
   public class ScrollCommentManager extends CommentManager
   {
       
      
      private var pool:ScrollCommentPool;
      
      public function ScrollCommentManager(param1:Sprite)
      {
         super(param1);
         this.pool = new ScrollCommentPool();
      }
      
      override protected function setSpaceManager() : void
      {
         this.space_manager = new ScrollCommentSpaceManager();
      }
      
      override protected function getComment(param1:SingleCommentData) : IComment
      {
         var _loc2_:ScrollComment = this.pool.getObject();
         _loc2_.initCommentData(param1);
         return _loc2_;
      }
      
      override public function commentComplete(param1:IComment) : void
      {
         super.commentComplete(param1);
         this.pool.returnObject(param1 as ScrollComment);
      }
   }
}
