package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccWOpgXM_2E_o_3A_e07a7c20_2D_50a5_2D_4908_2D_bae4_2D_6489778f0fee.*;
   
   public function F__ZN5C4Key15CreatePublicKeyEv() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_);
      _loc4_ = li32(_loc3_ + 8);
      _loc3_ = li32(_loc3_ + 12);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc3_,_loc2_ + 4);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__ZN6CCurve32curve25519_dh_CalculatePublicKeyEP10IDataCacheS1_();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
