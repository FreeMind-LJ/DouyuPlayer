package cc.dy.view.effect
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFieldType;
   import util.ResManager;
   import flash.filters.GlowFilter;
   
   public class ColorCommentView extends EffectView
   {
       
      
      private var txt:TextField;
      
      private var bg:MovieClip;
      
      private var frontBg:MovieClip;
      
      private var middleBg:MovieClip;
      
      private var afterBg:MovieClip;
      
      public function ColorCommentView(param1:Object)
      {
         super(param1);
      }
      
      override public function init() : void
      {
         var _loc1_:int = data.type;
         this.txt = new TextField();
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         var _loc2_:TextFormat = new TextFormat(GlobalData.FontStr,24,16777215,true);
         this.txt.defaultTextFormat = _loc2_;
         this.txt.type = TextFieldType.DYNAMIC;
         this.txt.selectable = false;
         this.txt.mouseEnabled = false;
         if(_loc1_ == 1)
         {
            this.bg = ResManager.instance.getResBroadByName("ui.HongcolorBg") as MovieClip;
            this.txt.filters = [new GlowFilter(1530526,1,2,2,3)];
         }
         else if(_loc1_ == 2)
         {
            this.bg = ResManager.instance.getResBroadByName("ui.LancolorBg") as MovieClip;
            this.txt.filters = [new GlowFilter(1530526,1,2,2,3)];
         }
         else if(_loc1_ == 3)
         {
            this.bg = ResManager.instance.getResBroadByName("ui.LvcolorBg") as MovieClip;
            this.txt.filters = [new GlowFilter(5139981,1,2,2,3)];
         }
         else if(_loc1_ == 4)
         {
            this.bg = ResManager.instance.getResBroadByName("ui.ZongcolorBg") as MovieClip;
            this.txt.filters = [new GlowFilter(9982733,1,2,2,3)];
         }
         else if(_loc1_ == 5)
         {
            this.bg = ResManager.instance.getResBroadByName("ui.ZicolorBg") as MovieClip;
            this.txt.filters = [new GlowFilter(7543749,1,2,2,3)];
         }
         else if(_loc1_ == 6)
         {
            this.bg = ResManager.instance.getResBroadByName("ui.FencolorBg") as MovieClip;
            this.txt.filters = [new GlowFilter(10424150,1,2,2,3)];
         }
         if(this.bg == null)
         {
            return;
         }
         this.frontBg = this.bg.frontBg;
         this.middleBg = this.bg.middleBg;
         this.afterBg = this.bg.afterBg;
         addChild(this.bg);
         addChild(this.txt);
         this.txt.x = 25;
         this.txt.y = 4;
         this.buttonMode = false;
         this.mouseChildren = false;
         this.txt.htmlText = data.sender;
         this.frontBg.width = this.txt.textWidth;
         this.middleBg.x = this.frontBg.x + this.frontBg.width;
         this.txt.htmlText = data.sender + ":" + data.content;
         this.middleBg.width = this.txt.textWidth - this.frontBg.width;
         this.afterBg.x = this.middleBg.x + this.middleBg.width;
         this.alpha = GlobalData.textAlphaValue;
      }
      
      override public function setY(param1:int, param2:int, param3:Function) : void
      {
         this.y = param3(param1,this);
         this.index = param2;
         this.bottom = param1 + this.height + 2;
      }
   }
}
