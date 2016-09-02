package cc.dy.view.danmu
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import org.puremvc.as3.interfaces.IMediator;
   import flash.display.Sprite;
   import org.puremvc.as3.interfaces.INotification;
   import cc.dy.view.effect.ColorComentManager;
   import cc.dy.view.effect.MobileComentManager;
   import common.event.ObjectEvent;
   import cc.dy.model.comment.SingleCommentData;
   import common.event.EventCenter;
   
   public class CommentMediator extends Mediator implements IMediator
   {
      
      public static var NAME:String = "CommentMediator";
       
      
      private var colorLayer:Sprite;
      
      private var mobilePayCommentLayer:Sprite;
      
      public function CommentMediator(param1:Object)
      {
         super(NAME,param1);
         this.colorLayer = new Sprite();
         this.mobilePayCommentLayer = new Sprite();
         EventCenter.addEventListener("AddComment",this.__addComment);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.Show_Comment_Request,Order.Comment_OpenHide_Request,Order.On_Resize];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.Show_Comment_Request:
               this.showComment();
               break;
            case Order.Comment_OpenHide_Request:
               this.openHideComment(param1.getBody());
               break;
            case Order.On_Resize:
               this.onResize();
         }
      }
      
      public function showComment() : void
      {
         this.commentView.mouseChildren = false;
         this.commentView.mouseEnabled = false;
         this.colorLayer.mouseChildren = false;
         this.colorLayer.mouseEnabled = false;
         this.commentView.initComment();
         GlobalData.COMMENTLAYER.addChild(this.commentView);
         GlobalData.COMMENTLAYER.addChild(this.mobilePayCommentLayer);
         GlobalData.COMMENTLAYER.addChild(this.colorLayer);
         ColorComentManager.instance.setContainer(this.colorLayer);
         MobileComentManager.instance.setContainer(this.mobilePayCommentLayer);
         this.commentView.onResize();
         ColorComentManager.instance.resize(GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight - 40);
         MobileComentManager.instance.resize(GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight - 40);
      }
      
      public function openHideComment(param1:Object) : void
      {
         var _loc2_:Boolean = param1.status;
         this.commentView.onCommentShowStatus(_loc2_);
         this.colorLayer.visible = _loc2_;
      }
      
      public function onResize() : void
      {
         this.commentView.onResize();
         ColorComentManager.instance.resize(GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight - 40);
         MobileComentManager.instance.resize(GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight - 40);
      }
      
      public function get commentView() : CommentView
      {
         return viewComponent as CommentView;
      }
      
      private function __addComment(param1:ObjectEvent) : void
      {
         var _loc2_:SingleCommentData = param1.data as SingleCommentData;
         this.commentView.addChild(new CommentCell(_loc2_));
      }
   }
}
