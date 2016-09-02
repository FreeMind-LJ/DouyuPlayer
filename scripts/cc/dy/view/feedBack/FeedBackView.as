package cc.dy.view.feedBack
{
   import flash.display.Sprite;
   import flash.display.SimpleButton;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import ui.FeedbackPanel;
   import ui.FeedbackResPanel;
   import ui.FeedbackSmallPanel;
   import ui.FeedbackSmallResPanel;
   import flash.events.MouseEvent;
   import flash.events.FocusEvent;
   import util.menu.Menu;
   
   public class FeedBackView extends Sprite
   {
       
      
      public var closeBtn:SimpleButton;
      
      public var submitBtn:SimpleButton;
      
      public var reason1MC:MovieClip;
      
      public var reason2MC:MovieClip;
      
      public var reason3MC:MovieClip;
      
      public var reason4MC:MovieClip;
      
      public var reason5MC:MovieClip;
      
      public var reason6MC:MovieClip;
      
      public var cityTxt:TextField;
      
      public var operatorTxt:TextField;
      
      public var firstMC:MovieClip;
      
      public var secondMC:MovieClip;
      
      public var thirdMC:MovieClip;
      
      public var describeTxt:TextField;
      
      public var qqTxt:TextField;
      
      public var emailTxt:TextField;
      
      public var errorTxt:TextField;
      
      public var feedBackPanel:Sprite;
      
      public var feedBackResPanel:Sprite;
      
      public var closeResBtn:SimpleButton;
      
      public var codeTxt:TextField;
      
      public var queryBtn:SimpleButton;
      
      public var menuBtn:SimpleButton;
      
      public var operatorArr:Array;
      
      private var bigFeedBackPanel:MovieClip;
      
      private var bigFeedBackResPanel:MovieClip;
      
      private var smallFeedBackPanel:MovieClip;
      
      private var smallFeedBackResPanel:MovieClip;
      
      public var reasonStr:String = "";
      
      public var count:int = 0;
      
      private var codeStr:int = 0;
      
      private var index:int = 0;
      
      private var countVar:int = 0;
      
      private var cityStr:String = "";
      
      private var operatorStr:String = "";
      
      private var describeStr:String = "";
      
      private var qqStr:String = "";
      
      private var emailStr:String = "";
      
      public function FeedBackView()
      {
         this.operatorArr = ["中国电信","中国联通","中国移动","中国铁通","长城宽带","其他(请补充描述)"];
         super();
      }
      
      public function init() : void
      {
         if(GlobalData.root.stage.stageHeight >= 450)
         {
            if(this.bigFeedBackPanel == null)
            {
               this.bigFeedBackPanel = new FeedbackPanel();
            }
            if(this.bigFeedBackResPanel == null)
            {
               this.bigFeedBackResPanel = new FeedbackResPanel();
            }
            this.feedBackPanel = this.bigFeedBackPanel;
            this.feedBackResPanel = this.bigFeedBackResPanel;
         }
         else
         {
            if(this.smallFeedBackPanel == null)
            {
               this.smallFeedBackPanel = new FeedbackSmallPanel();
            }
            if(this.smallFeedBackResPanel == null)
            {
               this.smallFeedBackResPanel = new FeedbackSmallResPanel();
            }
            this.feedBackPanel = this.smallFeedBackPanel;
            this.feedBackResPanel = this.smallFeedBackResPanel;
         }
         this.closeBtn = this.feedBackPanel["closeBtn"];
         this.submitBtn = this.feedBackPanel["submitBtn"];
         this.reason1MC = this.feedBackPanel["reason1MC"];
         this.reason2MC = this.feedBackPanel["reason2MC"];
         this.reason3MC = this.feedBackPanel["reason3MC"];
         this.reason4MC = this.feedBackPanel["reason4MC"];
         this.reason5MC = this.feedBackPanel["reason5MC"];
         this.reason6MC = this.feedBackPanel["reason6MC"];
         this.reason1MC.gotoAndStop(1);
         this.reason2MC.gotoAndStop(1);
         this.reason3MC.gotoAndStop(1);
         this.reason4MC.gotoAndStop(1);
         this.reason5MC.gotoAndStop(1);
         this.reason6MC.gotoAndStop(1);
         this.cityTxt = this.feedBackPanel["cityTxt"];
         this.cityTxt.maxChars = 20;
         this.operatorTxt = this.feedBackPanel["operatorTxt"];
         this.firstMC = this.feedBackPanel["firstMC"];
         this.secondMC = this.feedBackPanel["secondMC"];
         this.thirdMC = this.feedBackPanel["thirdMC"];
         this.describeTxt = this.feedBackPanel["describeTxt"];
         this.describeTxt.maxChars = 200;
         this.qqTxt = this.feedBackPanel["qqTxt"];
         this.qqTxt.restrict = "0-9";
         this.qqTxt.maxChars = 11;
         this.emailTxt = this.feedBackPanel["emailTxt"];
         this.errorTxt = this.feedBackPanel["errorTxt"];
         this.firstMC.gotoAndStop(1);
         this.secondMC.gotoAndStop(1);
         this.thirdMC.gotoAndStop(1);
         this.closeResBtn = this.feedBackResPanel["closeBtn"];
         this.codeTxt = this.feedBackResPanel["codeTxt"];
         this.queryBtn = this.feedBackResPanel["queryBtn"];
         this.menuBtn = this.feedBackPanel["menuBtn"];
      }
      
      private function __listClick(param1:String) : void
      {
         this.operatorTxt.text = param1;
      }
      
      private function addListener() : void
      {
         if(this.reason1MC.hasEventListener(MouseEvent.CLICK))
         {
            return;
         }
         this.reason1MC.addEventListener(MouseEvent.CLICK,this.__reason1);
         this.reason2MC.addEventListener(MouseEvent.CLICK,this.__reason2);
         this.reason3MC.addEventListener(MouseEvent.CLICK,this.__reason3);
         this.reason4MC.addEventListener(MouseEvent.CLICK,this.__reason4);
         this.reason5MC.addEventListener(MouseEvent.CLICK,this.__reason5);
         this.reason6MC.addEventListener(MouseEvent.CLICK,this.__reason6);
         this.firstMC.addEventListener(MouseEvent.CLICK,this.__first);
         this.secondMC.addEventListener(MouseEvent.CLICK,this.__second);
         this.thirdMC.addEventListener(MouseEvent.CLICK,this.__third);
         this.menuBtn.addEventListener(MouseEvent.CLICK,this.__menu);
         this.describeTxt.addEventListener(FocusEvent.FOCUS_IN,function():void
         {
            if(describeTxt.text == "请对反馈问题进行补充描述")
            {
               describeTxt.text = "";
            }
         });
         this.describeTxt.addEventListener(FocusEvent.FOCUS_OUT,function():void
         {
            if(describeTxt.text == "")
            {
               describeTxt.text = "请对反馈问题进行补充描述";
            }
         });
         this.qqTxt.addEventListener(FocusEvent.FOCUS_IN,function():void
         {
            if(qqTxt.text == "QQ号码")
            {
               qqTxt.text = "";
            }
         });
         this.qqTxt.addEventListener(FocusEvent.FOCUS_OUT,function():void
         {
            if(qqTxt.text == "")
            {
               qqTxt.text = "QQ号码";
            }
         });
         this.emailTxt.addEventListener(FocusEvent.FOCUS_IN,function():void
         {
            if(emailTxt.text == "电子邮箱")
            {
               emailTxt.text = "";
            }
         });
         this.emailTxt.addEventListener(FocusEvent.FOCUS_OUT,function():void
         {
            if(emailTxt.text == "")
            {
               emailTxt.text = "电子邮箱";
            }
         });
      }
      
      private function __reason1(param1:MouseEvent) : void
      {
         this.index = 1;
         this.reasonStr = "画面卡顿";
         this.reason1MC.gotoAndStop(2);
         this.reason2MC.gotoAndStop(1);
         this.reason3MC.gotoAndStop(1);
         this.reason4MC.gotoAndStop(1);
         this.reason5MC.gotoAndStop(1);
         this.reason6MC.gotoAndStop(1);
      }
      
      private function __reason2(param1:MouseEvent) : void
      {
         this.index = 2;
         this.reasonStr = "无限缓冲";
         this.reason1MC.gotoAndStop(1);
         this.reason2MC.gotoAndStop(2);
         this.reason3MC.gotoAndStop(1);
         this.reason4MC.gotoAndStop(1);
         this.reason5MC.gotoAndStop(1);
         this.reason6MC.gotoAndStop(1);
      }
      
      private function __reason3(param1:MouseEvent) : void
      {
         this.index = 3;
         this.reasonStr = "信号中断";
         this.reason1MC.gotoAndStop(1);
         this.reason2MC.gotoAndStop(1);
         this.reason3MC.gotoAndStop(2);
         this.reason4MC.gotoAndStop(1);
         this.reason5MC.gotoAndStop(1);
         this.reason6MC.gotoAndStop(1);
      }
      
      private function __reason4(param1:MouseEvent) : void
      {
         this.index = 4;
         this.reasonStr = "黑屏";
         this.reason1MC.gotoAndStop(1);
         this.reason2MC.gotoAndStop(1);
         this.reason3MC.gotoAndStop(1);
         this.reason4MC.gotoAndStop(2);
         this.reason5MC.gotoAndStop(1);
         this.reason6MC.gotoAndStop(1);
      }
      
      private function __reason5(param1:MouseEvent) : void
      {
         this.index = 5;
         this.reasonStr = "声音问题";
         this.reason1MC.gotoAndStop(1);
         this.reason2MC.gotoAndStop(1);
         this.reason3MC.gotoAndStop(1);
         this.reason4MC.gotoAndStop(1);
         this.reason5MC.gotoAndStop(2);
         this.reason6MC.gotoAndStop(1);
      }
      
      private function __reason6(param1:MouseEvent) : void
      {
         this.index = 6;
         this.reasonStr = "房间关闭";
         this.reason1MC.gotoAndStop(1);
         this.reason2MC.gotoAndStop(1);
         this.reason3MC.gotoAndStop(1);
         this.reason4MC.gotoAndStop(1);
         this.reason5MC.gotoAndStop(1);
         this.reason6MC.gotoAndStop(2);
      }
      
      private function __first(param1:MouseEvent) : void
      {
         this.countVar = this.count = 1;
         this.firstMC.gotoAndStop(2);
         this.secondMC.gotoAndStop(1);
         this.thirdMC.gotoAndStop(1);
      }
      
      private function __second(param1:MouseEvent) : void
      {
         this.countVar = this.count = 2;
         this.firstMC.gotoAndStop(1);
         this.secondMC.gotoAndStop(2);
         this.thirdMC.gotoAndStop(1);
      }
      
      private function __third(param1:MouseEvent) : void
      {
         this.countVar = this.count = 3;
         this.firstMC.gotoAndStop(1);
         this.secondMC.gotoAndStop(1);
         this.thirdMC.gotoAndStop(2);
      }
      
      private function reset() : void
      {
         this.reason1MC.gotoAndStop(1);
         this.reason2MC.gotoAndStop(1);
         this.reason3MC.gotoAndStop(1);
         this.reason4MC.gotoAndStop(1);
         this.reason5MC.gotoAndStop(1);
         this.reason6MC.gotoAndStop(1);
         this.firstMC.gotoAndStop(1);
         this.secondMC.gotoAndStop(1);
         this.thirdMC.gotoAndStop(1);
         this.reasonStr = "";
         this.count = 0;
         this.cityTxt.text = "";
         this.operatorTxt.text = "请选择运营商";
         this.describeTxt.text = "请对反馈问题进行补充描述";
         this.qqTxt.text = "QQ号码";
         this.emailTxt.text = "电子邮箱";
         this.errorTxt.text = "";
      }
      
      public function addFeedbackPanel() : void
      {
         this.index = 0;
         this.countVar = 0;
         this.init();
         this.addListener();
         this.reset();
         this.removeChildren();
         if(this.feedBackPanel.parent == null)
         {
            this.addChild(this.feedBackPanel);
         }
         this.x = (GlobalData.root.stage.stageWidth - this.width) / 2;
         this.y = (GlobalData.root.stage.stageHeight - this.height) / 2;
      }
      
      private function __menu(param1:MouseEvent) : void
      {
         if(Menu.instance != null)
         {
            Menu.instance.destroy();
         }
         else
         {
            Menu.show(this.operatorArr,this.operatorArr,this.menuBtn,this.__listClick);
            if(GlobalData.root.stage.stageHeight >= 450)
            {
               Menu.setPosition(330,142,this);
            }
            else
            {
               Menu.setPosition(198,121,this);
            }
         }
      }
      
      public function addFeedbackResPanel(param1:int) : void
      {
         this.codeStr = param1;
         this.init();
         this.addListener();
         this.reset();
         this.codeTxt.text = this.codeStr.toString();
         this.removeChildren();
         if(this.feedBackResPanel.parent == null)
         {
            this.addChild(this.feedBackResPanel);
         }
         this.x = (GlobalData.root.stage.stageWidth - this.width) / 2;
         this.y = (GlobalData.root.stage.stageHeight - this.height) / 2;
      }
      
      public function onResize() : void
      {
         if(this.numChildren == 0)
         {
            return;
         }
         if(this.feedBackPanel.parent != null)
         {
            this.removeChildren();
            this.init();
            this.addListener();
            this.reset();
            this.addChild(this.feedBackPanel);
         }
         else if(this.feedBackResPanel.parent != null)
         {
            this.removeChildren();
            this.init();
            this.addListener();
            this.reset();
            this.codeTxt.text = this.codeStr.toString();
            this.addChild(this.feedBackResPanel);
         }
         this.x = (GlobalData.root.stage.stageWidth - this.width) / 2;
         this.y = (GlobalData.root.stage.stageHeight - this.height) / 2;
      }
      
      private function recodeData() : void
      {
         this.cityStr = this.cityTxt.text;
         this.operatorStr = this.operatorTxt.text;
         this.describeStr = this.describeTxt.text;
         this.qqStr = this.qqTxt.text;
         this.emailStr = this.emailTxt.text;
      }
      
      private function resetData() : void
      {
         if(this.index == 1)
         {
            this.reasonStr = "画面卡顿";
            this.reason1MC.gotoAndStop(2);
         }
         else if(this.index == 2)
         {
            this.reasonStr = "无限缓冲";
            this.reason2MC.gotoAndStop(2);
         }
         else if(this.index == 3)
         {
            this.reasonStr = "信号中断";
            this.reason3MC.gotoAndStop(2);
         }
         else if(this.index == 4)
         {
            this.reasonStr = "黑屏";
            this.reason4MC.gotoAndStop(2);
         }
         else if(this.index == 5)
         {
            this.reasonStr = "声音问题";
            this.reason5MC.gotoAndStop(2);
         }
         else if(this.index == 6)
         {
            this.reasonStr = "房间关闭";
            this.reason6MC.gotoAndStop(2);
         }
         if(this.countVar == 1)
         {
            this.count = 1;
            this.firstMC.gotoAndStop(2);
         }
         else if(this.countVar == 2)
         {
            this.count = 2;
            this.secondMC.gotoAndStop(2);
         }
         else if(this.countVar == 3)
         {
            this.count = 3;
            this.thirdMC.gotoAndStop(2);
         }
         this.cityTxt.text = this.cityStr;
         this.operatorTxt.text = this.operatorStr;
         this.describeTxt.text = this.describeStr == ""?"请对反馈问题进行补充描述":this.describeStr;
         this.qqTxt.text = this.qqStr == ""?"QQ号码":this.qqStr;
         this.emailTxt.text = this.emailStr == ""?"电子邮箱":this.emailStr;
      }
   }
}
