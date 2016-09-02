package cc.dy.view.plug
{
   public class PlugManager
   {
      
      private static var plugManager:cc.dy.view.plug.PlugManager;
       
      
      private var hsView:cc.dy.view.plug.HSPlugView;
      
      private var callBack:Function;
      
      public function PlugManager()
      {
         super();
      }
      
      public static function get instance() : cc.dy.view.plug.PlugManager
      {
         if(plugManager == null)
         {
            plugManager = new cc.dy.view.plug.PlugManager();
         }
         return plugManager;
      }
      
      public function addHSAd(param1:Function) : void
      {
         this.callBack = param1;
         this.hsView = new cc.dy.view.plug.HSPlugView();
         GlobalData.AdLAYER.addChild(this.hsView);
         this.hsView.init(GlobalData.root.stage.stageWidth,GlobalData.root.stage.stageHeight,Param.adUrl,this.__result);
      }
      
      private function __result(param1:int) : void
      {
         if(param1 == 1)
         {
            Param.adState = 0;
            if(this.callBack != null)
            {
               this.callBack(1);
            }
         }
         else if(param1 == 2)
         {
            Param.adState = 0;
            if(this.callBack != null)
            {
               this.callBack(2);
            }
            this.destory();
         }
         if(param1 == 3 || param1 == 4)
         {
            Param.adState = 1;
            if(this.callBack != null)
            {
               this.callBack(3);
            }
         }
      }
      
      public function resize(param1:int, param2:int) : void
      {
         if(this.hsView)
         {
            this.hsView.setAdWh(param1,param2);
         }
      }
      
      public function destory() : void
      {
         if(this.hsView != null && this.hsView.parent != null)
         {
            this.hsView.parent.removeChild(this.hsView);
            this.hsView.destory();
            this.hsView = null;
         }
      }
   }
}
