package util
{
   import flash.external.ExternalInterface;
   import com.adobe.crypto.MD5;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import common.event.EventCenter;
   import flash.system.Capabilities;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import org.puremvc.as3.patterns.facade.Facade;
   import cc.dy.view.illegal.IllegalMediator;
   import cc.dy.view.pwd.PwdMediator;
   import flash.display.StageDisplayState;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   
   public class Util
   {
      
      private static const ANOTHER_DAY_HOUR:int = 19;
      
      private static const jsSend:XML = <![CDATA[
				//使用匿名函数，防止在某些浏览器里函数名冲突
				(function (msg){
			try {			
				if (window.console)	//qqapp的ie插件没有console对象，会报错造成代码无法执行
					console.log(msg);
				var timestamp = Date.parse(new Date())/1000;
				if((timestamp-sendtime)<=send_interval_time){
				return [1,send_interval_time - (timestamp-sendtime)];
				}
				var str=msg;
				if(str=='' && typeof(chart_focus) === 'function'){setTimeout("chart_focus()",100);return false;}
				var uid=get_cookie('uid');
				if(!uid){		
				return [2,"open_reg"];
				}	
				
				var data =  [ 
					{name:'content',value:scan_str(str)},
					{name:'scope',value:$("#privatstate").val()}
				];
				
				data.push({name:'sender',value:uid});
				
				var data_str=Sttencode(data);
				$("#chart_content").val('');
				thisMovie("WebRoom").js_sendmsg(data_str); 
				sendtime=timestamp;
				sendinterval();
				return [0,send_interval_time];
			} catch (e)
			{
				if (window.console)
					console.log(e.message);
				//alert(e.message);
			}
				})
			]]>;
      
      private static var recordRateTime:Timer = new Timer(60 * 1000);
      
      private static var recordTime:Number;
      
      private static var validTime:Number = 3;
      
      private static var counter:Number = 0;
      
      private static const FACE_ARR:Array = ["good","kiss","drop","fil","grief","badluck","indecent","kiss","laugh","lovely","rage","scare","sleep","trick","awesome","snicker","doubt","guise","sorry","nosebleed","moving","grimace","laughing","revel","excited","dizzy","bye","up","a","dzt","js","kx","uccu","wy","dyfn","dyw","dyhp","dycy","dylb","dyjj","dydoge","dylyl","dyhc","dytk","dysyw","dy001","dy002","dy003","dy004","dy005","dy006","dy007","dy008","dy009","dy010","dy011","dy012","dy013","dy014","dy015","dy016","dy017","dy101","dy102","dy103","dy104","dy105","dy106","dy107","dy108","dy109","dy110","dy111","dy112","dy113","dy114","dy115","dy116","dy117","dy118","dy119","dy120","dy121","dy122","dy123","dy124","dy125","dy126","dy127","dy128","dy129","dy130","dy131","dy132","dy133","dy134","dy135","dy136","dy137"];
      
      private static const ROOM_PATTERN:RegExp = /\[room=([a-zA-Z0-9]*)\]/g;
      
      private static var colorArr:Array = [16777215,16727100,6467839,11458395,16753220,12487151,16744639];
      
      private static var illegalCloseIndex:uint = 0;
       
      
      public function Util()
      {
         super();
      }
      
      public static function zeroPad(param1:int, param2:int = 2) : String
      {
         var _loc3_:String = "" + param1;
         while(_loc3_.length < param2)
         {
            _loc3_ = "0" + _loc3_;
         }
         return _loc3_;
      }
      
      public static function covertToTime(param1:int) : String
      {
         var _loc2_:Date = new Date();
         _loc2_.time = param1;
         return "" + zeroPad(_loc2_.hoursUTC,2) + ":" + zeroPad(_loc2_.minutesUTC,2) + ":" + zeroPad(_loc2_.secondsUTC,2) + "." + zeroPad(_loc2_.millisecondsUTC,3);
      }
      
      public static function sendMsgByJs(param1:String) : *
      {
         if(ExternalInterface.available)
         {
            return ExternalInterface.call(jsSend.toString(),param1);
         }
         return null;
      }
      
      public static function hasRoomPass(param1:String, param2:Array) : String
      {
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            _loc4_ = param2[_loc3_];
            _loc5_ = _loc4_.id;
            if(param1 == _loc5_)
            {
               return _loc4_.pass;
            }
            _loc3_++;
         }
         return "";
      }
      
      public static function hasRoom(param1:String, param2:Array) : Object
      {
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            _loc4_ = param2[_loc3_];
            _loc5_ = _loc4_.id;
            if(param1 == _loc5_)
            {
               return _loc4_;
            }
            _loc3_++;
         }
         return null;
      }
      
      public static function getLoginValidationStr(param1:Number, param2:String) : String
      {
         var _loc3_:Array = ["",""];
         var _loc4_:String = param1 + "" + _loc3_[int(_loc3_.length * Math.random())] + param2;
         var _loc5_:String = MD5.hash(_loc4_);
         return _loc5_;
      }
      
      public static function getSecretStr(param1:String, param2:String = "0") : String
      {
         return "22222";
      }
      
      public static function switchRateTip(param1:Boolean = false) : Boolean
      {
         recordTime = LocalStorage.getValue("rateRecordTime",0);
         if(isAnotherDay("switchRateTipTimestamp"))
         {
            if(GlobalData.hasMultirate == 1 && Param.isLoginUser == 0)
            {
               if(param1)
               {
                  LocalStorage.setValue("rateRecordTime",0);
                  recordRateTime.repeatCount = validTime;
                  if(!recordRateTime.hasEventListener(TimerEvent.TIMER))
                  {
                     recordRateTime.addEventListener(TimerEvent.TIMER,revordTime);
                  }
                  recordRateTime.start();
               }
               return true;
            }
         }
         else if(GlobalData.hasMultirate == 1 && Param.isLoginUser == 0 && recordTime < validTime)
         {
            if(param1)
            {
               recordRateTime.repeatCount = validTime - recordTime;
               if(!recordRateTime.hasEventListener(TimerEvent.TIMER))
               {
                  recordRateTime.addEventListener(TimerEvent.TIMER,revordTime);
               }
               recordRateTime.start();
            }
            return true;
         }
         return false;
      }
      
      public static function isAnotherDay(param1:String = "GaoRateTimestamp") : Boolean
      {
         var _loc2_:Number = LocalStorage.getValue(param1,0);
         var _loc3_:Date = new Date();
         var _loc4_:Date = new Date(_loc3_.fullYear,_loc3_.month,_loc3_.hours >= ANOTHER_DAY_HOUR?_loc3_.date:_loc3_.date - 1,ANOTHER_DAY_HOUR);
         if(_loc2_ < _loc4_.time)
         {
            LocalStorage.setValue(param1,_loc3_.time);
            return true;
         }
         return false;
      }
      
      private static function revordTime(param1:TimerEvent) : void
      {
         recordTime++;
         LocalStorage.setValue("rateRecordTime",recordTime);
         if(recordTime == validTime)
         {
            EventCenter.dispatch("ChangeRateNotifyEvent",{"type":1});
            recordRateTime.stop();
            recordRateTime.reset();
         }
      }
      
      public static function resetRateRecordTime() : void
      {
         if(recordRateTime != null && recordRateTime.running)
         {
            recordRateTime.stop();
            recordRateTime.reset();
         }
      }
      
      public static function getGuid() : String
      {
         var _loc1_:String = LocalStorage.getValue("GUID","");
         if(_loc1_ == "")
         {
            _loc1_ = createGuid();
            LocalStorage.setValue("GUID",_loc1_);
         }
         return _loc1_;
      }
      
      public static function createGuid() : String
      {
         var _loc1_:Date = new Date();
         var _loc2_:Number = _loc1_.getTime();
         var _loc3_:Number = Math.random() * Number.MAX_VALUE;
         var _loc4_:String = Capabilities.serverString;
         var _loc5_:String = calculate(_loc2_ + _loc4_ + _loc3_ + counter++).toUpperCase();
         var _loc6_:String = _loc5_.substring(0,8) + "" + _loc5_.substring(8,12) + "" + _loc5_.substring(12,16) + "" + _loc5_.substring(16,20) + "" + _loc5_.substring(20,32);
         return _loc6_;
      }
      
      private static function calculate(param1:String) : String
      {
         return hex_sha1(param1);
      }
      
      private static function hex_sha1(param1:String) : String
      {
         return binb2hex(core_sha1(str2binb(param1),param1.length * 8));
      }
      
      private static function core_sha1(param1:Array, param2:Number) : Array
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         param1[param2 >> 5] = param1[param2 >> 5] | 128 << 24 - param2 % 32;
         param1[(param2 + 64 >> 9 << 4) + 15] = param2;
         var _loc3_:Array = new Array(80);
         var _loc4_:Number = 1732584193;
         var _loc5_:Number = -271733879;
         var _loc6_:Number = -1732584194;
         var _loc7_:Number = 271733878;
         var _loc8_:Number = -1009589776;
         var _loc9_:Number = 0;
         while(_loc9_ < param1.length)
         {
            _loc10_ = _loc4_;
            _loc11_ = _loc5_;
            _loc12_ = _loc6_;
            _loc13_ = _loc7_;
            _loc14_ = _loc8_;
            _loc15_ = 0;
            while(_loc15_ < 80)
            {
               if(_loc15_ < 16)
               {
                  _loc3_[_loc15_] = param1[_loc9_ + _loc15_];
               }
               else
               {
                  _loc3_[_loc15_] = rol(_loc3_[_loc15_ - 3] ^ _loc3_[_loc15_ - 8] ^ _loc3_[_loc15_ - 14] ^ _loc3_[_loc15_ - 16],1);
               }
               _loc16_ = safe_add(safe_add(rol(_loc4_,5),sha1_ft(_loc15_,_loc5_,_loc6_,_loc7_)),safe_add(safe_add(_loc8_,_loc3_[_loc15_]),sha1_kt(_loc15_)));
               _loc8_ = _loc7_;
               _loc7_ = _loc6_;
               _loc6_ = rol(_loc5_,30);
               _loc5_ = _loc4_;
               _loc4_ = _loc16_;
               _loc15_++;
            }
            _loc4_ = safe_add(_loc4_,_loc10_);
            _loc5_ = safe_add(_loc5_,_loc11_);
            _loc6_ = safe_add(_loc6_,_loc12_);
            _loc7_ = safe_add(_loc7_,_loc13_);
            _loc8_ = safe_add(_loc8_,_loc14_);
            _loc9_ = _loc9_ + 16;
         }
         return new Array(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_);
      }
      
      private static function sha1_ft(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         if(param1 < 20)
         {
            return param2 & param3 | ~param2 & param4;
         }
         if(param1 < 40)
         {
            return param2 ^ param3 ^ param4;
         }
         if(param1 < 60)
         {
            return param2 & param3 | param2 & param4 | param3 & param4;
         }
         return param2 ^ param3 ^ param4;
      }
      
      private static function sha1_kt(param1:Number) : Number
      {
         return param1 < 20?Number(1518500249):param1 < 40?Number(1859775393):param1 < 60?Number(-1894007588):Number(-899497514);
      }
      
      private static function safe_add(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = (param1 & 65535) + (param2 & 65535);
         var _loc4_:Number = (param1 >> 16) + (param2 >> 16) + (_loc3_ >> 16);
         return _loc4_ << 16 | _loc3_ & 65535;
      }
      
      private static function rol(param1:Number, param2:Number) : Number
      {
         return param1 << param2 | param1 >>> 32 - param2;
      }
      
      private static function str2binb(param1:String) : Array
      {
         var _loc2_:Array = new Array();
         var _loc3_:Number = 1 << 8 - 1;
         var _loc4_:Number = 0;
         while(_loc4_ < param1.length * 8)
         {
            _loc2_[_loc4_ >> 5] = _loc2_[_loc4_ >> 5] | (param1.charCodeAt(_loc4_ / 8) & _loc3_) << 24 - _loc4_ % 32;
            _loc4_ = _loc4_ + 8;
         }
         return _loc2_;
      }
      
      private static function binb2hex(param1:Array) : String
      {
         var _loc2_:String = new String("");
         var _loc3_:String = new String("0123456789abcdef");
         var _loc4_:Number = 0;
         while(_loc4_ < param1.length * 4)
         {
            _loc2_ = _loc2_ + (_loc3_.charAt(param1[_loc4_ >> 2] >> (3 - _loc4_ % 4) * 8 + 4 & 15) + _loc3_.charAt(param1[_loc4_ >> 2] >> (3 - _loc4_ % 4) * 8 & 15));
            _loc4_++;
         }
         return _loc2_;
      }
      
      public static function facereplace(param1:String) : String
      {
         param1 = param1.replace(/\s/g," ");
         param1 = param1.replace(ROOM_PATTERN,"$1");
         var _loc2_:RegExp = /\[emot:[a-zA-Z0-9]*\]/g;
         param1 = param1.replace(_loc2_,"");
         return param1;
      }
      
      public static function getColor(param1:int) : int
      {
         return colorArr[param1];
      }
      
      public static function dispatchIllegal(param1:int, param2:Number = 0) : void
      {
         var time:Number = NaN;
         var isIll:int = param1;
         var delta:Number = param2;
         clearTimeout(illegalCloseIndex);
         if(isIll == 1)
         {
            time = GlobalData.ILLEGAL_CLOSE_TIME - delta;
            if(time > 0)
            {
               EventCenter.dispatch("IllegaNotifyEvent",{"isIll":1});
               illegalCloseIndex = setTimeout(function():void
               {
                  EventCenter.dispatch("IllegaNotifyEvent",{"isIll":0});
               },time * 1000);
            }
            $.jscall("console.log","illegal close after %d seconds",time);
         }
         else
         {
            EventCenter.dispatch("IllegaNotifyEvent",{"isIll":0});
         }
      }
      
      public static function checkSilentCondition() : Boolean
      {
         var _loc1_:IllegalMediator = Facade.getInstance().retrieveMediator("IllegalMediator") as IllegalMediator;
         var _loc2_:PwdMediator = Facade.getInstance().retrieveMediator("PwdMediator") as PwdMediator;
         if(_loc1_ && _loc2_)
         {
            if(GlobalData.ILLEGAL_LAYER.contains(_loc1_.illegalView) || GlobalData.PWD_LAYER.contains(_loc2_.pwdView))
            {
               return false;
            }
         }
         return true;
      }
      
      public static function exitFullscreen() : void
      {
         if(GlobalData.root.stage.displayState != StageDisplayState.NORMAL)
         {
            EventCenter.dispatch("jsExitFullScreen");
         }
      }
      
      public static function openWindow(param1:String, param2:String) : void
      {
         exitFullscreen();
         navigateToURL(new URLRequest(param1),param2);
      }
      
      public static function recodeCDN() : String
      {
         var _loc1_:Number = LocalStorage.getValue("lastDaydata",0);
         var _loc2_:Number = LocalStorage.getValue("lastMonthdata",0);
         var _loc3_:Date = new Date();
         if(_loc1_ == 0 || _loc3_.date != _loc1_ || _loc3_.month != _loc2_)
         {
            if(_loc3_.hours > 3)
            {
               LocalStorage.setValue("lastDaydata",_loc3_.date);
               LocalStorage.setValue("lastMonthdata",_loc3_.month);
               LocalStorage.setValue("selectCDN","");
            }
         }
         return LocalStorage.getValue("selectCDN","");
      }
      
      public static function openLink(param1:String, param2:String = "_blank", param3:String = "") : void
      {
         var _loc4_:String = "window.open";
         var _loc5_:URLRequest = new URLRequest(param1);
         var _loc6_:String = getBrowserName();
         if(getBrowserName() == "Firefox")
         {
            navigateToURL(_loc5_,param2);
         }
         else if(_loc6_ == "IE")
         {
            ExternalInterface.call(_loc4_,param1,param2,param3);
         }
         else if(_loc6_ == "Safari")
         {
            navigateToURL(_loc5_,param2);
         }
         else if(_loc6_ == "Opera")
         {
            navigateToURL(_loc5_,param2);
         }
         else
         {
            navigateToURL(_loc5_,param2);
         }
      }
      
      private static function getBrowserName() : String
      {
         var _loc1_:String = null;
         var _loc2_:String = ExternalInterface.call("function getBrowser(){return navigator.userAgent;}");
         if(_loc2_ != null && _loc2_.indexOf("Firefox") >= 0)
         {
            _loc1_ = "Firefox";
         }
         else if(_loc2_ != null && _loc2_.indexOf("Safari") >= 0)
         {
            _loc1_ = "Safari";
         }
         else if(_loc2_ != null && _loc2_.indexOf("MSIE") >= 0)
         {
            _loc1_ = "IE";
         }
         else if(_loc2_ != null && _loc2_.indexOf("Opera") >= 0)
         {
            _loc1_ = "Opera";
         }
         else
         {
            _loc1_ = "Undefined";
         }
         return _loc1_;
      }
      
      public static function clone(param1:Object) : *
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         return _loc2_.readObject();
      }
   }
}
