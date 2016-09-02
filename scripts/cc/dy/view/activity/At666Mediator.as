package cc.dy.view.activity
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import org.puremvc.as3.interfaces.IMediator;
   import org.puremvc.as3.interfaces.INotification;
   import common.event.ObjectEvent;
   import common.event.EventCenter;
   
   public class At666Mediator extends Mediator implements IMediator
   {
      
      public static var NAME:String = "At666Mediator";
       
      
      public function At666Mediator(param1:Object)
      {
         super(NAME,param1);
         EventCenter.addEventListener("VotesChanged",this.voteChanged);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.TURN_ON_AC666,Order.On_Resize];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.TURN_ON_AC666:
               this.showAc666();
               break;
            case Order.On_Resize:
               this.atView.resize();
         }
      }
      
      public function get atView() : At666View
      {
         return viewComponent as At666View;
      }
      
      private function showAc666() : void
      {
         if(this.atView.parent == null)
         {
            GlobalData.ACTIVITY_LAYER.addChild(this.atView);
         }
         this.atView.initAc666();
      }
      
      private function voteChanged(param1:ObjectEvent) : void
      {
         var _loc2_:Object = param1.data;
         if(_loc2_.tvt != null)
         {
            this.atView.totalVotes = int(_loc2_.tvt);
         }
         if(_loc2_.vt != null)
         {
            this.atView.voteChanged(int(_loc2_.vt));
         }
      }
   }
}
