package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_hypotf() : void
   {
      var _loc10_:* = 0;
      var _loc2_:* = NaN;
      var _loc7_:* = NaN;
      var _loc20_:* = 0;
      var _loc18_:* = 0;
      var _loc12_:* = NaN;
      var _loc19_:* = NaN;
      var _loc17_:* = NaN;
      var _loc3_:* = NaN;
      var _loc13_:* = NaN;
      var _loc1_:* = NaN;
      var _loc5_:* = NaN;
      var _loc21_:* = NaN;
      var _loc24_:* = 0;
      var _loc8_:* = int(ESP);
      _loc10_ = _loc8_;
      _loc8_ = int(_loc8_ - 72);
      _loc2_ = lf32(_loc10_);
      sf32(_loc2_,_loc10_ - 4);
      _loc7_ = lf32(_loc10_ + 4);
      sf32(_loc7_,_loc10_ - 8);
      _loc13_ = _loc7_;
      _loc12_ = _loc2_;
      var _loc9_:* = li32(_loc10_ - 4);
      _loc24_ = _loc9_ & 2147483647;
      _loc9_ = li32(_loc10_ - 8);
      _loc20_ = _loc9_ & 2147483647;
      _loc17_ = _loc12_;
      if(uint(_loc20_) <= uint(_loc24_))
      {
         _loc17_ = _loc13_;
      }
      sf32(_loc17_,_loc10_ - 12);
      if(uint(_loc20_) <= uint(_loc24_))
      {
         _loc13_ = _loc12_;
      }
      sf32(_loc13_,_loc10_ - 16);
      _loc9_ = li32(_loc10_ - 12);
      _loc9_ = _loc9_ & 2147483647;
      si32(_loc9_,_loc10_ - 20);
      _loc9_ = li32(_loc10_ - 16);
      _loc9_ = _loc9_ & 2147483647;
      si32(_loc9_,_loc10_ - 24);
      _loc18_ = _loc24_;
      if(uint(_loc20_) <= uint(_loc24_))
      {
         _loc18_ = _loc20_;
      }
      if(uint(_loc20_) <= uint(_loc24_))
      {
         _loc20_ = _loc24_;
      }
      _loc9_ = int(_loc20_ - _loc18_);
      _loc5_ = lf32(_loc10_ - 20);
      _loc21_ = lf32(_loc10_ - 24);
      if(_loc9_ >= 251658241)
      {
         var _loc23_:* = _loc21_;
         _loc23_ = Number(_loc23_ + _loc5_);
         _loc21_ = _loc23_;
      }
      else
      {
         _loc24_ = 0;
         if(uint(_loc20_) >= 1484783617)
         {
            if(uint(_loc20_) >= 2139095040)
            {
               var _loc22_:* = 0;
               _loc23_ = _loc22_;
               var _loc15_:* = Number(_loc7_ + _loc23_);
               sf32(_loc15_,_loc10_ - 64);
               _loc15_ = _loc2_;
               _loc23_ = Number(_loc15_ + _loc23_);
               sf32(_loc23_,_loc10_ - 60);
               _loc9_ = li32(_loc10_ - 64);
               _loc9_ = _loc9_ & 2147483647;
               si32(_loc9_,_loc10_ - 72);
               _loc9_ = li32(_loc10_ - 60);
               _loc9_ = _loc9_ & 2147483647;
               si32(_loc9_,_loc10_ - 68);
               _loc19_ = _loc21_;
               if(_loc20_ != 2139095040)
               {
                  _loc23_ = lf32(_loc10_ - 68);
                  _loc23_ = Number(_loc23_ - lf32(_loc10_ - 72));
                  _loc22_ = _loc23_;
                  _loc19_ = _loc22_;
               }
               _loc1_ = _loc5_;
               if(_loc18_ != 2139095040)
               {
                  _loc22_ = _loc19_;
                  _loc1_ = _loc22_;
               }
               _loc21_ = _loc1_;
            }
            else
            {
               _loc18_ = int(_loc18_ + -570425344);
               si32(_loc18_,_loc10_ - 32);
               _loc20_ = int(_loc20_ + -570425344);
               si32(_loc20_,_loc10_ - 28);
               _loc24_ = 68;
               _loc5_ = lf32(_loc10_ - 32);
               _loc21_ = lf32(_loc10_ - 28);
            }
         }
         if(_loc18_ <= 645922815)
         {
            if(_loc18_ <= 8388607)
            {
               if(_loc18_ != 0)
               {
                  _loc22_ = 8.50705917302346e37;
                  _loc23_ = _loc22_;
                  _loc15_ = Number(_loc21_ * _loc23_);
                  _loc21_ = _loc15_;
                  _loc15_ = _loc5_;
                  _loc23_ = Number(_loc15_ * _loc23_);
                  _loc5_ = _loc23_;
                  _loc24_ = _loc24_ | -126;
               }
            }
            else
            {
               _loc18_ = int(_loc18_ + 570425344);
               si32(_loc18_,_loc10_ - 40);
               _loc20_ = int(_loc20_ + 570425344);
               si32(_loc20_,_loc10_ - 36);
               _loc24_ = int(_loc24_ + -68);
               _loc5_ = lf32(_loc10_ - 40);
               _loc21_ = lf32(_loc10_ - 36);
            }
         }
         _loc19_ = _loc5_;
         _loc17_ = _loc21_;
         _loc23_ = Number(_loc17_ - _loc19_);
         _loc22_ = _loc23_;
         _loc3_ = _loc22_;
         if(!(_loc3_ <= _loc19_ | _loc3_ != _loc3_ | _loc19_ != _loc19_))
         {
            _loc9_ = _loc20_ & -4096;
            si32(_loc9_,_loc10_ - 52);
            _loc23_ = lf32(_loc10_ - 52);
            _loc15_ = Number(_loc17_ - _loc23_);
            var _loc14_:* = _loc15_;
            var _loc4_:* = Number(_loc17_ + _loc23_);
            var _loc16_:* = _loc4_;
            _loc4_ = _loc16_;
            _loc15_ = Number(_loc4_ * _loc14_);
            _loc14_ = _loc15_;
            _loc4_ = Number(-_loc19_);
            _loc16_ = _loc4_;
            _loc4_ = Number(_loc19_ * _loc16_);
            _loc16_ = _loc4_;
            _loc4_ = _loc16_;
            _loc15_ = Number(_loc4_ - _loc14_);
            _loc14_ = _loc15_;
            _loc23_ = Number(_loc23_ * _loc23_);
            _loc22_ = _loc23_;
            _loc23_ = _loc22_;
            _loc23_ = Number(_loc23_ - _loc14_);
            _loc22_ = _loc23_;
            _loc23_ = Number(Math.sqrt(_loc22_));
            _loc21_ = _loc23_;
         }
         else
         {
            _loc9_ = _loc18_ & -4096;
            si32(_loc9_,_loc10_ - 44);
            _loc9_ = int(_loc20_ + 8388608);
            _loc9_ = _loc9_ & -4096;
            si32(_loc9_,_loc10_ - 48);
            _loc23_ = lf32(_loc10_ - 44);
            _loc15_ = Number(_loc19_ - _loc23_);
            _loc14_ = _loc15_;
            _loc15_ = lf32(_loc10_ - 48);
            _loc4_ = Number(_loc15_ * _loc14_);
            _loc16_ = _loc4_;
            var _loc6_:* = Number(_loc17_ + _loc17_);
            var _loc11_:* = _loc6_;
            _loc6_ = _loc11_;
            _loc6_ = Number(_loc6_ - _loc15_);
            _loc11_ = _loc6_;
            _loc6_ = _loc11_;
            _loc6_ = Number(_loc6_ * _loc19_);
            _loc11_ = _loc6_;
            _loc4_ = Number(_loc16_ + _loc11_);
            _loc16_ = _loc4_;
            _loc6_ = Number(-_loc3_);
            _loc11_ = _loc6_;
            _loc6_ = Number(_loc3_ * _loc11_);
            _loc11_ = _loc6_;
            _loc6_ = _loc11_;
            _loc4_ = Number(_loc6_ - _loc16_);
            _loc16_ = _loc4_;
            _loc23_ = Number(_loc15_ * _loc23_);
            _loc22_ = _loc23_;
            _loc23_ = _loc22_;
            _loc23_ = Number(_loc23_ - _loc16_);
            _loc22_ = _loc23_;
            _loc23_ = Number(Math.sqrt(_loc22_));
            _loc21_ = _loc23_;
         }
         if(_loc24_ != 0)
         {
            _loc9_ = _loc24_ << 23;
            _loc9_ = int(_loc9_ + 1065353216);
            si32(_loc9_,_loc10_ - 56);
            _loc23_ = lf32(_loc10_ - 56);
            _loc23_ = Number(_loc23_ * _loc21_);
            _loc21_ = _loc23_;
         }
      }
      st0 = _loc21_;
      _loc8_ = _loc10_;
      ESP = _loc8_;
   }
}
