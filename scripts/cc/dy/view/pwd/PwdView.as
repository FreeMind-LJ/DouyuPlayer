package cc.dy.view.pwd
{
   import ui.Pwd;
   import flash.net.URLLoader;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.text.TextField;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.display.StageDisplayState;
   import util.FloatTip;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import util.$;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequestMethod;
   import common.event.EventCenter;
   import util.UserBehaviorLog;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   
   public class PwdView extends Pwd
   {
       
      
      private var loader:URLLoader;
      
      private var isLoading:Boolean = false;
      
      private var bg:MovieClip;
      
      private var inputHint:MovieClip;
      
      private var submit:SimpleButton;
      
      private var inputTF:TextField;
      
      public function PwdView()
      {
         super();
         this.bg = inputBox["bg"];
         this.inputHint = inputBox["inputHint"];
         this.inputHint.mouseEnabled = this.inputHint.mouseChildren = false;
         this.submit = inputBox["submit"];
         this.inputTF = new TextField();
         this.inputTF.type = TextFieldType.INPUT;
         this.inputTF.displayAsPassword = true;
         this.inputTF.multiline = false;
         this.inputTF.width = this.bg.width - 20;
         this.inputTF.defaultTextFormat = new TextFormat("微软雅黑",16,6364703,true);
         this.inputTF.x = this.inputHint.x;
         this.inputTF.y = this.inputHint.y;
         this.inputTF.visible = false;
         this.inputTF.addEventListener(KeyboardEvent.KEY_DOWN,this.onInputKey);
         this.inputTF.addEventListener(KeyboardEvent.KEY_UP,this.onInputKey);
         this.inputTF.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.onInputFocusOut);
         inputBox.addChild(this.inputTF);
         this.bg.addEventListener(MouseEvent.CLICK,this.onBgClick);
         this.submit.addEventListener(MouseEvent.CLICK,this.onCheck);
      }
      
      protected function onInputFocusOut(param1:FocusEvent) : void
      {
         if(this.inputTF.text == "")
         {
            this.inputHint.visible = true;
            this.inputTF.visible = false;
         }
      }
      
      public function resize() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(stage)
         {
            _loc1_ = stage.stageWidth;
            _loc2_ = stage.stageHeight;
            width = _loc1_ * 0.9;
            height = (_loc2_ - GlobalData.distanHeight) * 0.9;
            x = _loc1_ * 0.05;
            y = (_loc2_ - GlobalData.distanHeight) * 0.05;
         }
      }
      
      public function reset() : void
      {
         this.inputTF.text = "";
         this.onInputFocusOut(null);
         stage.focus = null;
      }
      
      protected function onBgClick(param1:MouseEvent) : void
      {
         if(stage.displayState == StageDisplayState.FULL_SCREEN)
         {
            new FloatTip("输入密码前请先退出全屏状态。",GlobalData.root.stage,GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight,2000,0,true,0,0.6,4);
         }
         else
         {
            this.inputHint.visible = false;
            this.inputTF.visible = true;
            stage.focus = this.inputTF;
         }
      }
      
      protected function onInputKey(param1:KeyboardEvent) : void
      {
         if(param1.type == KeyboardEvent.KEY_DOWN)
         {
            param1.stopImmediatePropagation();
         }
         if(param1.type == KeyboardEvent.KEY_UP)
         {
            if(param1.keyCode == Keyboard.ENTER)
            {
               this.submit.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
               param1.stopImmediatePropagation();
            }
         }
      }
      
      protected function onCheck(param1:MouseEvent) : void
      {
         var _loc2_:URLRequest = null;
         var _loc3_:URLVariables = null;
         if(Param.isLoginUser == 0)
         {
            $.asTojs("room_login_show");
            return;
         }
         if(this.loader == null)
         {
            this.loader = new URLLoader();
            this.loader.addEventListener(Event.COMPLETE,this.onCheckComplete);
            this.loader.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
         if(!this.isLoading)
         {
            this.isLoading = true;
            _loc2_ = new URLRequest(GlobalData.PWD_CHECK_API);
            _loc3_ = new URLVariables();
            _loc3_.password = this.inputTF.text;
            _loc3_.room_id = Param.RoomId;
            _loc2_.method = URLRequestMethod.POST;
            _loc2_.data = _loc3_;
            this.loader.load(_loc2_);
         }
      }
      
      protected function onCheckComplete(param1:Event) : void
      {
         this.isLoading = false;
         var _loc2_:Object = JSON.parse(this.loader.data);
         if(_loc2_.error == 0 && _loc2_.data.status == 1)
         {
            EventCenter.dispatch("PwdNotifyEvent",{"type":0});
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_PWD_RIGHT);
         }
         else
         {
            new FloatTip("密码输入错误，请重新输入！",GlobalData.root.stage,GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight,2000,0,true,0,0.6,4);
            $.jscall("console.log","check pwd fail " + _loc2_.data.status);
         }
      }
      
      protected function onError(param1:SecurityErrorEvent) : void
      {
         this.isLoading = false;
         $.jscall("console.log","check pwd api fail");
      }
   }
}
