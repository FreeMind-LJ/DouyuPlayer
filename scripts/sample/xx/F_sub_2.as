package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccoWZZEr_2E_o_3A_fa4b70d4_2D_363d_2D_4eae_2D_96dc_2D_1df1d5edcc9b.*;
   import avm2.intrinsics.memory.li32;
   
   public function F_sub_2() : void
   {
      var _loc1_:* = 0;
      var _loc3_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc2_ = int(_loc2_ - 16);
      var _loc6_:* = lf64(_loc1_);
      sf64(_loc6_,_loc2_);
      si32(0,_loc1_ - 4);
      ESP = _loc2_;
      F___fixdfdi();
      _loc2_ = int(_loc2_ + 16);
      _loc3_ = eax;
      _loc4_ = int(edx);
      si32(_loc4_,_info + 820);
      si32(_loc3_,_info + 816);
      _loc2_ = int(_loc2_ - 16);
      _loc3_ = _loc1_ - 4;
      si32(_loc3_,_loc2_ + 4);
      si32(_info,_loc2_);
      ESP = _loc2_;
      F__Z8sub_C352P16DanmakuStructTagPPc();
      _loc2_ = int(_loc2_ + 16);
      _loc3_ = eax;
      _loc4_ = li32(_loc1_ + 8);
      var _loc5_:* = li32(_loc1_ - 4);
      si32(_loc5_,_loc4_);
      eax = _loc3_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
