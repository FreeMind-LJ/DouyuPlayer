package cc.dy.view.effect
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import util.ResManager;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFieldType;
   import flash.events.MouseEvent;
   import util.Util;
   import common.event.EventCenter;
   
   public class SuperDanmuView extends EffectView
   {
       
      
      private var txt:TextField;
      
      private var bg:MovieClip;
      
      private var newRoomid:int;
      
      private var frontBg:MovieClip;
      
      private var afterBg:MovieClip;
      
      public function SuperDanmuView(param1:Object)
      {
         super(param1);
      }
      
      override public function init() : void
      {
         this.bg = ResManager.instance.getResBroadByName("ui.NormalSuperIcon") as MovieClip;
         if(this.bg == null)
         {
            return;
         }
         this.frontBg = this.bg.frontBg;
         this.afterBg = this.bg.afterBg;
         addChild(this.bg);
         stime = int(data.time / 1000);
         this.txt = new TextField();
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         var _loc1_:TextFormat = new TextFormat(GlobalData.FontStr,GlobalData.textSizeValue + 2,16777215,true);
         this.txt.defaultTextFormat = _loc1_;
         this.txt.type = TextFieldType.DYNAMIC;
         this.txt.selectable = false;
         this.txt.mouseEnabled = true;
         this.buttonMode = true;
         this.mouseChildren = false;
         this.addEventListener(MouseEvent.CLICK,this.__link);
         addChild(this.txt);
         this.txt.x = 170;
         this.txt.y = 31;
         this.txt.htmlText = "<font color=\'#FFFF00\'>" + data.supercontent + "</font>";
         this.newRoomid = data.nrid;
         this.frontBg.width = this.txt.textWidth;
         this.afterBg.x = this.frontBg.x + this.frontBg.width;
      }
      
      override public function setY(param1:int, param2:int, param3:Function) : void
      {
         this.y = param3(param1,this);
         this.index = param2;
         this.bottom = param1 + this.height + 2;
      }
      
      private function __link(param1:MouseEvent) : void
      {
         if(Param.RoomId != this.newRoomid.toString())
         {
            Util.openLink(GlobalData.prefix + Param.DomainName + "/" + this.newRoomid);
            EventCenter.dispatch("SuperDanmuClickEvent",data);
         }
      }
   }
}
