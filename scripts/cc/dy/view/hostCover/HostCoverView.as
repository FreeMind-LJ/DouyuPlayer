package cc.dy.view.hostCover
{
   import flash.display.Sprite;
   import flash.display.Loader;
   import flash.display.Shape;
   import flash.filters.BlurFilter;
   import flash.filters.BitmapFilterQuality;
   import flash.display.Graphics;
   import flash.net.URLRequest;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import util.$;
   
   public class HostCoverView extends Sprite
   {
       
      
      private var _cover:Sprite;
      
      private var _image:Loader;
      
      private var _mask:Shape;
      
      private var _urls:Array;
      
      private var _index:int = -1;
      
      private var _inited:Boolean;
      
      private var _blurStrength:Number = 70;
      
      public function HostCoverView()
      {
         super();
      }
      
      public function setPaths(param1:Array) : void
      {
         this._urls = param1;
      }
      
      public function init() : void
      {
         this._inited = true;
         this._cover = new Sprite();
         addChild(this._cover);
         var _loc1_:BlurFilter = new BlurFilter(this._blurStrength,this._blurStrength,BitmapFilterQuality.LOW);
         this._cover.filters = [_loc1_];
         this._mask = new Shape();
         var _loc2_:Graphics = this._mask.graphics;
         _loc2_.beginFill(0,0.4);
         _loc2_.drawRect(0,0,1,1);
         _loc2_.endFill();
         addChild(this._mask);
         if(this._urls)
         {
            this._index = 0;
            if(this._urls.length > this._index)
            {
               this.loadImage(this._urls[this._index]);
            }
         }
         this.resize();
      }
      
      public function resize() : void
      {
         if(this._inited)
         {
            this._mask.width = GlobalData.root.stage.stageWidth;
            this._mask.height = GlobalData.root.stage.stageHeight;
            if(this._image)
            {
               if(GlobalData.root.stage.stageWidth / GlobalData.root.stage.stageHeight > this._image.width / this._image.height)
               {
                  this._image.width = GlobalData.root.stage.stageWidth + this._blurStrength * 2;
                  this._image.scaleY = this._image.scaleX;
                  this._image.x = (GlobalData.root.stage.stageWidth - this._image.width) / 2;
                  this._image.y = (GlobalData.root.stage.stageHeight - this._image.height) / 2;
               }
               else
               {
                  this._image.height = GlobalData.root.stage.stageHeight + this._blurStrength * 2;
                  this._image.scaleX = this._image.scaleY;
                  this._image.x = (GlobalData.root.stage.stageWidth - this._image.width) / 2;
                  this._image.y = (GlobalData.root.stage.stageHeight - this._image.height) / 2;
               }
            }
         }
      }
      
      private function loadImage(param1:String) : void
      {
         var _loc2_:Loader = new Loader();
         this.addListeners(_loc2_);
         _loc2_.load(new URLRequest(param1));
      }
      
      private function addListeners(param1:Loader) : void
      {
         param1.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loadCompleteHandler);
         param1.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         param1.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
      }
      
      private function removeListeners(param1:Loader) : void
      {
         param1.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.loadCompleteHandler);
         param1.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         param1.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
      }
      
      private function loadCompleteHandler(param1:Event) : void
      {
         var _loc2_:Loader = param1.currentTarget.loader as Loader;
         this.removeListeners(_loc2_);
         this._image = _loc2_;
         this._cover.addChild(this._image);
         this.resize();
      }
      
      private function ioErrorHandler(param1:IOErrorEvent) : void
      {
         var _loc2_:Loader = param1.currentTarget.loader as Loader;
         this.removeListeners(_loc2_);
         this.loadImageFailed();
      }
      
      private function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Loader = param1.currentTarget.loader as Loader;
         this.removeListeners(_loc2_);
         this.loadImageFailed();
      }
      
      private function loadImageFailed() : void
      {
         this._index++;
         if(this._urls.length > this._index)
         {
            this.loadImage(this._urls[this._index]);
         }
         else
         {
            $.jscall("console.log","加载视频层背景图片失败");
         }
      }
   }
}
