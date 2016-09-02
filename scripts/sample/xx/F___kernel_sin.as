package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   
   public function F___kernel_sin() : void
   {
      var _loc4_:* = 0;
      var _loc5_:Number = NaN;
      var _loc10_:Number = NaN;
      var _loc9_:Number = NaN;
      var _loc7_:Number = NaN;
      var _loc2_:* = 0;
      var _loc8_:* = NaN;
      var _loc6_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc4_ = _loc3_;
      _loc6_ = lf64(_loc4_);
      _loc5_ = _loc6_ * _loc6_;
      _loc8_ = Number(_loc5_ * _loc5_);
      _loc8_ = Number(_loc5_ * _loc8_);
      _loc7_ = _loc5_ * 1.58969099521155e-10;
      _loc7_ = _loc7_ + -2.50507602534069e-8;
      _loc8_ = Number(_loc8_ * _loc7_);
      _loc7_ = _loc5_ * 2.75573137070701e-6;
      _loc7_ = _loc7_ + -0.00019841269829858;
      _loc7_ = _loc7_ * _loc5_;
      _loc7_ = _loc7_ + 0.00833333333332249;
      _loc10_ = _loc7_ + _loc8_;
      _loc9_ = _loc5_ * _loc6_;
      _loc2_ = li32(_loc4_ + 16);
      if(_loc2_ == 0)
      {
         _loc8_ = Number(_loc5_ * _loc10_);
         _loc8_ = Number(_loc8_ + -0.166666666666666);
         _loc8_ = Number(_loc8_ * _loc9_);
         _loc6_ = Number(_loc8_ + _loc6_);
      }
      else
      {
         _loc8_ = lf64(_loc4_ + 8);
         _loc7_ = _loc8_ * 0.5;
         _loc7_ = _loc7_ - _loc9_ * _loc10_;
         _loc7_ = _loc7_ * _loc5_;
         _loc6_ = Number(_loc6_ - (Number(Number(_loc7_ - _loc8_) + Number(_loc9_ * 0.166666666666666))));
      }
      st0 = _loc6_;
      _loc3_ = _loc4_;
      ESP = _loc3_;
   }
}
