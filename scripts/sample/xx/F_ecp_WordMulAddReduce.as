package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cc9AE0nm_2E_o_3A_c54056e8_2D_12d6_2D_417e_2D_a77d_2D_50c17bd50fe3.*;
   
   public function F_ecp_WordMulAddReduce() : void
   {
      var _loc23_:* = 0;
      var _loc12_:* = 0;
      var _loc18_:* = 0;
      var _loc21_:* = 0;
      var _loc2_:* = 0;
      var _loc17_:* = 0;
      var _loc22_:* = 0;
      var _loc13_:* = 0;
      var _loc4_:* = 0;
      var _loc15_:* = 0;
      var _loc3_:* = 0;
      var _loc16_:* = 0;
      var _loc19_:* = 0;
      var _loc14_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc20_:* = 0;
      var _loc1_:* = int(ESP);
      _loc23_ = _loc1_;
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      _loc3_ = li32(_loc23_ + 8);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc4_ = li32(_loc23_ + 12);
      var _loc6_:* = li32(_loc4_);
      si32(_loc6_,_loc1_);
      ESP = _loc1_;
      F___muldi3();
      _loc8_ = li32(_loc23_ + 4);
      _loc10_ = li32(_loc8_);
      _loc1_ = int(_loc1_ + 16);
      _loc12_ = int(eax);
      _loc14_ = int(edx);
      _loc16_ = int(_loc12_ + _loc10_);
      _loc18_ = li32(_loc23_);
      si32(_loc16_,_loc18_);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc6_ = li32(_loc4_ + 4);
      si32(_loc6_,_loc1_);
      _loc20_ = 1;
      _loc7_ = _loc20_;
      if(uint(_loc16_) >= uint(_loc12_))
      {
         _loc7_ = 0;
      }
      _loc5_ = _loc20_;
      if(uint(_loc16_) >= uint(_loc10_))
      {
         _loc5_ = _loc7_;
      }
      _loc11_ = int(_loc14_ + _loc5_);
      _loc6_ = li32(_loc8_ + 4);
      _loc9_ = int(_loc6_ + _loc11_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc10_ = int(eax);
      _loc5_ = int(edx);
      _loc14_ = int(_loc9_ + _loc10_);
      si32(_loc14_,_loc18_ + 4);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc12_ = li32(_loc4_ + 8);
      si32(_loc12_,_loc1_);
      _loc15_ = _loc20_;
      if(uint(_loc9_) >= uint(_loc6_))
      {
         _loc15_ = 0;
      }
      _loc7_ = _loc20_;
      if(uint(_loc9_) >= uint(_loc11_))
      {
         _loc7_ = _loc15_;
      }
      _loc11_ = _loc20_;
      if(uint(_loc14_) >= uint(_loc9_))
      {
         _loc11_ = 0;
      }
      _loc9_ = _loc20_;
      if(uint(_loc14_) >= uint(_loc10_))
      {
         _loc9_ = _loc11_;
      }
      _loc6_ = int(_loc7_ + _loc5_);
      _loc13_ = int(_loc6_ + _loc9_);
      ESP = _loc1_;
      F___muldi3();
      _loc9_ = li32(_loc8_ + 8);
      _loc1_ = int(_loc1_ + 16);
      _loc15_ = int(eax);
      _loc5_ = int(edx);
      _loc11_ = int(_loc15_ + _loc9_);
      _loc7_ = int(_loc11_ + _loc13_);
      si32(_loc7_,_loc18_ + 8);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc6_ = li32(_loc4_ + 12);
      si32(_loc6_,_loc1_);
      _loc19_ = _loc20_;
      if(uint(_loc7_) >= uint(_loc11_))
      {
         _loc19_ = 0;
      }
      _loc10_ = _loc20_;
      if(uint(_loc7_) >= uint(_loc13_))
      {
         _loc10_ = _loc19_;
      }
      _loc19_ = _loc20_;
      if(uint(_loc11_) >= uint(_loc15_))
      {
         _loc19_ = 0;
      }
      _loc15_ = _loc20_;
      if(uint(_loc11_) >= uint(_loc9_))
      {
         _loc15_ = _loc19_;
      }
      _loc6_ = int(_loc5_ + _loc15_);
      _loc17_ = int(_loc6_ + _loc10_);
      ESP = _loc1_;
      F___muldi3();
      _loc15_ = li32(_loc8_ + 12);
      _loc1_ = int(_loc1_ + 16);
      _loc19_ = int(eax);
      _loc11_ = int(edx);
      _loc10_ = int(_loc19_ + _loc15_);
      _loc5_ = int(_loc10_ + _loc17_);
      si32(_loc5_,_loc18_ + 12);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc6_ = li32(_loc4_ + 16);
      si32(_loc6_,_loc1_);
      _loc13_ = _loc20_;
      if(uint(_loc5_) >= uint(_loc10_))
      {
         _loc13_ = 0;
      }
      _loc9_ = _loc20_;
      if(uint(_loc5_) >= uint(_loc17_))
      {
         _loc9_ = _loc13_;
      }
      _loc13_ = _loc20_;
      if(uint(_loc10_) >= uint(_loc19_))
      {
         _loc13_ = 0;
      }
      _loc19_ = _loc20_;
      if(uint(_loc10_) >= uint(_loc15_))
      {
         _loc19_ = _loc13_;
      }
      _loc6_ = int(_loc11_ + _loc19_);
      _loc17_ = int(_loc6_ + _loc9_);
      ESP = _loc1_;
      F___muldi3();
      _loc19_ = li32(_loc8_ + 16);
      _loc1_ = int(_loc1_ + 16);
      _loc13_ = int(eax);
      _loc11_ = int(edx);
      _loc9_ = int(_loc13_ + _loc19_);
      _loc10_ = int(_loc9_ + _loc17_);
      si32(_loc10_,_loc18_ + 16);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc6_ = li32(_loc4_ + 20);
      si32(_loc6_,_loc1_);
      _loc22_ = _loc20_;
      if(uint(_loc10_) >= uint(_loc9_))
      {
         _loc22_ = 0;
      }
      _loc15_ = _loc20_;
      if(uint(_loc10_) >= uint(_loc17_))
      {
         _loc15_ = _loc22_;
      }
      _loc17_ = _loc20_;
      if(uint(_loc9_) >= uint(_loc13_))
      {
         _loc17_ = 0;
      }
      _loc13_ = _loc20_;
      if(uint(_loc9_) >= uint(_loc19_))
      {
         _loc13_ = _loc17_;
      }
      _loc6_ = int(_loc11_ + _loc13_);
      _loc21_ = int(_loc6_ + _loc15_);
      ESP = _loc1_;
      F___muldi3();
      _loc13_ = li32(_loc8_ + 20);
      _loc1_ = int(_loc1_ + 16);
      _loc17_ = int(eax);
      _loc11_ = int(edx);
      _loc19_ = int(_loc17_ + _loc13_);
      _loc9_ = int(_loc19_ + _loc21_);
      si32(_loc9_,_loc18_ + 20);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc6_ = li32(_loc4_ + 24);
      si32(_loc6_,_loc1_);
      _loc22_ = _loc20_;
      if(uint(_loc9_) >= uint(_loc19_))
      {
         _loc22_ = 0;
      }
      _loc15_ = _loc20_;
      if(uint(_loc9_) >= uint(_loc21_))
      {
         _loc15_ = _loc22_;
      }
      _loc22_ = _loc20_;
      if(uint(_loc19_) >= uint(_loc17_))
      {
         _loc22_ = 0;
      }
      _loc17_ = _loc20_;
      if(uint(_loc19_) >= uint(_loc13_))
      {
         _loc17_ = _loc22_;
      }
      _loc6_ = int(_loc11_ + _loc17_);
      _loc21_ = int(_loc6_ + _loc15_);
      ESP = _loc1_;
      F___muldi3();
      _loc13_ = li32(_loc8_ + 24);
      _loc1_ = int(_loc1_ + 16);
      _loc17_ = int(eax);
      _loc19_ = int(edx);
      _loc15_ = int(_loc17_ + _loc13_);
      _loc11_ = int(_loc15_ + _loc21_);
      si32(_loc11_,_loc18_ + 24);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(_loc3_,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc6_ = li32(_loc4_ + 28);
      si32(_loc6_,_loc1_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc4_ = int(eax);
      _loc3_ = int(edx);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(38,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc2_ = _loc20_;
      if(uint(_loc11_) >= uint(_loc15_))
      {
         _loc2_ = 0;
      }
      _loc22_ = _loc20_;
      if(uint(_loc11_) >= uint(_loc21_))
      {
         _loc22_ = _loc2_;
      }
      _loc21_ = _loc20_;
      if(uint(_loc15_) >= uint(_loc17_))
      {
         _loc21_ = 0;
      }
      _loc17_ = _loc20_;
      if(uint(_loc15_) >= uint(_loc13_))
      {
         _loc17_ = _loc21_;
      }
      _loc6_ = int(_loc19_ + _loc17_);
      _loc17_ = int(_loc6_ + _loc22_);
      _loc15_ = li32(_loc8_ + 28);
      _loc19_ = int(_loc4_ + _loc15_);
      _loc8_ = int(_loc19_ + _loc17_);
      _loc22_ = _loc20_;
      if(uint(_loc8_) >= uint(_loc19_))
      {
         _loc22_ = 0;
      }
      _loc13_ = _loc20_;
      if(uint(_loc8_) >= uint(_loc17_))
      {
         _loc13_ = _loc22_;
      }
      _loc17_ = _loc20_;
      if(uint(_loc19_) >= uint(_loc4_))
      {
         _loc17_ = 0;
      }
      _loc4_ = _loc20_;
      if(uint(_loc19_) >= uint(_loc15_))
      {
         _loc4_ = _loc17_;
      }
      _loc6_ = int(_loc3_ + _loc4_);
      _loc6_ = int(_loc6_ + _loc13_);
      si32(_loc6_,_loc1_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc6_ = int(eax);
      _loc19_ = int(edx);
      _loc1_ = int(_loc1_ - 16);
      si32(0,_loc1_ + 12);
      si32(38,_loc1_ + 8);
      si32(0,_loc1_ + 4);
      _loc4_ = int(_loc6_ + _loc16_);
      _loc15_ = _loc20_;
      if(uint(_loc4_) >= uint(_loc6_))
      {
         _loc15_ = 0;
      }
      _loc3_ = _loc20_;
      if(uint(_loc4_) >= uint(_loc16_))
      {
         _loc3_ = _loc15_;
      }
      _loc6_ = int(_loc19_ + _loc3_);
      _loc15_ = int(_loc14_ + _loc6_);
      _loc16_ = _loc20_;
      if(uint(_loc15_) >= uint(_loc6_))
      {
         _loc16_ = 0;
      }
      _loc3_ = _loc20_;
      if(uint(_loc15_) >= uint(_loc14_))
      {
         _loc3_ = _loc16_;
      }
      _loc16_ = int(_loc7_ + _loc3_);
      _loc19_ = _loc20_;
      if(uint(_loc16_) >= uint(_loc3_))
      {
         _loc19_ = 0;
      }
      _loc14_ = _loc20_;
      if(uint(_loc16_) >= uint(_loc7_))
      {
         _loc14_ = _loc19_;
      }
      _loc3_ = int(_loc5_ + _loc14_);
      _loc7_ = _loc20_;
      if(uint(_loc3_) >= uint(_loc14_))
      {
         _loc7_ = 0;
      }
      _loc14_ = _loc20_;
      if(uint(_loc3_) >= uint(_loc5_))
      {
         _loc14_ = _loc7_;
      }
      _loc7_ = int(_loc10_ + _loc14_);
      _loc19_ = _loc20_;
      if(uint(_loc7_) >= uint(_loc14_))
      {
         _loc19_ = 0;
      }
      _loc5_ = _loc20_;
      if(uint(_loc7_) >= uint(_loc10_))
      {
         _loc5_ = _loc19_;
      }
      _loc14_ = int(_loc9_ + _loc5_);
      _loc19_ = _loc20_;
      if(uint(_loc14_) >= uint(_loc5_))
      {
         _loc19_ = 0;
      }
      _loc10_ = _loc20_;
      if(uint(_loc14_) >= uint(_loc9_))
      {
         _loc10_ = _loc19_;
      }
      _loc5_ = int(_loc11_ + _loc10_);
      _loc19_ = _loc20_;
      if(uint(_loc5_) >= uint(_loc10_))
      {
         _loc19_ = 0;
      }
      _loc9_ = _loc20_;
      if(uint(_loc5_) >= uint(_loc11_))
      {
         _loc9_ = _loc19_;
      }
      _loc10_ = int(_loc9_ + _loc8_);
      _loc11_ = _loc20_;
      if(uint(_loc10_) >= uint(_loc9_))
      {
         _loc11_ = 0;
      }
      _loc9_ = _loc20_;
      if(uint(_loc10_) >= uint(_loc8_))
      {
         _loc9_ = _loc11_;
      }
      si32(_loc9_,_loc1_);
      ESP = _loc1_;
      F___muldi3();
      _loc1_ = int(_loc1_ + 16);
      _loc6_ = int(eax);
      _loc19_ = int(edx);
      _loc11_ = int(_loc6_ + _loc4_);
      si32(_loc11_,_loc18_);
      _loc9_ = _loc20_;
      if(uint(_loc11_) >= uint(_loc6_))
      {
         _loc9_ = 0;
      }
      _loc8_ = _loc20_;
      if(uint(_loc11_) >= uint(_loc4_))
      {
         _loc8_ = _loc9_;
      }
      _loc6_ = int(_loc19_ + _loc8_);
      _loc4_ = int(_loc6_ + _loc15_);
      si32(_loc4_,_loc18_ + 4);
      _loc9_ = _loc20_;
      if(uint(_loc4_) >= uint(_loc6_))
      {
         _loc9_ = 0;
      }
      _loc8_ = _loc20_;
      if(uint(_loc4_) >= uint(_loc15_))
      {
         _loc8_ = _loc9_;
      }
      _loc9_ = int(_loc8_ + _loc16_);
      si32(_loc9_,_loc18_ + 8);
      _loc4_ = _loc20_;
      if(uint(_loc9_) >= uint(_loc8_))
      {
         _loc4_ = 0;
      }
      _loc8_ = _loc20_;
      if(uint(_loc9_) >= uint(_loc16_))
      {
         _loc8_ = _loc4_;
      }
      _loc4_ = int(_loc8_ + _loc3_);
      si32(_loc4_,_loc18_ + 12);
      _loc9_ = _loc20_;
      if(uint(_loc4_) >= uint(_loc8_))
      {
         _loc9_ = 0;
      }
      _loc16_ = _loc20_;
      if(uint(_loc4_) >= uint(_loc3_))
      {
         _loc16_ = _loc9_;
      }
      _loc8_ = int(_loc16_ + _loc7_);
      si32(_loc8_,_loc18_ + 16);
      _loc3_ = _loc20_;
      if(uint(_loc8_) >= uint(_loc16_))
      {
         _loc3_ = 0;
      }
      _loc16_ = _loc20_;
      if(uint(_loc8_) >= uint(_loc7_))
      {
         _loc16_ = _loc3_;
      }
      _loc7_ = int(_loc16_ + _loc14_);
      si32(_loc7_,_loc18_ + 20);
      _loc8_ = _loc20_;
      if(uint(_loc7_) >= uint(_loc16_))
      {
         _loc8_ = 0;
      }
      _loc16_ = _loc20_;
      if(uint(_loc7_) >= uint(_loc14_))
      {
         _loc16_ = _loc8_;
      }
      _loc7_ = int(_loc16_ + _loc5_);
      si32(_loc7_,_loc18_ + 24);
      _loc14_ = _loc20_;
      if(uint(_loc7_) >= uint(_loc16_))
      {
         _loc14_ = 0;
      }
      if(uint(_loc7_) >= uint(_loc5_))
      {
         _loc20_ = _loc14_;
      }
      _loc6_ = int(_loc20_ + _loc10_);
      si32(_loc6_,_loc18_ + 28);
      _loc1_ = _loc23_;
      ESP = _loc1_;
   }
}
