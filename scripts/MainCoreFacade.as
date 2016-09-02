package
{
   import org.puremvc.as3.patterns.facade.Facade;
   import org.puremvc.as3.interfaces.IFacade;
   import cc.dy.controller.StartCommand;
   import cc.dy.controller.LoginCommand;
   import cc.dy.controller.LoadVideoCommand;
   import common.event.EventCenter;
   import common.event.ObjectEvent;
   
   public class MainCoreFacade extends Facade implements IFacade
   {
      
      public static var START_UP:String = "start_up";
       
      
      public function MainCoreFacade()
      {
         super();
      }
      
      public static function getInstance() : MainCoreFacade
      {
         if(instance == null)
         {
            instance = new MainCoreFacade();
         }
         return instance as MainCoreFacade;
      }
      
      override protected function initializeController() : void
      {
         super.initializeController();
         registerCommand(MainCoreFacade.START_UP,StartCommand);
         registerCommand(Order.Room_Login_Request,LoginCommand);
         registerCommand(Order.Enter_Video_Request,LoadVideoCommand);
         this.addListenr();
      }
      
      private function addListenr() : void
      {
         EventCenter.addEventListener("ResizeChange",this.__resizeChange);
      }
      
      private function __resizeChange(param1:ObjectEvent) : void
      {
         sendNotification(Order.On_Resize,param1.data);
      }
   }
}
