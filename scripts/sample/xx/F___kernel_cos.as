package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   
   public function F___kernel_cos() : void
   {
      var _loc2_:* = 0;
      var _loc4_:* = NaN;
      var _loc3_:Number = NaN;
      var _loc6_:Number = NaN;
      var _loc5_:* = NaN;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc4_ = lf64(_loc2_);
      _loc3_ = _loc4_ * _loc4_;
      _loc6_ = _loc3_ * -1.13596475577882e-11;
      _loc6_ = _loc6_ + 2.08757232129818e-9;
      _loc6_ = _loc6_ * _loc3_;
      _loc6_ = _loc6_ + -2.75573143513907e-7;
      _loc5_ = Number(_loc3_ * _loc3_);
      _loc5_ = Number(_loc5_ * _loc5_);
      _loc6_ = _loc5_ * _loc6_;
      _loc5_ = Number(_loc3_ * 0.0000248015872894767);
      _loc5_ = Number(_loc5_ + -0.00138888888888741);
      _loc5_ = Number(_loc5_ * _loc3_);
      _loc5_ = Number(_loc5_ + 0.0416666666666666);
      _loc5_ = Number(_loc5_ * _loc3_);
      _loc6_ = _loc5_ + _loc6_;
      _loc6_ = _loc3_ * _loc6_;
      _loc5_ = lf64(_loc2_ + 8);
      _loc4_ = Number(_loc4_ * _loc5_);
      _loc4_ = Number(_loc6_ - _loc4_);
      _loc5_ = Number(_loc3_ * 0.5);
      _loc3_ = 1 - _loc5_;
      _loc6_ = 1 - _loc3_;
      _loc6_ = _loc6_ - _loc5_;
      _loc4_ = Number(_loc6_ + _loc4_);
      _loc3_ = _loc4_ + _loc3_;
      st0 = _loc3_;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
