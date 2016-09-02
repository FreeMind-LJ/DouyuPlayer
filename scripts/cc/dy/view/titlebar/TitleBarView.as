package cc.dy.view.titlebar
{
   public class TitleBarView extends TitleBar
   {
       
      
      public function TitleBarView()
      {
         super();
         cacheAsBitmap = true;
      }
      
      public function resize() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(stage)
         {
            _loc1_ = stage.stageWidth;
            _loc2_ = stage.stageHeight;
            bg.width = _loc1_;
            follow.x = unfollow.x = _loc1_ - 70;
            fav.x = follow.x - fav.textWidth - 20;
            favBg.width = fav.textWidth + 14;
            favBg.x = fav.x - 2;
         }
      }
   }
}
