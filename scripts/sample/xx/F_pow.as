package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   
   public function F_pow() : void
   {
      var _loc2_:* = 0;
      var _loc4_:* = NaN;
      var _loc3_:* = NaN;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc4_ = lf64(_loc2_);
      _loc3_ = lf64(_loc2_ + 8);
      _loc4_ = Number(Math.pow(_loc4_,_loc3_));
      st0 = _loc4_;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
