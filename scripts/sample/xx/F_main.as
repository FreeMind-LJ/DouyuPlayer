package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccv2act1_2E_o_3A_8e9b016f_2D_a24e_2D_485a_2D_ad47_2D_98daa759481a.*;
   
   public function F_main() : void
   {
      var _loc2_:int = ESP;
      var _loc1_:* = _loc2_;
      _loc2_ = _loc2_ - 16;
      si32(L__2E_str,_loc2_);
      ESP = _loc2_;
      F_puts();
      _loc2_ = _loc2_ + 16;
      throw new GoingAsync();
   }
}
