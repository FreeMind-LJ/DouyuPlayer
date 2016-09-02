package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_ecp_AddReduce() : void
   {
      var _loc16_:* = 0;
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc15_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = 0;
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = int(ESP);
      _loc16_ = _loc1_;
      _loc1_ = int(_loc1_ - 16);
      _loc2_ = li32(_loc16_ + 8);
      si32(_loc2_,_loc1_ + 8);
      _loc2_ = li32(_loc16_ + 4);
      si32(_loc2_,_loc1_ + 4);
      _loc3_ = li32(_loc16_);
      si32(_loc3_,_loc1_);
      ESP = _loc1_;
      F_ecp_Add();
      _loc1_ = int(_loc1_ + 16);
      _loc2_ = int(eax);
      _loc5_ = int(_loc2_ * 38);
      _loc2_ = li32(_loc3_);
      _loc7_ = int(_loc2_ + _loc5_);
      _loc9_ = 1;
      _loc11_ = _loc9_;
      if(uint(_loc7_) >= uint(_loc2_))
      {
         _loc11_ = 0;
      }
      _loc12_ = _loc9_;
      if(uint(_loc7_) >= uint(_loc5_))
      {
         _loc12_ = _loc11_;
      }
      _loc13_ = li32(_loc3_ + 4);
      _loc5_ = int(_loc12_ + _loc13_);
      _loc14_ = _loc9_;
      if(uint(_loc5_) >= uint(_loc12_))
      {
         _loc14_ = 0;
      }
      _loc11_ = _loc9_;
      if(uint(_loc5_) >= uint(_loc13_))
      {
         _loc11_ = _loc14_;
      }
      _loc14_ = li32(_loc3_ + 8);
      _loc12_ = int(_loc11_ + _loc14_);
      _loc15_ = _loc9_;
      if(uint(_loc12_) >= uint(_loc11_))
      {
         _loc15_ = 0;
      }
      _loc13_ = _loc9_;
      if(uint(_loc12_) >= uint(_loc14_))
      {
         _loc13_ = _loc15_;
      }
      _loc6_ = li32(_loc3_ + 12);
      _loc11_ = int(_loc13_ + _loc6_);
      _loc15_ = _loc9_;
      if(uint(_loc11_) >= uint(_loc13_))
      {
         _loc15_ = 0;
      }
      _loc14_ = _loc9_;
      if(uint(_loc11_) >= uint(_loc6_))
      {
         _loc14_ = _loc15_;
      }
      _loc6_ = li32(_loc3_ + 16);
      _loc13_ = int(_loc14_ + _loc6_);
      _loc4_ = _loc9_;
      if(uint(_loc13_) >= uint(_loc14_))
      {
         _loc4_ = 0;
      }
      _loc15_ = _loc9_;
      if(uint(_loc13_) >= uint(_loc6_))
      {
         _loc15_ = _loc4_;
      }
      _loc10_ = li32(_loc3_ + 20);
      _loc14_ = int(_loc15_ + _loc10_);
      _loc4_ = _loc9_;
      if(uint(_loc14_) >= uint(_loc15_))
      {
         _loc4_ = 0;
      }
      _loc6_ = _loc9_;
      if(uint(_loc14_) >= uint(_loc10_))
      {
         _loc6_ = _loc4_;
      }
      _loc8_ = li32(_loc3_ + 24);
      _loc15_ = int(_loc6_ + _loc8_);
      _loc10_ = _loc9_;
      if(uint(_loc15_) >= uint(_loc6_))
      {
         _loc10_ = 0;
      }
      _loc4_ = _loc9_;
      if(uint(_loc15_) >= uint(_loc8_))
      {
         _loc4_ = _loc10_;
      }
      _loc10_ = li32(_loc3_ + 28);
      _loc6_ = int(_loc4_ + _loc10_);
      _loc8_ = _loc9_;
      if(uint(_loc6_) >= uint(_loc4_))
      {
         _loc8_ = 0;
      }
      _loc4_ = _loc9_;
      if(uint(_loc6_) >= uint(_loc10_))
      {
         _loc4_ = _loc8_;
      }
      _loc2_ = int(_loc4_ * 38);
      _loc10_ = int(_loc2_ + _loc7_);
      si32(_loc10_,_loc3_);
      _loc8_ = _loc9_;
      if(uint(_loc10_) >= uint(_loc2_))
      {
         _loc8_ = 0;
      }
      _loc4_ = _loc9_;
      if(uint(_loc10_) >= uint(_loc7_))
      {
         _loc4_ = _loc8_;
      }
      _loc10_ = int(_loc4_ + _loc5_);
      si32(_loc10_,_loc3_ + 4);
      _loc8_ = _loc9_;
      if(uint(_loc10_) >= uint(_loc4_))
      {
         _loc8_ = 0;
      }
      _loc7_ = _loc9_;
      if(uint(_loc10_) >= uint(_loc5_))
      {
         _loc7_ = _loc8_;
      }
      _loc4_ = int(_loc7_ + _loc12_);
      si32(_loc4_,_loc3_ + 8);
      _loc10_ = _loc9_;
      if(uint(_loc4_) >= uint(_loc7_))
      {
         _loc10_ = 0;
      }
      _loc5_ = _loc9_;
      if(uint(_loc4_) >= uint(_loc12_))
      {
         _loc5_ = _loc10_;
      }
      _loc12_ = int(_loc5_ + _loc11_);
      si32(_loc12_,_loc3_ + 12);
      _loc7_ = _loc9_;
      if(uint(_loc12_) >= uint(_loc5_))
      {
         _loc7_ = 0;
      }
      _loc5_ = _loc9_;
      if(uint(_loc12_) >= uint(_loc11_))
      {
         _loc5_ = _loc7_;
      }
      _loc11_ = int(_loc5_ + _loc13_);
      si32(_loc11_,_loc3_ + 16);
      _loc12_ = _loc9_;
      if(uint(_loc11_) >= uint(_loc5_))
      {
         _loc12_ = 0;
      }
      _loc5_ = _loc9_;
      if(uint(_loc11_) >= uint(_loc13_))
      {
         _loc5_ = _loc12_;
      }
      _loc12_ = int(_loc5_ + _loc14_);
      si32(_loc12_,_loc3_ + 20);
      _loc11_ = _loc9_;
      if(uint(_loc12_) >= uint(_loc5_))
      {
         _loc11_ = 0;
      }
      _loc5_ = _loc9_;
      if(uint(_loc12_) >= uint(_loc14_))
      {
         _loc5_ = _loc11_;
      }
      _loc12_ = int(_loc5_ + _loc15_);
      si32(_loc12_,_loc3_ + 24);
      _loc11_ = _loc9_;
      if(uint(_loc12_) >= uint(_loc5_))
      {
         _loc11_ = 0;
      }
      if(uint(_loc12_) >= uint(_loc15_))
      {
         _loc9_ = _loc11_;
      }
      _loc2_ = int(_loc9_ + _loc6_);
      si32(_loc2_,_loc3_ + 28);
      _loc1_ = _loc16_;
      ESP = _loc1_;
   }
}
