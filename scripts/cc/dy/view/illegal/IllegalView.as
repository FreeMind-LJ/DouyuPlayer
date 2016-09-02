package cc.dy.view.illegal
{
   import flash.display.Sprite;
   import ui.Illegal;
   import flash.text.TextFieldAutoSize;
   
   public class IllegalView extends Sprite
   {
       
      
      private var mc:Illegal;
      
      public function IllegalView()
      {
         super();
         this.mc = new Illegal();
         this.mc.tf.autoSize = TextFieldAutoSize.CENTER;
         this.mc.tf.htmlText = "<font size=\'20\'>亲！</font>主播的直播内容涉嫌违规正在整改中...!";
         addChild(this.mc);
         this.mouseChildren = false;
         this.mouseEnabled = true;
      }
      
      public function resize() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(stage)
         {
            _loc1_ = stage.stageWidth;
            _loc2_ = stage.stageHeight;
            graphics.clear();
            graphics.beginFill(0);
            graphics.drawRect(0,0,_loc1_,_loc2_);
            graphics.endFill();
            this.mc.x = _loc1_ / 2;
            this.mc.y = _loc2_ / 2;
         }
      }
   }
}
