package cc.dy.view.ticket
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.display.DisplayObject;
   import flash.text.TextField;
   import ui.TicketPay1;
   import ui.TicketPay2;
   import ui.TicketPay3;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import util.$;
   import util.UserBehaviorLog;
   
   public class TicketView extends Sprite
   {
      
      private static const BG_COLOR:uint = 6710886;
       
      
      private var view:MovieClip;
      
      public var data:Object;
      
      private var _type:int;
      
      public function TicketView()
      {
         super();
         cacheAsBitmap = true;
         opaqueBackground = BG_COLOR;
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
            graphics.beginFill(BG_COLOR);
            graphics.drawRect(0,0,_loc1_,_loc2_);
            graphics.endFill();
            if(this.view)
            {
               this.view.x = (_loc1_ - this.view.width) / 2;
               this.view.y = (_loc2_ - this.view.height) / 2;
            }
         }
      }
      
      public function set type(param1:int) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:TextField = null;
         var _loc4_:String = null;
         if(this._type != param1)
         {
            this._type = param1;
            switch(this._type)
            {
               case 1:
                  this.view = new TicketPay1();
                  break;
               case 2:
                  this.view = new TicketPay2();
                  break;
               case 3:
                  this.view = new TicketPay3();
                  _loc2_ = this.view["pay"];
                  _loc3_ = this.view["tf"];
                  _loc4_ = Param.eticket == 1?"超/高清":Param.streamNames[0];
                  _loc3_.embedFonts = true;
                  _loc3_.autoSize = TextFieldAutoSize.LEFT;
                  _loc3_.htmlText = "宽带辣么贵，大侠赏点 <font color=\'#FF8F2B\'><b>" + _loc4_ + "门票</b></font> 钱吧！";
                  _loc2_.x = (_loc3_.x + _loc3_.textWidth - _loc2_.width) / 2;
            }
            this.view["pay"].addEventListener(MouseEvent.CLICK,this.onPay);
            removeChildren();
            addChild(this.view);
         }
      }
      
      private function onPay(param1:MouseEvent) : void
      {
         $.asTojs("room_data_buytickets",this.data);
         $.jscall("console.log","buy ticket");
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_TICKET_PLAYER_CLICK);
      }
   }
}
