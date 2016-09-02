package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccO1BbeL_2E_o_3A_0ae1a2e1_2D_2183_2D_40f3_2D_9c9a_2D_112fae7f1e86.__ZL1P;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccO1BbeL_2E_o_3A_0ae1a2e1_2D_2183_2D_40f3_2D_9c9a_2D_112fae7f1e86.__ZL2P1;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z8sub_34D0Ph() : void
   {
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_);
      _loc4_ = li8(_loc3_);
      _loc5_ = int(__ZL1P + _loc4_);
      _loc5_ = li8(_loc5_);
      _loc4_ = int(__ZL2P1 + _loc4_);
      _loc4_ = li8(_loc4_);
      _loc5_ = int(_loc4_ + _loc5_);
      _loc5_ = int(_loc5_ % 255);
      si8(_loc5_,_loc3_);
      _loc3_ = _loc5_ & 255;
      eax = _loc3_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
