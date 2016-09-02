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
   import flash.display.Sprite;
   import util.UserBehaviorLog;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import util.Util;
   
   public class GiftEffectView2 extends EffectView
   {
       
      
      private var txt:TextField;
      
      private var bg:MovieClip;
      
      private var frontBg:MovieClip;
      
      private var afterBg:MovieClip;
      
      private var effectConfig:Object;
      
      private var gbccObc:Object;
      
      private var _gbcss:int;
      
      private var _drid:String;
      
      private var isCurrentToom:Boolean;
      
      public function GiftEffectView2(param1:Object)
      {
         super(param1);
      }
      
      override public function init() : void
      {
         this._gbcss = int(data.gbcss);
         this._drid = data.drid + "";
         this.isCurrentToom = this._drid == Param.RoomId;
         stime = int(data.time / 1000);
         switch(this._gbcss)
         {
            case 1:
               this.effectConfig = Param.getEffcetConfig(data.eid);
               if(this.effectConfig == null)
               {
                  $.jscall("console.log","gift config not found gid=" + data.giftid);
                  return;
               }
               this.initRocketGift();
               break;
            case 2:
               this.effectConfig = Param.getEffcetConfig(data.eid);
               if(this.effectConfig == null)
               {
                  $.jscall("console.log","gift config not found gid=" + data.giftid);
                  return;
               }
               this.initPlaneGift();
               break;
            case 3:
               this.initRedPacketsGift(data.ronk);
               break;
            case 4:
               this.init666Broadcast();
               break;
            case 5:
               this.init666Broadcast();
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
               $.jscall("console.log","unknown es type : ",data.gbcss);
         }
      }
      
      private function initNianNofity() : void
      {
         var _loc2_:MovieClip = null;
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
         _loc2_ = ResManager.instance.getResBroadByName("ui.NianTitleUI") as MovieClip;
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
         var _loc1_:* = "";
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
      
      private function initRedPacketsGift(param1:String) : void
      {
         var _loc2_:String = "\"#FFFFFF\"";
         var _loc3_:String = "\"#FFDE00\"";
         var _loc4_:* = "\"" + GlobalData.FontStr + "\"";
         var _loc5_:String = "\"22\"";
         var _loc6_:* = "<P ALIGN=\"LEFT\"><FONT FACE=" + _loc4_ + " SIZE=" + _loc5_ + " COLOR=" + _loc3_ + " >" + param1 + " 直播间</FONT>" + "<FONT FACE=" + _loc4_ + " SIZE=" + _loc5_ + " COLOR=" + _loc2_ + " >有红包</FONT>" + "<FONT FACE=" + _loc4_ + " SIZE=" + _loc5_ + " COLOR=" + _loc3_ + " >，大家快去领取!</FONT>" + "</P>";
         var _loc7_:RedPocketsCellView = new RedPocketsCellView(_loc6_);
         addChild(_loc7_);
         if(!this.isCurrentToom)
         {
            _loc7_.buttonMode = true;
            this.addEventListener(MouseEvent.CLICK,this.__link);
         }
      }
      
      private function init666Broadcast() : void
      {
         var _loc5_:String = null;
         var _loc9_:* = null;
         var _loc1_:String = "\"#1D1D1D\"";
         var _loc2_:* = "\"" + GlobalData.FontStr + "\"";
         var _loc3_:String = "\"22\"";
         var _loc4_:* = "";
         if(this._gbcss == 4)
         {
            _loc5_ = data.num;
         }
         else if(this._gbcss == 5)
         {
            _loc5_ = "500";
         }
         var _loc6_:String = "ui.At666_" + data.gfid + "_" + _loc5_;
         this.bg = ResManager.instance.getResBroadByName(_loc6_) as MovieClip;
         if(this.bg == null)
         {
            $.jscall("console.log","666 广播资源错误！",_loc6_);
            return;
         }
         addChild(this.bg);
         this.txt = this.bg["txt"];
         if(this.txt)
         {
            this.txt.wordWrap = false;
            this.txt.autoSize = TextFieldAutoSize.LEFT;
            this.txt.selectable = false;
            _loc9_ = "\"#" + this.txt.textColor.toString(16) + "\"";
            if(this._gbcss == 4)
            {
               _loc4_ = _loc4_ + "<P ALIGN=\"LEFT\">";
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc9_ + ">" + data.sn + "</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc1_ + ">赠送给</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc9_ + ">" + data.dn + "</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc9_ + ">" + data.num + "个</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc9_ + ">" + data.gn + "</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc1_ + ">，并投出</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc9_ + ">" + data.gvt + "</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc1_ + ">票+</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc9_ + ">" + data.hvt + "</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc1_ + ">票连击加成！</FONT>");
               _loc4_ = _loc4_ + "</P>";
            }
            else if(this._gbcss == 5)
            {
               _loc4_ = _loc4_ + "<P ALIGN=\"LEFT\">";
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc9_ + ">" + data.sn + "</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc1_ + ">正在</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc9_ + ">" + data.dn + "</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc1_ + ">的直播间进行</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc9_ + ">" + data.gn + "</FONT>");
               _loc4_ = _loc4_ + ("<FONT FACE=" + _loc2_ + " SIZE=" + _loc3_ + " COLOR=" + _loc1_ + ">礼物的666连击，点击围观吧！</FONT>");
               _loc4_ = _loc4_ + "</P>";
            }
            this.txt.htmlText = _loc4_;
         }
         var _loc7_:Sprite = this.bg["frontBg"] as Sprite;
         if(_loc7_ && this.txt)
         {
            _loc7_.width = this.txt.x + this.txt.textWidth - _loc7_.x;
         }
         var _loc8_:Sprite = this.bg["afterBg"] as Sprite;
         if(_loc7_ && _loc8_)
         {
            _loc8_.x = _loc7_.x + _loc7_.width;
         }
         this.mouseChildren = false;
         if(!this.isCurrentToom)
         {
            this.buttonMode = true;
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
      
      override public function setY(param1:int, param2:int, param3:Function) : void
      {
         this.y = param3(param1,this);
         this.index = param2;
         this.bottom = param1 + this.height;
      }
      
      private function __link(param1:MouseEvent) : void
      {
         var _loc2_:* = null;
         if(!this.isCurrentToom)
         {
            if(this._gbcss == 1)
            {
               UserBehaviorLog.getInstance().addRealLog(UserBehaviorLog.POINT_ID_GETROCK_GIFT,this._drid);
            }
            else if(this._gbcss == 2)
            {
               UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_GETPLANE_GIFT,this._drid);
            }
            else if(this._gbcss == 3)
            {
               _loc2_ = "{\"rid\":" + this._drid + ", \"kw\":" + data.kw + "}";
               UserBehaviorLog.getInstance().addLog(UserBehaviorLog.POINT_ID_GET_REDPOCKETS_GIFT,_loc2_);
            }
            if(Param.isYinghun)
            {
               navigateToURL(new URLRequest(GlobalData.prefix + Param.DomainName + "/qqapp/subject/room/" + this._drid),"_self");
            }
            else if(Param.isQQApp)
            {
               navigateToURL(new URLRequest(GlobalData.prefix + Param.DomainName + "/qqapp/public_page/room/" + this._drid),"_self");
            }
            else
            {
               Util.openLink(GlobalData.prefix + Param.DomainName + "/" + this._drid);
            }
         }
      }
      
      private function nian(param1:MouseEvent) : void
      {
         Util.openLink(GlobalData.prefix + Param.DomainName + "/cms/zt/newyear2016.html");
      }
   }
}
