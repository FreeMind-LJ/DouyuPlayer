package cc.dy.view.userNoHandle
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import common.event.EventCenter;
   
   public class UserNoHandleView extends Sprite
   {
       
      
      private var MyuserNohandleMask:userNoHandleMask;
      
      private var continuePlay:MovieClip;
      
      private var timerIndex:int;
      
      public var UserHandleTimer:Timer;
      
      private var MynumberMc:MovieClip;
      
      private var MyuserNohandleMaskBg:MovieClip;
      
      public function UserNoHandleView()
      {
         super();
      }
      
      public function anotherResize() : void
      {
         if(this.MyuserNohandleMask)
         {
            this.MyuserNohandleMask.width = GlobalData.root.stage.stageWidth;
            this.MyuserNohandleMask.height = GlobalData.root.stage.stageHeight;
         }
      }
      
      public function AddUserNohandleMask(param1:int = 0) : void
      {
         Param.StarNoHandleTipsTimer = int(new Date().time / 1000).toString();
         this.timerIndex = 10;
         if(!this.MyuserNohandleMask)
         {
            this.MyuserNohandleMask = new userNoHandleMask();
            this.addChild(this.MyuserNohandleMask);
         }
         this.MyuserNohandleMask.visible = true;
         this.MyuserNohandleMask.tipsMc.visible = true;
         this.MyuserNohandleMask.maskMc.alpha = 0.9;
         this.MyuserNohandleMask.width = GlobalData.root.stage.stageWidth;
         this.MyuserNohandleMask.height = GlobalData.root.stage.stageHeight;
         this.MynumberMc = this.MyuserNohandleMask.tipsMc.numberMc;
         this.MyuserNohandleMaskBg = this.MyuserNohandleMask.maskMc;
         this.MynumberMc.gotoAndPlay(this.timerIndex + "s");
         this.continuePlay = this.MyuserNohandleMask.continueMc;
         this.continuePlay.visible = false;
         (this.continuePlay.girlMc as MovieClip).mouseEnabled = false;
         (this.continuePlay.girlMc as MovieClip).mouseChildren = false;
      }
      
      public function HandleSurplusTimerChange(param1:TimerEvent = null) : void
      {
         this.timerIndex--;
         if(this.MynumberMc && this.timerIndex > 0)
         {
            this.MynumberMc.gotoAndPlay(this.timerIndex + "s");
         }
         if(this.MyuserNohandleMaskBg)
         {
            this.MyuserNohandleMaskBg.alpha = 1 - this.timerIndex * 0.01;
         }
      }
      
      public function HandleSurplusTimerComplete(param1:TimerEvent = null) : void
      {
         if(this.MyuserNohandleMask)
         {
            this.MyuserNohandleMask.tipsMc.visible = false;
         }
         if(this.continuePlay)
         {
            this.continuePlay.visible = true;
            (this.continuePlay.continuButton as MovieClip).buttonMode = true;
            (this.continuePlay.continuButton as MovieClip).mouseChildren = false;
            (this.continuePlay.continuButton as MovieClip).addEventListener(MouseEvent.CLICK,this.continuePlayClick);
            (this.continuePlay.continuButton as MovieClip).addEventListener(MouseEvent.MOUSE_OVER,this.continuePlayOver);
            (this.continuePlay.continuButton as MovieClip).addEventListener(MouseEvent.MOUSE_OUT,this.continuePlayOut);
         }
         Param.blackFullTimer = int(new Date().time / 1000).toString();
      }
      
      private function continuePlayOver(param1:MouseEvent) : void
      {
         if(this.MyuserNohandleMask)
         {
            (this.continuePlay.continuButton as MovieClip).gotoAndStop(2);
         }
      }
      
      private function continuePlayOut(param1:MouseEvent) : void
      {
         if(this.MyuserNohandleMask)
         {
            (this.continuePlay.continuButton as MovieClip).gotoAndStop(1);
         }
      }
      
      private function continuePlayClick(param1:Event) : void
      {
         (this.continuePlay.continuButton as MovieClip).gotoAndStop(3);
         (this.continuePlay.continuButton as MovieClip).removeEventListener(MouseEvent.CLICK,this.continuePlayClick);
         (this.continuePlay.continuButton as MovieClip).removeEventListener(MouseEvent.MOUSE_OVER,this.continuePlayOver);
         (this.continuePlay.continuButton as MovieClip).removeEventListener(MouseEvent.MOUSE_OUT,this.continuePlayOut);
         if(this.MyuserNohandleMask)
         {
            this.MyuserNohandleMask.visible = false;
         }
         this.dispatchEvent(new Event("UserNoHandleEventReloadStream"));
         EventCenter.dispatch("pointUserNoHandleContinePlay",int(new Date().time / 1000).toString());
      }
      
      public function DelleteUserNohandleMask(param1:int = 0) : void
      {
         if(this.MyuserNohandleMask)
         {
            this.MyuserNohandleMask.visible = false;
         }
         if(param1 == 0)
         {
            EventCenter.dispatch("pointUserNoHandleChange",int(10 - this.timerIndex));
         }
      }
   }
}
