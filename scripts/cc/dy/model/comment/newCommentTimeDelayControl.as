package cc.dy.model.comment
{
   import cc.dy.model.net.Decode;
   import flash.utils.clearTimeout;
   import util.Util;
   import flash.utils.getTimer;
   import cc.dy.view.effect.ColorComentManager;
   import util.$;
   import flash.utils.setTimeout;
   
   public class newCommentTimeDelayControl
   {
       
      
      public var _strdecode:Decode;
      
      public var dataStr:String;
      
      public var my_uid:int;
      
      public var myblacklist:Array;
      
      public var index:uint;
      
      public function newCommentTimeDelayControl(param1:String, param2:int, param3:Array, param4:int)
      {
         super();
         this.dataStr = param1;
         this.my_uid = param2;
         this.myblacklist = param3;
         this.index = setTimeout(this.showComment,param4 * 1000);
      }
      
      public function showComment() : void
      {
         var _loc5_:String = null;
         var _loc6_:Boolean = false;
         clearTimeout(this.index);
         this._strdecode = new Decode();
         this._strdecode.Parse(this.dataStr);
         var _loc1_:int = this._strdecode.GetItemAsInt("uid");
         var _loc2_:String = this._strdecode.GetItem("txt");
         var _loc3_:int = this._strdecode.GetItemAsInt("col");
         var _loc4_:String = this._strdecode.GetItem("nn");
         if(this.myblacklist.indexOf(_loc1_.toString()) == -1)
         {
            _loc5_ = Util.facereplace(_loc2_);
            if(_loc5_ != "")
            {
               _loc6_ = _loc1_ == this.my_uid?true:false;
               if(_loc3_ == 0)
               {
                  CommentTime.instance.start(new SingleCommentData(_loc5_,Util.getColor(_loc3_),GlobalData.textSizeValue,getTimer(),_loc6_,GlobalData.danmuModel));
               }
               else
               {
                  ColorComentManager.instance.addColorData({
                     "type":_loc3_,
                     "sender":_loc4_,
                     "content":_loc5_
                  });
               }
            }
         }
         $.asTojs("room_data_chat2",this.dataStr);
      }
   }
}
