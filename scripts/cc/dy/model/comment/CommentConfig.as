package cc.dy.model.comment
{
   import flash.text.Font;
   import flash.filters.GlowFilter;
   import flash.filters.DropShadowFilter;
   
   public class CommentConfig
   {
      
      private static var _instance:cc.dy.model.comment.CommentConfig = null;
       
      
      private var _width:int = 540;
      
      private var _height:int = 400;
      
      private var _spwidth:int = 540;
      
      private var _spheight:int = 399;
      
      private var _visible:Boolean = true;
      
      public var autoResize:Boolean = true;
      
      public var bold:Boolean = false;
      
      private var defstr:String = "微软雅黑";
      
      private var _font:String = "微软雅黑";
      
      public var sizee:Number = 1;
      
      private var filters:Array;
      
      public var filter:Array;
      
      public var alpha:Number = 1;
      
      public var spsizelock:Boolean = true;
      
      public var spcacheAsBitmap:Boolean = true;
      
      public var speede:Number = 0.7;
      
      public function CommentConfig()
      {
         var _loc1_:Font = null;
         this.filters = [[new GlowFilter(0,0.7,3,3)],[new DropShadowFilter(2,45,0,0.6)],[new GlowFilter(0,0.85,4,4,3,1,false,false)]];
         super();
         if(!this._font || !this.defstr)
         {
            for each(_loc1_ in Font.enumerateFonts(true))
            {
               if(_loc1_.fontName == "黑体" || _loc1_.fontName == "SimHei")
               {
                  this.defstr = _loc1_.fontName;
                  break;
               }
               if(_loc1_.fontName == "STXihei")
               {
                  this.defstr = _loc1_.fontName;
                  break;
               }
               if(_loc1_.fontName.indexOf("正黑") > -1)
               {
                  this.defstr = _loc1_.fontName;
                  break;
               }
            }
         }
         if(!this.defstr)
         {
            this.defstr = "黑体";
         }
         if(!this._font)
         {
            this._font = this.defstr;
         }
         this.filterIndex = 0;
      }
      
      public static function get instance() : cc.dy.model.comment.CommentConfig
      {
         if(_instance == null)
         {
            _instance = new cc.dy.model.comment.CommentConfig();
         }
         return _instance;
      }
      
      public function get width() : int
      {
         return this._width;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get spwidth() : int
      {
         return this._spwidth;
      }
      
      public function get spheight() : int
      {
         return this._spheight;
      }
      
      public function set filterIndex(param1:int) : void
      {
         if(param1 >= 0)
         {
            this.filter = this.filters[param1];
         }
      }
      
      public function get font() : String
      {
         return this._font;
      }
      
      public function set font(param1:String) : void
      {
         this._font = param1;
      }
      
      public function get visible() : Boolean
      {
         return this._visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._visible = param1;
      }
   }
}
