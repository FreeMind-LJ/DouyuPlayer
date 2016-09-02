package cc.dy.view.load
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Loader;
   import util.$;
   import flash.net.URLRequest;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import common.event.EventCenter;
   import ui.LoadPanel;
   import ui.NewLoadPanel;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class LoadView extends Sprite
   {
       
      
      private var preloader:MovieClip;
      
      public var reloadBtn:SimpleButton;
      
      private var loaderWidth:int;
      
      private var loaderHeight:int;
      
      private var loader:Loader;
      
      public var reloadLabel:MovieClip;
      
      public var loadingLabel:MovieClip;
      
      public var loadLogoMC:MovieClip;
      
      public var ground:Sprite;
      
      private var effect:MovieClip;
      
      private var index:uint;
      
      public function LoadView()
      {
         super();
      }
      
      public function initLoad() : void
      {
         $.jscall("console.log","加载开始！！！！！！！！！" + Param.ASSET_URL + "simplayer/assets/" + "www.douyu.tv" + ".swf");
         if(this.loader == null)
         {
            this.loader = new Loader();
            this.loader.load(new URLRequest(Param.ASSET_URL + "simplayer/assets/" + "www.douyu.tv" + ".swf?v=140515"));
            this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,function():void
            {
               preloader = loader.content as MovieClip;
               loaderWidth = preloader.loaderInfo.width;
               loaderHeight = preloader.loaderInfo.height;
               preloader.scaleX = GlobalData.root.stage.stageWidth / preloader.loaderInfo.width;
               preloader.scaleY = GlobalData.root.stage.stageHeight / preloader.loaderInfo.height;
               addChild(preloader);
               reloadBtn = preloader["reloadBtn"] as SimpleButton;
               if(reloadBtn != null)
               {
                  reloadBtn.addEventListener(MouseEvent.CLICK,__reload);
               }
               $.jscall("console.log","加载界面添加！！！！！！！！！");
               EventCenter.dispatch("LoadOK");
            },false,0,true);
         }
         else
         {
            if(this.preloader != null)
            {
               this.preloader.scaleX = GlobalData.root.stage.stageWidth / this.preloader.loaderInfo.width;
               this.preloader.scaleY = GlobalData.root.stage.stageHeight / this.preloader.loaderInfo.height;
            }
            EventCenter.dispatch("LoadOK");
         }
      }
      
      public function anotherLoad() : void
      {
         $.jscall("console.log","加载开始！！！！！！！！！" + Param.ASSET_URL + "simplayer/assets/" + "www.douyu.tv" + ".swf");
         if(this.preloader == null)
         {
            this.preloader = new LoadPanel();
            this.loaderWidth = this.preloader.width;
            this.loaderHeight = this.preloader.height;
            this.preloader.scaleX = GlobalData.root.stage.stageWidth / this.loaderWidth;
            this.preloader.scaleY = GlobalData.root.stage.stageHeight / this.loaderHeight;
            addChild(this.preloader);
            this.reloadBtn = this.preloader["reloadBtn"] as SimpleButton;
            this.reloadBtn.addEventListener(MouseEvent.CLICK,this.__reload);
            $.jscall("console.log","加载界面添加！！！！！！！！！");
            EventCenter.dispatch("LoadOK");
         }
         else
         {
            this.preloader.scaleX = GlobalData.root.stage.stageWidth / this.loaderWidth;
            this.preloader.scaleY = GlobalData.root.stage.stageHeight / this.loaderHeight;
            EventCenter.dispatch("LoadOK");
         }
      }
      
      public function thridLoad() : void
      {
         if(this.preloader == null)
         {
            this.ground = new Sprite();
            this.ground.graphics.beginFill(3355443);
            this.ground.graphics.drawRect(0,0,GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight);
            this.ground.graphics.endFill();
            addChild(this.ground);
            this.preloader = new NewLoadPanel();
            this.loaderWidth = 1341;
            this.loaderHeight = 603;
            this.scaleWH();
            addChild(this.preloader);
            this.reloadLabel = this.preloader.loadLogo["reloadLabel"] as MovieClip;
            this.loadingLabel = this.preloader.loadLogo["loadingLabel"] as MovieClip;
            this.reloadLabel.addEventListener(MouseEvent.CLICK,this.__reload);
            this.reloadLabel.gotoAndStop(1);
            this.reloadLabel.addEventListener(MouseEvent.MOUSE_OVER,function(param1:MouseEvent):void
            {
               reloadLabel.gotoAndStop(2);
            });
            this.reloadLabel.addEventListener(MouseEvent.MOUSE_OUT,function(param1:MouseEvent):void
            {
               reloadLabel.gotoAndStop(1);
            });
            EventCenter.dispatch("LoadOK");
         }
         else
         {
            this.scaleWH();
            EventCenter.dispatch("LoadOK");
         }
      }
      
      private function __reload(param1:MouseEvent) : void
      {
         EventCenter.dispatch("Reload");
      }
      
      public function switchStatus() : void
      {
         this.reloadLabel.visible = false;
         this.loadingLabel.visible = true;
         clearTimeout(this.index);
         setTimeout(function():void
         {
            reloadLabel.visible = true;
            loadingLabel.visible = false;
         },20000);
      }
      
      public function onResize(param1:Event = null) : void
      {
         if(this.preloader != null && this.parent != null)
         {
            this.scaleWH();
         }
      }
      
      private function scaleWH() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:int = 0;
         if(this.ground)
         {
            this.ground.width = GlobalData.root.stage.stageWidth;
            this.ground.height = GlobalData.root.stage.stageHeight;
            if(this.ground.width / this.ground.height > this.loaderWidth / this.loaderHeight)
            {
               this.preloader.height = this.ground.height;
               this.preloader.width = Math.round(this.preloader.height * this.loaderWidth / this.loaderHeight);
               this.preloader.y = 0;
               this.preloader.x = Math.round((this.ground.width - this.preloader.width) / 2);
            }
            else
            {
               this.preloader.width = this.ground.width;
               this.preloader.height = this.ground.width * this.loaderHeight / this.loaderWidth;
               this.preloader.y = Math.round((this.ground.height - this.preloader.height) / 2);
               this.preloader.x = 0;
            }
         }
      }
   }
}
