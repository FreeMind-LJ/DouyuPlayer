package util
{
   import flash.external.ExternalInterface;
   import flash.utils.Dictionary;
   
   public class $
   {
      
      private static var jkDic:Dictionary = new Dictionary();
       
      
      public function $()
      {
         super();
      }
      
      public static function binsert(param1:Array, param2:Object, param3:Function) : void
      {
         var _loc4_:int = bsearch(param1,param2,param3);
         param1.splice(_loc4_,0,param2);
      }
      
      public static function bsearch(param1:Array, param2:Object, param3:Function) : int
      {
         var _loc6_:int = 0;
         if(param1.length == 0)
         {
            return 0;
         }
         if(param3(param2,param1[0]) < 0)
         {
            return 0;
         }
         if(param3(param2,param1[param1.length - 1]) >= 0)
         {
            return param1.length;
         }
         var _loc4_:int = 0;
         var _loc5_:int = param1.length - 1;
         var _loc7_:int = 0;
         while(_loc4_ <= _loc5_)
         {
            _loc6_ = Math.floor((_loc4_ + _loc5_ + 1) / 2);
            _loc7_++;
            if(param3(param2,param1[_loc6_ - 1]) >= 0 && param3(param2,param1[_loc6_]) < 0)
            {
               return _loc6_;
            }
            if(param3(param2,param1[_loc6_ - 1]) < 0)
            {
               _loc5_ = _loc6_ - 1;
            }
            else if(param3(param2,param1[_loc6_]) >= 0)
            {
               _loc4_ = _loc6_;
            }
            else
            {
               throw new Error("查找错误.");
            }
            if(_loc7_ > 1000)
            {
               throw new Error("查找超时.");
            }
         }
         return -1;
      }
      
      public static function jscall(... rest) : *
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(ExternalInterface.available)
         {
            _loc2_ = rest.toString();
            _loc3_ = _loc2_.indexOf("console.log") != -1?true:false;
            if(_loc3_ && !GlobalData.isDebug)
            {
               return;
            }
            return ExternalInterface.call.apply(null,rest);
         }
      }
      
      public static function asTojs(... rest) : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         var _loc5_:String = null;
         if(ExternalInterface.available)
         {
            _loc2_ = rest.toString();
            _loc3_ = _loc2_.indexOf("console.log") != -1?true:false;
            if(_loc3_ && !GlobalData.isDebug)
            {
               return;
            }
            if(GlobalData.OldModel)
            {
               _loc4_ = rest[0];
               _loc5_ = jkDic[_loc4_.toString()];
               if(_loc5_ != "" && _loc5_ != null)
               {
                  rest[0] = _loc5_;
               }
               ExternalInterface.call.apply(null,rest);
               return;
            }
            ExternalInterface.call("_ACJ_",rest);
         }
      }
      
      private static function jsonCallback(param1:Object, param2:int, param3:Array) : *
      {
         return JSON.stringify(param1);
      }
      
      public static function initDictionary() : void
      {
         jkDic["room_bus_showwatchtipdown"] = "remind_obj.clear_show";
         jkDic["room_data_chat2"] = "BarrageReturn";
         jkDic["room_data_chatpri"] = "return_pravite_msg";
         jkDic["room_data_chat"] = "returnmsg";
         jkDic["room_data_sys"] = "return_sys_msg";
         jkDic["room_data_per"] = "return_pravite_msg";
         jkDic["room_bus_showwatchtip"] = "remind_obj.clear_login_show";
         jkDic["room_bus_login"] = "sendlog";
         jkDic["room_login_show"] = "open_login";
         jkDic["room_bus_showwatchtip"] = "remind_obj.clear_login_show";
         jkDic["room_bus_phock"] = "isopen_chat";
         jkDic["room_bus_pagescr"] = "page_scrn";
         jkDic["room_data_gift"] = "gift_obj.retutn_gift";
         jkDic["room_data_setadm"] = "return_setadmin";
         jkDic["room_data_admfail"] = "black_admin";
         jkDic["room_data_state"] = "super_close_room_tips";
         jkDic["room_data_brocast"] = "broadcast_show";
         jkDic["room_data_nstip"] = "remind_obj.senior_remind";
         jkDic["room_data_nstip2"] = "remind_obj.new_remind";
         jkDic["room_data_buycq"] = "cq_obj.buy_msg";
         jkDic["room_bus_comcall"] = "common_call";
         jkDic["room_data_cqrank"] = "cq_obj.rank";
         jkDic["room_data_giftbat2"] = "roomBatterFxRender";
         jkDic["room_data_olyw"] = "box_obj.Luck_Burst";
         jkDic["room_data_giftbat1"] = "live_gift_batter";
         jkDic["room_data_beastrep"] = "beastReply";
         jkDic["room_data_illchange"] = "return_showIllegalRemind";
         jkDic["room_data_cqrankupdate"] = "cq_obj.rank_update";
         jkDic["room_data_ulgrow"] = "user_level_grow";
         jkDic["room_data_ulico"] = "getYCIconTip";
         jkDic["room_data_schat"] = "superBarrage.addHtml";
         jkDic["room_data_beastrec"] = "beastReceived";
         jkDic["room_data_ancpoints"] = "room_anchor_points";
         jkDic["room_dycookie_set"] = "setCookie";
         jkDic["room_data_getdid"] = "ad_obj.get_device_id";
         jkDic["room_bus_clswatchtip"] = "remind_obj.clear_allwatch_show";
         jkDic["room_data_login"] = "return_tourist";
         jkDic["room_bus_phobi"] = "isshow_chat";
         jkDic["room_data_userc"] = "room_usercount";
         jkDic["room_data_sererr"] = "server_error";
         jkDic["room_data_flaerr"] = "flash_error";
         jkDic["room_data_brocast"] = "broadcast_show";
         jkDic["room_data_gift"] = "gift_obj.retutn_gift";
         jkDic["room_data_tasklis"] = "task_obj.return_task_list";
         jkDic["room_data_taskcou"] = "task_obj.return_task_num";
         jkDic["room_data_taskrec"] = "task_obj.return_reward";
         jkDic["room_data_tasksign"] = "task_obj.return_sign";
         jkDic["room_data_chest"] = "box_obj.show_time";
         jkDic["room_data_onekeyacc"] = "return_onekeyblack";
         jkDic["room_data_balance"] = "gift_obj.balance";
         jkDic["room_data_chatcd"] = "msg_obj.msg_cd";
         jkDic["room_data_chatrep"] = "return_chatreport";
         jkDic["room_data_cqrank"] = "cq_obj.rank";
         jkDic["room_data_letter"] = "return_recevice_pm";
         jkDic["room_data_ycchange"] = "return_yc";
         jkDic["room_data_info"] = "show_obj.info_show";
         jkDic["room_data_chestquery"] = "query_gift_pkg_info";
         jkDic["room_bus_login2"] = "loginBranch";
         jkDic["room_data_expchange"] = "ExprienceUpdate";
         jkDic["room_data_rankgap"] = "rank_gap_tip";
         jkDic["room_data_chatinit"] = "initChatMessage";
         jkDic["room_data_petrec"] = "petReceived";
         jkDic["room_reg_show"] = "open_reg";
      }
   }
}
