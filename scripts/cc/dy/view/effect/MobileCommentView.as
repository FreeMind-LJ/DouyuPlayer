package cc.dy.view.effect
{
   import flash.text.TextField;
   import flash.display.Sprite;
   import util.ResManager;
   import util.$;
   import flash.text.TextFormat;
   import flash.text.TextFieldAutoSize;
   import com.greensock.loading.ImageLoader;
   import com.greensock.layout.ScaleMode;
   import flash.events.MouseEvent;
   import util.Util;
   
   public class MobileCommentView extends EffectView
   {
       
      
      private var _nn:TextField;
      
      private var _txt:TextField;
      
      private var _imageBox:Sprite;
      
      private var _bg:Sprite;
      
      private var _skin:Sprite;
      
      public function MobileCommentView(param1:Object)
      {
         super(param1);
      }
      
      override public function init() : void
      {
         this._skin = ResManager.instance.getResBroadByName("ui.MobileComment") as Sprite;
         if(this._skin == null)
         {
            return;
         }
         addChild(this._skin);
         this._nn = this._skin["nn"];
         this._txt = this._skin["txt"];
         this._imageBox = this._skin["imageBox"];
         this._bg = this._skin["bg"];
         if(this._nn == null || this._txt == null || this._imageBox == null || this._bg == null)
         {
            $.jscall("console.log","MobileCommentView 皮肤命名不规范！");
            return;
         }
         var _loc1_:TextFormat = new TextFormat(GlobalData.FontStr,14,2856191);
         this._nn.defaultTextFormat = _loc1_;
         this._nn.autoSize = TextFieldAutoSize.LEFT;
         var _loc2_:TextFormat = new TextFormat(GlobalData.FontStr,20,16777215);
         this._txt.defaultTextFormat = _loc2_;
         this._txt.autoSize = TextFieldAutoSize.LEFT;
         this._nn.text = data.nn;
         this._txt.text = data.txt;
         this._bg.width = this._txt.textWidth + 90;
         var _loc3_:* = Param.getResDomain() + "upload/" + data.ic + "_small.jpg";
         var _loc4_:ImageLoader = new ImageLoader(_loc3_,{
            "container":this._imageBox,
            "centerRegistration":true,
            "smoothing":true,
            "width":45,
            "height":45,
            "scaleMode":ScaleMode.PROPORTIONAL_OUTSIDE
         });
         _loc4_.load();
         this.mouseChildren = false;
         this.buttonMode = true;
         this.addEventListener(MouseEvent.CLICK,this.clickHandler);
      }
      
      override public function setY(param1:int, param2:int, param3:Function) : void
      {
         this.y = param3(param1,this);
         this.index = param2;
         this.bottom = param1 + this.height + 2;
      }
      
      override public function completeHandler() : void
      {
         this.removeEventListener(MouseEvent.CLICK,this.clickHandler);
         super.completeHandler();
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         Util.openLink(GlobalData.prefix + Param.DomainName + "/client?platform=2");
      }
   }
}
