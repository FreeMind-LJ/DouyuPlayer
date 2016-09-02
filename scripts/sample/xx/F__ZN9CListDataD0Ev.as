package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKnm9WT_2E_o_3A_6f558b12_2D_225e_2D_40cb_2D_b872_2D_cf937dd6e456.*;
   
   public function F__ZN9CListDataD0Ev() : void
   {
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = int(__ZTV9CListData + 8);
      _loc4_ = li32(_loc1_);
      si32(_loc3_,_loc4_);
      _loc5_ = _loc4_ + 4;
      _loc6_ = li32(_loc4_ + 4);
      if(_loc5_ != _loc6_)
      {
         do
         {
            _loc3_ = li32(_loc6_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F__ZdlPv();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = _loc3_;
         }
         while(_loc5_ != _loc3_);
         
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__ZdlPv();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
