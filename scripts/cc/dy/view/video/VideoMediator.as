package cc.dy.view.video
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import org.puremvc.as3.interfaces.IMediator;
   import common.event.EventCenter;
   import org.puremvc.as3.interfaces.INotification;
   import common.event.ObjectEvent;
   import flash.ui.ContextMenu;
   import cc.dy.model.net.ClientProxy;
   import util.CommonUtils;
   
   public class VideoMediator extends Mediator implements IMediator
   {
      
      public static var NAME:String = "VideoMediator";
       
      
      public function VideoMediator(param1:Object)
      {
         super(NAME,param1);
         this.addListener();
      }
      
      private function addListener() : void
      {
         EventCenter.addEventListener("RecordBandWidth",this.__recordBandWidth);
         EventCenter.addEventListener("emptyFullCountStatus",this.__emptyFullCount);
         EventCenter.addEventListener("maskNotify",this.__maskNotify);
         EventCenter.addEventListener("ShowVideoLayer",this.__showVideoLayer);
         EventCenter.addEventListener("HSADComplete",this.__hsAdOk);
         EventCenter.addEventListener("GPUModelChangeEvent",this.__gpuChange);
         EventCenter.addEventListener("hostleave",this.hostleave);
         EventCenter.addEventListener("hostGoBack",this.hostGoBack);
         EventCenter.addEventListener("showVideoBg",this.showVideoBgHandler);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.Show_Video_Request,Order.Hide_Video_Request,Order.Video_Pause_Request,Order.Video_Replay_Request,Order.Video_VolumeChange_Request,Order.On_Resize,Order.Right_Menu_Request,Order.Video_Reload_Request,Order.Video_Reset_Request];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.Show_Video_Request:
               this.showVideo();
               break;
            case Order.Hide_Video_Request:
               this.hideVideo();
               break;
            case Order.Video_Pause_Request:
               this.onPause();
               break;
            case Order.Video_Replay_Request:
               this.onPlay();
               break;
            case Order.Video_VolumeChange_Request:
               this.onVolumeChange(param1.getBody());
               break;
            case Order.On_Resize:
               this.onResize();
               break;
            case Order.Right_Menu_Request:
               this.onShowRightMenu(param1.getBody());
               break;
            case Order.Video_Reload_Request:
               this.onReload();
               break;
            case Order.Video_Reset_Request:
               this.onReset();
         }
      }
      
      public function showVideo() : void
      {
         if(this.videoView.parent == null)
         {
            GlobalData.VIDEOLAYER.addChild(this.videoView);
         }
         this.videoView.anotherLoadeVideo(this.startPlay);
      }
      
      public function __showVideoLayer(param1:ObjectEvent) : void
      {
         if(this.videoView.parent == null)
         {
            GlobalData.VIDEOLAYER.addChild(this.videoView);
         }
      }
      
      public function hideVideo() : void
      {
         if(this.videoView.parent != null)
         {
            this.videoView.parent.removeChild(this.videoView);
         }
         this.onPause();
      }
      
      private function startPlay() : void
      {
         sendNotification(Order.Show_Play_Request,null);
         sendNotification(Order.Video_StartPlay_Status,null);
         sendNotification(Order.Hide_Load_Request,null);
      }
      
      public function onPlay() : void
      {
         this.videoView.anotherResetPlayer();
      }
      
      public function onPause() : void
      {
         this.videoView.anotherPause();
      }
      
      public function onVolumeChange(param1:Object) : void
      {
         var _loc2_:Number = param1.size;
         this.videoView.anotherVolumeChange(_loc2_);
      }
      
      public function onResize() : void
      {
         this.videoView.anotherResize();
      }
      
      public function onShowRightMenu(param1:Object) : void
      {
         this.videoView.anotherShowRightMenu(param1 as ContextMenu);
      }
      
      public function onReload() : void
      {
         this.videoView.reload();
         this.videoView.anotherReload();
      }
      
      public function onReset() : void
      {
         this.videoView.reload();
         this.videoView.anotherReset();
         if(this.videoView.parent != null)
         {
            this.videoView.parent.removeChild(this.videoView);
         }
      }
      
      private function __recordBandWidth(param1:ObjectEvent) : void
      {
         var _loc2_:Number = param1.data.num;
         var _loc3_:ClientProxy = facade.retrieveProxy(ClientProxy.NAME) as ClientProxy;
         _loc3_.onSendByteCount(_loc2_);
      }
      
      private function __emptyFullCount(param1:ObjectEvent) : void
      {
         var _loc2_:String = "";
         var _loc3_:int = param1.data.playstate;
         var _loc4_:int = param1.data.enum;
         var _loc5_:int = param1.data.fnum;
         var _loc6_:String = param1.data.rtmlUrl;
         var _loc7_:int = param1.data.isP2p;
         if(_loc3_ == 3)
         {
            _loc2_ = param1.data.error;
         }
         var _loc8_:Object = {"ex":_loc2_};
         var _loc9_:ClientProxy = facade.retrieveProxy(ClientProxy.NAME) as ClientProxy;
         _loc9_.onSendEmptyOrFullCount(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,CommonUtils.encode(_loc8_));
      }
      
      private function __maskNotify(param1:ObjectEvent) : void
      {
         this.videoView.addMaskAds();
      }
      
      private function __hsAdOk(param1:ObjectEvent) : void
      {
         if(GlobalData.isPlayOK)
         {
            this.startPlay();
         }
      }
      
      private function __gpuChange(param1:ObjectEvent) : void
      {
         this.videoView.changRenderModel(param1.data.type);
      }
      
      private function hostleave(param1:ObjectEvent) : void
      {
         this.videoView.addFilter();
      }
      
      private function hostGoBack(param1:ObjectEvent) : void
      {
         this.videoView.RemoveFilter();
      }
      
      private function showVideoBgHandler(param1:ObjectEvent) : void
      {
         sendNotification(Order.SHOW_VIDEO_BG);
      }
      
      public function get videoView() : VideoView
      {
         return viewComponent as VideoView;
      }
   }
}
