package cc.dy.model.comment.entity.base
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   
   public class SimpleCommentEngine extends Sprite
   {
       
      
      private var _width:Number = 0;
      
      private var _height:Number = 0;
      
      private var _debText:TextField;
      
      public function SimpleCommentEngine()
      {
         super();
         this.mouseEnabled = false;
         this.mouseChildren = false;
      }
      
      protected function initData(param1:String, param2:Number, param3:int, param4:Boolean, param5:int, param6:String, param7:Boolean = true) : void
      {
         if(this._debText == null)
         {
            this._debText = new TextField();
            this._debText.autoSize = TextFieldAutoSize.LEFT;
            this._debText.type = TextFieldType.DYNAMIC;
            this._debText.selectable = false;
            this._debText.mouseEnabled = false;
            this._debText.cacheAsBitmap;
            this.addChild(this._debText);
            this.cacheAsBitmap = true;
         }
         var _loc8_:TextFormat = new TextFormat(param1,param2,param3,param4);
         _loc8_.bold = true;
         _loc8_.font = GlobalData.FontStr;
         this._debText.defaultTextFormat = _loc8_;
         this._debText.text = param6;
         graphics.clear();
         if(param5 > -1)
         {
            graphics.lineStyle(3,param5);
            graphics.drawRect(0,0,this._debText.textWidth + 3,this._debText.textHeight + 3);
         }
      }
      
      protected function quickSet(param1:String) : void
      {
         if(this._debText)
         {
            this._debText.text = param1;
         }
      }
      
      override public function get width() : Number
      {
         return this._debText.width;
      }
      
      override public function get height() : Number
      {
         return this._debText.height;
      }
   }
}
