package com.ws.video
{
   import com.ws.stat.Statistics;
   import com.ws.net.VodClassFactory;
   import com.ws.stat.StringUtil;
   import com.ws.stat.MathUtil;
   import flash.net.NetConnection;
   import flash.media.Video;
   import flash.media.StageVideo;
   import flash.net.NetStream;
   import flash.media.SoundTransform;
   import com.ws.event.PFVEvent;
   import flash.media.Microphone;
   import flash.media.Camera;
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class PFVNetStream
   {
      
      private static var _isPlay:Boolean = false;
      
      private static var _isFull:Boolean = false;
      
      private static var _logStat:Statistics = null;
      
      private static var _isSwitchPlayMode:Boolean = false;
      
      private static var _isLive:Boolean = false;
      
      private static var _domain:String = "";
      
      private static var _token:String = "";
      
      private static var _playID:String = "";
      
      private static var _videoID:String = "";
      
      private static var _factory:VodClassFactory = null;
      
      private static const LIBRARY_URL:String = "http://www.vod.lxdns.com/pfv/";
      
      private static const LOAD_DELAY:Number = 10;
       
      
      private var _ns = null;
      
      private var _nc:NetConnection = null;
      
      private var _video:Video = null;
      
      private var _stageVideo:StageVideo = null;
      
      private var _listenerArray:Array = null;
      
      private var _isClosed:Boolean = false;
      
      private var _isPaused:Boolean = false;
      
      public function PFVNetStream(param1:NetConnection)
      {
         super();
         this._nc = param1;
         if(ServiceAvailable)
         {
            this._ns = _factory.createNetStream(_isLive);
            this._ns.clientDomain = _domain;
            this._ns.token = _token;
            this._ns.playerGUID = _playID;
            this._ns.addEventListener(PFVEvent.SVC_STATUS,this.onPFVHandler);
         }
         this._listenerArray = new Array();
      }
      
      public static function Load(param1:Function, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Number = 10) : void
      {
         _domain = param2;
         _token = param3;
         _isLive = param5;
         _videoID = StringUtil.ltrimBias(param4);
         _playID = String(MathUtil.random(100,65535)) + String(MathUtil.random(100,65535)) + String(MathUtil.random(100,65535));
         _logStat = new Statistics(_domain,_isLive,_playID,_videoID);
         var _loc8_:String = LIBRARY_URL + param2;
         if(param5)
         {
            _loc8_ = _loc8_ + (!!param6?"/wsUtil.L.unstable":"/wsUtil.L.stable");
         }
         else
         {
            _loc8_ = _loc8_ + (!!param6?"/wsUtil.V.unstable":"/wsUtil.V.stable");
         }
         var _loc9_:Object = new Object();
         _loc9_.type = "Start";
         _loc9_.time = int(new Date().getTime() / 1000);
         _logStat.reportStatInfo(Statistics.LIB_LOAD,_loc9_);
         _factory = new VodClassFactory(_loc8_,param1,_logStat);
         if(VodClassFactory.checkCompatibility())
         {
            _factory.load(param7 * 1000);
         }
         else
         {
            _loc9_ = new Object();
            _loc9_.type = "Uncompatibility";
            _loc9_.time = int(new Date().getTime() / 1000);
            _logStat.reportStatInfo(Statistics.LIB_LOAD,_loc9_);
            param1();
         }
      }
      
      public static function get isLive() : Boolean
      {
         return _isLive;
      }
      
      public static function get ServiceAvailable() : Boolean
      {
         if(_factory == null)
         {
            return false;
         }
         return _factory.isSuccess && !_isSwitchPlayMode;
      }
      
      public static function set playAction(param1:String) : void
      {
         var _loc2_:Object = new Object();
         var _loc3_:String = param1.toLocaleUpperCase();
         if(_factory == null)
         {
            return;
         }
         if(_loc3_ != "PLAY" && _loc3_ != "FULL")
         {
            return;
         }
         if(_loc3_ == "PLAY")
         {
            if(!_isPlay)
            {
               _isPlay = true;
               _loc2_.type = "Play";
            }
            else
            {
               return;
            }
         }
         else if(_loc3_ == "FULL")
         {
            if(!_isFull)
            {
               _isFull = true;
               _loc2_.type = "Full";
            }
            else
            {
               return;
            }
         }
         _loc2_.serviceAvailable = ServiceAvailable;
         _loc2_.isError = _isSwitchPlayMode;
         _loc2_.isSuccess = _factory.isSuccess;
         if(_logStat != null)
         {
            _logStat.reportStatInfo(Statistics.PLAY_ACTION,_loc2_);
         }
      }
      
      public function get netstream() : NetStream
      {
         return this._ns;
      }
      
      public function set useTimeShirt(param1:Boolean) : void
      {
         if(this._ns != null)
         {
            this._ns.useTimeShirt = param1;
         }
      }
      
      public function set playerGUID(param1:String) : void
      {
         if(this._ns != null)
         {
            this._ns.playerGUID = param1;
         }
      }
      
      public function set trackerAddr(param1:String) : void
      {
         if(this._ns != null)
         {
            this._ns.trackerAddr = param1;
         }
      }
      
      public function get playInfo() : Object
      {
         if(this._ns != null)
         {
            return this._ns.playInfo;
         }
         return null;
      }
      
      public function get bufferLength() : Number
      {
         return this._ns.bufferLength;
      }
      
      public function get bufferTime() : Number
      {
         return this._ns.bufferTime;
      }
      
      public function set bufferTime(param1:Number) : void
      {
         this._ns.bufferTime = param1;
      }
      
      public function get bytesLoaded() : uint
      {
         return this._ns.bytesLoaded;
      }
      
      public function get bytesTotal() : uint
      {
         return this._ns.bytesTotal;
      }
      
      public function set checkPolicyFile(param1:Boolean) : void
      {
         this._ns.checkPolicyFile = param1;
      }
      
      public function get checkPolicyFile() : Boolean
      {
         return this._ns.checkPolicyFile;
      }
      
      public function get client() : Object
      {
         return this._ns.client;
      }
      
      public function set client(param1:Object) : void
      {
         this._ns.client = param1;
      }
      
      public function get currentFPS() : Number
      {
         return this._ns.currentFPS;
      }
      
      public function get decodedFrames() : uint
      {
         return this._ns.decodedFrames;
      }
      
      public function get liveDelay() : Number
      {
         return this._ns.liveDelay;
      }
      
      public function get objectEncoding() : uint
      {
         return this._ns.objectEncoding;
      }
      
      public function get soundTransform() : SoundTransform
      {
         return this._ns.soundTransform;
      }
      
      public function set soundTransform(param1:SoundTransform) : void
      {
         this._ns.soundTransform = param1;
      }
      
      public function get liveTime() : Number
      {
         return this._ns.liveTime;
      }
      
      public function get time() : Number
      {
         return this._ns.time;
      }
      
      public function get audioCodec() : uint
      {
         return this._ns.audioCodec;
      }
      
      public function get videoCodec() : uint
      {
         return this._ns.videoCodec;
      }
      
      private function dispatcherPFVEvent(param1:String, param2:Number) : void
      {
         var _loc3_:Object = new Object();
         _loc3_.code = param1;
         _loc3_.playTime = param2;
         var _loc4_:PFVEvent = new PFVEvent(PFVEvent.SVC_STATUS,false,false,_loc3_);
         this.dispatchEvent(_loc4_);
      }
      
      public function attachAudio(param1:Microphone) : void
      {
         this._ns.attachAudio(param1);
      }
      
      public function attachCamera(param1:Camera, param2:int = -1) : void
      {
         this._ns.attachCamera(param1,param2);
      }
      
      public function attachVideo(param1:Video) : void
      {
         this._video = param1;
         this._video.attachNetStream(this._ns);
      }
      
      public function attachStageVideo(param1:StageVideo) : void
      {
         this._stageVideo = param1;
         this._stageVideo.attachNetStream(this._ns);
      }
      
      public function close() : void
      {
         if(this._ns != null)
         {
            this._isClosed = true;
            this._ns.close();
         }
         _isPlay = false;
         _isFull = false;
      }
      
      public function pause() : void
      {
         if(this._ns != null)
         {
            this._isPaused = true;
            this._ns.pause();
         }
      }
      
      public function play(... rest) : void
      {
         this._isClosed = false;
         this._isPaused = false;
         if(this._ns != null)
         {
            this._ns.play(rest);
         }
      }
      
      public function publish(param1:String = null, param2:String = null) : void
      {
         this._ns.publish(param1,param2);
      }
      
      public function receiveAudio(param1:Boolean) : void
      {
         this._ns.receiveAudio(param1);
      }
      
      public function receiveVideo(param1:Boolean) : void
      {
         this._ns.receiveVideo(param1);
      }
      
      public function receiveVideoFPS(param1:Number) : void
      {
         this._ns.receiveVideoFPS(param1);
      }
      
      public function resume() : void
      {
         if(this._ns != null)
         {
            this._isPaused = false;
            this._ns.resume();
         }
      }
      
      public function seek(param1:Number) : void
      {
         if(this._ns != null)
         {
            this._ns.seek(param1);
         }
      }
      
      public function send(param1:String, ... rest) : void
      {
         this._ns.send.apply(param1,rest);
      }
      
      public function togglePause() : void
      {
         if(this._ns != null)
         {
            this._ns.togglePause();
         }
      }
      
      public function draw(param1:BitmapData) : void
      {
         if(this._video == null || this._ns == null || param1 == null || _isLive)
         {
            return;
         }
         this._ns.draw(this._video,param1);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this._ns.addEventListener(param1,param2,param3,param4,param5);
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         while(_loc7_ < this._listenerArray.length)
         {
            _loc6_ = this._listenerArray[_loc7_];
            if(_loc6_["type"] == param1 && _loc6_["useCapture"] == param3)
            {
               return;
            }
            _loc7_++;
         }
         _loc6_ = new Object();
         _loc6_["type"] = param1;
         _loc6_["listener"] = param2;
         _loc6_["useCapture"] = param3;
         _loc6_["priority"] = param4;
         _loc6_["useWeakReference"] = param5;
         this._listenerArray.push(_loc6_);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this._ns.removeEventListener(param1,param2,param3);
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         while(_loc5_ < this._listenerArray.length)
         {
            _loc4_ = this._listenerArray[_loc5_];
            if(_loc4_["type"] == param1 && _loc4_["useCapture"] == param3)
            {
               this._listenerArray.splice(_loc5_,1);
               _loc4_ = null;
               return;
            }
            _loc5_++;
         }
      }
      
      private function onPFVHandler(param1:PFVEvent) : void
      {
         switch(param1.info.code)
         {
            case "PFVNetStream.Internal.Error":
               _isSwitchPlayMode = true;
               this._ns.close();
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this._ns.hasEventListener(param1);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this._ns.dispatchEvent(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this._ns.willTrigger(param1);
      }
   }
}
