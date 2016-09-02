package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf32;
   
   public function F___mulsf3() : void
   {
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc14_:* = 0;
      var _loc9_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = 0;
      var _loc7_:int = 0;
      var _loc1_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 32);
      _loc4_ = li32(_loc5_);
      _loc14_ = li32(_loc5_ + 4);
      var _loc13_:* = _loc14_ ^ _loc4_;
      _loc12_ = _loc13_ & -2147483648;
      _loc11_ = _loc14_ & 8388607;
      _loc10_ = _loc4_ & 8388607;
      _loc13_ = int(_loc14_ >>> 23);
      _loc9_ = _loc13_ & 255;
      _loc13_ = int(_loc4_ >>> 23);
      _loc8_ = _loc13_ & 255;
      _loc13_ = int(_loc8_ + -1);
      if(uint(_loc13_) <= 253)
      {
         _loc7_ = 0;
         if(uint(int(_loc9_ + -1)) >= 254)
         {
         }
         addr466:
         _loc3_ = int(_loc3_ - 16);
         si32(0,_loc3_ + 12);
         si32(0,_loc3_ + 4);
         _loc13_ = _loc10_ | 8388608;
         si32(_loc13_,_loc3_ + 8);
         _loc13_ = _loc11_ << 8;
         _loc13_ = _loc13_ | -2147483648;
         si32(_loc13_,_loc3_);
         _loc13_ = int(_loc9_ + _loc8_);
         _loc14_ = int(_loc13_ + _loc7_);
         ESP = _loc3_;
         F___muldi3();
         _loc3_ = int(_loc3_ + 16);
         _loc2_ = int(eax);
         _loc8_ = int(edx);
         _loc13_ = _loc8_ & 8388608;
         if(_loc13_ != 0)
         {
            _loc14_ = int(_loc14_ + -126);
         }
         else
         {
            var _loc6_:* = _loc8_ << 1;
            _loc8_ = _loc6_ | int(_loc2_ >>> 31);
            _loc2_ = _loc2_ << 1;
            _loc14_ = int(_loc14_ + -127);
         }
         addr746:
         if(_loc14_ >= 255)
         {
            _loc13_ = _loc12_ | 2139095040;
            si32(_loc13_,_loc5_ - 8);
            _loc1_ = lf32(_loc5_ - 8);
         }
         else
         {
            if(_loc14_ <= 0)
            {
               _loc14_ = int(1 - _loc14_);
               if(uint(_loc14_) <= 31)
               {
                  _loc9_ = int(32 - _loc14_);
                  _loc10_ = 1;
                  if(_loc2_ << _loc9_ == 0)
                  {
                     _loc10_ = 0;
                  }
                  _loc13_ = int(_loc2_ >>> _loc14_);
                  _loc6_ = _loc8_ << _loc9_;
                  _loc13_ = _loc6_ | _loc13_;
                  _loc6_ = _loc10_ & 1;
                  _loc2_ = _loc13_ | _loc6_;
                  _loc9_ = int(_loc8_ >>> _loc14_);
               }
               else if(uint(_loc14_) <= 63)
               {
                  _loc13_ = _loc8_ << int(64 - _loc14_);
                  _loc2_ = 1;
                  _loc9_ = 0;
                  if((_loc13_ | _loc2_) == _loc9_)
                  {
                     _loc2_ = _loc9_;
                  }
                  _loc13_ = int(_loc14_ + -32);
                  _loc13_ = int(_loc8_ >>> _loc13_);
                  _loc6_ = _loc2_ & 1;
                  _loc2_ = _loc6_ | _loc13_;
               }
               addr735:
               si32(_loc12_,_loc5_ - 4);
               _loc1_ = lf32(_loc5_ - 4);
            }
            else
            {
               _loc6_ = _loc14_ << 23;
               _loc9_ = _loc6_ | _loc8_ & 8388607;
            }
            _loc8_ = 1;
            if(uint(_loc2_) <= 2147483648)
            {
               _loc8_ = 0;
            }
            _loc13_ = _loc8_ & 1;
            _loc6_ = _loc9_ | _loc12_;
            _loc12_ = int(_loc6_ + _loc13_);
            if(_loc2_ == -2147483648)
            {
               _loc13_ = _loc12_ & 1;
               _loc12_ = int(_loc13_ + _loc12_);
            }
            §§goto(addr735);
         }
         st0 = _loc1_;
         _loc3_ = _loc5_;
         ESP = _loc3_;
         return;
      }
      _loc2_ = _loc4_ & 2147483647;
      if(uint(_loc2_) >= 2139095041)
      {
         _loc13_ = _loc4_ | 4194304;
         si32(_loc13_,_loc5_ - 32);
         _loc1_ = lf32(_loc5_ - 32);
      }
      else
      {
         _loc4_ = _loc14_ & 2147483647;
         if(uint(_loc4_) >= 2139095041)
         {
            _loc13_ = _loc14_ | 4194304;
            si32(_loc13_,_loc5_ - 28);
            _loc1_ = lf32(_loc5_ - 28);
         }
         else if(_loc2_ == 2139095040)
         {
            _loc1_ = Number(nan);
            if(_loc4_ != 0)
            {
               _loc13_ = _loc12_ | _loc2_;
               si32(_loc13_,_loc5_ - 24);
               _loc1_ = lf32(_loc5_ - 24);
            }
         }
         else if(_loc4_ == 2139095040)
         {
            _loc1_ = Number(nan);
            if(_loc2_ != 0)
            {
               _loc13_ = _loc12_ | _loc4_;
               si32(_loc13_,_loc5_ - 20);
               _loc1_ = lf32(_loc5_ - 20);
            }
         }
         else if(_loc2_ == 0)
         {
            si32(_loc12_,_loc5_ - 16);
            _loc1_ = lf32(_loc5_ - 16);
         }
         else if(_loc4_ == 0)
         {
            si32(_loc12_,_loc5_ - 12);
            _loc1_ = lf32(_loc5_ - 12);
         }
         else
         {
            _loc7_ = 0;
            if(uint(_loc2_) <= 8388607)
            {
               _loc13_ = _loc10_ | int(_loc10_ >>> 1);
               _loc13_ = _loc13_ | int(_loc13_ >>> 2);
               _loc13_ = _loc13_ | int(_loc13_ >>> 4);
               _loc13_ = _loc13_ | int(_loc13_ >>> 8);
               _loc13_ = _loc13_ | int(_loc13_ >>> 16);
               _loc13_ = _loc13_ ^ -1;
               _loc6_ = int(_loc13_ >>> 1);
               _loc6_ = int(_loc13_ - (_loc6_ & 1431655765));
               _loc6_ = int(_loc6_ >>> 2);
               _loc13_ = int((_loc6_ & 858993459) + (_loc6_ & 858993459));
               _loc13_ = int(_loc13_ + (int(_loc13_ >>> 4)));
               _loc13_ = _loc13_ & 252645135;
               _loc13_ = int(_loc13_ * 16843009);
               _loc6_ = int(_loc13_ >>> 24);
               _loc10_ = _loc10_ << int(_loc6_ + -8);
               _loc7_ = 9 - _loc6_;
            }
            if(uint(_loc4_) <= 8388607)
            {
               _loc13_ = _loc11_ | int(_loc11_ >>> 1);
               _loc13_ = _loc13_ | int(_loc13_ >>> 2);
               _loc6_ = _loc13_ | int(_loc13_ >>> 4);
               _loc6_ = _loc6_ | int(_loc6_ >>> 8);
               _loc13_ = _loc6_ | int(_loc6_ >>> 16);
               _loc13_ = _loc13_ ^ -1;
               _loc6_ = int(_loc13_ >>> 1);
               _loc6_ = int(_loc13_ - (_loc6_ & 1431655765));
               _loc6_ = int(_loc6_ >>> 2);
               _loc6_ = int((_loc6_ & 858993459) + (_loc6_ & 858993459));
               _loc13_ = int(_loc6_ + (int(_loc6_ >>> 4)));
               _loc13_ = _loc13_ & 252645135;
               _loc13_ = int(_loc13_ * 16843009);
               _loc13_ = int(_loc13_ >>> 24);
               _loc6_ = int(_loc7_ + 9);
               _loc7_ = _loc6_ - _loc13_;
               _loc11_ = _loc11_ << int(_loc13_ + -8);
            }
            §§goto(addr466);
         }
      }
      §§goto(addr746);
   }
}
