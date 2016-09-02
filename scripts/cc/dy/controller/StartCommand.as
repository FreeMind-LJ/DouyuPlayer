package cc.dy.controller
{
   import org.puremvc.as3.patterns.command.SimpleCommand;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import cc.dy.model.net.ClientProxy;
   import cc.dy.view.hostCover.HostCoverMediator;
   import cc.dy.view.hostCover.HostCoverView;
   import cc.dy.view.login.LoginMediator;
   import cc.dy.view.login.LoginView;
   import cc.dy.view.recommend.RecommendMediator;
   import cc.dy.view.recommend.RecommendView;
   import cc.dy.view.load.LoadMediator;
   import cc.dy.view.load.LoadView;
   import cc.dy.view.video.VideoMediator;
   import cc.dy.view.video.VideoView;
   import cc.dy.view.userNoHandle.UserNoHandleMediator;
   import cc.dy.view.userNoHandle.UserNoHandleView;
   import cc.dy.view.play.PlayMediator;
   import cc.dy.view.play.PlayView;
   import cc.dy.view.danmu.CommentMediator;
   import cc.dy.view.danmu.CommentView;
   import cc.dy.view.feedBack.FeedBackMediator;
   import cc.dy.view.feedBack.FeedBackView;
   import cc.dy.view.illegal.IllegalMediator;
   import cc.dy.view.illegal.IllegalView;
   import cc.dy.view.ticket.TicketMediator;
   import cc.dy.view.ticket.TicketView;
   import cc.dy.view.pwd.PwdMediator;
   import cc.dy.view.pwd.PwdView;
   import cc.dy.view.changeRate.ChangeRateMediator;
   import cc.dy.view.changeRate.ChangeRateView;
   import cc.dy.view.activity.At666Mediator;
   import cc.dy.view.activity.At666View;
   import util.ResManager;
   import util.LocalConnectionManager;
   import util.LocalStorage;
   import cc.dy.view.plug.PlugManager;
   import common.event.EventCenter;
   import cc.dy.view.titlebar.TitleBarMediator;
   import cc.dy.view.titlebar.TitleBarView;
   import flash.display.Loader;
   import flash.net.URLRequest;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import util.$;
   
   public class StartCommand extends SimpleCommand implements ICommand
   {
       
      
      private var publishLoader:Loader;
      
      public function StartCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var notification:INotification = param1;
         facade.registerMediator(new HostCoverMediator(new HostCoverView()));
         facade.registerMediator(new LoginMediator(new LoginView()));
         facade.registerMediator(new RecommendMediator(new RecommendView()));
         facade.registerMediator(new LoadMediator(new LoadView()));
         facade.registerMediator(new VideoMediator(new VideoView()));
         facade.registerMediator(new UserNoHandleMediator(new UserNoHandleView()));
         facade.registerMediator(new PlayMediator(new PlayView()));
         facade.registerMediator(new CommentMediator(new CommentView()));
         facade.registerMediator(new FeedBackMediator(new FeedBackView()));
         facade.registerMediator(new IllegalMediator(new IllegalView()));
         facade.registerMediator(new TicketMediator(new TicketView()));
         facade.registerMediator(new PwdMediator(new PwdView()));
         facade.registerMediator(new ChangeRateMediator(new ChangeRateView()));
         facade.registerMediator(new At666Mediator(new At666View()));
         var root:WebRoom = notification.getBody() as WebRoom;
         var clientProxy:ClientProxy = new ClientProxy();
         facade.registerProxy(clientProxy);
         if(!Param.IsIndex)
         {
            ResManager.instance.loadRes(Param.effectResUrl + "?" + Param.swfVersion);
            ResManager.instance.loadBroadRes(Param.ASSET_URL + "simplayer/assets/broadcast.swf?" + Param.swfVersion);
         }
         LocalConnectionManager.instance.init();
         var isClose:int = LocalStorage.getValue("HSAdState",0);
         if(Param.IsIndex)
         {
            if(!Param.Status)
            {
               sendNotification(Order.Show_Recommend_Request,null);
               return;
            }
            if(isClose == 0 && Param.cdnType == 1)
            {
               PlugManager.instance.addHSAd(function(param1:int):void
               {
                  if(param1 == 1)
                  {
                     LocalConnectionManager.instance.Send({
                        "posStr":Param.pos,
                        "state":Param.adState
                     });
                  }
                  else if(param1 == 2)
                  {
                     GlobalData.isHSAdOK = true;
                     EventCenter.dispatch("HSADComplete",null);
                  }
                  else if(param1 == 3)
                  {
                     LocalConnectionManager.instance.Send({
                        "posStr":Param.pos,
                        "state":Param.adState
                     });
                     GlobalData.isHSAdOK = true;
                     EventCenter.dispatch("HSADComplete",null);
                  }
               });
            }
            else
            {
               GlobalData.isHSAdOK = true;
            }
            sendNotification(Order.Enter_Video_Request,null);
         }
         else
         {
            sendNotification(Order.Show_Comment_Request,null);
            clientProxy.MyNewUser();
            if(!Param.Status)
            {
               if(Param.IS_HOSTLIVE == 1 || Param.usergroupid == "5")
               {
                  GlobalData.isHSAdOK = true;
                  sendNotification(Order.Stream_Close_Tip,null);
                  EventCenter.dispatch("SkipLoad",null);
               }
               else
               {
                  sendNotification(Order.Show_Recommend_Request,null);
                  sendNotification(Order.Hide_Load_Request,null);
                  sendNotification(Order.Hide_Video_Request,null);
               }
               return;
            }
            if(Param.IS_HOSTLIVE == 1 && Param.isShow == 1)
            {
               this.publishNetStream();
            }
            sendNotification(Order.Enter_Video_Request,null);
            if(Param.isYinghun)
            {
               facade.registerMediator(new TitleBarMediator(new TitleBarView()));
               EventCenter.dispatch("TitleBarInitEvent");
            }
         }
      }
      
      private function publishNetStream() : void
      {
         this.publishLoader = new Loader();
         this.publishLoader.load(new URLRequest(Param.ASSET_URL + "simplayer/dyph.swf?" + Param.swfVersion));
         this.publishLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.__complete);
         this.publishLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         this.publishLoader.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
      }
      
      private function __complete(param1:Event) : void
      {
         GlobalData.AdLAYER.addChild(this.publishLoader);
      }
      
      private function ioErrorHandler(param1:IOErrorEvent) : void
      {
         $.jscall("dyph加载资源IO错误!");
      }
      
      private function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
         $.jscall("dyph加载资源Security错误!");
      }
   }
}
