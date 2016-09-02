package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc88TyAk_2E_o_3A_bbfd1c34_2D_06d1_2D_4424_2D_b888_2D_e4144a3847dc.*;
   
   public function F__Z8sub_C5D4iPPc() : void
   {
      var _loc1_:* = 0;
      var _loc3_:int = 0;
      var _loc5_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 576);
      _loc2_ = int(_loc2_ - 16);
      si32(576,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      _loc3_ = _loc1_ - 576;
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = _loc3_ | 4;
      si32(0,_loc4_);
      si32(0,_loc1_ - 548);
      si32(0,_loc1_ - 552);
      si32(0,_loc1_ - 556);
      si32(0,_loc1_ - 560);
      si32(0,_loc1_ - 564);
      si32(0,_loc1_ - 568);
      si32(1701869940,_loc1_ - 576);
      _loc2_ = int(_loc2_ - 16);
      si32(256,_loc2_ + 8);
      si32(L__2E_str10,_loc2_ + 4);
      _loc4_ = int(_loc3_ + 32);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      Fmemcpy();
      _loc2_ = int(_loc2_ + 16);
      si32(0,_loc1_ - 260);
      si32(0,_loc1_ - 264);
      si32(0,_loc1_ - 268);
      si32(0,_loc1_ - 272);
      si32(0,_loc1_ - 276);
      si32(0,_loc1_ - 280);
      si32(0,_loc1_ - 284);
      si32(6580596,_loc1_ - 288);
      _loc2_ = int(_loc2_ - 16);
      si32(256,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      _loc5_ = _loc3_ + 320;
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      _loc4_ = li32(_loc1_);
      si32(_loc4_,_loc2_ + 12);
      si32(L__2E_str,_loc2_ + 8);
      si32(65,_loc2_ + 4);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_snprintf();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      _loc4_ = li32(_loc1_ + 4);
      si32(_loc4_,_loc2_ + 8);
      si32(2,_loc2_ + 4);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F_create_protocol_data();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = int(eax);
      eax = _loc4_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
