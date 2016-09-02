package cc.dy.view.effect
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import util.ResManager;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFieldType;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import util.Util;
   
   public class WeekRankView extends EffectView
   {
       
      
      private var txt:TextField;
      
      private var bg:MovieClip;
      
      private var newRoomid:int;
      
      private var isCurrentToom:Boolean;
      
      public function WeekRankView(param1:Object)
      {
         super(param1);
      }
      
      override public function init() : void
      {
         this.newRoomid = data.rid;
         this.isCurrentToom = this.newRoomid.toString() == Param.RoomId?true:false;
         this.bg = ResManager.instance.getResBroadByName("ui.WeekRankUI") as MovieClip;
         if(this.bg == null)
         {
            return;
         }
         addChild(this.bg);
         stime = int(data.time / 1000);
         this.txt = new TextField();
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         var _loc1_:TextFormat = new TextFormat(GlobalData.FontStr,24,16777215,true);
         this.txt.defaultTextFormat = _loc1_;
         this.txt.type = TextFieldType.DYNAMIC;
         this.txt.selectable = false;
         this.txt.mouseEnabled = true;
         this.mouseChildren = false;
         if(!this.isCurrentToom)
         {
            this.buttonMode = true;
            this.addEventListener(MouseEvent.CLICK,this.__link);
         }
         addChild(this.txt);
         this.txt.x = 62;
         this.txt.y = 7;
         if(data.rankType == 1)
         {
            this.txt.htmlText = "恭喜<font color=\'#f85d44\'>" + data.nickname + "</font>" + "的贡献周榜排名上升到了第<font color=\'#f85d44\'>" + data.rankNum + "</font>位";
         }
         else if(data.rankType == 2)
         {
            this.txt.htmlText = "恭喜<font color=\'#f85d44\'>" + data.nickname + "</font>" + "的贡献总榜排名上升到了第<font color=\'#f85d44\'>" + data.rankNum + "</font>位";
         }
         this.txt.filters = [new GlowFilter(0,1,2,2,3)];
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
         }
      }
   }
}
