package cc.dy.model.comment
{
   import cc.dy.model.net.Decode;
   import cc.dy.model.net.Encode;
   import flash.utils.clearTimeout;
   import util.$;
   import util.Util;
   import flash.utils.getTimer;
   import cc.dy.view.effect.ColorComentManager;
   import flash.utils.setTimeout;
   
   public class CommentTimeDelayControl
   {
       
      
      public var _strdecode:Decode;
      
      public var my_uid:int;
      
      public var myblacklist:Array;
      
      public var index:uint;
      
      public function CommentTimeDelayControl(param1:Decode, param2:int, param3:Array, param4:int)
      {
         super();
         this._strdecode = param1;
         this.my_uid = param2;
         this.myblacklist = param3;
         this.index = setTimeout(this.showComment,param4 * 1000);
      }
      
      public function showComment() : void
      {
         var _loc23_:Encode = null;
         var _loc24_:String = null;
         var _loc25_:String = null;
         var _loc26_:String = null;
         var _loc27_:Boolean = false;
         var _loc28_:Encode = null;
         clearTimeout(this.index);
         var _loc1_:int = this._strdecode.GetItemAsInt("rescode");
         var _loc2_:int = this._strdecode.GetItemAsInt("time");
         var _loc3_:int = this._strdecode.GetItemAsInt("sender");
         var _loc4_:int = this._strdecode.GetItemAsInt("receiver");
         var _loc5_:String = this._strdecode.GetItem("content");
         var _loc6_:String = this._strdecode.GetItem("scope");
         var _loc7_:String = this._strdecode.GetItem("snick");
         var _loc8_:String = this._strdecode.GetItem("dnick");
         var _loc9_:int = this._strdecode.GetItemAsInt("cd");
         var _loc10_:String = this._strdecode.GetItem("sui");
         var _loc11_:String = this._strdecode.GetItem("chatmsgid");
         var _loc12_:int = this._strdecode.GetItemAsInt("maxl");
         var _loc13_:int = this._strdecode.GetItemAsInt("col");
         var _loc14_:int = this._strdecode.GetItemAsInt("ct");
         GlobalData.chatMaxChars = _loc12_;
         var _loc15_:Decode = new Decode();
         _loc15_.Parse(_loc10_);
         var _loc16_:int = _loc15_.GetItemAsInt("rg");
         var _loc17_:int = _loc15_.GetItemAsInt("pg");
         var _loc18_:int = _loc15_.GetItemAsInt("m_deserve_lev");
         var _loc19_:int = _loc15_.GetItemAsInt("cq_cnt");
         var _loc20_:int = _loc15_.GetItemAsInt("best_dlev");
         var _loc21_:int = _loc15_.GetItemAsInt("level");
         var _loc22_:int = _loc15_.GetItemAsInt("gt");
         if(_loc1_ == 0)
         {
            _loc23_ = new Encode();
            _loc23_.AddItem("type","chatmessage");
            _loc23_.AddItem_int("rescode",_loc1_);
            if(_loc3_)
            {
               _loc23_.AddItem("sender_nickname",_loc7_);
               _loc23_.AddItem_int("sender",_loc3_);
            }
            else
            {
               _loc23_.AddItem_int("sender",_loc3_);
            }
            _loc23_.AddItem_int("receiver",_loc4_);
            if(_loc4_ != 0)
            {
               _loc23_.AddItem("receiver_nickname",_loc8_);
            }
            else
            {
               _loc23_.AddItem("receiver_nickname","");
            }
            _loc23_.AddItem("content",_loc5_);
            _loc23_.AddItem_int("roomgroup",1);
            _loc23_.AddItem_int("cd",_loc9_);
            _loc23_.AddItem_int("sender_rg",_loc16_);
            _loc23_.AddItem_int("sender_pg",_loc17_);
            if(_loc6_ == "private")
            {
               _loc23_.AddItem("chatmsgid",_loc11_);
               _loc24_ = _loc23_.Get_SttString();
               $.asTojs("room_data_chatpri",_loc24_);
            }
            else
            {
               _loc23_.AddItem_int("time",_loc2_);
               _loc23_.AddItem_int("maxl",_loc12_);
               _loc23_.AddItem_int("m_deserve_lev",_loc18_);
               _loc23_.AddItem("chatmsgid",_loc11_);
               _loc23_.AddItem_int("cq_cnt",_loc19_);
               _loc23_.AddItem_int("col",_loc13_);
               _loc23_.AddItem_int("ct",_loc14_);
               _loc23_.AddItem_int("best_dlev",_loc20_);
               _loc23_.AddItem_int("level",_loc21_);
               _loc23_.AddItem_int("gt",_loc22_);
               _loc25_ = _loc23_.Get_SttString();
               $.asTojs("room_data_chat",_loc25_);
               if(this.myblacklist.indexOf(_loc3_.toString()) == -1)
               {
                  _loc26_ = Util.facereplace(_loc5_);
                  if(_loc26_ != "")
                  {
                     _loc27_ = _loc3_ == this.my_uid?true:false;
                     if(_loc13_ == 0)
                     {
                        CommentTime.instance.start(new SingleCommentData(_loc26_,Util.getColor(_loc13_),GlobalData.textSizeValue,getTimer(),_loc27_,GlobalData.danmuModel));
                     }
                     else
                     {
                        ColorComentManager.instance.addColorData({
                           "type":_loc13_,
                           "sender":_loc7_,
                           "content":_loc26_
                        });
                     }
                  }
               }
            }
         }
         else if(_loc1_ == 289 || _loc1_ == 290 || _loc1_ == 294)
         {
            _loc28_ = new Encode();
            _loc28_.AddItem("type","chatmessage");
            _loc28_.AddItem_int("rescode",_loc1_);
            if(_loc3_)
            {
               _loc28_.AddItem("sender_nickname",_loc7_);
               _loc28_.AddItem_int("sender",_loc3_);
            }
            else
            {
               _loc28_.AddItem_int("sender",_loc3_);
            }
            $.asTojs("room_data_chat",_loc28_.Get_SttString());
         }
         else if(_loc1_ == 2)
         {
            $.asTojs("room_data_sys","您已被禁言");
         }
         else if(_loc1_ == 5)
         {
            $.asTojs("room_data_sys","全站禁言");
         }
         else if(_loc1_ == 208)
         {
            $.asTojs("room_data_sys","目标用户未找到");
         }
         else if(_loc1_ == 206)
         {
            $.asTojs("room_data_per","平民5及以下等级用户禁止私聊，赶紧升级吧~");
         }
      }
   }
}
