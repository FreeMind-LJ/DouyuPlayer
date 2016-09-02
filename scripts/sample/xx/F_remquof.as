package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._Zero83;
   
   public function F_remquof() : void
   {
      var _loc2_:* = 0;
      var _loc11_:* = NaN;
      var _loc13_:* = NaN;
      var _loc25_:* = 0;
      var _loc22_:* = 0;
      var _loc24_:* = 0;
      var _loc7_:* = NaN;
      var _loc9_:* = NaN;
      var _loc6_:* = NaN;
      var _loc21_:* = 0;
      var _loc19_:* = 0;
      var _loc14_:* = 0;
      var _loc16_:* = 0;
      var _loc17_:* = 0;
      var _loc23_:* = 0;
      var _loc15_:* = 0;
      var _loc26_:* = 0;
      var _loc5_:* = NaN;
      var _loc8_:* = NaN;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc1_ = int(_loc1_ - 24);
      _loc11_ = lf32(_loc2_);
      sf32(_loc11_,_loc2_ - 4);
      _loc13_ = lf32(_loc2_ + 4);
      sf32(_loc13_,_loc2_ - 8);
      _loc15_ = li32(_loc2_ - 8);
      _loc26_ = _loc15_ & 2147483647;
      if(_loc26_ != 0)
      {
         _loc25_ = li32(_loc2_ - 4);
         _loc24_ = _loc25_ & -2147483648;
         _loc23_ = _loc24_ ^ _loc25_;
         if(_loc23_ <= 2139095039)
         {
            if(uint(_loc26_) < 2139095041)
            {
               _loc22_ = _loc15_ ^ _loc25_;
               _loc25_ = li32(_loc2_ + 8);
               _loc21_ = 0;
               if(_loc23_ >= _loc26_)
               {
                  if(_loc23_ == _loc26_)
                  {
                     si32(1,_loc25_);
                     var _loc20_:* = int(_Zero83 + (int(_loc24_ >>> 29)));
                     _loc8_ = lf32(_loc20_);
                  }
                  else
                  {
                     if(_loc23_ <= 8388607)
                     {
                        _loc19_ = _loc23_ << 8;
                        _loc21_ = -126;
                        if(_loc19_ >= 1)
                        {
                           do
                           {
                              _loc21_ = int(_loc21_ + -1);
                              _loc19_ = _loc19_ << 1;
                           }
                           while(_loc19_ > 0);
                           
                        }
                     }
                     else
                     {
                        _loc20_ = _loc23_ >> 23;
                        _loc21_ = int(_loc20_ + -127);
                     }
                     if(uint(_loc26_) <= 8388607)
                     {
                        _loc14_ = _loc15_ << 8;
                        _loc19_ = -126;
                        if(_loc14_ >= 1)
                        {
                           do
                           {
                              _loc19_ = int(_loc19_ + -1);
                              _loc14_ = _loc14_ << 1;
                           }
                           while(_loc14_ > 0);
                           
                        }
                     }
                     else
                     {
                        _loc20_ = int(_loc26_ >>> 23);
                        _loc19_ = int(_loc20_ + -127);
                     }
                     if(_loc21_ >= -126)
                     {
                        _loc20_ = _loc23_ & 8388607;
                        _loc23_ = _loc20_ | 8388608;
                     }
                     else
                     {
                        _loc23_ = _loc23_ << int(-126 - _loc21_);
                     }
                     if(_loc19_ >= -126)
                     {
                        _loc20_ = _loc15_ & 8388607;
                        _loc16_ = _loc20_ | 8388608;
                     }
                     else
                     {
                        _loc16_ = _loc26_ << int(-126 - _loc19_);
                     }
                     _loc14_ = int(_loc23_ - _loc16_);
                     _loc15_ = 0;
                     if(_loc21_ != _loc19_)
                     {
                        _loc21_ = int(_loc21_ - _loc19_);
                        _loc17_ = _loc14_;
                        _loc15_ = 0;
                        do
                        {
                           if(_loc17_ >= 0)
                           {
                              _loc23_ = _loc17_;
                           }
                           _loc23_ = _loc23_ << 1;
                           _loc14_ = int(_loc23_ - _loc16_);
                           _loc20_ = int(_loc17_ >>> 31);
                           _loc20_ = _loc20_ | _loc15_;
                           _loc20_ = _loc20_ << 1;
                           _loc15_ = _loc20_ ^ 2;
                           _loc21_ = int(_loc21_ + -1);
                           _loc17_ = _loc14_;
                        }
                        while(_loc21_ != 0);
                        
                     }
                     _loc16_ = _loc14_;
                     if(_loc14_ <= -1)
                     {
                        _loc16_ = _loc23_;
                     }
                     _loc20_ = int(_loc14_ >>> 31);
                     _loc20_ = _loc20_ ^ 1;
                     _loc21_ = _loc20_ | _loc15_;
                     if(_loc16_ != 0)
                     {
                        if(_loc16_ < 8388608)
                        {
                           do
                           {
                              _loc19_ = int(_loc19_ + -1);
                              _loc16_ = _loc16_ << 1;
                           }
                           while(_loc16_ < 8388608);
                           
                        }
                        if(_loc19_ >= -126)
                        {
                           var _loc18_:* = _loc19_ << 23;
                           _loc18_ = int(_loc18_ + 1065353216);
                           _loc23_ = _loc18_ | int(_loc16_ + -8388608);
                        }
                        else
                        {
                           _loc23_ = _loc16_ >> int(-126 - _loc19_);
                        }
                     }
                     else
                     {
                        _loc26_ = int(0 - _loc21_);
                        if(_loc22_ >= 0)
                        {
                           _loc26_ = _loc21_;
                        }
                        si32(_loc26_,_loc25_);
                        _loc20_ = int(_loc24_ >>> 29);
                        _loc20_ = int(_Zero83 + _loc20_);
                        _loc8_ = lf32(_loc20_);
                     }
                  }
               }
               si32(_loc26_,_loc2_ - 16);
               si32(_loc23_,_loc2_ - 12);
               var _loc12_:* = 2.35098870164458e-38;
               var _loc4_:* = _loc12_;
               var _loc10_:* = lf32(_loc2_ - 16);
               _loc7_ = _loc10_;
               _loc5_ = lf32(_loc2_ - 12);
               if(!(_loc7_ >= _loc4_ | _loc7_ != _loc7_ | _loc4_ != _loc4_))
               {
                  _loc6_ = _loc5_;
                  _loc4_ = Number(_loc6_ + _loc6_);
                  _loc12_ = _loc4_;
                  _loc9_ = _loc12_;
                  if(_loc9_ <= _loc7_)
                  {
                     if(!(_loc9_ != _loc7_ | _loc9_ != _loc9_ | _loc7_ != _loc7_))
                     {
                        _loc20_ = _loc21_ & 1;
                        if(_loc20_ != 0)
                        {
                        }
                     }
                  }
                  _loc4_ = Number(_loc6_ - _loc7_);
                  _loc5_ = _loc4_;
                  _loc21_ = int(_loc21_ + 1);
               }
               else
               {
                  _loc12_ = 0.5;
                  _loc4_ = Number(_loc7_ * _loc12_);
                  _loc12_ = _loc4_;
                  _loc9_ = _loc12_;
                  _loc6_ = _loc5_;
                  if(_loc9_ >= _loc6_)
                  {
                     if(!(_loc9_ != _loc6_ | _loc9_ != _loc9_ | _loc6_ != _loc6_))
                     {
                        _loc20_ = _loc21_ & 1;
                        if(_loc20_ != 0)
                        {
                        }
                     }
                  }
                  _loc4_ = Number(_loc6_ - _loc7_);
                  _loc5_ = _loc4_;
                  _loc21_ = int(_loc21_ + 1);
               }
               _loc21_ = _loc21_ & 2147483647;
               _loc19_ = int(0 - _loc21_);
               if(_loc22_ >= 0)
               {
                  _loc19_ = _loc21_;
               }
               si32(_loc19_,_loc25_);
               sf32(_loc5_,_loc2_ - 20);
               _loc20_ = li32(_loc2_ - 20);
               _loc20_ = _loc20_ ^ _loc24_;
               si32(_loc20_,_loc2_ - 24);
               _loc8_ = lf32(_loc2_ - 24);
            }
            addr646:
            st0 = _loc8_;
            _loc1_ = _loc2_;
            ESP = _loc1_;
            return;
         }
      }
      _loc4_ = _loc13_;
      var _loc3_:* = _loc11_;
      _loc4_ = Number(_loc3_ * _loc4_);
      _loc12_ = _loc4_;
      _loc4_ = _loc12_;
      _loc4_ = Number(_loc4_ / _loc4_);
      _loc8_ = _loc4_;
      §§goto(addr646);
   }
}
