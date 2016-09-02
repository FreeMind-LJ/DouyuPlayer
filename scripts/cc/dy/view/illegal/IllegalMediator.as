package cc.dy.view.illegal
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import common.event.ObjectEvent;
   import util.Util;
   import org.puremvc.as3.interfaces.INotification;
   import common.event.EventCenter;
   
   public class IllegalMediator extends Mediator
   {
      
      public static const NAME:String = "IllegalMediator";
       
      
      public function IllegalMediator(param1:Object)
      {
         super(NAME,param1);
         EventCenter.addEventListener("IllegaNotifyEvent",this.onIllegalNotify);
      }
      
      private function onIllegalNotify(param1:ObjectEvent) : void
      {
         if(GlobalData.rg > 1 && GlobalData.rg != 4 || GlobalData.pg > 1)
         {
            return;
         }
         var _loc2_:int = param1.data.isIll;
         if(_loc2_ == 0)
         {
            this.hide();
         }
         else
         {
            this.show();
         }
      }
      
      private function show() : void
      {
         if(!GlobalData.ILLEGAL_LAYER.contains(this.illegalView))
         {
            GlobalData.ILLEGAL_LAYER.addChild(this.illegalView);
            this.illegalView.resize();
         }
         sendNotification(Order.Video_Silent_Request,true);
      }
      
      private function hide() : void
      {
         if(GlobalData.ILLEGAL_LAYER.contains(this.illegalView))
         {
            GlobalData.ILLEGAL_LAYER.removeChild(this.illegalView);
         }
         if(Util.checkSilentCondition())
         {
            sendNotification(Order.Video_Silent_Request,false);
         }
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.On_Resize:
               this.illegalView.resize();
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.On_Resize];
      }
      
      public function get illegalView() : IllegalView
      {
         return viewComponent as IllegalView;
      }
   }
}
