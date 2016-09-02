package cc.dy.model.comment.entity
{
   public class ScrollCommentPool
   {
       
      
      private var pool:Vector.<cc.dy.model.comment.entity.ScrollComment>;
      
      private var defaultSize:int;
      
      private var inc:int;
      
      public function ScrollCommentPool(param1:int = 50, param2:int = 20)
      {
         super();
         this.pool = new Vector.<cc.dy.model.comment.entity.ScrollComment>();
         this.defaultSize = param1;
         this.inc = param2;
         this.increase(this.defaultSize);
      }
      
      public function getObject() : cc.dy.model.comment.entity.ScrollComment
      {
         if(this.pool.length == 0)
         {
            this.increase(this.inc);
         }
         return this.pool.pop();
      }
      
      public function returnObject(param1:cc.dy.model.comment.entity.ScrollComment) : void
      {
         if(param1)
         {
            this.pool.push(param1);
         }
      }
      
      private function increase(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1)
         {
            this.pool.push(new cc.dy.model.comment.entity.ScrollComment());
            _loc2_++;
         }
      }
   }
}
