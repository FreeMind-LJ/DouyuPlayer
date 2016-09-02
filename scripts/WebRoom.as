package
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.display.StageScaleMode;
   import flash.display.StageAlign;
   import util.Log;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import util.$;
   import common.event.EventCenter;
   import util.UserBehaviorLog;
   import flash.ui.ContextMenuItem;
   import flash.ui.ContextMenu;
   import flash.events.ContextMenuEvent;
   import common.event.ObjectEvent;
   import util.LocalStorage;
   import cc.dy.view.effect.EffectManager;
   import cc.dy.view.plug.PlugManager;
   import cc.dy.view.plug.GoogleAdManager;
   import cc.dy.view.effect.BigEffectContainer;
   import flash.system.MessageChannel;
   import flash.system.Worker;
   import flash.system.WorkerDomain;
   import sample.xx.CModule;
   import flash.system.Security;
   
   public class WebRoom extends Sprite
   {
       
      
      private var facade:MainCoreFacade;
      
      private var maskSp:Sprite;
      
      private var fistLineMenu:Boolean = true;
      
      private var lineArr:Array;
      
      private var currentLine:ContextMenuItem;
      
      private var largeDM:ContextMenuItem;
      
      private var GPUMenu:ContextMenuItem;
      
      private var context:ContextMenu;
      
      protected var mainToWorker:MessageChannel;
      
      protected var workerToMain:MessageChannel;
      
      protected var worker:Worker;
      
      public function WebRoom()
      {
         this.lineArr = [];
         super();
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
         CModule.startAsync(this);
         this.workLine();
         addEventListener(Event.ENTER_FRAME,this.__addStage);
      }
      
      private function __addStage(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         if(stage && stage.stageWidth > 0)
         {
            removeEventListener(Event.ENTER_FRAME,this.__addStage);
            stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.align = StageAlign.TOP_LEFT;
            _loc2_ = root.loaderInfo.loaderURL;
            _loc3_ = _loc2_.slice(_loc2_.indexOf("?") + 1);
            Param.swfVersion = _loc3_;
            stage.color = 0;
            stage.frameRate = GlobalData.MAX_FPS;
            stage.doubleClickEnabled = true;
            this.initLayer(this);
            this.initCahe();
            stage.addEventListener(Event.RESIZE,this.onResize);
            GlobalData.root = this;
            Param.init(stage.loaderInfo.parameters);
            Log.init(this);
            Log.setLevel(3);
            _loc4_ = ExternalInterface.call("function getBrowser(){return navigator.userAgent;}");
            GlobalData.isChromeBrowser = false;
            GlobalData.FontStr = "SimHei";
            if(Capabilities.manufacturer.toLowerCase().indexOf("google") != -1)
            {
               GlobalData.FontStr = "黑体";
               GlobalData.isChromeBrowser = true;
            }
            if(stage.stageWidth < 800)
            {
               GlobalData.textSizeValue = 20;
            }
            else if(stage.stageWidth < 1400)
            {
               GlobalData.textSizeValue = 24;
            }
            else
            {
               GlobalData.textSizeValue = 28;
            }
            $.initDictionary();
            this.rightMenuInit();
            EventCenter.addEventListener("refreshRightMenu",this.rightMenuReflesh);
            EventCenter.addEventListener("WorkRequestData",this.__handlerWorkRequestData);
            EventCenter.addEventListener("ShowGPUMenu",this.__handlerGPUMenu);
            _loc5_ = ExternalInterface.call("(function (){return document.location.href})");
            _loc6_ = ExternalInterface.call("(function (){return window.location.href})");
            if(this.CheckDomainName(_loc5_,_loc6_))
            {
               if(_loc5_ != null)
               {
                  GlobalData.domainName = _loc5_;
                  GlobalData.isDebug = _loc5_.indexOf("dydebug") != -1?true:false;
               }
               else if(_loc6_ != null)
               {
                  GlobalData.domainName = _loc6_;
                  GlobalData.isDebug = _loc6_.indexOf("dydebug") != -1?true:false;
               }
               $.jscall("console.log"," subUrl=" + _loc3_);
               $.jscall("console.log","*****************" + _loc5_ + "   =" + _loc6_);
               $.jscall("console.log","浏览器类型   = " + _loc4_);
               EventCenter.addEventListener("lineCDNEvent",this.__lineStatus);
               EventCenter.addEventListener("userRGEvent",this.__rgStatus);
               UserBehaviorLog.getInstance().initialise();
               this.facade = MainCoreFacade.getInstance();
               this.facade.sendNotification(MainCoreFacade.START_UP,this);
               this.startEffect();
               if(Param.isQQApp || Param.isYinghun)
               {
                  $.jscall("qqappReady");
               }
            }
         }
      }
      
      private function addBgmask() : void
      {
         this.maskSp = new Sprite();
         this.maskSp.doubleClickEnabled = true;
         this.maskSp.graphics.beginFill(16711680,0);
         this.maskSp.graphics.drawRect(0,0,stage.stageWidth,stage.stageHeight);
         this.maskSp.graphics.endFill();
         addChild(this.maskSp);
      }
      
      private function rightMenuInit(param1:Event = null) : void
      {
         var log:ContextMenuItem = null;
         var e:Event = param1;
         this.context = new ContextMenu();
         this.context.hideBuiltInItems();
         var version:ContextMenuItem = new ContextMenuItem(GlobalData.PLAYER_VERSION,true,false);
         this.context.customItems.push(version);
         this.largeDM = new ContextMenuItem("海量弹幕模式",true,true,false);
         this.context.customItems.push(this.largeDM);
         this.largeDM.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,this.__largeDMMenuHandler);
         log = new ContextMenuItem("查看日志",true,true,false);
         this.context.customItems.push(log);
         log.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,function(param1:ContextMenuEvent):void
         {
            Log.toggleShow(true);
         });
         this.context.addEventListener(ContextMenuEvent.MENU_SELECT,function(param1:ContextMenuEvent):void
         {
            log.visible = true;
            facade.sendNotification(Order.Right_Menu_Request,context);
         });
         this.contextMenu = this.context;
      }
      
      private function rightMenuReflesh(param1:Event = null) : void
      {
         var _loc3_:int = 0;
         var _loc4_:ContextMenuItem = null;
         var _loc5_:Boolean = false;
         var _loc6_:String = null;
         this.currentLine = null;
         if(this.lineArr && this.lineArr.length > 0)
         {
            _loc3_ = this.lineArr.length;
            this.context.customItems.splice(1,_loc3_);
         }
         this.lineArr = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < Param.CDNlist.length)
         {
            _loc4_ = new ContextMenuItem(Param.CDNlist[_loc2_].name,true,true,false);
            this.context.customItems.splice(1 + _loc2_,0,_loc4_);
            _loc4_.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,this.__lineMenuHandlerClick);
            if(Param.CDNlist[_loc2_].cdn == Param.CDN)
            {
               _loc4_.caption = "√ " + Param.CDNlist[_loc2_].name;
            }
            this.lineArr.push(_loc4_);
            _loc2_++;
         }
         if(this.fistLineMenu)
         {
            this.fistLineMenu = false;
            _loc5_ = stage.stageVideos.length != 0?true:false;
            _loc6_ = !!GlobalData.isChromeBrowser?"开启GPU渲染":"关闭GPU渲染";
            GlobalData.GPUStatus = !!GlobalData.isChromeBrowser?false:true;
            this.GPUMenu = new ContextMenuItem(_loc6_,true,_loc5_,!Param.isYanzhi);
            this.context.customItems.push(this.GPUMenu);
            this.GPUMenu.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,this.__GPUMenuHandler);
         }
      }
      
      private function __handlerGPUMenu(param1:ObjectEvent) : void
      {
         if(this.GPUMenu)
         {
            this.GPUMenu.visible = true;
            this.GPUMenu.caption = "开启GPU渲染";
            GlobalData.GPUStatus = false;
         }
      }
      
      private function __lineMenuHandlerClick(param1:ContextMenuEvent) : void
      {
         var _loc2_:int = 0;
         if(this.currentLine && this.currentLine == param1.currentTarget)
         {
            return;
         }
         this.currentLine = param1.currentTarget as ContextMenuItem;
         var _loc3_:int = 0;
         while(_loc3_ < this.lineArr.length)
         {
            if(this.lineArr[_loc3_] == param1.target)
            {
               Param.CDNlist[_loc3_];
               Param.CDN = Param.CDNlist[_loc3_].cdn;
               LocalStorage.setValue("selectCDN",Param.CDN);
               $.jscall("console.log","changeLine" + Param.CDN);
               EventCenter.dispatch("lineChangeEvent");
               switch(Param.CDN)
               {
                  case "ws":
                     _loc2_ = UserBehaviorLog.POINT_ID_LINE_MAIN;
                     break;
                  case "tct":
                     _loc2_ = UserBehaviorLog.POINT_ID_LINE_BACKUP1;
                     break;
                  case "ws2":
                     _loc2_ = UserBehaviorLog.POINT_ID_LINE_BACKUP2;
                     break;
                  case "dl":
                     _loc2_ = UserBehaviorLog.POINT_ID_LINE_BACKUP3;
               }
               UserBehaviorLog.getInstance().addLog(_loc2_);
               break;
            }
            _loc3_++;
         }
      }
      
      private function __largeDMMenuHandler(param1:ContextMenuEvent) : void
      {
         var _loc2_:int = 0;
         if(this.largeDM.caption != "√ 海量弹幕模式")
         {
            this.largeDM.caption = "√ 海量弹幕模式";
            _loc2_ = 1;
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_COMMENT_MORE_TRUE);
         }
         else
         {
            this.largeDM.caption = "海量弹幕模式";
            _loc2_ = 0;
            UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_COMMENT_MORE_FALSE);
         }
         EventCenter.dispatch("DModelChangeEvent",{"type":_loc2_});
      }
      
      private function __GPUMenuHandler(param1:ContextMenuEvent) : void
      {
         var _loc2_:int = 0;
         if(this.GPUMenu.caption != "关闭GPU渲染")
         {
            this.GPUMenu.caption = "关闭GPU渲染";
            _loc2_ = 0;
            GlobalData.GPUStatus = true;
         }
         else
         {
            this.GPUMenu.caption = "开启GPU渲染";
            _loc2_ = 1;
            GlobalData.GPUStatus = false;
         }
         EventCenter.dispatch("GPUModelChangeEvent",{"type":_loc2_});
      }
      
      private function __lineStatus(param1:ObjectEvent) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.lineArr.length)
         {
            (this.lineArr[_loc2_] as ContextMenuItem).visible = true;
            (this.lineArr[_loc2_] as ContextMenuItem).caption = Param.CDNlist[_loc2_].name;
            if(Param.CDNlist[_loc2_].cdn == Param.CDN)
            {
               (this.lineArr[_loc2_] as ContextMenuItem).caption = "√ " + Param.CDNlist[_loc2_].name;
               this.currentLine = this.lineArr[_loc2_] as ContextMenuItem;
            }
            _loc2_++;
         }
      }
      
      private function __rgStatus(param1:ObjectEvent) : void
      {
         if(GlobalData.rg > 1 || GlobalData.pg > 1)
         {
            this.largeDM.visible = false;
         }
         else
         {
            if(!this.largeDM.visible)
            {
               this.largeDM.caption != "海量弹幕模式";
            }
            this.largeDM.visible = true;
         }
      }
      
      private function onResize(param1:Event) : void
      {
         if(this.maskSp != null)
         {
            this.maskSp.width = stage.stageWidth;
            this.maskSp.height = stage.stageHeight;
         }
         if(stage.stageWidth < 800)
         {
            GlobalData.textSizeValue = 20;
         }
         else if(stage.stageWidth < 1400)
         {
            GlobalData.textSizeValue = 24;
         }
         else
         {
            GlobalData.textSizeValue = 28;
         }
         if(GlobalData.danmuModel == 1)
         {
            GlobalData.offsetUpHeight = 0;
            GlobalData.offsetDownHeight = 0;
         }
         else if(GlobalData.danmuModel == 2)
         {
            GlobalData.offsetUpHeight = 0;
            GlobalData.offsetDownHeight = int(stage.stageHeight * 0.65);
         }
         else if(GlobalData.danmuModel == 3)
         {
            GlobalData.offsetUpHeight = int(stage.stageHeight * 0.65);
            GlobalData.offsetDownHeight = 0;
         }
         EventCenter.dispatch("ResizeChange",{
            "w":stage.stageWidth,
            "h":stage.stageHeight
         });
         EffectManager.instance.resize(stage.stageWidth,stage.stageHeight);
         PlugManager.instance.resize(stage.stageWidth,stage.stageHeight);
         GoogleAdManager.instance.resize(stage.stageWidth,stage.stageHeight);
      }
      
      private function initCahe() : void
      {
         var _loc1_:Number = LocalStorage.getValue("textAlpha",0);
         if(_loc1_ == 0)
         {
            GlobalData.textAlphaValue = 0.85;
         }
         else
         {
            GlobalData.textAlphaValue = _loc1_;
         }
         var _loc2_:Number = LocalStorage.getValue("danmuModel",0);
         if(_loc2_ == 0)
         {
            GlobalData.danmuModel = 1;
         }
         else
         {
            GlobalData.danmuModel = _loc2_;
         }
         if(GlobalData.danmuModel == 1)
         {
            GlobalData.offsetUpHeight = 0;
            GlobalData.offsetDownHeight = 0;
         }
         else if(GlobalData.danmuModel == 2)
         {
            GlobalData.offsetUpHeight = 0;
            GlobalData.offsetDownHeight = int(stage.stageHeight * 0.65);
         }
         else if(GlobalData.danmuModel == 3)
         {
            GlobalData.offsetUpHeight = int(stage.stageHeight * 0.65);
            GlobalData.offsetDownHeight = 0;
         }
      }
      
      private function onStageVideoAvailability(param1:Object) : void
      {
         if(param1.availability == "available")
         {
            GlobalData.isStageVideo = true;
         }
      }
      
      private function startEffect() : void
      {
         EffectManager.instance.resize(stage.stageWidth,stage.stageHeight);
      }
      
      private function initLayer(param1:WebRoom) : void
      {
         var _loc2_:Sprite = new Sprite();
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Sprite = new Sprite();
         var _loc5_:Sprite = new Sprite();
         var _loc6_:Sprite = new Sprite();
         var _loc7_:Sprite = new Sprite();
         var _loc8_:Sprite = new Sprite();
         var _loc9_:Sprite = new Sprite();
         var _loc10_:Sprite = new Sprite();
         var _loc11_:Sprite = new Sprite();
         var _loc12_:Sprite = new Sprite();
         var _loc13_:Sprite = new Sprite();
         var _loc14_:Sprite = new Sprite();
         var _loc15_:Sprite = new Sprite();
         var _loc16_:Sprite = new Sprite();
         var _loc17_:Sprite = new Sprite();
         var _loc18_:Sprite = new Sprite();
         var _loc19_:Sprite = new Sprite();
         var _loc20_:BigEffectContainer = new BigEffectContainer();
         GlobalData.VIDEOLAYER = _loc2_;
         GlobalData.USERNOHANDLELAYER = _loc3_;
         GlobalData.PLAYLAYER = _loc6_;
         GlobalData.RECOMMENDLAYER = _loc7_;
         GlobalData.TIPLAYER = _loc8_;
         GlobalData.COMMENTLAYER = _loc4_;
         GlobalData.EFFECTLAYER = _loc5_;
         GlobalData.LOADLAYER = _loc9_;
         GlobalData.LOGINLAYER = _loc10_;
         GlobalData.ILLEGAL_LAYER = _loc11_;
         GlobalData.TITLEBAR_LAYER = _loc12_;
         GlobalData.AdLAYER = _loc13_;
         GlobalData.TICKET_LAYER = _loc14_;
         GlobalData.PWD_LAYER = _loc15_;
         GlobalData.CHANGE_RATE_LAYER = _loc16_;
         GlobalData.ACTIVITY_LAYER = _loc17_;
         GlobalData.VIDEO_BG_LAYER = _loc18_;
         GlobalData.YANZHI_CODE = _loc19_;
         GlobalData.GIFT_EFFECT_LAYER = _loc20_;
         param1.addChild(_loc18_);
         param1.addChild(_loc2_);
         param1.addChild(_loc7_);
         param1.addChild(_loc17_);
         param1.addChild(_loc4_);
         param1.addChild(_loc19_);
         param1.addChild(_loc16_);
         param1.addChild(_loc6_);
         param1.addChild(_loc12_);
         param1.addChild(_loc20_);
         param1.addChild(_loc5_);
         param1.addChild(_loc3_);
         param1.addChild(_loc9_);
         param1.addChild(_loc14_);
         param1.addChild(_loc15_);
         param1.addChild(_loc8_);
         param1.addChild(_loc10_);
         param1.addChild(_loc11_);
         param1.addChild(_loc13_);
      }
      
      private function CheckDomainName(param1:String, param2:String) : Boolean
      {
         var _loc3_:Boolean = false;
         if(param1 != null && (param1.indexOf("http://www.douyu.tv") == 0 || param1.indexOf("http://www.douyu.com") == 0 || param1.indexOf("http://www.douyutv.com") == 0 || param1.indexOf("http://test.douyu.tv") == 0 || param1.indexOf("http://douyu.mm111.net") == 0 || param1.search(/http:\/\/.+.dz11.com/) == 0 || param1.indexOf("http://douyutv.wasu.cn") == 0) || param2 != null && (param2.indexOf("http://www.douyu.tv") == 0 || param2.indexOf("http://www.douyu.com") == 0 || param2.indexOf("http://www.douyutv.com") == 0 || param2.indexOf("http://test.douyu.tv") == 0 || param2.indexOf("http://douyu.mm111.net") == 0 || param2.search(/http:\/\/.+.dz11.com/) == 0 || param2.indexOf("http://douyutv.wasu.cn") == 0))
         {
            _loc3_ = true;
            GlobalData.prefix = "http://";
            if(Param.isSubject == 1)
            {
               GlobalData.prefix = "https://";
            }
            return _loc3_;
         }
         if(param1 != null && (param1.indexOf("https://www.douyu.tv") == 0 || param1.indexOf("https://www.douyu.com") == 0 || param1.indexOf("https://www.douyutv.com") == 0 || param1.indexOf("https://test.douyu.tv") == 0 || param1.indexOf("https://douyu.mm111.net") == 0 || param1.search(/https:\/\/.+.dz11.com/) == 0 || param1.indexOf("https://douyutv.wasu.cn") == 0) || param2 != null && (param2.indexOf("https://www.douyu.tv") == 0 || param2.indexOf("https://www.douyu.com") == 0 || param2.indexOf("https://www.douyutv.com") == 0 || param2.indexOf("https://test.douyu.tv") == 0 || param2.indexOf("https://douyu.mm111.net") == 0 || param2.search(/https:\/\/.+.dz11.com/) == 0 || param2.indexOf("https://douyutv.wasu.cn") == 0))
         {
            _loc3_ = true;
            GlobalData.prefix = "https://";
            return _loc3_;
         }
         return _loc3_;
      }
      
      public function workLine() : void
      {
         if(Worker.current.isPrimordial)
         {
            this.worker = WorkerDomain.current.createWorker(this.loaderInfo.bytes);
            this.mainToWorker = Worker.current.createMessageChannel(this.worker);
            this.workerToMain = this.worker.createMessageChannel(Worker.current);
            this.worker.setSharedProperty("mainToWorker",this.mainToWorker);
            this.worker.setSharedProperty("workerToMain",this.workerToMain);
            this.workerToMain.addEventListener(Event.CHANNEL_MESSAGE,this.onWorkerToMain);
            this.worker.start();
         }
         else
         {
            this.mainToWorker = Worker.current.getSharedProperty("mainToWorker");
            this.workerToMain = Worker.current.getSharedProperty("workerToMain");
            this.mainToWorker.addEventListener(Event.CHANNEL_MESSAGE,this.onMainToWorker);
         }
      }
      
      protected function onMainToWorker(param1:Event) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:String = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:String = null;
         var _loc2_:Object = this.mainToWorker.receive();
         var _loc3_:String = _loc2_.type;
         var _loc4_:String = _loc2_.str;
         var _loc5_:String = _loc2_.pwd;
         if(_loc3_ == "suq")
         {
            xx.sub_19();
            xx.sub_18(_loc5_);
            _loc6_ = xx.sub_14(_loc4_);
            if(1 == _loc6_)
            {
               _loc7_ = CModule.malloc(4);
               _loc8_ = xx.sub_15(_loc7_);
               _loc9_ = CModule.read32(_loc7_);
               _loc10_ = CModule.readString(_loc9_,_loc8_);
               this.workerToMain.send({
                  "type":_loc3_,
                  "str":_loc10_
               });
               xx.sub_10(_loc7_);
               CModule.free(_loc7_);
            }
         }
         else if(_loc3_ == "vq")
         {
            _loc11_ = xx.sub_14(_loc4_);
            if(2 == _loc11_)
            {
               _loc12_ = CModule.malloc(4);
               _loc13_ = xx.sub_16(_loc12_);
               _loc14_ = CModule.read32(_loc12_);
               _loc15_ = CModule.readString(_loc14_,_loc13_);
               this.workerToMain.send({
                  "type":_loc3_,
                  "str":_loc15_
               });
               xx.sub_10(_loc12_);
               CModule.free(_loc12_);
            }
         }
         else if(_loc3_ == "hq")
         {
            _loc16_ = CModule.malloc(4);
            _loc17_ = xx.sub_17(_loc4_,_loc16_);
            _loc18_ = CModule.read32(_loc16_);
            _loc19_ = CModule.readString(_loc18_,_loc17_);
            this.workerToMain.send({
               "type":_loc3_,
               "str":_loc19_
            });
            xx.sub_10(_loc16_);
            CModule.free(_loc16_);
         }
      }
      
      protected function onWorkerToMain(param1:Event) : void
      {
         var _loc2_:Object = this.workerToMain.receive();
         $.jscall("console.log","reiciver " + _loc2_.type + " " + _loc2_.str);
         EventCenter.dispatch("WorkResponseData",_loc2_);
      }
      
      private function __handlerWorkRequestData(param1:ObjectEvent) : void
      {
         $.jscall("console.log","send " + param1.data.type + " " + param1.data.str);
         this.mainToWorker.send(param1.data);
      }
   }
}
