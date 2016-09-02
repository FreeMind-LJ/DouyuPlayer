package cc.dy.view.titlebar
{
   import org.puremvc.as3.patterns.mediator.Mediator;
   import com.greensock.TweenLite;
   import common.event.ObjectEvent;
   import flash.events.MouseEvent;
   import util.$;
   import com.greensock.loading.ImageLoader;
   import mx.utils.StringUtil;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import flash.display.StageDisplayState;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import org.puremvc.as3.interfaces.INotification;
   import flash.text.TextFieldAutoSize;
   import common.event.EventCenter;
   import flash.external.ExternalInterface;
   
   public class TitleBarMediator extends Mediator
   {
      
      public static const NAME:String = "TitleBarMediator";
       
      
      private var status:int = 1;
      
      private var animate:TweenLite;
      
      private var animateTimeoutSeed:uint;
      
      private var fans:Number;
      
      private var followLock:Boolean;
      
      private var ownerName:String = "";
      
      private var gameName:String = "";
      
      private var userCount:String = "";
      
      private var weight:String = "";
      
      private var infoTemplate:String = "主播：{0}    栏目：{1}    人气：{2}    体重：{3}";
      
      public function TitleBarMediator(param1:Object)
      {
         super(NAME,param1);
         this.view.y = -this.view.height;
         this.status = 0;
         this.view.title.autoSize = TextFieldAutoSize.LEFT;
         this.view.info.autoSize = TextFieldAutoSize.LEFT;
         this.view.fav.autoSize = TextFieldAutoSize.LEFT;
         this.view.fav.embedFonts = true;
         this.view.fav.text = "0";
         this.view.follow.addEventListener(MouseEvent.CLICK,this.onFollow);
         this.view.unfollow.addEventListener(MouseEvent.CLICK,this.onUnFollow);
         this.changeFollow(false);
         EventCenter.addEventListener("TitleBarInitEvent",this.onTitleBarlInit);
         EventCenter.addEventListener("TitleBarDataEvent",this.onTitleBarlData);
         if(ExternalInterface.available)
         {
            ExternalInterface.addCallback("follow_result",this.followResult);
         }
      }
      
      private function followResult(param1:int) : void
      {
         if(param1 == 1)
         {
            if(this.view.unfollow.visible)
            {
               this.changeFollow(false);
               if(this.fans)
               {
                  this.fans--;
                  this.view.fav.text = this.fans.toString();
                  this.view.resize();
               }
            }
            else
            {
               this.changeFollow(true);
               if(this.fans)
               {
                  this.fans++;
                  this.view.fav.text = this.fans.toString();
                  this.view.resize();
               }
            }
         }
         this.followLock = false;
      }
      
      private function onTitleBarlInit(param1:ObjectEvent) : void
      {
         GlobalData.TITLEBAR_LAYER.addChild(this.view);
         this.attach(GlobalData.root.stage);
         this.view.resize();
      }
      
      private function changeFollow(param1:Boolean) : void
      {
         if(param1)
         {
            this.view.follow.visible = false;
            this.view.unfollow.visible = true;
         }
         else
         {
            this.view.follow.visible = true;
            this.view.unfollow.visible = false;
         }
      }
      
      protected function onFollow(param1:MouseEvent) : void
      {
         if(!this.followLock)
         {
            this.followLock = true;
            if($.jscall("follow_room") == false)
            {
               this.followResult(0);
            }
         }
      }
      
      protected function onUnFollow(param1:MouseEvent) : void
      {
         if(!this.followLock)
         {
            this.followLock = true;
            if($.jscall("rm_follow") == false)
            {
               this.followResult(0);
            }
         }
      }
      
      private function onTitleBarlData(param1:ObjectEvent) : void
      {
         if(param1.data.owner_avatar != undefined)
         {
            new ImageLoader(param1.data.owner_avatar,{
               "container":this.view.pic,
               "width":70,
               "height":70
            }).load();
         }
         if(param1.data.room_name != undefined)
         {
            this.view.title.text = param1.data.room_name;
         }
         if(param1.data.nickname != undefined)
         {
            this.ownerName = param1.data.nickname;
         }
         if(param1.data.game_name != undefined)
         {
            this.gameName = param1.data.game_name;
         }
         if(param1.data.uc != undefined)
         {
            this.userCount = param1.data.uc;
         }
         if(param1.data.weight != undefined)
         {
            this.weight = this.formatWeight(param1.data.weight);
         }
         this.showInfo();
         if(param1.data.fans_count != undefined)
         {
            this.fans = param1.data.fans_count;
            this.view.fav.text = param1.data.fans_count;
            this.view.resize();
         }
         if(param1.data.fl != undefined)
         {
            this.changeFollow(param1.data.fl == 1);
         }
      }
      
      private function showInfo() : void
      {
         this.view.info.text = StringUtil.substitute(this.infoTemplate,this.ownerName,this.gameName,this.userCount,this.weight);
      }
      
      private function attach(param1:Stage) : void
      {
         if(param1)
         {
            param1.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
            param1.addEventListener(Event.MOUSE_LEAVE,this.onMouseLeave);
         }
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(GlobalData.PLAYLAYER.contains(param1.target as DisplayObject) || this.view.stage.displayState != StageDisplayState.NORMAL)
         {
            this.onMouseLeave(param1);
         }
         else if(this.status != 1)
         {
            this.status = 1;
            if(this.animate)
            {
               this.animate.kill();
            }
            if(this.animateTimeoutSeed > 0)
            {
               clearTimeout(this.animateTimeoutSeed);
            }
            this.animate = TweenLite.to(this.view,0.5,{"y":0});
         }
      }
      
      private function onMouseLeave(param1:Event) : void
      {
         var event:Event = param1;
         if(this.status != 0)
         {
            this.status = 0;
            this.animateTimeoutSeed = setTimeout(function():void
            {
               if(animate)
               {
                  animate.kill();
               }
               if(animateTimeoutSeed > 0)
               {
                  clearTimeout(animateTimeoutSeed);
               }
               animate = TweenLite.to(view,0.5,{"y":-view.height});
            },2000);
         }
      }
      
      override public function handleNotification(param1:INotification) : void
      {
         switch(param1.getName())
         {
            case Order.On_Resize:
               this.view.resize();
         }
      }
      
      override public function listNotificationInterests() : Array
      {
         return [Order.On_Resize];
      }
      
      public function get view() : TitleBarView
      {
         return viewComponent as TitleBarView;
      }
      
      private function formatWeight(param1:Number) : String
      {
         if(param1 < 1000)
         {
            return param1.toFixed(2) + "g";
         }
         if(param1 < 1000000)
         {
            return (param1 / 1000).toFixed(2) + "kg";
         }
         return (param1 / 1000000).toFixed(2) + "t";
      }
   }
}
