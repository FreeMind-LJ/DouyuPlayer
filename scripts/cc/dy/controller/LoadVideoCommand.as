package cc.dy.controller
{
   import org.puremvc.as3.patterns.command.SimpleCommand;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   
   public class LoadVideoCommand extends SimpleCommand implements ICommand
   {
       
      
      public function LoadVideoCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         facade.sendNotification(Order.Show_Load_Request,null);
      }
   }
}
