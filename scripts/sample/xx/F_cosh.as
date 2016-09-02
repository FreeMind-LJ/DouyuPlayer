package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   
   public function F_cosh() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = NaN;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:Number = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc5_ = lf64(_loc3_);
      sf64(_loc5_,_loc3_ - 8);
      _loc1_ = int(_loc3_ - 8);
      _loc1_ = _loc1_ | 4;
      _loc1_ = li32(_loc1_);
      _loc8_ = _loc1_ & 2147483647;
      if(uint(_loc8_) >= 2146435072)
      {
         _loc4_ = _loc5_ * _loc5_;
      }
      else if(uint(_loc8_) <= 1071001154)
      {
         _loc2_ = int(_loc2_ - 16);
         var _loc7_:Number = Math.abs(_loc5_);
         sf64(_loc7_,_loc2_);
         ESP = _loc2_;
         F_expm1();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = Number(st0);
         _loc4_ = _loc5_ + 1;
         if(uint(_loc8_) >= 1015021568)
         {
            _loc7_ = _loc5_ * _loc5_;
            _loc7_ = _loc7_ / (Number(_loc4_ + _loc4_));
            _loc4_ = _loc7_ + 1;
         }
      }
      else if(uint(_loc8_) <= 1077280767)
      {
         _loc2_ = int(_loc2_ - 16);
         _loc7_ = Math.abs(_loc5_);
         sf64(_loc7_,_loc2_);
         ESP = _loc2_;
         F_exp();
         _loc2_ = int(_loc2_ + 16);
         var _loc6_:Number = st0;
         _loc6_ = _loc6_ * 0.5;
         _loc4_ = _loc6_ + Number(0.5 / _loc6_);
      }
      else if(uint(_loc8_) <= 1082535489)
      {
         _loc2_ = int(_loc2_ - 16);
         _loc7_ = Math.abs(_loc5_);
         sf64(_loc7_,_loc2_);
         ESP = _loc2_;
         F_exp();
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = st0;
         _loc4_ = _loc7_ * 0.5;
      }
      else
      {
         if(uint(_loc8_) >= 1082536910)
         {
            _loc4_ = inf;
            if(_loc8_ == 1082536910)
            {
               if(uint(li32(_loc3_ - 8)) <= 2411329661)
               {
               }
            }
         }
         _loc2_ = int(_loc2_ - 16);
         _loc7_ = Math.abs(_loc5_);
         _loc7_ = _loc7_ * 0.5;
         sf64(_loc7_,_loc2_);
         ESP = _loc2_;
         F_exp();
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = st0;
         _loc6_ = _loc7_ * 0.5;
         _loc4_ = _loc6_ * _loc7_;
      }
      st0 = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
