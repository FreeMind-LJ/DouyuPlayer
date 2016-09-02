package cc.dy.view.recommend
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import util.$;
   import com.greensock.loading.DataLoader;
   import common.event.EventCenter;
   import com.greensock.events.LoaderEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class RecommendMediator extends Mediator implements IMediator
   {
      
      public static var NAME:String = "RecommendMediator";
       
      
      private var failIndex:uint;
      
      public function RecommendMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.Show_Recommend_Request,Order.Hide_Recommend_Request,Order.Video_StartPlay_Status,Order.Stream_Close_Tip,Order.On_Resize];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.Show_Recommend_Request:
               this.requestRecommend();
               break;
            case Order.Hide_Recommend_Request:
               this.hideRecommend();
               break;
            case Order.On_Resize:
               this.onResize(param1.getBody());
               break;
            case Order.Video_StartPlay_Status:
               this.hideTipTxt();
               break;
            case Order.Stream_Close_Tip:
               this.showLoadTip();
         }
      }
      
      private function requestRecommend() : void
      {
         if(this.recommendView.parent == null)
         {
            GlobalData.RECOMMENDLAYER.addChild(this.recommendView);
         }
         this.recommendView.initPanel();
         $.jscall("console.log","推荐请求=" + GlobalData.RECOMMEND_API.replace("{DOMAIN}",Param.DomainName) + "?room_id=" + Param.RoomId + "&cate_id=" + Param.cateId);
         new DataLoader(GlobalData.RECOMMEND_API.replace("{DOMAIN}",Param.DomainName) + "?cate_id=" + Param.cateId + "&rdm=" + int(new Date().time / 60000),{"onComplete":this._showCover}).load();
         this.onResize();
         Param.Status = false;
         EventCenter.dispatch("ChangeRateNotifyEvent",{"type":0});
      }
      
      private function _showCover(param1:LoaderEvent) : void
      {
         if(Param.IS_HOSTLIVE == 1 || Param.usergroupid == "5")
         {
            this.recommendView.showAppRecommend(false);
         }
         else
         {
            sendNotification(Order.Hide_Load_Request);
            sendNotification(Order.Hide_Play_Request);
            sendNotification(Order.Hide_Video_Request);
            this.recommendView.showAppRecommend(true);
         }
         var _loc2_:Array = JSON.parse(param1.target.content) as Array;
         $.jscall("console.log","推荐响应=" + _loc2_.length);
         this.recommendView.initData(this.filterCurrentRoomId(_loc2_));
      }
      
      private function filterCurrentRoomId(param1:Array) : Array
      {
         var _loc4_:Object = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            if(_loc4_.room_id != Param.RoomId)
            {
               _loc2_.push(_loc4_);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function hideRecommend() : void
      {
         if(this.recommendView.parent != null)
         {
            this.recommendView.parent.removeChild(this.recommendView);
         }
      }
      
      public function hideTipTxt() : void
      {
         clearTimeout(this.failIndex);
         this.recommendView.hideAllTxt();
      }
      
      public function showLoadTip() : void
      {
         this.failIndex = setTimeout(this.__ToFailTip,8000);
         this.recommendView.showLoad();
      }
      
      public function showFailTip() : void
      {
         this.recommendView.showFail();
      }
      
      private function __ToFailTip() : void
      {
         this.showFailTip();
      }
      
      private function onResize(param1:Object = null) : void
      {
         if(this.recommendView.parent != null)
         {
            if(Param.roomLink == null || Param.roomLink == "")
            {
               this.recommendView.width = GlobalData.root.stage.stageWidth * 0.7;
               this.recommendView.scaleY = this.recommendView.scaleX;
            }
            this.recommendView.x = GlobalData.root.stage.stageWidth / 2;
            this.recommendView.y = GlobalData.root.stage.stageHeight / 2;
         }
      }
      
      public function get recommendView() : RecommendView
      {
         return viewComponent as RecommendView;
      }
   }
}
