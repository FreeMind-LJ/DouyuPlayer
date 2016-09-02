package util
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.text.TextFormat;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import ui.CopyBtn;
   import flash.system.System;
   import ui.CloseBtn;
   import flash.utils.getTimer;
   
   public class Log
   {
      
      private static var _s:Sprite;
      
      private static var _tf:TextField;
      
      private static var infoTxt:TextField;
      
      private static var _level:int = 0;
      
      private static const LEVEL_STRING:Array = ["ERROR","WARN ","DEBUG","INFO "];
      
      private static var root:DisplayObjectContainer;
       
      
      public function Log()
      {
         super();
      }
      
      public static function init(param1:DisplayObjectContainer, param2:Number = 400, param3:Number = 300) : void
      {
         var main:DisplayObjectContainer = param1;
         var width:Number = param2;
         var height:Number = param3;
         _s = new Sprite();
         _s.graphics.lineStyle(1,16711680);
         _s.graphics.beginFill(13421772);
         _s.graphics.drawRect(0,0,width,height);
         _s.graphics.endFill();
         _s.addEventListener(MouseEvent.CLICK,function(param1:MouseEvent):void
         {
            param1.stopPropagation();
         });
         infoTxt = new TextField();
         infoTxt.defaultTextFormat = new TextFormat("Courier New");
         _tf = new TextField();
         _tf.width = width - 2;
         _tf.height = height - 35;
         _tf.x = 1;
         _tf.y = 1;
         _tf.defaultTextFormat = new TextFormat("Courier New");
         _tf.alpha = 1;
         _tf.appendText("Douyu Logsystem Link Start......\n");
         _tf.appendText(new Date() + "\n\n");
         if(ExternalInterface.available)
         {
            _tf.appendText("浏览器标识：" + ExternalInterface.call("function(){ return navigator.userAgent; }") + "\n");
         }
         _tf.appendText("Flash Player 运行时：" + Capabilities.manufacturer + "\n");
         _tf.appendText("Flash Player 版本：" + Capabilities.version + "\n");
         _tf.appendText("Flash Player 是否调试版：" + Capabilities.isDebugger + "\n");
         _tf.appendText("操作系统：" + Capabilities.os + "\n");
         _tf.appendText("桌面分辨率：" + Capabilities.screenResolutionX + "x" + Capabilities.screenResolutionY + "\n");
         _tf.appendText("桌面DPI：" + Capabilities.screenDPI + "\n\n");
         _s.addChild(_tf);
         _s.addChild(infoTxt);
         infoTxt.x = 1;
         infoTxt.y = _tf.textHeight;
         infoTxt.width = width - 2;
         infoTxt.height = height - 35 - _tf.textHeight;
         var copyB:SimpleButton = new CopyBtn();
         copyB.x = 10;
         copyB.y = height - 30;
         copyB.addEventListener(MouseEvent.CLICK,function():void
         {
            System.setClipboard(_tf.text + infoTxt.text);
         });
         _s.addChild(copyB);
         var closeB:SimpleButton = new CloseBtn();
         closeB.x = width - 70;
         closeB.y = height - 30;
         closeB.addEventListener(MouseEvent.CLICK,function():void
         {
            toggleShow(false);
         });
         _s.addChild(closeB);
         _s.visible = false;
         main.addChild(_s);
         root = main;
      }
      
      public static function toggleShow(param1:Boolean) : void
      {
         if(_s)
         {
            _s.visible = param1;
            root.addChildAt(_s,root.numChildren - 1);
         }
      }
      
      public static function setLevel(param1:int) : void
      {
         _level = param1;
         debug("Log level = ",_level);
      }
      
      public static function info(... rest) : void
      {
         append(3,rest);
      }
      
      public static function debug(... rest) : void
      {
         append(2,rest);
      }
      
      public static function warn(... rest) : void
      {
         append(1,rest);
      }
      
      public static function error(... rest) : void
      {
         append(0,rest);
      }
      
      private static function append(param1:int, param2:Array) : void
      {
         var _loc3_:* = Util.covertToTime(getTimer()) + " " + LEVEL_STRING[param1] + "  ----  " + param2.join(" ") + "\n";
         if(infoTxt && _level >= param1)
         {
            infoTxt.appendText(_loc3_);
         }
      }
      
      public static function clear() : void
      {
         infoTxt.text = "";
      }
   }
}
