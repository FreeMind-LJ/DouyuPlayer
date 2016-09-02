package cc.dy.controller
{
   import org.puremvc.as3.patterns.command.SimpleCommand;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import cc.dy.model.net.ClientProxy;
   
   public class LoginCommand extends SimpleCommand implements ICommand
   {
       
      
      public function LoginCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:ClientProxy = facade.retrieveProxy(ClientProxy.NAME) as ClientProxy;
         _loc2_.MyNewUser();
      }
   }
}
