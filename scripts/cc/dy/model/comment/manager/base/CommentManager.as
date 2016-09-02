package cc.dy.model.comment.manager.base
{
   import flash.display.Sprite;
   import cc.dy.model.comment.CommentConfig;
   import cc.dy.model.comment.space.CommentSpaceManager;
   import cc.dy.model.comment.SingleCommentData;
   import cc.dy.model.comment.entity.base.IComment;
   import flash.display.DisplayObject;
   import cc.dy.model.comment.entity.base.Comment;
   
   public class CommentManager implements ICommentManager
   {
       
      
      private var clip:Sprite;
      
      private var config:CommentConfig;
      
      protected var space_manager:CommentSpaceManager;
      
      public function CommentManager(param1:Sprite)
      {
         super();
         this.clip = param1;
         this.config = CommentConfig.instance;
         this.setSpaceManager();
      }
      
      protected function setSpaceManager() : void
      {
         this.space_manager = new CommentSpaceManager();
      }
      
      public function start(param1:SingleCommentData) : void
      {
         param1.on = true;
         var _loc2_:IComment = this.getComment(param1);
         _loc2_.complete = this.commentComplete;
         this.add2Space(_loc2_);
         this.clip.addChild(_loc2_ as DisplayObject);
         _loc2_.start();
      }
      
      protected function add2Space(param1:IComment) : void
      {
         this.space_manager.add(Comment(param1));
      }
      
      protected function removeFromSpace(param1:IComment) : void
      {
         this.space_manager.remove(Comment(param1));
      }
      
      protected function getComment(param1:SingleCommentData) : IComment
      {
         var _loc2_:Comment = new Comment();
         _loc2_.initCommentData(param1);
         return _loc2_;
      }
      
      protected function complete(param1:SingleCommentData) : void
      {
         param1.on = false;
      }
      
      public function resize(param1:Number, param2:Number) : void
      {
         this.space_manager.setRectangle(param1,param2);
      }
      
      public function commentComplete(param1:IComment) : void
      {
         this.complete(Comment(param1).data);
         this.removeFromSpace(param1);
         this.clip.removeChild(DisplayObject(param1));
      }
   }
}
