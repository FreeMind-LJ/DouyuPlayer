package cc.dy.view.play
{
   import ui.Tip;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import common.event.ObjectEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFieldAutoSize;
   import flash.utils.setTimeout;
   import common.event.EventCenter;
   
   public class TipView extends Tip
   {
      
      public static const TIP_TYPE_TICKET:int = 1;
      
      public static const TIP_PADDING:int = 8;
       
      
      private var currentType:int = -1;
      
      private var currentChild:DisplayObject;
      
      public function TipView()
      {
         super();
         visible = false;
         close.addEventListener(MouseEvent.CLICK,this.onClose);
         EventCenter.addEventListener("TipShow",this.show);
         EventCenter.addEventListener("TipHide",this.hide);
      }
      
      public function resize(param1:Number) : void
      {
         bg.width = param1;
         close.x = param1 - close.width - TIP_PADDING;
      }
      
      protected function onClose(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      private function show(param1:ObjectEvent) : void
      {
         var _loc6_:DisplayObject = null;
         var _loc7_:String = null;
         var _loc8_:TextField = null;
         var _loc2_:Object = param1.data;
         this.currentType = _loc2_.type;
         var _loc3_:Object = _loc2_.src || null;
         var _loc4_:Boolean = true;
         if(_loc2_.canClose != undefined)
         {
            _loc4_ = _loc2_.canClose;
         }
         var _loc5_:uint = uint(_loc2_.timeout) || uint(0);
         if(_loc3_ is String)
         {
            _loc7_ = _loc3_ as String;
            _loc8_ = new TextField();
            _loc8_.defaultTextFormat = new TextFormat("微软雅黑",14,16777215);
            _loc8_.autoSize = TextFieldAutoSize.LEFT;
            _loc8_.htmlText = _loc7_;
            _loc6_ = _loc8_;
         }
         else if(_loc3_ is DisplayObject)
         {
            _loc6_ = _loc3_ as DisplayObject;
         }
         if(_loc6_)
         {
            if(this.currentChild && contains(this.currentChild))
            {
               removeChild(this.currentChild);
            }
            _loc6_.x = TIP_PADDING;
            _loc6_.y = (height - _loc6_.height) / 2;
            addChild(_loc6_);
            visible = true;
            this.currentChild = _loc6_;
         }
         close.visible = _loc4_;
         if(_loc5_ > 0)
         {
            setTimeout(this.onClose,_loc5_,null);
         }
      }
      
      private function hide(param1:ObjectEvent) : void
      {
         var _loc2_:Object = param1.data;
         if(_loc2_.type == undefined || _loc2_.type == this.currentType)
         {
            this.onClose(null);
         }
      }
   }
}
