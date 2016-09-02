package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_ecp_Sub() : void
   {
      var _loc15_:* = 0;
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc6_:* = 0;
      var _loc14_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:int = 0;
      var _loc1_:* = int(ESP);
      _loc15_ = _loc1_;
      _loc2_ = li32(_loc15_ + 8);
      _loc3_ = li32(_loc2_);
      _loc5_ = li32(_loc15_ + 4);
      _loc7_ = li32(_loc5_);
      _loc8_ = int(_loc7_ - _loc3_);
      _loc10_ = li32(_loc15_);
      si32(_loc8_,_loc10_);
      _loc11_ = 1;
      _loc12_ = _loc11_;
      if(uint(_loc7_) >= uint(_loc3_))
      {
         _loc12_ = 0;
      }
      _loc13_ = li32(_loc2_ + 4);
      _loc14_ = li32(_loc5_ + 4);
      _loc8_ = int(_loc14_ - _loc13_);
      _loc6_ = int(_loc8_ - _loc12_);
      si32(_loc6_,_loc10_ + 4);
      _loc4_ = _loc11_;
      if(uint(_loc6_) >= uint(_loc8_))
      {
         _loc4_ = 0;
      }
      _loc12_ = int(0 - _loc12_);
      _loc9_ = _loc11_;
      if(uint(_loc6_) >= uint(_loc12_))
      {
         _loc9_ = _loc4_;
      }
      _loc6_ = _loc11_;
      if(uint(_loc14_) >= uint(_loc13_))
      {
         _loc6_ = 0;
      }
      _loc8_ = _loc12_ >> 31;
      _loc8_ = int(_loc8_ - _loc6_);
      _loc13_ = int(_loc8_ + _loc9_);
      _loc6_ = li32(_loc2_ + 8);
      _loc12_ = li32(_loc5_ + 8);
      _loc8_ = int(_loc12_ - _loc6_);
      _loc4_ = int(_loc8_ + _loc13_);
      si32(_loc4_,_loc10_ + 8);
      _loc9_ = _loc11_;
      if(uint(_loc4_) >= uint(_loc8_))
      {
         _loc9_ = 0;
      }
      _loc14_ = _loc11_;
      if(uint(_loc4_) >= uint(_loc13_))
      {
         _loc14_ = _loc9_;
      }
      _loc4_ = _loc11_;
      if(uint(_loc12_) >= uint(_loc6_))
      {
         _loc4_ = 0;
      }
      _loc8_ = _loc13_ >> 31;
      _loc8_ = int(_loc8_ - _loc4_);
      _loc14_ = int(_loc8_ + _loc14_);
      _loc13_ = li32(_loc2_ + 12);
      _loc12_ = li32(_loc5_ + 12);
      _loc8_ = int(_loc12_ - _loc13_);
      _loc4_ = int(_loc8_ + _loc14_);
      si32(_loc4_,_loc10_ + 12);
      _loc9_ = _loc11_;
      if(uint(_loc4_) >= uint(_loc8_))
      {
         _loc9_ = 0;
      }
      _loc6_ = _loc11_;
      if(uint(_loc4_) >= uint(_loc14_))
      {
         _loc6_ = _loc9_;
      }
      _loc4_ = _loc11_;
      if(uint(_loc12_) >= uint(_loc13_))
      {
         _loc4_ = 0;
      }
      _loc8_ = _loc14_ >> 31;
      _loc8_ = int(_loc8_ - _loc4_);
      _loc13_ = int(_loc8_ + _loc6_);
      _loc6_ = li32(_loc2_ + 16);
      _loc12_ = li32(_loc5_ + 16);
      _loc8_ = int(_loc12_ - _loc6_);
      _loc4_ = int(_loc8_ + _loc13_);
      si32(_loc4_,_loc10_ + 16);
      _loc9_ = _loc11_;
      if(uint(_loc4_) >= uint(_loc8_))
      {
         _loc9_ = 0;
      }
      _loc14_ = _loc11_;
      if(uint(_loc4_) >= uint(_loc13_))
      {
         _loc14_ = _loc9_;
      }
      _loc4_ = _loc11_;
      if(uint(_loc12_) >= uint(_loc6_))
      {
         _loc4_ = 0;
      }
      _loc8_ = _loc13_ >> 31;
      _loc8_ = int(_loc8_ - _loc4_);
      _loc13_ = int(_loc8_ + _loc14_);
      _loc6_ = li32(_loc2_ + 20);
      _loc12_ = li32(_loc5_ + 20);
      _loc8_ = int(_loc12_ - _loc6_);
      _loc4_ = int(_loc8_ + _loc13_);
      si32(_loc4_,_loc10_ + 20);
      _loc9_ = _loc11_;
      if(uint(_loc4_) >= uint(_loc8_))
      {
         _loc9_ = 0;
      }
      _loc14_ = _loc11_;
      if(uint(_loc4_) >= uint(_loc13_))
      {
         _loc14_ = _loc9_;
      }
      _loc4_ = _loc11_;
      if(uint(_loc12_) >= uint(_loc6_))
      {
         _loc4_ = 0;
      }
      _loc8_ = _loc13_ >> 31;
      _loc8_ = int(_loc8_ - _loc4_);
      _loc13_ = int(_loc8_ + _loc14_);
      _loc6_ = li32(_loc2_ + 24);
      _loc12_ = li32(_loc5_ + 24);
      _loc8_ = int(_loc12_ - _loc6_);
      _loc4_ = int(_loc8_ + _loc13_);
      si32(_loc4_,_loc10_ + 24);
      _loc9_ = _loc11_;
      if(uint(_loc4_) >= uint(_loc8_))
      {
         _loc9_ = 0;
      }
      _loc14_ = _loc11_;
      if(uint(_loc4_) >= uint(_loc13_))
      {
         _loc14_ = _loc9_;
      }
      _loc4_ = _loc11_;
      if(uint(_loc12_) >= uint(_loc6_))
      {
         _loc4_ = 0;
      }
      _loc8_ = _loc13_ >> 31;
      _loc8_ = int(_loc8_ - _loc4_);
      _loc14_ = int(_loc8_ + _loc14_);
      _loc2_ = li32(_loc2_ + 28);
      _loc13_ = li32(_loc5_ + 28);
      _loc8_ = int(_loc13_ - _loc2_);
      _loc5_ = int(_loc8_ + _loc14_);
      si32(_loc5_,_loc10_ + 28);
      _loc10_ = _loc11_;
      if(uint(_loc5_) >= uint(_loc8_))
      {
         _loc10_ = 0;
      }
      _loc6_ = _loc11_;
      if(uint(_loc5_) >= uint(_loc14_))
      {
         _loc6_ = _loc10_;
      }
      if(uint(_loc13_) >= uint(_loc2_))
      {
         _loc11_ = 0;
      }
      _loc8_ = _loc14_ >> 31;
      _loc8_ = int(_loc8_ - _loc11_);
      _loc8_ = int(_loc8_ + _loc6_);
      eax = _loc8_;
      _loc1_ = _loc15_;
      ESP = _loc1_;
   }
}
