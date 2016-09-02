package cc.dy.view.effect
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import util.$;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFieldType;
   import util.ResManager;
   import flash.events.MouseEvent;
   import util.UserBehaviorLog;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import util.Util;
   
   public class GiftEffectView extends EffectView
   {
       
      
      private var txt:TextField;
      
      private var bg:MovieClip;
      
      private var frontBg:MovieClip;
      
      private var afterBg:MovieClip;
      
      private var newRoomid:int;
      
      private var isCurrentToom:Boolean;
      
      private var effectConfig:Object;
      
      private var giftType:int = -1;
      
      public function GiftEffectView(param1:Object)
      {
         super(param1);
      }
      
      override public function init() : void
      {
         this.giftType = -1;
         this.newRoomid = data.rid;
         this.isCurrentToom = this.newRoomid.toString() == Param.RoomId;
         stime = int(data.time / 1000);
         switch(data.haslb)
         {
            case 1:
               this.giftType = 1;
               this.effectConfig = Param.getEffcetConfig(data.eid);
               if(this.effectConfig == null)
               {
                  $.jscall("console.log","gift config not found gid=" + data.giftid);
                  return;
               }
               this.initRocketGift();
               break;
            case 2:
               this.giftType = 2;
               this.effectConfig = Param.getEffcetConfig(data.eid);
               if(this.effectConfig == null)
               {
                  $.jscall("console.log","gift config not found gid=" + data.giftid);
                  return;
               }
               this.initPlaneGift();
               break;
            case 3:
            case 4:
            case 5:
               this.initYanzhiGiftNotify();
               break;
            case 100:
               this.effectConfig = Param.getCoboEffcetConfig(data.ceid + "");
               if(this.effectConfig == null)
               {
                  $.jscall("console.log","连击广播  gift config not found gid=" + data.ceid);
                  return;
               }
               this.initDoubleHitEffect();
               break;
            case 1001:
               this.initChristmasGift();
               break;
            case 1002:
               this.initNianGift();
               break;
            case 2001:
               this.initNianNofity();
               break;
            default:
               $.jscall("console.log","unknown es type : ",data.haslb);
         }
      }
      
      private function initYanzhiGiftNotify() : void
      {
         var _loc2_:String = null;
         this.giftType = data.haslb;
         this.effectConfig = Param.getEffcetConfig(data.eid);
         if(this.effectConfig == null)
         {
            $.jscall("console.log","颜值礼物广播资源配置错误,flashConfig！gfid=",data.giftid);
            return;
         }
         this.txt = new TextField();
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         var _loc1_:TextFormat = new TextFormat(GlobalData.FontStr,int(this.effectConfig.font_size),int(this.effectConfig.default_color),true);
         this.txt.defaultTextFormat = _loc1_;
         this.txt.type = TextFieldType.DYNAMIC;
         this.txt.selectable = false;
         this.bg = ResManager.instance.getResByName(this.effectConfig.flag) as MovieClip;
         if(this.bg == null)
         {
            $.jscall("console.log","颜值礼物广播资源加载错误！flag=",this.effectConfig.flag);
            return;
         }
         this.frontBg = this.bg.frontBg;
         this.afterBg = this.bg.afterBg;
         this.txt.x = int(this.effectConfig.font_x);
         this.txt.y = int(this.effectConfig.font_y);
         this.bg.x = int(this.effectConfig.swf_x);
         this.bg.y = int(this.effectConfig.swf_y);
         addChild(this.bg);
         addChild(this.txt);
         this.mouseChildren = false;
         if(!this.isCurrentToom)
         {
            if(data.gb == 0)
            {
               _loc2_ = ",快来围观吧!";
            }
            else
            {
               _loc2_ = ",点击进入房间开启鱼丸宝箱!";
            }
            this.buttonMode = true;
            this.addEventListener(MouseEvent.CLICK,this.__link);
         }
         else
         {
            _loc2_ = ",快来围观吧!";
         }
         this.txt.htmlText = "<font color=\'" + this.effectConfig.sender_color + "\'>" + data.send + "</font>" + "赠送给<font color=\'" + this.effectConfig.receiver_color + "\'>" + data.receive + "</font>" + data.num + "个" + data.gift + _loc2_;
         if(this.frontBg && this.afterBg)
         {
            this.frontBg.width = this.txt.textWidth;
            this.afterBg.x = this.frontBg.x + this.frontBg.width;
         }
         else
         {
            $.jscall("console.log","颜值礼物广播资源命名不合法！","frontBg:" + this.frontBg,"afterBg:" + this.afterBg);
         }
      }
      
      private function initNianNofity() : void
      {
         this.txt = new TextField();
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         var _loc1_:TextFormat = new TextFormat(GlobalData.FontStr,17,8994816,true);
         this.txt.defaultTextFormat = _loc1_;
         this.txt.type = TextFieldType.DYNAMIC;
         this.txt.selectable = false;
         this.bg = ResManager.instance.getResBroadByName("ui.NianNotifyUI") as MovieClip;
         this.frontBg = this.bg.frontBg;
         this.afterBg = this.bg.afterBg;
         this.txt.x = 60;
         this.txt.y = 12;
         if(this.bg == null)
         {
            return;
         }
         addChild(this.bg);
         addChild(this.txt);
         this.mouseEnabled = true;
         this.mouseChildren = false;
         this.buttonMode = true;
         this.addEventListener(MouseEvent.CLICK,this.nian);
         this.txt.htmlText = "春节年兽攻击日榜将在<font color=\'#ff0000\'>" + data.hour + "</font>小时后更新，快来冲击";
         var _loc2_:MovieClip = ResManager.instance.getResBroadByName("ui.NianTitleUI") as MovieClip;
         _loc2_.x = this.txt.x + this.txt.textWidth;
         _loc2_.y = 4;
         var _loc3_:TextField = new TextField();
         _loc3_.autoSize = TextFieldAutoSize.LEFT;
         _loc3_.defaultTextFormat = _loc1_;
         _loc3_.selectable = false;
         _loc3_.htmlText = "头衔吧！";
         _loc3_.x = _loc2_.x + _loc2_.width;
         _loc3_.y = this.txt.y;
         addChild(_loc2_);
         addChild(_loc3_);
         this.frontBg.width = this.txt.textWidth + _loc2_.width + _loc3_.textWidth;
         this.afterBg.x = this.frontBg.x + this.frontBg.width;
      }
      
      private function initNianGift() : void
      {
         this.txt = new TextField();
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         var _loc1_:TextFormat = new TextFormat(GlobalData.FontStr,17,0,true);
         this.txt.defaultTextFormat = _loc1_;
         this.txt.type = TextFieldType.DYNAMIC;
         this.txt.selectable = false;
         this.txt.mouseEnabled = true;
         this.mouseChildren = false;
         this.bg = ResManager.instance.getResBroadByName("ui.NianKillUI") as MovieClip;
         this.frontBg = this.bg.frontBg;
         this.afterBg = this.bg.afterBg;
         this.txt.x = 135;
         this.txt.y = 38;
         if(this.bg == null)
         {
            return;
         }
         addChild(this.bg);
         addChild(this.txt);
         if(this.isCurrentToom)
         {
            this.buttonMode = false;
            this.txt.htmlText = "<font color=\'#ffff00\'>" + data.send + "</font>" + "在<font color=\'#ffff00\'>" + data.receive + "</font>" + "的房间打败了凶猛的年兽，快来围观吧！";
         }
         else
         {
            this.buttonMode = true;
            this.addEventListener(MouseEvent.CLICK,this.__link);
            this.txt.htmlText = "<font color=\'#ffff00\'>" + data.send + "</font>" + "在<font color=\'#ffff00\'>" + data.receive + "</font>" + "的房间打败了凶猛的年兽，快来领取宝物吧！";
         }
         this.frontBg.width = this.txt.textWidth;
         this.afterBg.x = this.frontBg.x + this.frontBg.width;
      }
      
      private function initChristmasGift() : void
      {
         this.txt = new TextField();
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         var _loc1_:TextFormat = new TextFormat(GlobalData.FontStr,17,0,true);
         this.txt.defaultTextFormat = _loc1_;
         this.txt.type = TextFieldType.DYNAMIC;
         this.txt.selectable = false;
         this.txt.mouseEnabled = true;
         this.mouseChildren = false;
         this.bg = ResManager.instance.getResBroadByName("ui.ChristmasGiftUI") as MovieClip;
         this.frontBg = this.bg.frontBg;
         this.afterBg = this.bg.afterBg;
         this.txt.x = 80;
         this.txt.y = 40;
         if(this.bg == null)
         {
            return;
         }
         addChild(this.bg);
         addChild(this.txt);
         if(this.isCurrentToom)
         {
            this.buttonMode = false;
            this.txt.htmlText = "<font color=\'#ffea00\'>" + data.send + "</font>" + "即将为<font color=\'#ff1e00\'>" + data.receive + "</font>" + "开启圣诞礼包，快来围观吧！";
         }
         else
         {
            this.buttonMode = true;
            this.addEventListener(MouseEvent.CLICK,this.__link);
            this.txt.htmlText = "<font color=\'#ffea00\'>" + data.send + "</font>" + "即将为<font color=\'#ff1e00\'>" + data.receive + "</font>" + "开启圣诞礼包，快来点击领取礼物！";
         }
         this.frontBg.width = this.txt.textWidth;
         this.afterBg.x = this.frontBg.x + this.frontBg.width;
      }
      
      private function initRocketGift() : void
      {
         var _loc3_:GiftEffectCellView = null;
         var _loc1_:String = "";
         if(this.isCurrentToom)
         {
            _loc1_ = "<font color=\'" + this.effectConfig.sender_color + "\'>" + data.send + "</font>" + "赠送给<font color=\'" + this.effectConfig.receiver_color + "\'>" + data.receive + "</font>" + data.num + "个" + data.gift + ",快来围观吧!";
         }
         else
         {
            _loc1_ = "<font color=\'" + this.effectConfig.sender_color + "\'>" + data.send + "</font>" + "赠送给<font color=\'" + this.effectConfig.receiver_color + "\'>" + data.receive + "</font>" + data.num + "个" + data.gift + ",点击进入房间开启鱼丸宝箱!";
         }
         var _loc2_:int = 0;
         while(_loc2_ < 1)
         {
            _loc3_ = new GiftEffectCellView(this.effectConfig,data,this.isCurrentToom,_loc1_);
            _loc3_.x = (_loc3_.width + 1000) * _loc2_;
            addChild(_loc3_);
            _loc2_++;
         }
         if(!this.isCurrentToom)
         {
            this.addEventListener(MouseEvent.CLICK,this.__link);
         }
      }
      
      private function initPlaneGift() : void
      {
         this.txt = new TextField();
         this.txt.autoSize = TextFieldAutoSize.LEFT;
         var _loc1_:TextFormat = new TextFormat(GlobalData.FontStr,int(this.effectConfig.font_size),int(this.effectConfig.default_color),true);
         this.txt.defaultTextFormat = _loc1_;
         this.txt.type = TextFieldType.DYNAMIC;
         this.txt.selectable = false;
         this.txt.mouseEnabled = true;
         this.mouseChildren = false;
         if(!this.isCurrentToom)
         {
            this.buttonMode = true;
            this.addEventListener(MouseEvent.CLICK,this.__link);
         }
         this.bg = ResManager.instance.getResByName(this.effectConfig.flag) as MovieClip;
         this.frontBg = this.bg.frontBg;
         this.afterBg = this.bg.afterBg;
         this.txt.x = int(this.effectConfig.font_x);
         this.txt.y = int(this.effectConfig.font_y);
         if(this.bg == null)
         {
            return;
         }
         this.bg.x = int(this.effectConfig.swf_x);
         this.bg.y = int(this.effectConfig.swf_y);
         addChild(this.bg);
         addChild(this.txt);
         this.txt.htmlText = "<font color=\'" + this.effectConfig.sender_color + "\'>" + data.send + "</font>" + "赠送给<font color=\'" + this.effectConfig.receiver_color + "\'>" + data.receive + "</font>" + data.num + "个" + data.gift + ",快来围观吧!";
         this.frontBg.width = this.txt.textWidth;
         this.afterBg.x = this.frontBg.x + this.frontBg.width;
      }
      
      private function initDoubleHitEffect() : void
      {
         var _loc1_:* = "\"" + this.effectConfig.sender_color + "\"";
         var _loc2_:* = "\"" + this.effectConfig.receiver_color + "\"";
         var _loc3_:* = "\"" + this.effectConfig.default_color + "\"";
         var _loc4_:* = "\"" + this.effectConfig.font_size + "\"";
         var _loc5_:* = "\"" + GlobalData.FontStr + "\"";
         var _loc6_:* = "<P ALIGN=\"LEFT\"><FONT FACE=" + _loc5_ + " SIZE=" + _loc4_ + " COLOR=" + _loc1_ + " >" + data.send + "</FONT>" + "<FONT FACE=" + _loc5_ + " SIZE=" + _loc4_ + " COLOR=" + _loc3_ + " >赠送给</FONT>" + "<FONT FACE=" + _loc5_ + " SIZE=" + _loc4_ + " COLOR=" + _loc2_ + " >" + data.receive + "</FONT>" + "</P>";
         var _loc7_:DoubleHitCellView = new DoubleHitCellView(this.effectConfig,_loc6_);
         addChild(_loc7_);
         if(!this.isCurrentToom)
         {
            _loc7_.buttonMode = true;
            this.addEventListener(MouseEvent.CLICK,this.__link);
         }
      }
      
      override public function setY(param1:int, param2:int, param3:Function) : void
      {
         this.y = param3(param1,this);
         this.index = param2;
         this.bottom = param1 + this.height;
      }
      
      private function __link(param1:MouseEvent) : void
      {
         if(Param.RoomId != this.newRoomid.toString())
         {
            if(this.giftType == 1)
            {
               UserBehaviorLog.getInstance().addRealLog(UserBehaviorLog.POINT_ID_GETROCK_GIFT,{
                  "sid":data.sid,
                  "drid":this.newRoomid,
                  "gfid":data.giftid,
                  "bgl":data.bgl,
                  "bid":data.bid,
                  "st":int(data.bid.split("_")[1])
               });
            }
            else if(this.giftType == 2)
            {
               UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_GETPLANE_GIFT,this.newRoomid);
            }
            if(Param.isYinghun)
            {
               navigateToURL(new URLRequest(GlobalData.prefix + Param.DomainName + "/qqapp/subject/room/" + this.newRoomid),"_self");
            }
            else if(Param.isQQApp)
            {
               navigateToURL(new URLRequest(GlobalData.prefix + Param.DomainName + "/qqapp/public_page/room/" + this.newRoomid),"_self");
            }
            else
            {
               Util.openLink(GlobalData.prefix + Param.DomainName + "/" + this.newRoomid);
            }
         }
      }
      
      private function nian(param1:MouseEvent) : void
      {
         Util.openLink(GlobalData.prefix + Param.DomainName + "/cms/zt/newyear2016.html");
      }
   }
}
