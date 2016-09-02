package cc.dy.view.hostCover
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import org.puremvc.as3.interfaces.IMediator;
   import flash.display.Sprite;
   import flash.display.SimpleButton;
   import org.puremvc.as3.interfaces.INotification;
   import ui.AppCode;
   import flash.events.MouseEvent;
   import util.$;
   import util.ResManager;
   
   public class HostCoverMediator extends Mediator implements IMediator
   {
      
      public static var NAME:String = "HostCoverMediator";
       
      
      private var _appCode:Sprite;
      
      private var _closeBtn:SimpleButton;
      
      public function HostCoverMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.SHOW_VIDEO_BG,Order.On_Resize];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.SHOW_VIDEO_BG:
               this.showView();
               break;
            case Order.On_Resize:
               this.resize();
         }
      }
      
      public function get view() : HostCoverView
      {
         return viewComponent as HostCoverView;
      }
      
      private function resize() : void
      {
         this.view.resize();
         this.resizeAppCode();
      }
      
      private function resizeAppCode() : void
      {
         if(this._appCode)
         {
            this._appCode.x = 50;
            this._appCode.y = GlobalData.root.stage.stageHeight - GlobalData.distanHeight - this._appCode.height;
         }
      }
      
      private function showView() : void
      {
         if(!GlobalData.VIDEO_BG_LAYER.contains(this.view))
         {
            GlobalData.VIDEO_BG_LAYER.addChild(this.view);
            this.view.setPaths(Param.videoBgUrls);
            this.view.init();
            if(!Param.IsIndex)
            {
               this._appCode = new AppCode();
               this._closeBtn = this._appCode["closeBtn"] as SimpleButton;
               if(this._closeBtn)
               {
                  this._closeBtn.addEventListener(MouseEvent.CLICK,this.closeAppCodeHandler);
               }
               this.resizeAppCode();
               if(!GlobalData.YANZHI_CODE.contains(this._appCode))
               {
                  GlobalData.YANZHI_CODE.addChild(this._appCode);
               }
            }
         }
         if(Param.getGiftEffectResUrl() == null)
         {
            $.jscall("console.log","视频区大特效资源路径获取错误！");
            return;
         }
         ResManager.instance.loadYanzhiRes(Param.getGiftEffectResUrl() + "?" + Param.swfVersion);
      }
      
      private function closeAppCodeHandler(param1:MouseEvent) : void
      {
         this.removeAppCode();
      }
      
      private function removeAppCode() : void
      {
         if(this._closeBtn)
         {
            this._closeBtn.removeEventListener(MouseEvent.CLICK,this.closeAppCodeHandler);
         }
         this._closeBtn = null;
         if(GlobalData.YANZHI_CODE.contains(this._appCode))
         {
            GlobalData.YANZHI_CODE.removeChild(this._appCode);
         }
         this._appCode = null;
      }
      
      private function removeView() : void
      {
         if(GlobalData.VIDEO_BG_LAYER.contains(this.view))
         {
            GlobalData.VIDEO_BG_LAYER.removeChild(this.view);
         }
         if(!Param.IsIndex)
         {
            this.removeAppCode();
         }
      }
   }
}
