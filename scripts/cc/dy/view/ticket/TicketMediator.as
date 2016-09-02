package cc.dy.view.ticket
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import common.event.ObjectEvent;
   import util.UserBehaviorLog;
   import org.puremvc.as3.interfaces.INotification;
   import common.event.EventCenter;
   
   public class TicketMediator extends Mediator
   {
      
      public static const NAME:String = "TicketMediator";
       
      
      public function TicketMediator(param1:Object)
      {
         super(NAME,param1);
         EventCenter.addEventListener("TicketNotifyEvent",this.onTicketNotify);
      }
      
      private function onTicketNotify(param1:ObjectEvent) : void
      {
         var _loc2_:int = param1.data.type;
         var _loc3_:Object = param1.data.data;
         if(_loc2_ == 0)
         {
            this.hide();
         }
         else
         {
            this.show(_loc2_,_loc3_);
         }
      }
      
      private function show(param1:int, param2:Object) : void
      {
         if(!GlobalData.TICKET_LAYER.contains(this.ticketView))
         {
            GlobalData.TICKET_LAYER.addChild(this.ticketView);
            this.ticketView.type = param1;
            this.ticketView.data = param2;
            this.ticketView.resize();
         }
         sendNotification(Order.Video_Pause_Request);
         UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_TICKET_PLAYER_SHOW);
      }
      
      private function hide() : void
      {
         if(GlobalData.TICKET_LAYER.contains(this.ticketView))
         {
            GlobalData.TICKET_LAYER.removeChild(this.ticketView);
         }
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.On_Resize:
               this.ticketView.resize();
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.On_Resize];
      }
      
      public function get ticketView() : TicketView
      {
         return viewComponent as TicketView;
      }
   }
}
