package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   
   public function F___kernel_cosdf() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = NaN;
      var _loc4_:Number = NaN;
      var _loc7_:Number = NaN;
      var _loc6_:Number = NaN;
      var _loc1_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc5_ = lf64(_loc3_);
      _loc5_ = Number(_loc5_ * _loc5_);
      _loc4_ = _loc5_ * _loc5_;
      _loc7_ = _loc4_ * _loc5_;
      _loc6_ = _loc5_ * 0.0000243904487962774;
      _loc6_ = _loc6_ + -0.00138867637746099;
      _loc7_ = _loc7_ * _loc6_;
      _loc4_ = _loc4_ * 0.0416666233237391;
      _loc5_ = Number(_loc5_ * -0.499999997251031);
      _loc5_ = Number(_loc5_ + 1);
      _loc5_ = Number(_loc5_ + _loc4_);
      _loc5_ = Number(_loc5_ + _loc7_);
      _loc1_ = _loc5_;
      st0 = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
