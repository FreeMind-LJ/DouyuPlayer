package cc.dy.view.effect
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFieldType;
   import util.ResManager;
   import util.$;
   
   public class GiftEffectCellView extends Sprite
   {
       
      
      private var txt:TextField;
      
      private var bg:MovieClip;
      
      private var frontBg:MovieClip;
      
      private var afterBg:MovieClip;
      
      private var data:Object;
      
      private var isSelf:Boolean;
      
      private var str:String;
      
      private var effectConfig:Object;
      
      public function GiftEffectCellView(param1:Object, param2:Object, param3:Boolean, param4:String)
      {
         super();
         this.effectConfig = param1;
         this.isSelf = param3;
         this.data = param2;
         this.str = param4;
         this.init();
      }
      
      public function init() : void
      {
         this.txt = new TextField();
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         var _loc1_:TextFormat = new TextFormat(GlobalData.FontStr,int(this.effectConfig.font_size),int(this.effectConfig.default_color),true);
         this.txt.defaultTextFormat = _loc1_;
         this.txt.type = TextFieldType.DYNAMIC;
         this.txt.selectable = false;
         this.txt.mouseEnabled = true;
         if(!this.isSelf)
         {
            this.buttonMode = true;
         }
         this.mouseChildren = false;
         this.bg = ResManager.instance.getResByName(this.effectConfig.flag) as MovieClip;
         if(this.bg == null)
         {
            $.jscall("console.log","获取广播资源错误，flag=" + this.effectConfig.flag);
            return;
         }
         this.frontBg = this.bg.frontBg;
         this.afterBg = this.bg.afterBg;
         this.txt.x = int(this.effectConfig.font_x);
         this.txt.y = int(this.effectConfig.font_y);
         addChild(this.bg);
         this.bg.x = int(this.effectConfig.swf_x);
         this.bg.y = int(this.effectConfig.swf_y);
         addChild(this.txt);
         this.txt.htmlText = this.str;
         this.frontBg.width = this.txt.textWidth;
         this.afterBg.x = this.frontBg.x + this.frontBg.width;
      }
   }
}
