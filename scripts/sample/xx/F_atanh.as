package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_atanh() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = NaN;
      var _loc5_:* = NaN;
      var _loc12_:* = 0;
      var _loc11_:Number = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc5_ = lf64(_loc3_);
      sf64(_loc5_,_loc3_ - 8);
      _loc1_ = li32(_loc3_ - 8);
      _loc12_ = int(0 - _loc1_);
      _loc12_ = _loc1_ | _loc12_;
      _loc12_ = int(_loc12_ >>> 31);
      var _loc10_:* = int(_loc3_ - 8);
      _loc10_ = _loc10_ | 4;
      _loc9_ = li32(_loc10_);
      _loc7_ = _loc9_ & 2147483647;
      _loc12_ = _loc12_ | _loc7_;
      if(uint(_loc12_) >= 1072693249)
      {
         var _loc4_:Number = _loc5_ - _loc5_;
         _loc5_ = Number(_loc4_ / _loc4_);
      }
      else if(_loc7_ == 1072693248)
      {
         _loc5_ = Number(_loc5_ / 0);
      }
      else
      {
         if(uint(_loc7_) <= 1043333119)
         {
            _loc4_ = _loc5_ + 1.0e300;
            if(_loc4_ <= 0)
            {
            }
         }
         _loc12_ = int(_loc3_ - 16);
         _loc12_ = _loc12_ | 4;
         si32(_loc7_,_loc12_);
         si32(_loc1_,_loc3_ - 16);
         _loc8_ = lf64(_loc3_ - 16);
         _loc5_ = Number(_loc8_ + _loc8_);
         if(uint(_loc7_) <= 1071644671)
         {
            _loc4_ = Number(_loc5_ * _loc8_) / (Number(1 - _loc8_));
            _loc2_ = int(_loc2_ - 16);
            sf64(Number(_loc4_ + _loc5_),_loc2_);
            ESP = _loc2_;
            F_log1p();
            _loc2_ = int(_loc2_ + 16);
            _loc11_ = st0;
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            sf64(Number(_loc5_ / (Number(1 - _loc8_))),_loc2_);
            ESP = _loc2_;
            F_log1p();
            _loc2_ = int(_loc2_ + 16);
            _loc11_ = st0;
         }
         _loc5_ = Number(_loc11_ * 0.5);
         if(_loc9_ <= -1)
         {
            _loc5_ = Number(-_loc5_);
         }
      }
      st0 = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
