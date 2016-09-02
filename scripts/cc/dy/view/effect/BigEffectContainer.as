package cc.dy.view.effect
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.events.Event;
   
   public class BigEffectContainer extends Sprite
   {
       
      
      private var _list:Vector.<cc.dy.view.effect.BigEffectCell>;
      
      private var _curItem:cc.dy.view.effect.BigEffectCell;
      
      private var _isPlaying:Boolean;
      
      private var _code:int;
      
      public function BigEffectContainer()
      {
         super();
         this._list = new Vector.<cc.dy.view.effect.BigEffectCell>();
      }
      
      public function shieldGift(param1:int) : void
      {
         if(this._isPlaying && !this._curItem.isSelfGive)
         {
            if(param1 == 0)
            {
               this._curItem.visible = true;
            }
            else if(param1 == 1)
            {
               this._curItem.visible = false;
            }
         }
         this._code = param1;
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:cc.dy.view.effect.BigEffectCell = param1 as cc.dy.view.effect.BigEffectCell;
         if(_loc2_ == null)
         {
            return null;
         }
         _loc2_.addEventListener("playComplete",this.playCompleteHandler);
         this._list.push(_loc2_);
         if(!this._isPlaying)
         {
            this._curItem = _loc2_;
            this.addAndPlayGiftEffect();
            return this._curItem;
         }
         return null;
      }
      
      private function playCompleteHandler(param1:Event) : void
      {
         var _loc2_:cc.dy.view.effect.BigEffectCell = param1.currentTarget as cc.dy.view.effect.BigEffectCell;
         _loc2_.removeEventListener("playComplete",this.playCompleteHandler);
         _loc2_.clear();
         this.removeChild(_loc2_);
         this._list.shift();
         this._isPlaying = false;
         this._curItem = null;
         if(this._list.length > 0)
         {
            this._curItem = this._list[0];
            this.addAndPlayGiftEffect();
         }
      }
      
      private function addAndPlayGiftEffect() : void
      {
         this._isPlaying = true;
         if(this._code == 1)
         {
            this.shieldGift(this._code);
         }
         super.addChild(this._curItem);
      }
   }
}
