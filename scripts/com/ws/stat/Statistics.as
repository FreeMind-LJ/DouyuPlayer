package com.ws.stat
{
   import flash.events.EventDispatcher;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.events.Event;
   
   public class Statistics extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0.1";
      
      public static const LIB_LOAD:String = "lib-load";
      
      public static const PLAY_ACTION:String = "play-action";
       
      
      private const REPORT_URL:String = "http://psstatus.lxdns.com/report.php";
      
      private var _isSending:Boolean = false;
      
      private var _infoList:Array = null;
      
      private var _sendTimer:Timer = null;
      
      private var _eventIndex:int = 0;
      
      private var _playID:String = "";
      
      private var _uniteNum:int = 0;
      
      private var _domain:String = "";
      
      private var _isLive:Boolean;
      
      private var _videoID:String;
      
      public function Statistics(param1:String, param2:Boolean, param3:String, param4:String)
      {
         super();
         this._domain = param1;
         this._isLive = param2;
         this._videoID = param4;
         this._playID = param3;
         this._infoList = new Array();
         this._sendTimer = new Timer(2000);
         this._sendTimer.addEventListener(TimerEvent.TIMER,this.onSendTimerHandler);
         this._sendTimer.start();
      }
      
      public function reportStatInfo(param1:String, ... rest) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Array = new Array();
         _loc4_.push(int(new Date().getTime() / 1000));
         _loc4_.push(param1);
         _loc4_.push(++this._eventIndex);
         _loc3_ = Object(rest[0]);
         switch(param1)
         {
            case LIB_LOAD:
               _loc4_.push(_loc3_.type);
               _loc4_.push(_loc3_.time);
               break;
            case PLAY_ACTION:
               _loc4_.push(_loc3_.type);
               _loc4_.push(_loc3_.serviceAvailable);
               _loc4_.push(_loc3_.isError);
               _loc4_.push(_loc3_.isSuccess);
         }
         this._infoList.push(_loc4_);
      }
      
      private function onSendTimerHandler(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:Array = null;
         if(!this._isSending && this._infoList.length > 0)
         {
            _loc2_ = "";
            _loc2_ = _loc2_ + (this._playID + "\t");
            _loc2_ = _loc2_ + ("-" + "\t");
            _loc2_ = _loc2_ + ("http://" + this._domain + "/" + (!!this._isLive?"live":"vod") + "/" + this._videoID + "\t");
            _loc2_ = _loc2_ + VERSION;
            _loc3_ = 0;
            while(_loc3_ < this._infoList.length)
            {
               _loc4_ = this._infoList[_loc3_] as Array;
               this._uniteNum++;
               _loc2_ = _loc2_ + "\r\n";
               _loc2_ = _loc2_ + this.urlVariableToString(_loc4_);
               _loc3_++;
            }
            this._isSending = true;
            NetUtil.sendData(this.REPORT_URL + "?playID=" + this._playID + "&remainNum=" + 0,_loc2_,this.reportResult,this.reportError,true);
         }
      }
      
      private function urlVariableToString(param1:Array) : String
      {
         var _loc2_:* = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = _loc2_ + param1[_loc3_];
            _loc2_ = _loc2_ + "\t";
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected function reportResult(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._uniteNum)
         {
            if(this._infoList != null && this._infoList.length > 0)
            {
               _loc2_ = this._infoList.shift();
               _loc2_.splice(0,_loc2_.length);
               _loc2_ = null;
            }
            _loc3_++;
         }
         this._uniteNum = 0;
         this._isSending = false;
      }
      
      protected function reportError(param1:Event) : void
      {
         this._isSending = false;
      }
   }
}
