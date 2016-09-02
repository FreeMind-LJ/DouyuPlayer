package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKnm9WT_2E_o_3A_6f558b12_2D_225e_2D_40cb_2D_b872_2D_cf937dd6e456.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN9CListData9CacheDataEPKhi() : void
   {
      var _loc2_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:int = 0;
      var _loc10_:int = 0;
      var _loc11_:* = 0;
      var _loc12_:int = 0;
      var _loc1_:int = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:int = 0;
      var _loc3_:* = int(ESP);
      _loc2_ = _loc3_;
      _loc4_ = 0;
      _loc5_ = li32(_loc2_ + 4);
      if(_loc5_ != 0)
      {
         _loc6_ = li32(_loc2_ + 8);
         if(_loc6_ != 0)
         {
            _loc4_ = 1;
            if(_loc6_ >= 1)
            {
               _loc7_ = li32(_loc2_);
               _loc8_ = _loc7_ + 4;
               do
               {
                  var _loc9_:* = li32(_loc7_ + 12);
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc9_,_loc3_);
                  ESP = _loc3_;
                  F__ZN11CCommonFunc6RSHashEj();
                  _loc3_ = int(_loc3_ + 16);
                  _loc10_ = eax;
                  si32(_loc10_,_loc7_ + 12);
                  _loc11_ = li8(_loc5_);
                  _loc3_ = int(_loc3_ - 16);
                  si32(12,_loc3_);
                  ESP = _loc3_;
                  F__Znwj();
                  _loc3_ = int(_loc3_ + 16);
                  _loc12_ = eax;
                  _loc1_ = _loc12_ + 8;
                  if(_loc1_ != 0)
                  {
                     _loc9_ = _loc11_ ^ _loc10_;
                     si8(_loc9_,_loc1_);
                  }
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc8_,_loc3_ + 4);
                  si32(_loc12_,_loc3_);
                  ESP = _loc3_;
                  F__ZNSt15_List_node_base4hookEPS_();
                  _loc3_ = int(_loc3_ + 16);
                  _loc5_ = int(_loc5_ + 1);
                  _loc6_ = int(_loc6_ + -1);
                  _loc4_ = 1;
               }
               while(_loc6_ != 0);
               
            }
         }
      }
      eax = _loc4_;
      _loc3_ = _loc2_;
      ESP = _loc3_;
   }
}
