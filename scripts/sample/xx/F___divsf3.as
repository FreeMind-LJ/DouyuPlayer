package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf32;
   
   public function F___divsf3() : void
   {
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc15_:* = 0;
      var _loc10_:* = 0;
      var _loc13_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = 0;
      var _loc8_:int = 0;
      var _loc1_:* = NaN;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 48);
      _loc4_ = li32(_loc5_);
      _loc15_ = li32(_loc5_ + 4);
      var _loc14_:* = _loc15_ ^ _loc4_;
      _loc13_ = _loc14_ & -2147483648;
      _loc12_ = _loc15_ & 8388607;
      _loc11_ = _loc4_ & 8388607;
      _loc14_ = int(_loc15_ >>> 23);
      _loc10_ = _loc14_ & 255;
      _loc14_ = int(_loc4_ >>> 23);
      _loc9_ = _loc14_ & 255;
      _loc14_ = int(_loc9_ + -1);
      if(uint(_loc14_) <= 253)
      {
         _loc8_ = 0;
         if(uint(int(_loc10_ + -1)) >= 254)
         {
         }
         addr466:
         _loc3_ = int(_loc3_ - 16);
         si32(0,_loc3_ + 12);
         si32(0,_loc3_ + 4);
         _loc2_ = _loc12_ | 8388608;
         _loc14_ = _loc2_ << 8;
         si32(_loc14_,_loc3_ + 8);
         var _loc6_:* = int(1963258675 - _loc14_);
         si32(_loc6_,_loc3_);
         ESP = _loc3_;
         F___muldi3();
         _loc3_ = int(_loc3_ + 16);
         var _loc7_:* = int(edx);
         _loc3_ = int(_loc3_ - 16);
         si32(0,_loc3_ + 12);
         si32(_loc6_,_loc3_ + 8);
         si32(0,_loc3_ + 4);
         _loc6_ = int(0 - _loc7_);
         si32(_loc6_,_loc3_);
         ESP = _loc3_;
         F___muldi3();
         _loc3_ = int(_loc3_ + 16);
         _loc6_ = int(eax);
         _loc7_ = int(edx);
         _loc3_ = int(_loc3_ - 16);
         si32(0,_loc3_ + 12);
         si32(_loc14_,_loc3_ + 8);
         si32(0,_loc3_ + 4);
         _loc7_ = _loc7_ << 1;
         _loc6_ = int(_loc6_ >>> 31);
         _loc6_ = _loc6_ | _loc7_;
         si32(_loc6_,_loc3_);
         ESP = _loc3_;
         F___muldi3();
         _loc3_ = int(_loc3_ + 16);
         _loc7_ = int(edx);
         _loc3_ = int(_loc3_ - 16);
         si32(0,_loc3_ + 12);
         si32(_loc6_,_loc3_ + 8);
         si32(0,_loc3_ + 4);
         _loc6_ = int(0 - _loc7_);
         si32(_loc6_,_loc3_);
         ESP = _loc3_;
         F___muldi3();
         _loc3_ = int(_loc3_ + 16);
         _loc6_ = int(eax);
         _loc7_ = int(edx);
         _loc3_ = int(_loc3_ - 16);
         si32(0,_loc3_ + 12);
         si32(_loc14_,_loc3_ + 8);
         si32(0,_loc3_ + 4);
         _loc14_ = _loc7_ << 1;
         _loc6_ = int(_loc6_ >>> 31);
         _loc6_ = _loc6_ | _loc14_;
         si32(_loc6_,_loc3_);
         ESP = _loc3_;
         F___muldi3();
         _loc3_ = int(_loc3_ + 16);
         _loc14_ = int(edx);
         _loc3_ = int(_loc3_ - 16);
         si32(0,_loc3_ + 12);
         si32(_loc6_,_loc3_ + 8);
         si32(0,_loc3_ + 4);
         _loc14_ = int(0 - _loc14_);
         si32(_loc14_,_loc3_);
         ESP = _loc3_;
         F___muldi3();
         _loc3_ = int(_loc3_ + 16);
         _loc14_ = int(eax);
         _loc6_ = int(edx);
         _loc3_ = int(_loc3_ - 16);
         si32(0,_loc3_ + 12);
         _loc7_ = _loc11_ << 1;
         _loc7_ = _loc7_ | 16777216;
         si32(_loc7_,_loc3_ + 8);
         si32(0,_loc3_ + 4);
         _loc6_ = _loc6_ << 1;
         _loc14_ = int(_loc14_ >>> 31);
         _loc14_ = _loc14_ | _loc6_;
         _loc14_ = int(_loc14_ + -2);
         si32(_loc14_,_loc3_);
         _loc14_ = int(_loc9_ - _loc10_);
         _loc9_ = int(_loc8_ + _loc14_);
         ESP = _loc3_;
         F___muldi3();
         _loc3_ = int(_loc3_ + 16);
         _loc8_ = edx;
         if(uint(_loc8_) <= 16777215)
         {
            _loc14_ = _loc11_ << 24;
            _loc11_ = int(_loc14_ - int(_loc8_ * _loc2_));
            _loc9_ = int(_loc9_ + -1);
         }
         else
         {
            _loc8_ = _loc8_ >>> 1;
            _loc14_ = _loc11_ << 23;
            _loc11_ = int(_loc14_ - int(_loc8_ * _loc2_));
         }
         _loc9_ = int(_loc9_ + 127);
         addr957:
         if(_loc9_ >= 255)
         {
            _loc14_ = _loc13_ | 2139095040;
            si32(_loc14_,_loc5_ - 12);
            _loc1_ = lf32(_loc5_ - 12);
         }
         else if(_loc9_ <= 0)
         {
            si32(_loc13_,_loc5_ - 8);
            _loc1_ = lf32(_loc5_ - 8);
         }
         else
         {
            _loc11_ = 1;
            if(uint(_loc11_ << 1) <= uint(_loc2_))
            {
               _loc11_ = 0;
            }
            _loc14_ = _loc11_ & 1;
            _loc6_ = _loc8_ & 8388607;
            _loc7_ = _loc9_ << 23;
            _loc6_ = _loc7_ | _loc6_;
            _loc14_ = int(_loc14_ + _loc6_);
            _loc14_ = _loc14_ | _loc13_;
            si32(_loc14_,_loc5_ - 4);
            _loc1_ = lf32(_loc5_ - 4);
         }
         st0 = _loc1_;
         _loc3_ = _loc5_;
         ESP = _loc3_;
         return;
      }
      _loc2_ = _loc4_ & 2147483647;
      if(uint(_loc2_) >= 2139095041)
      {
         _loc14_ = _loc4_ | 4194304;
         si32(_loc14_,_loc5_ - 36);
         _loc1_ = lf32(_loc5_ - 36);
      }
      else
      {
         _loc4_ = _loc15_ & 2147483647;
         if(uint(_loc4_) >= 2139095041)
         {
            _loc14_ = _loc15_ | 4194304;
            si32(_loc14_,_loc5_ - 32);
            _loc1_ = lf32(_loc5_ - 32);
         }
         else if(_loc2_ == 2139095040)
         {
            _loc1_ = Number(nan);
            if(_loc4_ != 2139095040)
            {
               _loc14_ = _loc13_ | _loc2_;
               si32(_loc14_,_loc5_ - 28);
               _loc1_ = lf32(_loc5_ - 28);
            }
         }
         else if(_loc4_ == 2139095040)
         {
            si32(_loc13_,_loc5_ - 24);
            _loc1_ = lf32(_loc5_ - 24);
         }
         else if(_loc2_ == 0)
         {
            _loc1_ = Number(nan);
            if(_loc4_ != 0)
            {
               si32(_loc13_,_loc5_ - 20);
               _loc1_ = lf32(_loc5_ - 20);
            }
         }
         else if(_loc4_ == 0)
         {
            _loc14_ = _loc13_ | 2139095040;
            si32(_loc14_,_loc5_ - 16);
            _loc1_ = lf32(_loc5_ - 16);
         }
         else
         {
            _loc8_ = 0;
            if(uint(_loc2_) <= 8388607)
            {
               _loc14_ = _loc11_ | int(_loc11_ >>> 1);
               _loc6_ = _loc14_ | int(_loc14_ >>> 2);
               _loc6_ = _loc6_ | int(_loc6_ >>> 4);
               _loc14_ = _loc6_ | int(_loc6_ >>> 8);
               _loc14_ = _loc14_ | int(_loc14_ >>> 16);
               _loc14_ = _loc14_ ^ -1;
               _loc6_ = int(_loc14_ >>> 1);
               _loc6_ = int(_loc14_ - (_loc6_ & 1431655765));
               _loc6_ = int(_loc6_ >>> 2);
               _loc14_ = int((_loc6_ & 858993459) + (_loc6_ & 858993459));
               _loc14_ = int(_loc14_ + (int(_loc14_ >>> 4)));
               _loc14_ = _loc14_ & 252645135;
               _loc14_ = int(_loc14_ * 16843009);
               _loc14_ = int(_loc14_ >>> 24);
               _loc11_ = _loc11_ << int(_loc14_ + -8);
               _loc8_ = 9 - _loc14_;
            }
            if(uint(_loc4_) <= 8388607)
            {
               _loc6_ = _loc12_ | int(_loc12_ >>> 1);
               _loc6_ = _loc6_ | int(_loc6_ >>> 2);
               _loc6_ = _loc6_ | int(_loc6_ >>> 4);
               _loc6_ = _loc6_ | int(_loc6_ >>> 8);
               _loc14_ = _loc6_ | int(_loc6_ >>> 16);
               _loc14_ = _loc14_ ^ -1;
               _loc6_ = int(_loc14_ >>> 1);
               _loc6_ = int(_loc14_ - (_loc6_ & 1431655765));
               _loc6_ = int(_loc6_ >>> 2);
               _loc14_ = int((_loc6_ & 858993459) + (_loc6_ & 858993459));
               _loc14_ = int(_loc14_ + (int(_loc14_ >>> 4)));
               _loc14_ = _loc14_ & 252645135;
               _loc14_ = int(_loc14_ * 16843009);
               _loc14_ = int(_loc14_ >>> 24);
               _loc12_ = _loc12_ << int(_loc14_ + -8);
               _loc14_ = int(_loc8_ + _loc14_);
               _loc8_ = _loc14_ + -9;
            }
            §§goto(addr466);
         }
      }
      §§goto(addr957);
   }
}
