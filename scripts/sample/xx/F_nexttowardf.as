package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_nexttowardf() : void
   {
      var _loc4_:* = 0;
      var _loc6_:* = NaN;
      var _loc3_:* = 0;
      var _loc11_:* = NaN;
      var _loc10_:* = 0;
      var _loc7_:int = 0;
      var _loc13_:* = 0;
      var _loc1_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc6_ = lf64(_loc4_ + 4);
      sf64(_loc6_,_loc4_ - 16);
      _loc1_ = lf32(_loc4_);
      sf32(_loc1_,_loc4_ - 20);
      _loc3_ = li32(_loc4_ - 20);
      _loc13_ = _loc3_ & 2147483647;
      if(uint(_loc13_) <= 2139095040)
      {
         var _loc12_:* = int(_loc4_ - 16);
         _loc12_ = _loc12_ | 4;
         _loc10_ = li32(_loc12_);
         _loc12_ = int(_loc10_ >>> 20);
         _loc12_ = _loc12_ & 2047;
         if(_loc12_ == 2047)
         {
            var _loc8_:* = _loc10_ & 1048575;
            _loc12_ = _loc8_ | li32(_loc4_ - 16);
            if(_loc12_ != 0)
            {
            }
            addr294:
            st0 = _loc1_;
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
         _loc11_ = _loc1_;
         if(!(_loc11_ != _loc6_ | _loc11_ != _loc11_ | _loc6_ != _loc6_))
         {
            _loc1_ = _loc6_;
         }
         else if(_loc13_ == 0)
         {
            _loc12_ = _loc10_ & -2147483648;
            _loc12_ = _loc12_ | 1;
            si32(_loc12_,_loc4_ - 32);
            _loc1_ = lf32(_loc4_ - 32);
            var _loc5_:* = _loc1_;
            var _loc9_:* = Number(_loc5_ * _loc5_);
            sf32(_loc9_,_loc4_ - 4);
            _loc9_ = lf32(_loc4_ - 4);
            if(!(_loc9_ != _loc5_ | _loc9_ != _loc9_ | _loc5_ != _loc5_))
            {
               _loc1_ = lf32(_loc4_ - 4);
            }
         }
         else
         {
            _loc10_ = 1;
            if(_loc11_ >= _loc6_)
            {
               _loc10_ = 0;
            }
            _loc13_ = -1;
            _loc7_ = 1;
            if(_loc3_ <= _loc13_)
            {
               _loc7_ = 0;
            }
            _loc12_ = _loc7_ ^ _loc10_;
            if(_loc12_ == 0)
            {
               _loc13_ = 1;
            }
            _loc7_ = _loc13_ + _loc3_;
            _loc3_ = _loc7_ & 2139095040;
            if(_loc3_ == 2139095040)
            {
               _loc5_ = Number(_loc11_ + _loc11_);
               _loc1_ = _loc5_;
            }
            else
            {
               if(uint(_loc3_) <= 8388607)
               {
                  _loc5_ = Number(_loc11_ * _loc11_);
                  sf32(_loc5_,_loc4_ - 4);
                  _loc5_ = lf32(_loc4_ - 4);
                  if(_loc5_ != _loc11_)
                  {
                     si32(_loc7_,_loc4_ - 28);
                     _loc1_ = lf32(_loc4_ - 28);
                  }
               }
               si32(_loc7_,_loc4_ - 24);
               _loc1_ = lf32(_loc4_ - 24);
            }
         }
         §§goto(addr294);
      }
      _loc5_ = _loc1_;
      _loc5_ = Number(_loc5_ + _loc6_);
      _loc1_ = _loc5_;
      §§goto(addr294);
   }
}
