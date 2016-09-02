package cc.dy.view.effect
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import util.ResManager;
   
   public class RedPocketsCellView extends Sprite
   {
       
      
      private var bg:MovieClip;
      
      private var txt:TextField;
      
      private var frontBg:MovieClip;
      
      private var text:String;
      
      public function RedPocketsCellView(param1:String)
      {
         super();
         this.text = param1;
         this.init();
      }
      
      public function init() : void
      {
         this.txt = new TextField();
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         this.txt.type = TextFieldType.DYNAMIC;
         this.mouseChildren = false;
         this.bg = ResManager.instance.getResBroadByName("ui.RedPacketsIcon") as MovieClip;
         if(this.bg == null)
         {
            return;
         }
         this.frontBg = this.bg.frontBg;
         addChild(this.bg);
         this.txt.x = 75;
         this.txt.y = 43;
         addChild(this.txt);
         this.txt.htmlText = this.text;
         this.frontBg.width = this.txt.x + this.txt.textWidth + 35;
      }
   }
}
