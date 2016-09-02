package cc.dy.view.effect
{
   import cc.dy.model.comment.CommentConfig;
   import flash.display.Sprite;
   import util.CommonUtils;
   
   public class ColorComentManager
   {
      
      private static var colorCommentManager:cc.dy.view.effect.ColorComentManager;
       
      
      private var duration:Number = 4.8;
      
      private var config:CommentConfig;
      
      public var colorContainer:Sprite;
      
      public var colorPool:Array;
      
      protected var Width:int;
      
      protected var Height:int;
      
      public var dataArr:Array;
      
      protected var isComplete:Boolean = true;
      
      public function ColorComentManager()
      {
         this.config = CommentConfig.instance;
         this.dataArr = [];
         super();
         this.colorPool = [];
      }
      
      public static function get instance() : cc.dy.view.effect.ColorComentManager
      {
         if(colorCommentManager == null)
         {
            colorCommentManager = new cc.dy.view.effect.ColorComentManager();
         }
         return colorCommentManager;
      }
      
      public function setContainer(param1:Sprite) : void
      {
         this.colorContainer = param1;
      }
      
      public function addColorData(param1:Object) : void
      {
         var _loc2_:ColorCommentView = null;
         var _loc3_:Object = null;
         this.dataArr.push(param1);
         while(this.dataArr.length != 0)
         {
            if(this.isComplete)
            {
               this.isComplete = false;
               _loc3_ = this.dataArr[0] as Object;
               _loc2_ = new ColorCommentView(_loc3_);
               _loc2_.complete = this.commentComplete;
               this.addCommentView(_loc2_);
               this.colorContainer.addChild(_loc2_);
               _loc2_.start();
               this.isComplete = true;
               this.dataArr.shift();
            }
         }
      }
      
      public function addCommentView(param1:ColorCommentView) : void
      {
         param1.x = this.Width;
         param1.duration = (this.Width + param1.width) / this.getSpeed(param1);
         if(param1.height >= this.Height - GlobalData.offsetDownHeight)
         {
            param1.setY(GlobalData.offsetUpHeight,-1,this.transformY);
         }
         else
         {
            this.setY(param1);
         }
      }
      
      protected function transformY(param1:int, param2:ColorCommentView) : int
      {
         return param1;
      }
      
      protected function vCheck(param1:int, param2:ColorCommentView, param3:int) : Boolean
      {
         var _loc6_:ColorCommentView = null;
         var _loc4_:int = param1 + param2.height;
         var _loc5_:int = param2.x + param2.width;
         for each(_loc6_ in this.colorPool[param3])
         {
            if(_loc6_.y > _loc4_ || _loc6_.bottom < param1)
            {
               if(GlobalData.danmuModel == 1 || GlobalData.danmuModel == 2)
               {
                  continue;
               }
               if(_loc6_.data.model == param2.data.model)
               {
                  continue;
               }
               return false;
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
      
      protected function setY(param1:ColorCommentView, param2:int = 0) : void
      {
         var _loc5_:ColorCommentView = null;
         var _loc3_:int = 0;
         if(this.colorPool.length <= param2)
         {
            this.colorPool.push(new Array());
         }
         var _loc4_:Array = this.colorPool[param2];
         if(_loc4_.length == 0)
         {
            param1.setY(GlobalData.offsetUpHeight,param2,this.transformY);
            _loc4_.push(param1);
            return;
         }
         if(this.vCheck(GlobalData.offsetUpHeight,param1,param2))
         {
            param1.setY(GlobalData.offsetUpHeight,param2,this.transformY);
            CommonUtils.binsert(_loc4_,param1,this.bottom_cmp);
            return;
         }
         for each(_loc5_ in _loc4_)
         {
            _loc3_ = _loc5_.bottom + 1;
            if(_loc3_ + param1.height > this.Height - GlobalData.offsetDownHeight)
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
      
      protected function bottom_cmp(param1:ColorCommentView, param2:ColorCommentView) : int
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
      
      private function getSpeed(param1:ColorCommentView) : Number
      {
         return (this.Width + param1.width) * (this.config.width / this.Width + 0.1) * this.config.speede / this.duration;
      }
      
      private function getEnd(param1:ColorCommentView) : Number
      {
         return param1.stime + (this.Width + param1.width) / this.getSpeed(param1);
      }
      
      private function getMiddle(param1:ColorCommentView) : Number
      {
         return param1.stime + this.Width / this.getSpeed(param1);
      }
      
      public function resize(param1:int, param2:int) : void
      {
         this.Width = param1 - 10;
         this.Height = param2;
      }
      
      public function commentComplete(param1:ColorCommentView) : void
      {
         this.remove(param1);
         this.colorContainer.removeChild(param1);
         param1 = null;
      }
      
      public function remove(param1:ColorCommentView) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         if(param1.index != -1)
         {
            _loc2_ = this.colorPool[param1.index];
            _loc3_ = _loc2_.indexOf(param1);
            _loc2_.splice(_loc3_,1);
         }
      }
   }
}
