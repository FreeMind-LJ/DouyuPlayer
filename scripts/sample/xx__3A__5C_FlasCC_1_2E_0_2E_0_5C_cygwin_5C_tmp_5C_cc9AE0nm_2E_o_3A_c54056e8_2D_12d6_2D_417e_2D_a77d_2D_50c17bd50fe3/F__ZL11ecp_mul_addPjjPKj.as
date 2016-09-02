package sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc9AE0nm_2E_o_3A_c54056e8_2D_12d6_2D_417e_2D_a77d_2D_50c17bd50fe3
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   
   public function F__ZL11ecp_mul_addPjjPKj() : void
   {
      var _loc16_:* = 0;
      var _loc2_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:int = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc15_:* = 0;
      var _loc10_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc1_:* = int(ESP);
      _loc16_ = _loc1_;
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      _loc2_ = li32(_loc16_ + 4);
      si32(_loc2_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc3_ = li32(_loc16_ + 8);
      _loc5_ = li32(_loc3_);
      si32(_loc5_,_loc1_);
      ESP = _loc1_;
      F___muldi3();
      _loc7_ = li32(_loc16_);
      _loc9_ = li32(_loc7_);
      _loc1_ = int(_loc1_ + 16);
      _loc5_ = int(eax);
      _loc11_ = int(edx);
      _loc12_ = int(_loc5_ + _loc9_);
      si32(_loc12_,_loc7_);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc2_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      var _loc13_:* = li32(_loc3_ + 4);
      si32(_loc13_,_loc1_);
      _loc14_ = 1;
      _loc15_ = _loc14_;
      if(uint(_loc12_) >= uint(_loc5_))
      {
         _loc15_ = 0;
      }
      _loc6_ = _loc14_;
      if(uint(_loc12_) >= uint(_loc9_))
      {
         _loc6_ = _loc15_;
      }
      _loc4_ = int(_loc11_ + _loc6_);
      _loc13_ = li32(_loc7_ + 4);
      _loc12_ = int(_loc13_ + _loc4_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc6_ = int(eax);
      _loc9_ = int(edx);
      _loc15_ = int(_loc12_ + _loc6_);
      si32(_loc15_,_loc7_ + 4);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc2_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc5_ = li32(_loc3_ + 8);
      si32(_loc5_,_loc1_);
      _loc10_ = _loc14_;
      if(uint(_loc12_) >= uint(_loc13_))
      {
         _loc10_ = 0;
      }
      _loc11_ = _loc14_;
      if(uint(_loc12_) >= uint(_loc4_))
      {
         _loc11_ = _loc10_;
      }
      _loc10_ = _loc14_;
      if(uint(_loc15_) >= uint(_loc12_))
      {
         _loc10_ = 0;
      }
      _loc12_ = _loc14_;
      if(uint(_loc15_) >= uint(_loc6_))
      {
         _loc12_ = _loc10_;
      }
      _loc5_ = int(_loc11_ + _loc9_);
      _loc10_ = int(_loc5_ + _loc12_);
      ESP = _loc1_;
      F___muldi3();
      _loc6_ = li32(_loc7_ + 8);
      _loc1_ = int(_loc1_ + 16);
      _loc12_ = int(eax);
      _loc9_ = int(edx);
      _loc11_ = int(_loc12_ + _loc6_);
      _loc8_ = _loc11_ + _loc10_;
      si32(_loc8_,_loc7_ + 8);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc2_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc5_ = li32(_loc3_ + 12);
      si32(_loc5_,_loc1_);
      _loc4_ = _loc14_;
      if(uint(_loc8_) >= uint(_loc11_))
      {
         _loc4_ = 0;
      }
      _loc15_ = _loc14_;
      if(uint(_loc8_) >= uint(_loc10_))
      {
         _loc15_ = _loc4_;
      }
      _loc10_ = _loc14_;
      if(uint(_loc11_) >= uint(_loc12_))
      {
         _loc10_ = 0;
      }
      _loc12_ = _loc14_;
      if(uint(_loc11_) >= uint(_loc6_))
      {
         _loc12_ = _loc10_;
      }
      _loc5_ = int(_loc9_ + _loc12_);
      _loc8_ = _loc5_ + _loc15_;
      ESP = _loc1_;
      F___muldi3();
      _loc11_ = li32(_loc7_ + 12);
      _loc1_ = int(_loc1_ + 16);
      _loc12_ = int(eax);
      _loc9_ = int(edx);
      _loc6_ = int(_loc12_ + _loc11_);
      _loc4_ = int(_loc6_ + _loc8_);
      si32(_loc4_,_loc7_ + 12);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc2_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc5_ = li32(_loc3_ + 16);
      si32(_loc5_,_loc1_);
      _loc10_ = _loc14_;
      if(uint(_loc4_) >= uint(_loc6_))
      {
         _loc10_ = 0;
      }
      _loc15_ = _loc14_;
      if(uint(_loc4_) >= uint(_loc8_))
      {
         _loc15_ = _loc10_;
      }
      _loc10_ = _loc14_;
      if(uint(_loc6_) >= uint(_loc12_))
      {
         _loc10_ = 0;
      }
      _loc12_ = _loc14_;
      if(uint(_loc6_) >= uint(_loc11_))
      {
         _loc12_ = _loc10_;
      }
      _loc5_ = int(_loc9_ + _loc12_);
      _loc8_ = _loc5_ + _loc15_;
      ESP = _loc1_;
      F___muldi3();
      _loc11_ = li32(_loc7_ + 16);
      _loc1_ = int(_loc1_ + 16);
      _loc12_ = int(eax);
      _loc9_ = int(edx);
      _loc6_ = int(_loc12_ + _loc11_);
      _loc4_ = int(_loc6_ + _loc8_);
      si32(_loc4_,_loc7_ + 16);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc2_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc5_ = li32(_loc3_ + 20);
      si32(_loc5_,_loc1_);
      _loc10_ = _loc14_;
      if(uint(_loc4_) >= uint(_loc6_))
      {
         _loc10_ = 0;
      }
      _loc15_ = _loc14_;
      if(uint(_loc4_) >= uint(_loc8_))
      {
         _loc15_ = _loc10_;
      }
      _loc10_ = _loc14_;
      if(uint(_loc6_) >= uint(_loc12_))
      {
         _loc10_ = 0;
      }
      _loc12_ = _loc14_;
      if(uint(_loc6_) >= uint(_loc11_))
      {
         _loc12_ = _loc10_;
      }
      _loc5_ = int(_loc9_ + _loc12_);
      _loc8_ = _loc5_ + _loc15_;
      ESP = _loc1_;
      F___muldi3();
      _loc11_ = li32(_loc7_ + 20);
      _loc1_ = int(_loc1_ + 16);
      _loc12_ = int(eax);
      _loc15_ = int(edx);
      _loc6_ = int(_loc12_ + _loc11_);
      _loc4_ = int(_loc6_ + _loc8_);
      si32(_loc4_,_loc7_ + 20);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc2_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc5_ = li32(_loc3_ + 24);
      si32(_loc5_,_loc1_);
      _loc10_ = _loc14_;
      if(uint(_loc4_) >= uint(_loc6_))
      {
         _loc10_ = 0;
      }
      _loc9_ = _loc14_;
      if(uint(_loc4_) >= uint(_loc8_))
      {
         _loc9_ = _loc10_;
      }
      _loc10_ = _loc14_;
      if(uint(_loc6_) >= uint(_loc12_))
      {
         _loc10_ = 0;
      }
      _loc12_ = _loc14_;
      if(uint(_loc6_) >= uint(_loc11_))
      {
         _loc12_ = _loc10_;
      }
      _loc5_ = int(_loc15_ + _loc12_);
      _loc12_ = int(_loc5_ + _loc9_);
      ESP = _loc1_;
      F___muldi3();
      _loc9_ = li32(_loc7_ + 24);
      _loc1_ = int(_loc1_ + 16);
      _loc11_ = int(eax);
      _loc6_ = int(edx);
      _loc15_ = int(_loc11_ + _loc9_);
      _loc10_ = int(_loc15_ + _loc12_);
      si32(_loc10_,_loc7_ + 24);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc2_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc5_ = li32(_loc3_ + 28);
      si32(_loc5_,_loc1_);
      _loc3_ = _loc14_;
      if(uint(_loc10_) >= uint(_loc15_))
      {
         _loc3_ = 0;
      }
      _loc2_ = _loc14_;
      if(uint(_loc10_) >= uint(_loc12_))
      {
         _loc2_ = _loc3_;
      }
      _loc3_ = _loc14_;
      if(uint(_loc15_) >= uint(_loc11_))
      {
         _loc3_ = 0;
      }
      _loc11_ = _loc14_;
      if(uint(_loc15_) >= uint(_loc9_))
      {
         _loc11_ = _loc3_;
      }
      _loc5_ = int(_loc6_ + _loc11_);
      _loc10_ = int(_loc5_ + _loc2_);
      ESP = _loc1_;
      F___muldi3();
      _loc15_ = li32(_loc7_ + 28);
      _loc1_ = int(_loc1_ + 16);
      _loc6_ = int(eax);
      _loc9_ = int(edx);
      _loc3_ = int(_loc6_ + _loc15_);
      _loc12_ = int(_loc3_ + _loc10_);
      si32(_loc12_,_loc7_ + 28);
      _loc11_ = _loc14_;
      if(uint(_loc12_) >= uint(_loc3_))
      {
         _loc11_ = 0;
      }
      _loc2_ = _loc14_;
      if(uint(_loc12_) >= uint(_loc10_))
      {
         _loc2_ = _loc11_;
      }
      _loc11_ = _loc14_;
      if(uint(_loc3_) >= uint(_loc6_))
      {
         _loc11_ = 0;
      }
      if(uint(_loc3_) >= uint(_loc15_))
      {
         _loc14_ = _loc11_;
      }
      _loc5_ = int(_loc9_ + _loc14_);
      _loc5_ = int(_loc5_ + _loc2_);
      si32(_loc5_,_loc7_ + 32);
      _loc1_ = _loc16_;
      ESP = _loc1_;
   }
}
