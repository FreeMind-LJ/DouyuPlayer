package cc.dy.view.login
{
   import flash.display.Sprite;
   import flash.display.SimpleButton;
   import flash.text.TextField;
   import ui.PassTipUI;
   import flash.events.MouseEvent;
   import flash.events.FocusEvent;
   import flash.events.Event;
   import com.adobe.crypto.MD5;
   
   public class LoginView extends Sprite
   {
       
      
      public var passTipPanel:Sprite;
      
      public var queryBtn:SimpleButton;
      
      public var passTxt:TextField;
      
      public var errorTipTxt:TextField;
      
      public var callBack:Function;
      
      public function LoginView()
      {
         super();
      }
      
      public function initPasspanel(param1:Function) : void
      {
         this.callBack = param1;
         if(this.passTipPanel == null)
         {
            this.passTipPanel = new PassTipUI();
            this.queryBtn = this.passTipPanel["queryBtn"];
            this.passTxt = this.passTipPanel["passTxt"];
            this.errorTipTxt = this.passTipPanel["TipTxt"];
            this.passTxt.displayAsPassword = true;
            this.passTxt.text = "";
            this.errorTipTxt.text = "";
            addChild(this.passTipPanel);
            this.queryBtn.addEventListener(MouseEvent.CLICK,this.__query);
            this.passTxt.addEventListener(FocusEvent.FOCUS_IN,this.__input);
            this.passTxt.addEventListener(Event.CHANGE,this.__change);
         }
      }
      
      private function __query(param1:MouseEvent) : void
      {
         var _loc2_:String = this.passTxt.text;
         if(_loc2_ != null && _loc2_ != "")
         {
            this.errorTipTxt.text = "";
            _loc2_ = MD5.hash(_loc2_);
            this.callBack(_loc2_);
         }
         else
         {
            this.errorTipTxt.text = "密码不能为空！";
         }
      }
      
      private function __input(param1:FocusEvent) : void
      {
         this.passTxt.text = "";
         this.errorTipTxt.text = "";
      }
      
      private function __change(param1:Event) : void
      {
         this.errorTipTxt.text = "";
      }
      
      public function validatError(param1:String) : void
      {
         this.errorTipTxt.text = param1;
      }
      
      public function reset() : void
      {
         this.passTxt.text = "";
         this.errorTipTxt.text = "";
      }
      
      public function resize(param1:int = 0, param2:int = 0) : void
      {
         if(this.parent != null)
         {
            this.x = (GlobalData.root.stage.stageWidth - this.width) / 2;
            this.y = (GlobalData.root.stage.stageHeight - this.height) / 2;
         }
      }
   }
}
