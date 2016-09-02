package cc.dy.view.effect
{
   import flash.display.Sprite;
   import util.ResManager;
   import flash.display.MovieClip;
   import util.$;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class DoubleHitCellView extends Sprite
   {
       
      
      public function DoubleHitCellView(param1:Object, param2:String)
      {
         super();
         var _loc3_:MovieClip = ResManager.instance.getResByName(param1.flag) as MovieClip;
         if(_loc3_ == null)
         {
            $.jscall("console.log","DoubleHitCellView: null",param1.flag);
            return;
         }
         addChild(_loc3_);
         if(param1.swf_x != "")
         {
            _loc3_.x = int(param1.swf_x);
         }
         if(param1.swf_y != "")
         {
            _loc3_.y = int(param1.swf_y);
         }
         var _loc4_:TextField = _loc3_["txt"] as TextField;
         if(_loc4_)
         {
            _loc4_.wordWrap = false;
            _loc4_.autoSize = TextFieldAutoSize.LEFT;
            this.mouseChildren = false;
            _loc4_.htmlText = param2;
            if(param1.font_x != "")
            {
               _loc4_.x = int(param1.font_x);
            }
            if(param1.font_y != "")
            {
               _loc4_.y = int(param1.font_y);
            }
         }
         else
         {
            $.jscall("console.log","DoubleHitCellView: txt null",param1.flag);
         }
         var _loc5_:Sprite = _loc3_["bg_center"] as Sprite;
         var _loc6_:Sprite = _loc3_["bg_behind"] as Sprite;
         if(_loc5_)
         {
            if(_loc4_)
            {
               _loc5_.width = _loc4_.textWidth + 20;
            }
         }
         else
         {
            $.jscall("console.log","DoubleHitCellView: bg_center null",param1.flag);
         }
         if(_loc6_)
         {
            if(_loc5_)
            {
               _loc6_.x = _loc5_.x + _loc5_.width;
            }
         }
         else
         {
            $.jscall("console.log","DoubleHitCellView: bg_behind null",param1.flag);
         }
      }
   }
}
