package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   
   public function F_copysign() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 8);
      _loc1_ = _loc3_;
      _loc1_ = _loc1_ | 4;
      _loc1_ = li32(_loc1_);
      _loc1_ = _loc1_ & 2147483647;
      _loc5_ = int(_loc3_ + 8);
      _loc5_ = _loc5_ | 4;
      _loc5_ = li32(_loc5_);
      _loc5_ = _loc5_ & -2147483648;
      _loc1_ = _loc5_ | _loc1_;
      _loc5_ = int(_loc3_ - 8);
      _loc5_ = _loc5_ | 4;
      si32(_loc1_,_loc5_);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc3_ - 8);
      var _loc4_:* = lf64(_loc3_ - 8);
      st0 = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
