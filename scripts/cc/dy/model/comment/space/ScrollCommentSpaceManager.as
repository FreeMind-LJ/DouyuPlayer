package cc.dy.model.comment.space
{
   import cc.dy.model.comment.CommentConfig;
   import cc.dy.model.comment.entity.base.Comment;
   import cc.dy.model.comment.entity.ScrollComment;
   import util.CommonUtils;
   
   public class ScrollCommentSpaceManager extends CommentSpaceManager
   {
       
      
      private var duration:Number = 4.8;
      
      private var config:CommentConfig;
      
      public function ScrollCommentSpaceManager()
      {
         this.config = CommentConfig.instance;
         super();
      }
      
      override public function add(param1:Comment) : void
      {
         var _loc2_:ScrollComment = param1 as ScrollComment;
         _loc2_.x = this.Width;
         _loc2_.speed = this.getSpeed(param1);
         _loc2_.duration = (this.Width + param1.width) / _loc2_.speed;
         _loc2_.leftTime = _loc2_.stime + this.Width / _loc2_.speed;
         _loc2_.endTime = _loc2_.stime + _loc2_.duration;
         if(param1.height >= this.Height - GlobalData.offsetDownHeight)
         {
            param1.setY(GlobalData.offsetUpHeight,-1,transformY);
         }
         else
         {
            this.setY(param1);
         }
      }
      
      override public function setRectangle(param1:int, param2:int) : void
      {
         this.Width = param1 - 10;
         this.Height = param2;
      }
      
      override protected function setY(param1:Comment, param2:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:Comment = null;
         var _loc9_:Comment = null;
         var _loc10_:int = 0;
         var _loc3_:int = 0;
         if(this.Pools.length <= param2)
         {
            this.Pools.push(new Array());
         }
         var _loc4_:Array = this.Pools[param2];
         var _loc5_:int = _loc4_.length;
         if(_loc5_ == 0)
         {
            param1.setY(GlobalData.offsetUpHeight + 2,param2,transformY);
            _loc4_.push(param1);
            return;
         }
         _loc6_ = true;
         _loc7_ = 0;
         while(true)
         {
            if(_loc7_ < _loc5_)
            {
               _loc8_ = _loc4_[_loc7_];
               if(param1.data.type == 3)
               {
                  while(_loc8_ && _loc8_.y < GlobalData.offsetUpHeight + 2)
                  {
                     _loc8_ = _loc4_[++_loc7_];
                  }
                  _loc7_--;
               }
               if(_loc6_)
               {
                  _loc6_ = false;
                  _loc3_ = GlobalData.offsetUpHeight + 2;
                  if(_loc8_ == null || _loc8_.bottom < _loc3_ || _loc8_.y - _loc3_ > 2)
                  {
                     break;
                  }
               }
               _loc3_ = _loc8_.y;
               _loc9_ = _loc4_[++_loc7_];
               _loc10_ = _loc3_ + param1.height + 2;
               while(_loc9_ && _loc9_.y < _loc10_)
               {
                  if(_loc9_.right > _loc8_.right)
                  {
                     _loc8_ = _loc9_;
                  }
                  _loc9_ = _loc4_[++_loc7_];
               }
               _loc7_--;
               if(_loc3_ >= GlobalData.offsetUpHeight + 2 && this.checkX(_loc8_,param1))
               {
                  param1.setY(_loc3_,param2,transformY);
                  CommonUtils.binsert(_loc4_,param1,y_cmp);
                  return;
               }
               _loc3_ = _loc8_.bottom;
               if(_loc3_ + param1.height <= this.Height - GlobalData.offsetDownHeight)
               {
                  _loc9_ = _loc4_[_loc7_ + 1];
                  if(_loc3_ >= GlobalData.offsetUpHeight + 2 && (!_loc9_ || _loc9_.y - _loc3_ > 2))
                  {
                     param1.setY(_loc3_,param2,transformY);
                     CommonUtils.binsert(_loc4_,param1,y_cmp);
                     return;
                  }
                  _loc7_++;
                  continue;
               }
            }
            this.setY(param1,param2 + 1);
            return;
         }
         param1.setY(_loc3_,param2,transformY);
         CommonUtils.binsert(_loc4_,param1,y_cmp);
      }
      
      override protected function checkX(param1:Comment, param2:Comment) : Boolean
      {
         return param1.right < param2.x && ScrollComment(param1).endTime < ScrollComment(param2).leftTime;
      }
      
      override protected function vCheck(param1:int, param2:Comment, param3:int) : Boolean
      {
         var _loc6_:Comment = null;
         var _loc4_:int = param1 + param2.height;
         var _loc5_:int = param2.x + param2.width + 100;
         for each(_loc6_ in this.Pools[param3])
         {
            if(_loc6_.y > _loc4_ || _loc6_.bottom < param1)
            {
               if(GlobalData.danmuModel == 1 || GlobalData.danmuModel == 2)
               {
                  continue;
               }
               if(_loc6_.data.type == param2.data.type)
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
      
      private function getSpeed(param1:Comment) : Number
      {
         return (this.Width + param1.width) * (this.config.width / this.Width + 0.1) * this.config.speede / this.duration;
      }
      
      private function getEnd(param1:Comment) : Number
      {
         return param1.stime + (this.Width + param1.width) / this.getSpeed(param1);
      }
      
      private function getMiddle(param1:Comment) : Number
      {
         return param1.stime + this.Width / this.getSpeed(param1);
      }
   }
}
