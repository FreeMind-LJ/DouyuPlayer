package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccvV9AI3_2E_o_3A_da20dbdf_2D_caa3_2D_4453_2D_b603_2D_506343b80641.*;
   
   public function _wrap_sub_16(param1:int) : int
   {
      var _loc6_:* = undefined;
      var _loc2_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = int(ESP);
      _loc2_ = _loc3_;
      _loc5_ = param1;
      _loc3_ = int(_loc3_ - 16);
      si32(_loc5_,_loc3_);
      ESP = _loc3_;
      F_sub_16();
      _loc3_ = int(_loc3_ + 16);
      _loc5_ = int(eax);
      var _loc4_:* = _loc5_;
      _loc6_ = _loc4_;
      _loc3_ = _loc2_;
      ESP = _loc3_;
      return _loc6_;
   }
}
