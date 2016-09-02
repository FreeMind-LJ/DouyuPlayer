package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___exp__D() : void
   {
      var _loc4_:* = 0;
      var _loc6_:* = NaN;
      var _loc5_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc4_ = _loc3_;
      _loc3_ = int(_loc3_ - 32);
      _loc6_ = lf64(_loc4_);
      _loc5_ = _loc6_;
      if(!(_loc6_ != _loc6_ | _loc6_ != _loc6_))
      {
         if(!(_loc6_ > 716.021037518424 | _loc6_ != _loc6_ | false))
         {
            _loc5_ = 0;
            if(!(_loc6_ < -751.371543726981 | _loc6_ != _loc6_ | false))
            {
               sf64(_loc6_,_loc4_ - 8);
               var _loc12_:* = int(_loc4_ - 8);
               _loc12_ = _loc12_ | 4;
               _loc12_ = li32(_loc12_);
               _loc12_ = _loc12_ & -2147483648;
               _loc12_ = _loc12_ | 1071644672;
               si32(_loc12_,int(_loc4_ - 16) | 4);
               si32(0,_loc4_ - 16);
               var _loc11_:* = lf64(_loc4_ - 16);
               _loc11_ = Number(_loc11_ + Number(_loc6_ * 1.44269504088896));
               _loc11_ = Number(int(_loc11_));
               _loc3_ = int(_loc3_ - 16);
               sf64(_loc11_,_loc3_ + 8);
               var _loc7_:Number = _loc11_ * 1.90821492927059e-10;
               var _loc8_:Number = _loc7_ - lf64(_loc4_ + 8);
               _loc11_ = Number(_loc11_ * -0.693147180369124);
               _loc11_ = Number(_loc11_ + _loc6_);
               _loc7_ = _loc11_ - _loc8_;
               var _loc10_:Number = _loc7_ * _loc7_;
               _loc10_ = _loc7_ - (Number((Number((Number((Number(_loc10_ * 4.13813679705724e-8) + -1.65339022054653e-6) * _loc10_) + 0.0000661375632143793) * _loc10_) + -0.00277777777770156) * _loc10_) + 0.166666666666666) * _loc10_;
               _loc8_ = _loc11_ - (Number(_loc8_ - Number(_loc7_ * _loc10_) / (Number(2 - _loc10_))));
               _loc8_ = _loc8_ + 1;
               sf64(_loc8_,_loc3_);
               ESP = _loc3_;
               F_scalb();
               _loc3_ = int(_loc3_ + 16);
               _loc5_ = Number(st0);
            }
         }
         else
         {
            sf64(_loc6_,_loc4_ - 24);
            var _loc9_:* = int(_loc4_ - 24);
            _loc9_ = _loc9_ | 4;
            _loc9_ = li32(_loc9_);
            _loc9_ = _loc9_ & 2147483647;
            _loc5_ = _loc6_;
            if(int(_loc9_ + -2146435072) <= -1)
            {
               _loc5_ = Number(inf);
            }
         }
      }
      st0 = _loc5_;
      _loc3_ = _loc4_;
      ESP = _loc3_;
   }
}
