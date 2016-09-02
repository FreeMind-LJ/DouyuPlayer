package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf32;
   
   public function F___floatdisf() : void
   {
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc4_ = _loc3_;
      _loc3_ = int(_loc3_ - 16);
      _loc2_ = li32(_loc4_ + 4);
      _loc12_ = li32(_loc4_);
      _loc11_ = _loc12_ | _loc2_;
      _loc1_ = 0;
      if(_loc11_ != 0)
      {
         _loc10_ = _loc2_ >> 31;
         _loc12_ = _loc10_ ^ _loc12_;
         _loc9_ = 1;
         if(uint(_loc12_) >= uint(_loc10_))
         {
            _loc9_ = 0;
         }
         _loc11_ = _loc10_ ^ _loc2_;
         _loc11_ = int(_loc11_ - _loc10_);
         _loc9_ = int(_loc11_ - _loc9_);
         _loc11_ = int(_loc9_ >>> 1);
         _loc11_ = _loc9_ | _loc11_;
         var _loc8_:* = int(_loc11_ >>> 2);
         _loc11_ = _loc11_ | _loc8_;
         _loc8_ = int(_loc11_ >>> 4);
         _loc11_ = _loc11_ | _loc8_;
         _loc8_ = int(_loc11_ >>> 8);
         _loc11_ = _loc11_ | _loc8_;
         _loc8_ = int(_loc11_ >>> 16);
         _loc11_ = _loc11_ | _loc8_;
         _loc11_ = _loc11_ ^ -1;
         _loc8_ = int(_loc11_ >>> 1);
         _loc8_ = _loc8_ & 1431655765;
         _loc8_ = int(_loc11_ - _loc8_);
         _loc11_ = _loc8_ & 858993459;
         _loc8_ = int(_loc8_ >>> 2);
         _loc8_ = _loc8_ & 858993459;
         _loc11_ = int(_loc11_ + _loc8_);
         _loc8_ = int(_loc11_ >>> 4);
         _loc11_ = int(_loc11_ + _loc8_);
         _loc11_ = _loc11_ & 252645135;
         _loc11_ = int(_loc11_ * 16843009);
         _loc2_ = int(_loc11_ >>> 24);
         _loc7_ = int(_loc12_ - _loc10_);
         if(_loc9_ == 0)
         {
            _loc8_ = _loc7_ | int(_loc7_ >>> 1);
            _loc8_ = _loc8_ | int(_loc8_ >>> 2);
            _loc8_ = _loc8_ | int(_loc8_ >>> 4);
            _loc8_ = _loc8_ | int(_loc8_ >>> 8);
            _loc11_ = _loc8_ | int(_loc8_ >>> 16);
            _loc11_ = _loc11_ ^ -1;
            _loc8_ = int(_loc11_ >>> 1);
            _loc8_ = int(_loc11_ - (_loc8_ & 1431655765));
            _loc8_ = int(_loc8_ >>> 2);
            _loc8_ = int((_loc8_ & 858993459) + (_loc8_ & 858993459));
            _loc11_ = int(_loc8_ + (int(_loc8_ >>> 4)));
            _loc11_ = _loc11_ & 252645135;
            _loc11_ = int(_loc11_ * 16843009);
            _loc11_ = int(_loc11_ >>> 24);
            _loc2_ = int(_loc11_ + 32);
         }
         _loc12_ = int(63 - _loc2_);
         _loc2_ = int(64 - _loc2_);
         if(_loc2_ >= 25)
         {
            if(_loc2_ != 26)
            {
               if(_loc2_ == 25)
               {
                  _loc11_ = _loc9_ << 1;
                  _loc9_ = _loc11_ | int(_loc7_ >>> 31);
                  _loc7_ = _loc7_ << 1;
               }
               else
               {
                  _loc3_ = int(_loc3_ - 16);
                  _loc11_ = int(_loc2_ + -26);
                  si32(_loc11_,_loc3_ + 8);
                  si32(_loc7_,_loc3_);
                  si32(_loc9_,_loc3_ + 4);
                  ESP = _loc3_;
                  F___lshrdi3();
                  _loc3_ = int(_loc3_ + 16);
                  _loc6_ = int(eax);
                  _loc5_ = int(edx);
                  _loc3_ = int(_loc3_ - 16);
                  _loc11_ = int(90 - _loc2_);
                  si32(_loc11_,_loc3_ + 8);
                  si32(-1,_loc3_ + 4);
                  si32(-1,_loc3_);
                  ESP = _loc3_;
                  F___lshrdi3();
                  _loc3_ = int(_loc3_ + 16);
                  _loc8_ = int(edx);
                  _loc8_ = _loc8_ & _loc9_;
                  _loc11_ = int(eax) & _loc7_;
                  _loc9_ = 1;
                  if((_loc11_ | _loc8_) == 0)
                  {
                     _loc9_ = 0;
                  }
                  _loc11_ = _loc9_ & 1;
                  _loc7_ = _loc11_ | _loc6_;
                  _loc9_ = _loc5_;
               }
            }
            _loc11_ = int(_loc7_ >>> 2);
            _loc11_ = _loc11_ & 1;
            _loc11_ = _loc11_ | _loc7_;
            _loc6_ = int(_loc11_ + 1);
            _loc7_ = 1;
            _loc5_ = _loc7_;
            if(uint(_loc6_) >= uint(_loc11_))
            {
               _loc5_ = 0;
            }
            if(_loc6_ != 0)
            {
               _loc7_ = _loc5_;
            }
            _loc9_ = int(_loc9_ + _loc7_);
            _loc11_ = _loc9_ << 30;
            _loc8_ = int(_loc6_ >>> 2);
            _loc6_ = _loc8_ | _loc11_;
            _loc11_ = _loc6_ & 16777216;
            if(_loc11_ != 0)
            {
               _loc11_ = int(_loc6_ >>> 1);
               _loc6_ = _loc11_ | _loc9_ >> 2 << 31;
               _loc12_ = _loc2_;
            }
         }
         else
         {
            _loc3_ = int(_loc3_ - 16);
            si32(_loc7_,_loc3_);
            _loc11_ = int(24 - _loc2_);
            si32(_loc11_,_loc3_ + 8);
            si32(_loc9_,_loc3_ + 4);
            ESP = _loc3_;
            F___ashldi3();
            _loc3_ = int(_loc3_ + 16);
            _loc6_ = int(eax);
         }
         _loc11_ = _loc10_ & -2147483648;
         _loc8_ = _loc12_ << 23;
         _loc8_ = int(_loc8_ + 1065353216);
         _loc11_ = _loc8_ | _loc11_;
         _loc8_ = _loc6_ & 8388607;
         _loc11_ = _loc11_ | _loc8_;
         si32(_loc11_,_loc4_ - 4);
         _loc1_ = lf32(_loc4_ - 4);
      }
      st0 = _loc1_;
      _loc3_ = _loc4_;
      ESP = _loc3_;
   }
}
