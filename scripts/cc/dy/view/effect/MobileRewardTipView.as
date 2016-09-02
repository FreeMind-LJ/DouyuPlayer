package cc.dy.view.effect
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFieldType;
   import util.ResManager;
   import flash.events.MouseEvent;
   import util.Util;
   
   public class MobileRewardTipView extends EffectView
   {
       
      
      private var txt:TextField;
      
      private var bg:MovieClip;
      
      public function MobileRewardTipView(param1:Object)
      {
         super(param1);
      }
      
      override public function init() : void
      {
         this.txt = new TextField();
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         var _loc1_:TextFormat = new TextFormat(GlobalData.FontStr,24,16777215,true);
         this.txt.defaultTextFormat = _loc1_;
         this.txt.type = TextFieldType.DYNAMIC;
         this.txt.selectable = false;
         this.txt.mouseEnabled = true;
         this.bg = ResManager.instance.getResBroadByName("ui.RewardBgUI") as MovieClip;
         if(this.bg == null)
         {
            return;
         }
         addChild(this.bg);
         addChild(this.txt);
         this.txt.x = 65;
         this.txt.y = 14;
         this.buttonMode = true;
         this.mouseChildren = false;
         this.addEventListener(MouseEvent.CLICK,this.__link);
         this.txt.htmlText = "恭喜<font color=\'#fa830e\'>" + data.nameStr + "</font>" + "使用斗鱼手机APP在线领取了<font color=\'#fa830e\'>1000</font>鱼丸";
      }
      
      override public function setY(param1:int, param2:int, param3:Function) : void
      {
         this.y = param3(param1,this);
         this.index = param2;
         this.bottom = param1 + this.height + 2;
      }
      
      private function __link(param1:MouseEvent) : void
      {
         Util.openLink(GlobalData.prefix + Param.DomainName + "/client");
      }
   }
}
