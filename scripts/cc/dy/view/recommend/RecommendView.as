package cc.dy.view.recommend
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import com.greensock.TweenLite;
   import flash.events.MouseEvent;
   import flash.display.DisplayObjectContainer;
   import util.UserBehaviorLog;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.text.TextFormat;
   import util.Util;
   import ui.EndCover;
   
   public class RecommendView extends Sprite
   {
      
      public static const PIC_NUMBER:int = 2;
       
      
      private var _cover:RoomCover;
      
      private var loadTxt:TextField;
      
      private var failTxt:TextField;
      
      private var _coverData:Array;
      
      private var _mask:RoompicMask;
      
      public var endCover:Bitmap;
      
      private var _appRecommend:MovieClip;
      
      private var _dlBtn:SimpleButton;
      
      public function RecommendView()
      {
         var _loc1_:int = 0;
         this._mask = new RoompicMask();
         super();
         if(Param.roomLink == null || Param.roomLink == "")
         {
            this._cover = new RoomCover();
            this.loadTxt = this._cover.loadtxt;
            this.failTxt = this._cover.failtxt;
            this.loadTxt.visible = false;
            this.failTxt.visible = false;
            this.loadTxt.mouseEnabled = false;
            this.failTxt.mouseEnabled = false;
            this._appRecommend = this._cover.appRecommend;
            this._appRecommend.visible = false;
            this._dlBtn = this._appRecommend.dlBtn;
            this._dlBtn.addEventListener(MouseEvent.CLICK,this.dlHandler);
            if(Param.IsIndex)
            {
               this._cover.Homepage.visible = false;
            }
            else
            {
               this._cover.Homepage.addEventListener(MouseEvent.CLICK,this.goHomePage);
            }
            addChild(this._cover);
            _loc1_ = 0;
            while(_loc1_ < PIC_NUMBER)
            {
               this._cover["Room_name" + _loc1_].text = "正在加载数据...";
               _loc1_++;
            }
         }
         else
         {
            this.endCover = new Bitmap(new EndCover());
            addChild(this.endCover);
         }
      }
      
      public function initPanel() : void
      {
         this.alpha = 0;
         TweenLite.to(this,2,{"alpha":1});
      }
      
      public function initData(param1:Array) : void
      {
         var roomName:String = null;
         var rnTf:TextField = null;
         var online:int = 0;
         var onlineStr:String = null;
         var nickname:String = null;
         var nnTf:TextField = null;
         var gn:String = null;
         var rtTf:TextField = null;
         var coverData:Array = param1;
         this._coverData = coverData;
         var i:int = 0;
         while(i < PIC_NUMBER)
         {
            if(this._coverData[i])
            {
               roomName = this.htmlDecodeChar(this._coverData[i].room_name);
               rnTf = this._cover["Room_name" + i] as TextField;
               this.limitTfChars(rnTf,roomName,rnTf.width);
               online = this._coverData[i].online as int;
               if(online >= 10000)
               {
                  onlineStr = (online / 10000).toFixed(1) + "万";
               }
               else
               {
                  onlineStr = online + "";
               }
               this._cover["Room_num" + i].text = onlineStr;
               this.limitTfChars(this._cover["Room_num" + i],onlineStr,100);
               nickname = this._coverData[i].nickname;
               nnTf = this._cover["Room_master" + i] as TextField;
               this.limitTfChars(nnTf,nickname,nnTf.width);
               gn = this.htmlDecodeChar(this._coverData[i].game_name);
               rtTf = this._cover["Room_type" + i] as TextField;
               this.limitTfChars(rtTf,gn,rtTf.width);
               with(this._cover["Room_pic" + i] as MovieClip)
               {
                  
                  new ImageLoader(_coverData[i].room_src,{
                     "container":_cover["Room_pic" + i],
                     "smoothing":true,
                     "width":width,
                     "height":height,
                     "scaleMode":"proportionalInside"
                  }).load();
                  buttonMode = true;
                  addEventListener(MouseEvent.ROLL_OVER,picMouseOver);
                  addEventListener(MouseEvent.ROLL_OUT,picMouseOut);
                  addEventListener(MouseEvent.CLICK,onEnterRoom);
               }
            }
            else
            {
               this._cover["Room_name" + i].text = "暂无推荐";
            }
            i++;
         }
      }
      
      protected function picMouseOver(param1:MouseEvent) : void
      {
         var _loc2_:DisplayObjectContainer = param1.currentTarget as DisplayObjectContainer;
         if(!_loc2_.contains(this._mask))
         {
            _loc2_.addChild(this._mask);
            TweenLite.killTweensOf(this._mask);
            this._mask.alpha = 0;
            this._mask.y = 60;
            TweenLite.to(this._mask,0.2,{
               "y":0,
               "alpha":1
            });
         }
      }
      
      protected function picMouseOut(param1:MouseEvent) : void
      {
         var container:DisplayObjectContainer = null;
         var event:MouseEvent = param1;
         container = event.currentTarget as DisplayObjectContainer;
         if(container.contains(this._mask))
         {
            TweenLite.killTweensOf(this._mask);
            TweenLite.to(this._mask,0.2,{
               "y":60,
               "alpha":0,
               "onComplete":function():void
               {
                  container.removeChild(_mask);
               }
            });
         }
      }
      
      protected function onEnterRoom(param1:MouseEvent) : void
      {
         UserBehaviorLog.getInstance().addRealLog(UserBehaviorLog.POINT_ID_RECOMMEND_ENTER_ROOM);
         var _loc2_:int = int(this._mask.parent.name.replace("Room_pic",""));
         navigateToURL(new URLRequest(GlobalData.prefix + Param.DomainName + "/" + this._coverData[_loc2_].room_id),"_self");
      }
      
      protected function goHomePage(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(GlobalData.prefix + Param.DomainName),"_self");
      }
      
      private function htmlDecodeChar(param1:String) : String
      {
         return param1.toString().replace(/&lt;/g,"<").replace(/&gt;/g,">").replace(/&#0*39;/g,"\'").replace(/&quot;/g,"\"").replace(/&amp;/g,"&");
      }
      
      public function hideAllTxt() : void
      {
         if(Param.roomLink == null || Param.roomLink == "")
         {
            this.loadTxt.visible = false;
            this.failTxt.visible = false;
         }
      }
      
      public function showLoad() : void
      {
         if(Param.roomLink == null || Param.roomLink == "")
         {
            this.loadTxt.visible = true;
            this.failTxt.visible = false;
         }
      }
      
      public function showFail() : void
      {
         if(Param.roomLink == null || Param.roomLink == "")
         {
            this.loadTxt.visible = false;
            this.failTxt.visible = true;
         }
      }
      
      public function showAppRecommend(param1:Boolean) : void
      {
         if(this._appRecommend)
         {
            if(param1)
            {
               this._appRecommend.visible = true;
            }
            else
            {
               this._appRecommend.visible = false;
            }
         }
      }
      
      private function limitTfChars(param1:TextField, param2:String, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc8_:int = 0;
         var _loc4_:int = param2.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            param1.text = param2.substr(0,_loc6_ + 1);
            if(param1.textWidth >= param3 - 4)
            {
               if(_loc6_ > 2)
               {
                  _loc5_ = true;
               }
               break;
            }
            _loc6_++;
         }
         if(!_loc5_)
         {
            param1.text = param2;
         }
         else
         {
            _loc8_ = 0;
            while(_loc8_ < 3)
            {
               param1.text = param2.substr(0,_loc6_ - _loc8_) + "…";
               if(param1.textWidth <= param3 - 4)
               {
                  break;
               }
               _loc8_++;
            }
         }
         var _loc7_:TextFormat = param1.defaultTextFormat;
         _loc7_.font = "微软雅黑";
         param1.setTextFormat(_loc7_);
      }
      
      private function dlHandler(param1:MouseEvent) : void
      {
         Util.openLink(GlobalData.prefix + Param.DomainName + "/client?platform=2","_self");
      }
   }
}
