package util.menu
{
   import flash.display.Sprite;
   import flash.display.InteractiveObject;
   import flash.events.MouseEvent;
   
   public class Menu extends Sprite
   {
      
      public static var instance:util.menu.Menu;
       
      
      private var itemNames:Array;
      
      private var actionArray:Array;
      
      private var callBack:Function;
      
      private var colorUp:int;
      
      private var colorOver:int;
      
      private var lWidth:int = 100;
      
      private var lHeight:int;
      
      private var textHeight:int;
      
      private var source:InteractiveObject;
      
      public function Menu(param1:Array, param2:Array, param3:InteractiveObject, param4:Function, param5:int, param6:int, param7:int, param8:int)
      {
         super();
         this.itemNames = param1;
         this.actionArray = param2;
         this.callBack = param4;
         this.colorUp = param5;
         this.colorOver = param6;
         this.lWidth = param7;
         this.lHeight = param8;
         this.source = param3;
         this.createList();
      }
      
      public static function show(param1:Array, param2:Array, param3:InteractiveObject, param4:Function, param5:int = 0, param6:int = 5592405, param7:int = 100, param8:int = 23) : void
      {
         instance = new util.menu.Menu(param1,param2,param3,param4,param5,param6,param7,param8);
         instance._show();
      }
      
      public static function setPosition(param1:int, param2:int, param3:Sprite = null) : void
      {
         instance.x = param1;
         instance.y = param2;
         if(param3 != null)
         {
            param3.addChild(instance);
         }
      }
      
      public static function refresh() : void
      {
         if(instance != null)
         {
            instance.destroy();
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:MenuItem = null;
         GlobalData.root.stage.removeEventListener(MouseEvent.CLICK,this._stageClicked);
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
         while(this.numChildren > 0)
         {
            _loc1_ = MenuItem(this.getChildAt(0));
            _loc1_.removeEventListener(ItemClickEvent.ITEM_CLICK,this.__itemClicked);
            this.removeChild(_loc1_);
            _loc1_.destroy();
            _loc1_ = null;
         }
         this.source = null;
         this.callBack = null;
         instance = null;
      }
      
      private function createList() : void
      {
         var _loc2_:MenuItem = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.itemNames.length)
         {
            _loc2_ = new MenuItem(this.actionArray[_loc1_],this.itemNames[_loc1_],this.lWidth,this.lHeight,this.colorUp,this.colorOver);
            _loc2_.y = this.lHeight * _loc1_ + 6;
            addChild(_loc2_);
            _loc2_.addEventListener(ItemClickEvent.ITEM_CLICK,this.__itemClicked,false,0,true);
            _loc1_++;
         }
      }
      
      private function __itemClicked(param1:ItemClickEvent) : void
      {
         this.callBack(param1.getActionString());
         this.destroy();
      }
      
      private function _show(param1:Sprite = null) : void
      {
         var _loc2_:Sprite = null;
         if(param1 == null)
         {
            _loc2_ = GlobalData.TIPLAYER;
         }
         else
         {
            _loc2_ = param1;
         }
         if(GlobalData.root.stage.stageWidth < this.x + _loc2_.mouseX + this.width)
         {
            this.x = _loc2_.mouseX - this.width;
         }
         else
         {
            this.x = _loc2_.mouseX;
         }
         if(GlobalData.root.stage.stageHeight < this.y + _loc2_.mouseY + this.height)
         {
            this.y = _loc2_.mouseY - this.height;
         }
         else
         {
            this.y = _loc2_.mouseY;
         }
         this._addStateListener();
      }
      
      private function _addStateListener() : void
      {
         GlobalData.root.stage.addEventListener(MouseEvent.CLICK,this._stageClicked,false,0,true);
      }
      
      private function _stageClicked(param1:MouseEvent) : void
      {
         if(param1.target != this.source)
         {
            this.destroy();
         }
      }
   }
}
