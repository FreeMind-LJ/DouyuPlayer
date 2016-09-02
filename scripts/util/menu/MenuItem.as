package util.menu
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.events.MouseEvent;
   import ui.menuUp;
   import ui.menuOver;
   import flash.text.TextFormatAlign;
   
   public class MenuItem extends Sprite
   {
       
      
      private var action:String;
      
      private var labelText:TextField;
      
      private var upState:Sprite;
      
      private var overState:Sprite;
      
      private var colorUp:int;
      
      private var colorOver:int;
      
      private var itemName:String;
      
      private var lWidth:int;
      
      private var lHeight:int;
      
      private var textFormatUp:TextFormat;
      
      private var textFormatOver:TextFormat;
      
      public function MenuItem(param1:String, param2:String, param3:int, param4:int, param5:int, param6:int)
      {
         this.textFormatUp = new TextFormat("_sans",12,8026746,false,false,null,null,null,TextFormatAlign.CENTER);
         this.textFormatOver = new TextFormat("_sans",12,8026746,false,false,null,null,null,TextFormatAlign.CENTER);
         super();
         this.action = param1;
         this.itemName = param2;
         this.lWidth = param3;
         this.lHeight = param4;
         this.colorUp = param5;
         this.colorOver = param6;
         this.createItem();
         this._up();
         this.addEventListener(MouseEvent.ROLL_OVER,this._over,false,0,true);
         this.addEventListener(MouseEvent.ROLL_OUT,this._up,false,0,true);
         this.addEventListener(MouseEvent.CLICK,this._clicked,false,0,true);
      }
      
      public function destroy() : void
      {
         this.removeEventListener(MouseEvent.ROLL_OVER,this._over);
         this.removeEventListener(MouseEvent.ROLL_OUT,this._up);
         this.removeEventListener(MouseEvent.CLICK,this._clicked);
      }
      
      private function _clicked(param1:MouseEvent) : void
      {
         dispatchEvent(new ItemClickEvent(ItemClickEvent.ITEM_CLICK,0,this.action));
      }
      
      private function _up(param1:MouseEvent = null) : void
      {
         this.labelText.setTextFormat(this.textFormatUp);
         this.overState.visible = false;
         this.upState.visible = true;
      }
      
      private function _over(param1:MouseEvent) : void
      {
         this.labelText.setTextFormat(this.textFormatOver);
         this.overState.visible = true;
         this.upState.visible = false;
      }
      
      private function createItem() : void
      {
         this.labelText = new TextField();
         this.labelText.text = this.itemName;
         this.labelText.setTextFormat(this.textFormatUp);
         this.labelText.width = this.lWidth;
         this.labelText.height = this.lHeight;
         this.labelText.y = 2;
         this.labelText.x = 0;
         this.upState = new menuUp();
         this.upState.x = int((this.lWidth - this.upState.width) / 2);
         this.overState = new menuOver();
         this.overState.x = int((this.lWidth - this.upState.width) / 2);
         this.addChild(this.overState);
         this.addChild(this.upState);
         this.addChild(this.labelText);
         this.mouseChildren = false;
      }
   }
}
