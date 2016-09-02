package util
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   import flash.display.DisplayObjectContainer;
   import com.greensock.TweenLite;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class FloatTip extends Sprite
   {
       
      
      private var messageTxt:TextField;
      
      public var maskBack:Sprite;
      
      private var index:uint = 0;
      
      public function FloatTip(param1:String, param2:DisplayObjectContainer, param3:int, param4:int, param5:Number = 2000, param6:int = 0, param7:Boolean = true, param8:uint = 16483074, param9:Number = 1, param10:int = 20)
      {
         var str:String = param1;
         var parentDispo:DisplayObjectContainer = param2;
         var w:int = param3;
         var h:int = param4;
         var time:Number = param5;
         var offest:int = param6;
         var isFly:Boolean = param7;
         var bgColor:uint = param8;
         var bgAlpha:Number = param9;
         var bgRadius:int = param10;
         super();
         this.init(w);
         TweenLite.killTweensOf(this.maskBack);
         clearTimeout(this.index);
         parentDispo.addChild(this.maskBack);
         this.maskBack.alpha = 1;
         this.messageTxt.text = str;
         this.maskBack.graphics.clear();
         this.maskBack.graphics.beginFill(bgColor,bgAlpha);
         this.maskBack.graphics.drawRoundRect(int((this.messageTxt.width - this.messageTxt.textWidth) / 2 - 15),-2,int(this.messageTxt.textWidth + 30),int(this.messageTxt.textHeight + 10),bgRadius);
         this.maskBack.graphics.endFill();
         this.maskBack.x = (w - this.maskBack.width) / 2;
         this.maskBack.y = (h - this.maskBack.height) / 2 + offest;
         if(isFly)
         {
            this.index = setTimeout(function():void
            {
               TweenLite.to(maskBack,0.8,{
                  "y":maskBack.y - 80,
                  "alpha":0,
                  "onComplete":complete,
                  "onCompleteParams":[h]
               });
            },time);
         }
      }
      
      private function init(param1:int) : void
      {
         this.maskBack = new Sprite();
         var _loc2_:TextFormat = new TextFormat("Microsoft YaHei",20,16777215);
         _loc2_.align = TextAlign.CENTER;
         this.messageTxt = new TextField();
         this.messageTxt.defaultTextFormat = _loc2_;
         this.messageTxt.width = param1;
         this.maskBack.addChild(this.messageTxt);
         this.maskBack.mouseEnabled = false;
         this.maskBack.mouseChildren = false;
      }
      
      public function complete(param1:int) : void
      {
         this.maskBack.alpha = 1;
         this.messageTxt.text = "";
         this.maskBack.graphics.clear();
         this.maskBack.y = (param1 - this.maskBack.height) / 2;
         this.destroy();
      }
      
      public function countTime(param1:String) : void
      {
         this.messageTxt.text = param1;
      }
      
      public function destroy() : void
      {
         if(this.maskBack.parent != null)
         {
            this.maskBack.parent.removeChild(this.maskBack);
         }
      }
   }
}
