package cc.dy.model.comment
{
   public class SingleCommentData
   {
      
      private static const QUICK_SET_COMPARE:Array = ["color","size"];
       
      
      public var isChecked:Boolean = false;
      
      public var on:Boolean = false;
      
      public var border:Boolean = false;
      
      private var _text:String;
      
      private var _color:int;
      
      private var _size:int;
      
      public var stime:Number;
      
      public var type:int;
      
      public var deleted:Boolean = false;
      
      public function SingleCommentData(param1:String, param2:int, param3:int, param4:int, param5:Boolean = false, param6:int = 1)
      {
         super();
         this._text = param1;
         this._color = param2;
         this._size = param3;
         this.border = param5;
         this.stime = param4;
         this.type = param6;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get size() : int
      {
         return this._size;
      }
      
      public function canQuickSet(param1:SingleCommentData) : Boolean
      {
         var _loc2_:String = null;
         if(this.border || param1.border)
         {
            return false;
         }
         for each(_loc2_ in QUICK_SET_COMPARE)
         {
            if(this[_loc2_] != param1[_loc2_])
            {
               return false;
            }
         }
         return true;
      }
   }
}
