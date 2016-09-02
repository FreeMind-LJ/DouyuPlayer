package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc9AE0nm_2E_o_3A_c54056e8_2D_12d6_2D_417e_2D_a77d_2D_50c17bd50fe3.*;
   
   public function F_ecp_SqrReduce() : void
   {
      var _loc15_:* = 0;
      var _loc2_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:int = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc14_:int = 0;
      var _loc13_:int = 0;
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = int(ESP);
      _loc15_ = _loc1_;
      _loc1_ = int(_loc1_ - 64);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(0,_loc1_ + 4);
      _loc2_ = li32(_loc15_ + 4);
      _loc3_ = li32(_loc2_);
      si32(_loc3_,_loc1_ + 8);
      si32(_loc3_,_loc1_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc5_ = int(eax);
      _loc7_ = int(edx);
      si32(_loc5_,_loc15_ - 64);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc8_ = li32(_loc2_ + 4);
      si32(_loc8_,_loc1_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc5_ = int(eax);
      _loc10_ = edx;
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc11_ = int(_loc5_ + _loc7_);
      si32(_loc11_,_loc15_ - 60);
      var _loc12_:* = li32(_loc2_ + 8);
      si32(_loc12_,_loc1_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc13_ = eax;
      _loc14_ = edx;
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc6_ = 1;
      _loc4_ = _loc6_;
      if(uint(_loc11_) >= uint(_loc5_))
      {
         _loc4_ = 0;
      }
      _loc9_ = _loc6_;
      if(uint(_loc11_) >= uint(_loc7_))
      {
         _loc9_ = _loc4_;
      }
      _loc12_ = int(_loc10_ + _loc9_);
      _loc10_ = _loc12_ + _loc13_;
      si32(_loc10_,_loc15_ - 56);
      _loc5_ = li32(_loc2_ + 12);
      si32(_loc5_,_loc1_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc9_ = int(eax);
      _loc11_ = int(edx);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc7_ = _loc6_;
      if(uint(_loc10_) >= uint(_loc12_))
      {
         _loc7_ = 0;
      }
      _loc4_ = _loc6_;
      if(uint(_loc10_) >= uint(_loc13_))
      {
         _loc4_ = _loc7_;
      }
      _loc5_ = int(_loc14_ + _loc4_);
      _loc10_ = _loc5_ + _loc9_;
      si32(_loc10_,_loc15_ - 52);
      _loc12_ = li32(_loc2_ + 16);
      si32(_loc12_,_loc1_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc14_ = eax;
      _loc13_ = edx;
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc7_ = _loc6_;
      if(uint(_loc10_) >= uint(_loc5_))
      {
         _loc7_ = 0;
      }
      _loc4_ = _loc6_;
      if(uint(_loc10_) >= uint(_loc9_))
      {
         _loc4_ = _loc7_;
      }
      _loc5_ = int(_loc11_ + _loc4_);
      _loc10_ = _loc5_ + _loc14_;
      si32(_loc10_,_loc15_ - 48);
      _loc12_ = li32(_loc2_ + 20);
      si32(_loc12_,_loc1_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc9_ = int(eax);
      _loc11_ = int(edx);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc4_ = _loc6_;
      if(uint(_loc10_) >= uint(_loc5_))
      {
         _loc4_ = 0;
      }
      _loc7_ = _loc6_;
      if(uint(_loc10_) >= uint(_loc14_))
      {
         _loc7_ = _loc4_;
      }
      _loc12_ = int(_loc13_ + _loc7_);
      _loc4_ = int(_loc12_ + _loc9_);
      si32(_loc4_,_loc15_ - 44);
      _loc5_ = li32(_loc2_ + 24);
      si32(_loc5_,_loc1_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc14_ = eax;
      _loc13_ = edx;
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc7_ = _loc6_;
      if(uint(_loc4_) >= uint(_loc12_))
      {
         _loc7_ = 0;
      }
      _loc3_ = _loc6_;
      if(uint(_loc4_) >= uint(_loc9_))
      {
         _loc3_ = _loc7_;
      }
      _loc12_ = int(_loc11_ + _loc3_);
      _loc11_ = int(_loc12_ + _loc14_);
      si32(_loc11_,_loc15_ - 40);
      _loc5_ = li32(_loc2_ + 28);
      si32(_loc5_,_loc1_);
      _loc3_ = _loc6_;
      if(uint(_loc11_) >= uint(_loc12_))
      {
         _loc3_ = 0;
      }
      _loc9_ = _loc6_;
      if(uint(_loc11_) >= uint(_loc14_))
      {
         _loc9_ = _loc3_;
      }
      _loc5_ = int(_loc13_ + _loc9_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc3_ = int(eax);
      _loc14_ = edx;
      _loc13_ = _loc5_ + _loc3_;
      si32(_loc13_,_loc15_ - 36);
      _loc11_ = _loc6_;
      if(uint(_loc13_) >= uint(_loc5_))
      {
         _loc11_ = 0;
      }
      if(uint(_loc13_) >= uint(_loc3_))
      {
         _loc6_ = _loc11_;
      }
      _loc5_ = int(_loc14_ + _loc6_);
      si32(_loc5_,_loc15_ - 32);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc2_,_loc1_ + 8);
      si32(_loc8_,_loc1_ + 4);
      _loc5_ = int(_loc15_ - 64);
      _loc12_ = int(_loc5_ + 4);
      si32(_loc12_,_loc1_);
      ESP = _loc1_;
      F__ZL11ecp_mul_addPjjPKj();
      _loc1_ = int(_loc1_ + 16);
      _loc12_ = li32(_loc2_ + 8);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc2_,_loc1_ + 8);
      si32(_loc12_,_loc1_ + 4);
      _loc12_ = int(_loc5_ + 8);
      si32(_loc12_,_loc1_);
      ESP = _loc1_;
      F__ZL11ecp_mul_addPjjPKj();
      _loc1_ = int(_loc1_ + 16);
      _loc12_ = li32(_loc2_ + 12);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc2_,_loc1_ + 8);
      si32(_loc12_,_loc1_ + 4);
      _loc12_ = int(_loc5_ + 12);
      si32(_loc12_,_loc1_);
      ESP = _loc1_;
      F__ZL11ecp_mul_addPjjPKj();
      _loc1_ = int(_loc1_ + 16);
      _loc12_ = li32(_loc2_ + 16);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc2_,_loc1_ + 8);
      si32(_loc12_,_loc1_ + 4);
      _loc12_ = int(_loc5_ + 16);
      si32(_loc12_,_loc1_);
      ESP = _loc1_;
      F__ZL11ecp_mul_addPjjPKj();
      _loc1_ = int(_loc1_ + 16);
      _loc12_ = li32(_loc2_ + 20);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc2_,_loc1_ + 8);
      si32(_loc12_,_loc1_ + 4);
      _loc12_ = int(_loc5_ + 20);
      si32(_loc12_,_loc1_);
      ESP = _loc1_;
      F__ZL11ecp_mul_addPjjPKj();
      _loc1_ = int(_loc1_ + 16);
      _loc12_ = li32(_loc2_ + 24);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc2_,_loc1_ + 8);
      si32(_loc12_,_loc1_ + 4);
      _loc12_ = int(_loc5_ + 24);
      si32(_loc12_,_loc1_);
      ESP = _loc1_;
      F__ZL11ecp_mul_addPjjPKj();
      _loc1_ = int(_loc1_ + 16);
      _loc12_ = li32(_loc2_ + 28);
      _loc1_ = int(_loc1_ - 16);
      si32(_loc2_,_loc1_ + 8);
      si32(_loc12_,_loc1_ + 4);
      _loc12_ = int(_loc5_ + 28);
      si32(_loc12_,_loc1_);
      ESP = _loc1_;
      F__ZL11ecp_mul_addPjjPKj();
      _loc1_ = int(_loc1_ + 16);
      _loc1_ = int(_loc1_ - 16);
      _loc12_ = int(_loc5_ + 32);
      si32(_loc12_,_loc1_ + 12);
      si32(38,_loc1_ + 8);
      si32(_loc5_,_loc1_ + 4);
      _loc5_ = li32(_loc15_);
      si32(_loc5_,_loc1_);
      ESP = _loc1_;
      F_ecp_WordMulAddReduce();
      _loc1_ = int(_loc1_ + 16);
      _loc1_ = _loc15_;
      ESP = _loc1_;
   }
}
