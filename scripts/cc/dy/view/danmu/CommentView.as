package cc.dy.view.danmu
{
   import flash.display.Sprite;
   import cc.dy.model.comment.CommentPlugin;
   import flash.events.Event;
   
   public class CommentView extends Sprite
   {
       
      
      private var comment:CommentPlugin;
      
      public function CommentView()
      {
         super();
      }
      
      public function initComment() : void
      {
         this.comment = new CommentPlugin();
         addChild(this.comment);
      }
      
      public function onCommentShowStatus(param1:Boolean) : void
      {
         if(this.comment)
         {
            this.comment.commentShow = param1;
         }
      }
      
      public function onResize(param1:Event = null) : void
      {
         if(this.comment != null)
         {
            this.comment.resize(GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight - 40);
         }
      }
   }
}
