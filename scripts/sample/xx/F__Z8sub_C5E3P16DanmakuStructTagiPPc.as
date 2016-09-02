package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc88TyAk_2E_o_3A_bbfd1c34_2D_06d1_2D_4424_2D_b888_2D_e4144a3847dc.*;
   
   public function F__Z8sub_C5E3P16DanmakuStructTagiPPc() : void
   {
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc3_:int = 0;
      var _loc4_:int = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc2_ = int(_loc2_ - 640);
      _loc2_ = int(_loc2_ - 16);
      si32(256,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      _loc3_ = _loc1_ - 256;
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(256,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      _loc4_ = _loc1_ - 512;
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(128,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      _loc5_ = _loc1_ - 640;
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ = int(_loc2_ + 16);
      _loc6_ = li32(_loc1_ + 8);
      _loc7_ = li32(_loc1_ + 4);
      _loc8_ = li32(_loc1_);
      if(_loc7_ != 1)
      {
         if(_loc7_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc4_,_loc2_);
            ESP = _loc2_;
            F__Z8sub_DF10Pc();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(li32(_loc8_ + 800),_loc2_ + 12);
            si32(L__2E_str,_loc2_ + 8);
            si32(128,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_snprintf();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 32);
            si32(li32(_loc8_ + 820),_loc2_ + 24);
            si32(li32(_loc8_ + 816),_loc2_ + 20);
            si32(_loc4_,_loc2_ + 16);
            si32(_loc5_,_loc2_ + 12);
            si32(L__2E_str1,_loc2_ + 8);
            si32(256,_loc2_ + 4);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_snprintf();
            _loc2_ = int(_loc2_ + 32);
         }
      }
      else
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F__Z8sub_DF20Pc();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(li32(_loc8_ + 800),_loc2_ + 12);
         si32(L__2E_str,_loc2_ + 8);
         si32(128,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F_snprintf();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 32);
         si32(li32(_loc8_ + 820),_loc2_ + 28);
         si32(li32(_loc8_ + 816),_loc2_ + 24);
         si32(_loc4_,_loc2_ + 20);
         var _loc9_:* = int(_loc8_ + 200);
         si32(_loc9_,_loc2_ + 16);
         si32(_loc5_,_loc2_ + 12);
         si32(L__2E_str2,_loc2_ + 8);
         si32(256,_loc2_ + 4);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F_snprintf();
         _loc2_ = int(_loc2_ + 32);
      }
      _loc2_ = int(_loc2_ - 16);
      si32(64,_loc2_);
      ESP = _loc2_;
      F_malloc();
      _loc2_ = int(_loc2_ + 16);
      var _loc11_:int = eax;
      si32(_loc11_,_loc6_);
      _loc2_ = int(_loc2_ - 16);
      si32(64,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_loc11_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = int(eax);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc11_,_loc2_ + 8);
      si32(_loc9_,_loc2_ + 4);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F__Z9Md5CreatePKciPc();
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = li32(_loc6_);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = int(eax);
      eax = _loc9_;
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
