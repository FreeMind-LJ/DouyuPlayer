package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.lf64;
   
   public function F___floatundidf() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = NaN;
      var _loc4_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = int(_loc3_ - 16);
      _loc1_ = _loc1_ | 4;
      si32(1160773632,_loc1_);
      _loc1_ = int(_loc3_ - 8);
      _loc1_ = _loc1_ | 4;
      si32(1127219200,_loc1_);
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc3_ - 8);
      _loc1_ = _loc3_;
      _loc1_ = _loc1_ | 4;
      _loc1_ = li32(_loc1_);
      si32(_loc1_,_loc3_ - 16);
      _loc5_ = lf64(_loc3_ - 16);
      _loc5_ = Number(_loc5_ + -1.93428131183377e25);
      _loc4_ = lf64(_loc3_ - 8);
      _loc5_ = Number(_loc5_ + _loc4_);
      st0 = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
