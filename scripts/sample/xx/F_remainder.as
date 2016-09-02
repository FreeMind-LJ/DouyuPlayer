package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_remainder() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = NaN;
      var _loc8_:* = 0;
      var _loc13_:* = 0;
      var _loc10_:* = 0;
      var _loc2_:* = 0;
      var _loc12_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = NaN;
      var _loc14_:* = 0;
      var _loc9_:* = NaN;
      var _loc1_:* = int(ESP);
      _loc3_ = _loc1_;
      _loc1_ = int(_loc1_ - 32);
      _loc7_ = lf64(_loc3_ + 8);
      sf64(_loc7_,_loc3_ - 16);
      _loc5_ = lf64(_loc3_);
      sf64(_loc5_,_loc3_ - 8);
      _loc2_ = int(_loc3_ - 16);
      _loc2_ = _loc2_ | 4;
      _loc2_ = li32(_loc2_);
      _loc14_ = _loc2_ & 2147483647;
      _loc13_ = li32(_loc3_ - 16);
      _loc2_ = _loc14_ | _loc13_;
      if(_loc2_ == 0)
      {
         var _loc11_:Number = _loc5_ * _loc7_;
         _loc9_ = Number(_loc11_ / _loc11_);
      }
      else
      {
         _loc12_ = li32(int(_loc3_ - 8) | 4);
         _loc10_ = _loc12_ & 2147483647;
         if(uint(_loc10_) <= 2146435071)
         {
            _loc8_ = li32(_loc3_ - 8);
            if(uint(_loc14_) >= 2146435072)
            {
               if((int(_loc14_ + -2146435072) | _loc13_) != 0)
               {
               }
            }
            if(uint(_loc14_) <= 2145386495)
            {
               _loc1_ = int(_loc1_ - 16);
               sf64(_loc5_,_loc1_);
               _loc11_ = _loc7_ + _loc7_;
               sf64(_loc11_,_loc1_ + 8);
               ESP = _loc1_;
               F_fmod();
               _loc1_ = int(_loc1_ + 16);
               _loc5_ = Number(st0);
            }
            var _loc6_:* = int(_loc8_ - _loc13_);
            _loc2_ = int(_loc10_ - _loc14_);
            _loc2_ = _loc2_ | _loc6_;
            if(_loc2_ == 0)
            {
               _loc9_ = Number(_loc5_ * 0);
            }
            else
            {
               _loc8_ = _loc12_ & -2147483648;
               _loc7_ = Number(Math.abs(_loc7_));
               _loc5_ = Number(Math.abs(_loc5_));
               if(uint(_loc14_) <= 2097151)
               {
                  _loc11_ = _loc5_ + _loc5_;
                  if(!(_loc11_ <= _loc7_ | _loc11_ != _loc11_ | _loc7_ != _loc7_))
                  {
                     _loc5_ = Number(_loc5_ - _loc7_);
                     _loc11_ = _loc5_ + _loc5_;
                     if(!(_loc11_ < _loc7_ | _loc11_ != _loc11_ | _loc7_ != _loc7_))
                     {
                        _loc5_ = Number(_loc5_ - _loc7_);
                     }
                  }
               }
               else
               {
                  _loc9_ = Number(_loc7_ * 0.5);
                  if(!(_loc5_ <= _loc9_ | _loc5_ != _loc5_ | _loc9_ != _loc9_))
                  {
                     _loc5_ = Number(_loc5_ - _loc7_);
                     if(!(_loc5_ < _loc9_ | _loc5_ != _loc5_ | _loc9_ != _loc9_))
                     {
                        _loc5_ = Number(_loc5_ - _loc7_);
                     }
                  }
               }
               sf64(_loc5_,_loc3_ - 24);
               _loc2_ = int(_loc3_ - 24);
               _loc2_ = _loc2_ | 4;
               _loc4_ = li32(_loc2_);
               _loc2_ = _loc4_ & 2147483647;
               _loc14_ = 0;
               if(_loc2_ != _loc14_)
               {
                  _loc14_ = _loc4_;
               }
               _loc2_ = _loc14_ ^ _loc8_;
               _loc6_ = int(_loc3_ - 32);
               _loc6_ = _loc6_ | 4;
               si32(_loc2_,_loc6_);
               _loc2_ = li32(_loc3_ - 24);
               si32(_loc2_,_loc3_ - 32);
               _loc9_ = lf64(_loc3_ - 32);
            }
         }
         _loc11_ = _loc5_ * _loc7_;
         _loc9_ = Number(_loc11_ / _loc11_);
      }
      st0 = _loc9_;
      _loc1_ = _loc3_;
      ESP = _loc1_;
   }
}
