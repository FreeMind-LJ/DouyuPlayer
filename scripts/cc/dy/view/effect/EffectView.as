package cc.dy.view.effect
{
   import flash.display.Sprite;
   import flash.utils.Timer;
   import com.greensock.TweenLite;
   import cc.dy.model.data.EffectData;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import ui.EffectMC;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFieldType;
   import com.greensock.easing.Linear;
   
   public class EffectView extends Sprite
   {
       
      
      public var duration:Number;
      
      public var index:int;
      
      public var bottom:int;
      
      public var _tm:Timer;
      
      public var stime:int;
      
      public var _complete:Function;
      
      protected var _tw:TweenLite;
      
      public var effectData:EffectData;
      
      public var data:Object;
      
      private var txt:TextField;
      
      private var effectPanel:MovieClip;
      
      public function EffectView(param1:Object)
      {
         super();
         this.data = param1;
         if(param1.time)
         {
            this.stime = param1.time;
         }
         this.init();
      }
      
      public function init() : void
      {
         this.effectData = this.data as EffectData;
         this.stime = int(this.effectData.time / 1000);
         this.effectPanel = new EffectMC();
         this.txt = new TextField();
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         var _loc1_:TextFormat = new TextFormat(GlobalData.FontStr,20,16777215,true);
         this.txt.defaultTextFormat = _loc1_;
         this.txt.type = TextFieldType.DYNAMIC;
         this.txt.selectable = false;
         this.txt.mouseEnabled = false;
         addChild(this.effectPanel);
         addChild(this.txt);
         this.txt.x = this.effectPanel.width;
         this.txt.y = 15;
         if(this.effectData.type == 1)
         {
            this.effectPanel.gotoAndStop(1);
            this.txt.htmlText = "<font color=\'#e94c15\'>" + this.effectData.nickname + "</font>" + "赠送给主播    超级酬勤  <font color=\'#278bd2\'> X 1</font>";
         }
         else if(this.effectData.type == 2)
         {
            this.effectPanel.gotoAndStop(2);
            this.txt.htmlText = "<font color=\'#e94c15\'>" + this.effectData.nickname + "</font>" + "赠送给主播    超级赠送  <font color=\'#278bd2\'> X 1</font>";
         }
      }
      
      public function setY(param1:int, param2:int, param3:Function) : void
      {
         this.y = param3(param1,this);
         this.index = param2;
         this.bottom = param1 + this.height + 2;
      }
      
      public function get right() : int
      {
         return this.x + this.width;
      }
      
      public function set complete(param1:Function) : void
      {
         this._complete = param1;
      }
      
      public function start() : void
      {
         this._tw = new TweenLite(this,this.duration,{
            "x":-width,
            "onComplete":this.completeHandler,
            "ease":Linear.easeInOut
         });
         this._tw.play();
      }
      
      public function completeHandler() : void
      {
         this._complete(this);
         this._tw.kill();
         delete this[this];
      }
   }
}
