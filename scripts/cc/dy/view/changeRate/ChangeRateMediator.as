package cc.dy.view.changeRate
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import flash.display.MovieClip;
   import common.event.ObjectEvent;
   import util.$;
   import org.puremvc.as3.interfaces.INotification;
   import flash.events.MouseEvent;
   import util.Util;
   import ui.TreasureMCUI;
   import common.event.EventCenter;
   
   public class ChangeRateMediator extends Mediator
   {
      
      public static const NAME:String = "ChangeRateMediator";
       
      
      private var treasureMC:MovieClip;
      
      public function ChangeRateMediator(param1:Object)
      {
         super(NAME,param1);
         if(!Param.IsIndex && Param.isLoginUser == 0)
         {
            this.treasureMC = new TreasureMCUI();
            this.treasureMC.visible = false;
            this.treasureMC.buttonMode = true;
            this.treasureMC.addEventListener(MouseEvent.CLICK,this.__login);
            this.treasureMC.visible = true;
            GlobalData.CHANGE_RATE_LAYER.addChild(this.treasureMC);
            this.resize();
         }
         EventCenter.addEventListener("ChangeRateNotifyEvent",this.onChangeRateNotify);
      }
      
      private function onChangeRateNotify(param1:ObjectEvent) : void
      {
         var _loc2_:int = param1.data.type;
         if(_loc2_ == 1)
         {
            this.show();
         }
         else
         {
            this.hide();
         }
      }
      
      private function show() : void
      {
         if(Param.isQQApp || Param.isYinghun)
         {
            return;
         }
         if(!Param.Status)
         {
            return;
         }
         if(Param.isTicketNeed)
         {
            return;
         }
         if(!Param.IsIndex && GlobalData.hasMultirate == 1 && Param.isLoginUser == 0)
         {
            if(!GlobalData.CHANGE_RATE_LAYER.contains(this.changeRateView))
            {
               GlobalData.CHANGE_RATE_LAYER.addChild(this.changeRateView);
               this.changeRateView.resize();
               this.changeRateView.start();
            }
         }
      }
      
      private function hide() : void
      {
         if(GlobalData.CHANGE_RATE_LAYER.contains(this.changeRateView))
         {
            GlobalData.CHANGE_RATE_LAYER.removeChild(this.changeRateView);
         }
         $.jscall("console.log","hide change rate");
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.On_Resize:
               this.resize();
         }
      }
      
      private function resize() : void
      {
         this.changeRateView.resize();
         if(this.treasureMC)
         {
            this.treasureMC.x = 20;
            this.treasureMC.y = GlobalData.root.stage.stageHeight - this.treasureMC.height - 52;
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.On_Resize];
      }
      
      public function get changeRateView() : ChangeRateView
      {
         return viewComponent as ChangeRateView;
      }
      
      private function __login(param1:MouseEvent) : void
      {
         Util.exitFullscreen();
         $.asTojs("room_login_show");
         $.jscall("console.log","treasureclick");
      }
   }
}
