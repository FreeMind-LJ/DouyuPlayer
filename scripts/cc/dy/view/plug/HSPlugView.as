package cc.dy.view.plug
{
   import flash.display.Sprite;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.display.MovieClip;
   import util.$;
   
   public class HSPlugView extends Sprite
   {
       
      
      private var w:int;
      
      private var h:int;
      
      private var callBack:Function;
      
      private var url:String;
      
      private var obj:MovieClip;
      
      public function HSPlugView()
      {
         super();
      }
      
      public function init(param1:int, param2:int, param3:String = "http://s.csbew.com/FrameWork/AFP/ASP_vastTrack2.swf", param4:Function = null) : void
      {
         this.w = param1;
         this.h = param2;
         this.url = param3;
         this.callBack = param4;
         var _loc5_:Loader = new Loader();
         _loc5_.contentLoaderInfo.addEventListener(Event.COMPLETE,this.__complete);
         _loc5_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         _loc5_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
         _loc5_.load(new URLRequest(this.url));
      }
      
      private function __complete(param1:Event) : void
      {
         this.obj = param1.currentTarget.content as MovieClip;
         addChild(this.obj);
         var _loc2_:Object = new Object();
         _loc2_.serverURL = Param.adServerUrl;
         var _loc3_:Object = new Object();
         _loc3_.playerId = Param.plugId;
         _loc3_.wh = this.w + "," + this.h;
         this.obj.initPlayerData(_loc2_);
         this.obj.initAdData(_loc3_);
         this.obj.addEventListener("load_complete",this.__loadComplete);
         this.obj.addEventListener("play",this.__play);
         this.obj.addEventListener("pause",this.__pause);
      }
      
      private function __loadComplete(param1:Event) : void
      {
      }
      
      private function __play(param1:Event) : void
      {
         if(this.callBack != null)
         {
            this.callBack(2);
         }
      }
      
      private function __pause(param1:Event) : void
      {
         if(this.callBack != null)
         {
            this.callBack(1);
         }
      }
      
      private function ioErrorHandler(param1:IOErrorEvent) : void
      {
         $.jscall("加载资源IO错误!" + this.url);
         if(this.callBack != null)
         {
            this.callBack(3);
         }
      }
      
      private function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
         $.jscall("加载资源Security错误!" + this.url);
         if(this.callBack != null)
         {
            this.callBack(4);
         }
      }
      
      public function setAdWh(param1:int, param2:int) : void
      {
         if(this.obj != null)
         {
            this.obj.setAreaSize(param1,param2);
         }
      }
      
      public function destory() : void
      {
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
         if(this.obj != null && this.obj.parent != null)
         {
            this.obj.parent.removeChild(this.obj);
            this.obj.removeEventListener("load_complete",this.__loadComplete);
            this.obj.removeEventListener("play",this.__play);
            this.obj.removeEventListener("pause",this.__pause);
         }
         this.obj = null;
      }
   }
}
