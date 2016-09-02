package cc.dy.view.pwd
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import common.event.ObjectEvent;
   import util.Util;
   import org.puremvc.as3.interfaces.INotification;
   import common.event.EventCenter;
   
   public class PwdMediator extends Mediator
   {
      
      public static const NAME:String = "PwdMediator";
       
      
      public function PwdMediator(param1:Object)
      {
         super(NAME,param1);
         EventCenter.addEventListener("PwdNotifyEvent",this.onPasswordNotify);
      }
      
      private function onPasswordNotify(param1:ObjectEvent) : void
      {
         if(Param.IsIndex || Param.IS_HOSTLIVE == 1 || Param.usergroupid == "5")
         {
            return;
         }
         var _loc2_:int = param1.data.type;
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
         if(!GlobalData.PWD_LAYER.contains(this.pwdView))
         {
            GlobalData.PWD_LAYER.addChild(this.pwdView);
            this.pwdView.resize();
            this.pwdView.reset();
         }
         sendNotification(Order.Video_Silent_Request,true);
      }
      
      private function hide() : void
      {
         if(GlobalData.PWD_LAYER.contains(this.pwdView))
         {
            GlobalData.PWD_LAYER.removeChild(this.pwdView);
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
               this.pwdView.resize();
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.On_Resize];
      }
      
      public function get pwdView() : PwdView
      {
         return viewComponent as PwdView;
      }
   }
}
