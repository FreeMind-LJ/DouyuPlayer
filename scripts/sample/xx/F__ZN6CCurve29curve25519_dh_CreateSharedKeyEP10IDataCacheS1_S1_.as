package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN6CCurve29curve25519_dh_CreateSharedKeyEP10IDataCacheS1_S1_() : void
   {
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = _loc2_;
      _loc3_ = li32(_loc1_ + 8);
      _loc4_ = li32(_loc3_);
      _loc5_ = li32(_loc4_ + 20);
      _loc2_ = int(_loc2_ - 16);
      si32(0,_loc2_ + 4);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc5_]();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = int(eax);
      var _loc6_:* = li32(_loc3_);
      _loc7_ = li32(_loc6_ + 24);
      _loc2_ = int(_loc2_ - 16);
      si32(0,_loc2_ + 8);
      _loc4_ = _loc4_ & 248;
      si32(_loc4_,_loc2_ + 4);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc7_]();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = li32(_loc3_);
      _loc8_ = li32(_loc4_ + 20);
      _loc2_ = int(_loc2_ - 16);
      si32(31,_loc2_ + 4);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc8_]();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = int(eax);
      _loc6_ = li32(_loc3_);
      _loc9_ = li32(_loc6_ + 24);
      _loc2_ = int(_loc2_ - 16);
      si32(31,_loc2_ + 8);
      _loc4_ = _loc4_ & 63;
      _loc4_ = _loc4_ | 64;
      si32(_loc4_,_loc2_ + 4);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc9_]();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = int(_loc2_ - 16);
      si32(32,_loc2_ + 12);
      si32(_loc3_,_loc2_ + 8);
      _loc4_ = li32(_loc1_ + 4);
      si32(_loc4_,_loc2_ + 4);
      _loc4_ = li32(_loc1_);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__Z17ecp_PointMultiplyP10IDataCachePKS_S2_i();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc1_;
      ESP = _loc2_;
   }
}
