package cc.dy.view.userNoHandle
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import org.puremvc.as3.interfaces.IMediator;
   import common.event.EventCenter;
   import org.puremvc.as3.interfaces.INotification;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import common.event.ObjectEvent;
   import flash.display.StageDisplayState;
   import cc.dy.model.net.Encode;
   import util.$;
   
   public class UserNoHandleMediator extends Mediator implements IMediator
   {
      
      public static var NAME:String = "UserNoHandleMediator";
       
      
      public var UserHandleTimer:Timer;
      
      public var InTimerBool:Boolean;
      
      private var timerIndex:int;
      
      public function UserNoHandleMediator(param1:Object)
      {
         super(NAME,param1);
         this.addListener();
      }
      
      private function addListener() : void
      {
         this.userNoHandleView.addEventListener("UserNoHandleEventReloadStream",this.ReloadStream);
         EventCenter.addEventListener("UserNoHandleEvent",this.AddUserNohandleMask);
         EventCenter.addEventListener("UserHaveHandleEvent",this.DelleteUserNohandleMask);
         EventCenter.addEventListener("clickPlayButtonUserHandleEvent",this.DelleteUserNohandleMaskByPlay);
         EventCenter.addEventListener("pointUserNoHandleChange",this.ToJSPointUserHandle);
         EventCenter.addEventListener("pointUserNoHandleContinePlay",this.ToJSPointPlayContinuePlay);
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.On_Resize,Order.Show_Recommend_Request];
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.On_Resize:
               this.onResize();
               break;
            case Order.Show_Recommend_Request:
               this.DeleteMakeByRecommend();
         }
      }
      
      private function onResize() : void
      {
         this.userNoHandleView.anotherResize();
      }
      
      private function StarTimer() : void
      {
         if(!this.UserHandleTimer)
         {
            this.UserHandleTimer = new Timer(1000,10);
            this.UserHandleTimer.addEventListener(TimerEvent.TIMER,this.HandleSurplusTimerChange);
            this.UserHandleTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.HandleSurplusTimerComplete);
         }
         this.UserHandleTimer.reset();
         this.UserHandleTimer.repeatCount = 10;
         this.UserHandleTimer.delay = 1000;
         this.UserHandleTimer.start();
         this.InTimerBool = true;
      }
      
      private function HandleSurplusTimerChange(param1:TimerEvent) : void
      {
         this.userNoHandleView.HandleSurplusTimerChange();
      }
      
      private function HandleSurplusTimerComplete(param1:TimerEvent) : void
      {
         if(this.UserHandleTimer)
         {
            this.UserHandleTimer.reset();
         }
         this.InTimerBool = false;
         this.StopStream();
         this.userNoHandleView.HandleSurplusTimerComplete();
         this.ToJSPointUserNoHandleblack();
      }
      
      public function StopStream(param1:Event = null) : void
      {
         sendNotification(Order.Video_Pause_RequestByUserHandle,null);
      }
      
      public function ReloadStream(param1:Event) : void
      {
         sendNotification(Order.Video_Reload_RequestByUserHandle,null);
      }
      
      public function get userNoHandleView() : UserNoHandleView
      {
         return viewComponent as UserNoHandleView;
      }
      
      private function AddUserNohandleMask(param1:ObjectEvent) : void
      {
         if(GlobalData.RECOMMENDLAYER.numChildren > 0)
         {
            return;
         }
         if(GlobalData.root.stage.displayState == StageDisplayState.NORMAL)
         {
            GlobalData.USERNOHANDLELAYER.addChild(this.userNoHandleView);
            this.userNoHandleView.AddUserNohandleMask();
            this.StarTimer();
         }
      }
      
      private function DeleteMakeByRecommend() : void
      {
         if(this.userNoHandleView.parent)
         {
            GlobalData.USERNOHANDLELAYER.removeChild(this.userNoHandleView);
            this.userNoHandleView.DelleteUserNohandleMask(1);
         }
      }
      
      private function DelleteUserNohandleMask(param1:ObjectEvent) : void
      {
         if(this.InTimerBool && this.userNoHandleView.parent)
         {
            if(this.UserHandleTimer)
            {
               this.UserHandleTimer.reset();
            }
            this.InTimerBool = false;
            GlobalData.USERNOHANDLELAYER.removeChild(this.userNoHandleView);
            this.userNoHandleView.DelleteUserNohandleMask(0);
         }
      }
      
      private function DelleteUserNohandleMaskByPlay(param1:ObjectEvent) : void
      {
         if(this.userNoHandleView.parent)
         {
            if(this.UserHandleTimer)
            {
               this.UserHandleTimer.reset();
            }
            this.InTimerBool = false;
            GlobalData.USERNOHANDLELAYER.removeChild(this.userNoHandleView);
            this.userNoHandleView.DelleteUserNohandleMask(1);
         }
      }
      
      public function ToJSPointUserHandle(param1:ObjectEvent) : void
      {
         var _loc2_:Encode = new Encode();
         _loc2_.AddItem_int("stage",2);
         _loc2_.AddItem("e",param1.data.toString());
         _loc2_.AddItem("ot",Param.StarNoHandleTipsTimer);
         $.asTojs("room_data_idle_dp",_loc2_.Get_SttString());
      }
      
      public function ToJSPointPlayContinuePlay(param1:ObjectEvent) : void
      {
         var _loc2_:Encode = new Encode();
         _loc2_.AddItem_int("stage",3);
         _loc2_.AddItem("pt",Param.blackFullTimer);
         _loc2_.AddItem("ot",param1.data.toString());
         var _loc3_:int = int(param1.data) - int(Param.blackFullTimer);
         _loc2_.AddItem("e",_loc3_.toString());
         $.asTojs("room_data_idle_dp",_loc2_.Get_SttString());
      }
      
      public function ToJSPointUserNoHandleblack(param1:ObjectEvent = null) : void
      {
         var _loc2_:Encode = new Encode();
         _loc2_.AddItem_int("stage",4);
         _loc2_.AddItem("pt",Param.blackFullTimer);
         _loc2_.AddItem("ot",Param.blackFullTimer);
         $.asTojs("room_data_idle_dp",_loc2_.Get_SttString());
      }
   }
}
