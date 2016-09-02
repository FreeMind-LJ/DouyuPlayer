package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_log1pf() : void
   {
      var _loc6_:* = 0;
      var _loc21_:* = 0;
      var _loc11_:* = NaN;
      var _loc17_:* = NaN;
      var _loc15_:* = NaN;
      var _loc1_:* = NaN;
      var _loc12_:* = NaN;
      var _loc9_:* = NaN;
      var _loc25_:* = 0;
      var _loc18_:* = NaN;
      var _loc22_:* = 0;
      var _loc23_:* = 0;
      var _loc16_:* = NaN;
      var _loc20_:* = NaN;
      var _loc5_:* = int(ESP);
      _loc6_ = _loc5_;
      _loc5_ = int(_loc5_ - 12);
      _loc18_ = lf32(_loc6_);
      sf32(_loc18_,_loc6_ - 4);
      _loc21_ = li32(_loc6_ - 4);
      _loc25_ = 1;
      if(_loc21_ <= 1054086095)
      {
         _loc25_ = _loc21_ & 2147483647;
         if(uint(_loc25_) >= 1065353216)
         {
            _loc20_ = Number(-inf);
            _loc9_ = _loc18_;
            var _loc19_:* = -1;
            if(_loc9_ != _loc19_)
            {
               var _loc7_:* = Number(_loc9_ - _loc9_);
               _loc19_ = _loc7_;
               _loc7_ = _loc19_;
               _loc7_ = Number(_loc7_ / _loc7_);
               _loc20_ = _loc7_;
            }
         }
         else if(uint(_loc25_) <= 939524095)
         {
            _loc12_ = _loc18_;
            _loc19_ = 33554432;
            _loc7_ = Number(_loc12_ + _loc19_);
            _loc19_ = _loc7_;
            _loc7_ = _loc19_;
            var _loc14_:* = 0;
            var _loc10_:* = _loc14_;
            if(!(_loc7_ <= _loc10_ | _loc7_ != _loc7_ | _loc10_ != _loc10_))
            {
               _loc20_ = _loc18_;
               if(uint(_loc25_) >= 864026624)
               {
               }
            }
            _loc19_ = -0.5;
            _loc7_ = _loc19_;
            _loc10_ = Number(_loc12_ * _loc12_);
            _loc14_ = _loc10_;
            _loc10_ = _loc14_;
            _loc7_ = Number(_loc10_ * _loc7_);
            _loc19_ = _loc7_;
            _loc7_ = _loc19_;
            _loc7_ = Number(_loc7_ + _loc12_);
            _loc20_ = _loc7_;
         }
         else
         {
            _loc25_ = 1;
            if(uint(int(_loc21_ + 1097468390)) >= 1097468391)
            {
               _loc25_ = 0;
            }
         }
         addr877:
         st0 = _loc20_;
         _loc5_ = _loc6_;
         ESP = _loc5_;
         return;
      }
      if(_loc21_ >= 2139095040)
      {
         _loc7_ = _loc18_;
         _loc7_ = Number(_loc7_ + _loc7_);
         _loc20_ = _loc7_;
      }
      else
      {
         if(_loc25_ == 0)
         {
            _loc7_ = _loc18_;
            _loc14_ = 0.5;
            _loc10_ = Number(_loc7_ * _loc14_);
            _loc14_ = _loc10_;
            _loc10_ = _loc14_;
            _loc7_ = Number(_loc10_ * _loc7_);
            _loc16_ = _loc7_;
            _loc25_ = 0;
         }
         else
         {
            if(_loc21_ <= 1509949439)
            {
               _loc17_ = _loc18_;
               _loc19_ = 1;
               _loc15_ = _loc19_;
               _loc7_ = Number(_loc17_ + _loc15_);
               _loc11_ = _loc7_;
               sf32(_loc11_,_loc6_ - 8);
               _loc21_ = li32(_loc6_ - 8);
               var _loc24_:* = _loc21_ >> 23;
               _loc25_ = int(_loc24_ + -127);
               if(_loc25_ >= 1)
               {
                  _loc7_ = _loc11_;
                  _loc7_ = Number(_loc7_ - _loc17_);
                  _loc19_ = _loc7_;
                  _loc7_ = Number(_loc15_ - _loc19_);
                  _loc18_ = _loc7_;
               }
               else
               {
                  _loc14_ = -1;
                  _loc7_ = Number(_loc11_ + _loc14_);
                  _loc19_ = _loc7_;
                  _loc7_ = Number(_loc17_ - _loc19_);
                  _loc18_ = _loc7_;
               }
               _loc7_ = _loc11_;
               _loc10_ = _loc18_;
               _loc7_ = Number(_loc10_ / _loc7_);
               _loc11_ = _loc7_;
            }
            else
            {
               _loc11_ = 0;
               _loc24_ = _loc21_ >> 23;
               _loc25_ = int(_loc24_ + -127);
            }
            _loc23_ = _loc21_ & 8388607;
            if(uint(_loc23_) <= 3474675)
            {
               _loc22_ = _loc23_ | 1065353216;
            }
            else
            {
               _loc22_ = _loc23_ | 1056964608;
               _loc25_ = int(_loc25_ + 1);
               _loc24_ = int(8388608 - _loc23_);
               _loc23_ = int(_loc24_ >>> 2);
            }
            si32(_loc22_,_loc6_ - 12);
            _loc19_ = -1;
            _loc7_ = _loc19_;
            _loc10_ = lf32(_loc6_ - 12);
            _loc7_ = Number(_loc10_ + _loc7_);
            _loc18_ = _loc7_;
            _loc1_ = _loc18_;
            _loc19_ = 0.5;
            _loc7_ = _loc19_;
            _loc7_ = Number(_loc1_ * _loc7_);
            _loc19_ = _loc7_;
            _loc7_ = _loc19_;
            _loc7_ = Number(_loc7_ * _loc1_);
            _loc16_ = _loc7_;
            if(_loc23_ == 0)
            {
               _loc20_ = 0;
               _loc7_ = _loc20_;
               if(!(_loc1_ != _loc7_ | _loc1_ != _loc1_ | _loc7_ != _loc7_))
               {
                  if(_loc25_ != 0)
                  {
                     _loc19_ = 0.693138122558594;
                     _loc14_ = Number(_loc25_);
                     _loc10_ = _loc14_;
                     _loc7_ = Number(_loc10_ * _loc19_);
                     _loc19_ = _loc7_;
                     var _loc13_:* = 9.05800061445916e-6;
                     _loc10_ = Number(_loc10_ * _loc13_);
                     _loc14_ = _loc10_;
                     _loc10_ = Number(_loc14_ + _loc11_);
                     _loc14_ = _loc10_;
                     _loc7_ = Number(_loc19_ + _loc14_);
                     _loc20_ = _loc7_;
                  }
               }
               else
               {
                  _loc19_ = -0.666666686534882;
                  _loc7_ = Number(_loc1_ * _loc19_);
                  _loc19_ = _loc7_;
                  _loc14_ = 1;
                  _loc7_ = Number(_loc19_ + _loc14_);
                  _loc19_ = _loc7_;
                  _loc7_ = Number(_loc19_ * _loc16_);
                  _loc18_ = _loc7_;
                  if(_loc25_ == 0)
                  {
                     _loc7_ = Number(_loc1_ - _loc18_);
                     _loc20_ = _loc7_;
                  }
                  else
                  {
                     _loc19_ = 0.693138122558594;
                     _loc14_ = Number(_loc25_);
                     _loc10_ = _loc14_;
                     _loc7_ = Number(_loc10_ * _loc19_);
                     _loc19_ = _loc7_;
                     _loc13_ = 9.05800061445916e-6;
                     _loc10_ = Number(_loc10_ * _loc13_);
                     _loc14_ = _loc10_;
                     _loc10_ = Number(_loc14_ + _loc11_);
                     _loc14_ = _loc10_;
                     _loc10_ = Number(_loc18_ - _loc14_);
                     _loc14_ = _loc10_;
                     _loc10_ = _loc14_;
                     _loc10_ = Number(_loc10_ - _loc1_);
                     _loc14_ = _loc10_;
                     _loc7_ = Number(_loc19_ - _loc14_);
                     _loc20_ = _loc7_;
                  }
               }
            }
         }
         _loc1_ = _loc18_;
         _loc19_ = 2;
         _loc7_ = _loc19_;
         _loc7_ = Number(_loc1_ + _loc7_);
         _loc19_ = _loc7_;
         _loc7_ = _loc19_;
         _loc7_ = Number(_loc1_ / _loc7_);
         _loc19_ = _loc7_;
         _loc15_ = _loc19_;
         _loc7_ = Number(_loc15_ * _loc15_);
         _loc19_ = _loc7_;
         _loc7_ = _loc19_;
         _loc14_ = 0.147981986403465;
         _loc10_ = _loc14_;
         _loc10_ = Number(_loc7_ * _loc10_);
         _loc14_ = _loc10_;
         _loc10_ = _loc14_;
         _loc13_ = 0.153138384222984;
         var _loc2_:* = _loc13_;
         _loc10_ = Number(_loc10_ + _loc2_);
         _loc14_ = _loc10_;
         _loc10_ = _loc14_;
         _loc10_ = Number(_loc10_ * _loc7_);
         _loc14_ = _loc10_;
         _loc10_ = _loc14_;
         _loc13_ = 0.181835725903511;
         _loc2_ = _loc13_;
         _loc10_ = Number(_loc10_ + _loc2_);
         _loc14_ = _loc10_;
         _loc10_ = _loc14_;
         _loc10_ = Number(_loc10_ * _loc7_);
         _loc14_ = _loc10_;
         _loc10_ = _loc14_;
         _loc13_ = 0.222221985459328;
         _loc2_ = _loc13_;
         _loc10_ = Number(_loc10_ + _loc2_);
         _loc14_ = _loc10_;
         _loc10_ = _loc14_;
         _loc10_ = Number(_loc10_ * _loc7_);
         _loc14_ = _loc10_;
         _loc10_ = _loc14_;
         _loc13_ = 0.28571429848671;
         _loc2_ = _loc13_;
         _loc10_ = Number(_loc10_ + _loc2_);
         _loc14_ = _loc10_;
         _loc10_ = _loc14_;
         _loc10_ = Number(_loc10_ * _loc7_);
         _loc14_ = _loc10_;
         _loc10_ = _loc14_;
         _loc13_ = 0.400000005960465;
         _loc2_ = _loc13_;
         _loc10_ = Number(_loc10_ + _loc2_);
         _loc14_ = _loc10_;
         _loc10_ = _loc14_;
         _loc10_ = Number(_loc10_ * _loc7_);
         _loc14_ = _loc10_;
         _loc10_ = _loc14_;
         _loc13_ = 0.666666686534882;
         _loc2_ = _loc13_;
         _loc10_ = Number(_loc10_ + _loc2_);
         _loc14_ = _loc10_;
         _loc10_ = _loc14_;
         _loc7_ = Number(_loc10_ * _loc7_);
         _loc18_ = _loc7_;
         if(_loc25_ == 0)
         {
            _loc7_ = _loc16_;
            _loc10_ = Number(_loc7_ + _loc18_);
            _loc14_ = _loc10_;
            _loc10_ = _loc14_;
            _loc10_ = Number(_loc10_ * _loc15_);
            _loc14_ = _loc10_;
            _loc7_ = Number(_loc7_ - _loc14_);
            _loc19_ = _loc7_;
            _loc7_ = Number(_loc1_ - _loc19_);
            _loc20_ = _loc7_;
         }
         else
         {
            _loc7_ = _loc16_;
            _loc10_ = Number(_loc7_ + _loc18_);
            _loc14_ = _loc10_;
            _loc10_ = _loc14_;
            _loc10_ = Number(_loc10_ * _loc15_);
            _loc14_ = _loc10_;
            _loc14_ = 9.05800061445916e-6;
            _loc14_ = Number(_loc25_);
            _loc10_ = _loc14_;
            var _loc8_:Number = _loc10_ * _loc14_;
            _loc8_ = _loc8_ + _loc11_;
            _loc13_ = Number(_loc14_ + _loc8_);
            _loc7_ = Number(_loc7_ - _loc13_);
            _loc19_ = _loc7_;
            _loc7_ = _loc19_;
            _loc7_ = Number(_loc7_ - _loc1_);
            _loc19_ = _loc7_;
            _loc13_ = 0.693138122558594;
            _loc10_ = Number(_loc10_ * _loc13_);
            _loc14_ = _loc10_;
            _loc10_ = _loc14_;
            _loc7_ = Number(_loc10_ - _loc19_);
            _loc20_ = _loc7_;
         }
      }
      §§goto(addr877);
   }
}
