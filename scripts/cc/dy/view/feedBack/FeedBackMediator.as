package cc.dy.view.feedBack
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import util.UserBehaviorLog;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.net.URLRequestMethod;
   import flash.system.Capabilities;
   import flash.events.IOErrorEvent;
   import flash.events.Event;
   import util.$;
   import util.FloatTip;
   
   public class FeedBackMediator extends Mediator implements IMediator
   {
      
      public static var NAME:String = "FeedBackMediator";
       
      
      public function FeedBackMediator(param1:Object)
      {
         super(NAME,param1);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.Show_Feedback_Request,Order.Hide_Feedback_Request,Order.On_Resize];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.Show_Feedback_Request:
               if(this.feedBackView.parent == null)
               {
                  this.showFeedback();
               }
               else
               {
                  this.hideFeedback();
               }
               break;
            case Order.Hide_Feedback_Request:
               this.hideFeedback();
               break;
            case Order.On_Resize:
               this.onResize();
         }
      }
      
      private function showFeedback() : void
      {
         if(this.feedBackView.parent == null)
         {
            GlobalData.TIPLAYER.addChild(this.feedBackView);
         }
         this.feedBackView.addFeedbackPanel();
         this.addListener();
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_FEEDBACK_OPEN);
      }
      
      private function hideFeedback() : void
      {
         if(this.feedBackView.parent != null)
         {
            this.feedBackView.parent.removeChild(this.feedBackView);
            this.feedBackView.removeChildren();
         }
      }
      
      public function onResize() : void
      {
         this.feedBackView.onResize();
         this.addListener();
      }
      
      private function addListener() : void
      {
         if(this.feedBackView.closeBtn != null && !this.feedBackView.closeBtn.hasEventListener(MouseEvent.CLICK))
         {
            this.feedBackView.closeBtn.addEventListener(MouseEvent.CLICK,this.__close);
            this.feedBackView.submitBtn.addEventListener(MouseEvent.CLICK,this.__submit);
            this.feedBackView.closeResBtn.addEventListener(MouseEvent.CLICK,this.__closeRes);
            this.feedBackView.queryBtn.addEventListener(MouseEvent.CLICK,this.__query);
         }
      }
      
      private function __close(param1:MouseEvent) : void
      {
         this.hideFeedback();
      }
      
      private function __submit(param1:MouseEvent) : void
      {
         var loader:URLLoader = null;
         var url:URLRequest = null;
         var values:URLVariables = null;
         var e:MouseEvent = param1;
         if(this.feedBackView.reasonStr == "" || this.feedBackView.cityTxt.text == "" || this.feedBackView.operatorTxt.text == "" || this.feedBackView.operatorTxt.text == "请选择运营商" || this.feedBackView.count == 0)
         {
            this.feedBackView.errorTxt.text = "请填写反馈信息！";
         }
         else
         {
            if(this.feedBackView.qqTxt.text != null && this.feedBackView.qqTxt.text != "" && this.feedBackView.qqTxt.text != "QQ号码")
            {
               if(this.isQQ(this.feedBackView.qqTxt.text) != "")
               {
                  this.feedBackView.errorTxt.text = this.isQQ(this.feedBackView.qqTxt.text);
                  return;
               }
            }
            if(this.feedBackView.emailTxt.text != null && this.feedBackView.emailTxt.text != "" && this.feedBackView.emailTxt.text != "电子邮箱" && !this.isEmail(this.feedBackView.emailTxt.text))
            {
               this.feedBackView.errorTxt.text = "邮箱地址格式不正确！";
               return;
            }
            loader = new URLLoader();
            url = new URLRequest(GlobalData.FEEDBACK_API);
            url.method = URLRequestMethod.POST;
            values = new URLVariables();
            values.room_id = Param.RoomId;
            values.user_id = Param.userId;
            values.rtmp = Param.RtmpUrl + "/" + Param.LiveID;
            values.player_version = GlobalData.PLAYER_VERSION;
            values.flash_version = Capabilities.version;
            values.report_type = "web";
            values.cdn = Param.CDN;
            values.user_system = Capabilities.os;
            values.user_city = this.feedBackView.cityTxt.text;
            values.error_count = this.feedBackView.count;
            values.more_info = this.feedBackView.describeTxt.text;
            values.user_network_type = this.feedBackView.operatorTxt.text;
            values.report_status = this.feedBackView.reasonStr;
            values.user_qq = this.feedBackView.qqTxt.text;
            values.user_email = this.feedBackView.emailTxt.text;
            url.data = values;
            loader.addEventListener(IOErrorEvent.IO_ERROR,function(param1:Event):void
            {
               $.jscall("console.log","问题反馈IO错误");
            });
            loader.addEventListener(Event.COMPLETE,function(param1:Event):void
            {
               $.jscall("console.log","问题反馈loader.data =" + loader.data);
               var _loc2_:Object = JSON.parse(loader.data);
               var _loc3_:int = _loc2_.code;
               var _loc4_:String = _loc2_.msg;
               var _loc5_:String = _loc2_.data;
               if(_loc3_ > 0)
               {
                  feedBackView.addFeedbackResPanel(_loc3_);
                  addListener();
               }
               else
               {
                  hideFeedback();
                  new FloatTip(_loc4_,GlobalData.root,GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight);
               }
            });
            loader.load(url);
         }
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_FEEDBACK_SUBMIT);
      }
      
      private function __closeRes(param1:MouseEvent) : void
      {
         this.hideFeedback();
      }
      
      private function __query(param1:MouseEvent) : void
      {
         this.hideFeedback();
      }
      
      public function get feedBackView() : FeedBackView
      {
         return viewComponent as FeedBackView;
      }
      
      private function isQQ(param1:String) : String
      {
         var _loc2_:String = "";
         if(param1.length > 4 && param1.length < 12)
         {
            if(param1.indexOf("0") == 0)
            {
               _loc2_ = "qq号码第一位不允许为0";
            }
         }
         else
         {
            _loc2_ = "qq号码应该为5位到11位";
         }
         return _loc2_;
      }
      
      private function isEmail(param1:String) : Boolean
      {
         var _loc2_:RegExp = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
         return _loc2_.test(param1);
      }
   }
}
