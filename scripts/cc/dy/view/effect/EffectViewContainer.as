package cc.dy.view.effect
{
   import flash.display.Sprite;
   import cc.dy.model.comment.CommentConfig;
   import util.CommonUtils;
   import flash.display.DisplayObject;
   
   public class EffectViewContainer extends Sprite
   {
       
      
      protected var config:CommentConfig;
      
      protected var manager:cc.dy.view.effect.EffectManager;
      
      protected var duration:Number = 4.8;
      
      protected var effectPool:Array;
      
      protected var alwaysTop:Boolean;
      
      public function EffectViewContainer(param1:cc.dy.view.effect.EffectManager, param2:Boolean = false)
      {
         this.config = CommentConfig.instance;
         super();
         this.manager = param1;
         this.alwaysTop = param2;
         this.effectPool = [];
      }
      
      protected function transformY(param1:int, param2:EffectView) : int
      {
         return param1;
      }
      
      protected function vCheck(param1:int, param2:EffectView, param3:int) : Boolean
      {
         var _loc6_:EffectView = null;
         var _loc4_:int = param1 + param2.height;
         var _loc5_:int = param2.x + param2.width;
         for each(_loc6_ in this.effectPool[param3])
         {
            if(_loc6_.y > _loc4_ || _loc6_.bottom < param1)
            {
               continue;
            }
            if(_loc6_.right < param2.x || _loc6_.x > _loc5_)
            {
               if(this.getEnd(_loc6_) <= this.getMiddle(param2))
               {
                  continue;
               }
               return false;
            }
            return false;
         }
         return true;
      }
      
      protected function setY(param1:EffectView, param2:int = 0) : void
      {
         var _loc5_:EffectView = null;
         var _loc3_:int = 0;
         if(this.effectPool.length <= param2)
         {
            this.effectPool.push(new Array());
         }
         var _loc4_:Array = this.effectPool[param2];
         if(_loc4_.length == 0)
         {
            param1.setY(0,param2,this.transformY);
            _loc4_.push(param1);
            return;
         }
         if(this.vCheck(0,param1,param2))
         {
            param1.setY(0,param2,this.transformY);
            CommonUtils.binsert(_loc4_,param1,this.bottom_cmp);
            return;
         }
         for each(_loc5_ in _loc4_)
         {
            _loc3_ = _loc5_.bottom + 1;
            if(_loc3_ + param1.height > this.manager.Height)
            {
               break;
            }
            if(this.vCheck(_loc3_,param1,param2))
            {
               param1.setY(_loc3_,param2,this.transformY);
               CommonUtils.binsert(_loc4_,param1,this.bottom_cmp);
               return;
            }
         }
         this.setY(param1,param2 + 1);
      }
      
      protected function bottom_cmp(param1:EffectView, param2:EffectView) : int
      {
         if(param1.bottom < param2.bottom)
         {
            return -1;
         }
         if(param1.bottom == param2.bottom)
         {
            return 0;
         }
         return 1;
      }
      
      public function getSpeed(param1:EffectView) : Number
      {
         return (this.manager.Width + param1.width) * (this.config.width / this.manager.Width + 0.1) * this.config.speede / this.duration;
      }
      
      private function getEnd(param1:EffectView) : Number
      {
         return param1.stime + (this.manager.Width + param1.width) / this.getSpeed(param1);
      }
      
      private function getMiddle(param1:EffectView) : Number
      {
         return param1.stime + this.manager.Width / this.getSpeed(param1);
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:EffectView = param1 as EffectView;
         if(_loc2_ == null)
         {
            return null;
         }
         _loc2_.x = this.manager.Width;
         _loc2_.duration = (this.manager.Width + _loc2_.width) / this.getSpeed(_loc2_);
         _loc2_.index = -1;
         if(!this.alwaysTop)
         {
            if(_loc2_.height >= this.manager.Height)
            {
               _loc2_.setY(0,-1,this.transformY);
            }
            else
            {
               this.setY(_loc2_);
            }
         }
         return super.addChild(param1);
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc2_:EffectView = param1 as EffectView;
         if(_loc2_ == null)
         {
            return null;
         }
         if(_loc2_.index != -1)
         {
            _loc3_ = this.effectPool[_loc2_.index];
            _loc4_ = _loc3_.indexOf(_loc2_);
            if(_loc4_ != -1)
            {
               _loc3_.splice(_loc4_,1);
            }
         }
         return super.removeChild(param1);
      }
   }
}
