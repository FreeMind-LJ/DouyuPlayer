package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   
   public function F_ldexp() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = NaN;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc4_ = lf64(_loc3_);
      _loc1_ = li32(_loc3_ + 8);
      _loc4_ = Number(_loc4_ * Math.pow(2,_loc1_));
      st0 = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
