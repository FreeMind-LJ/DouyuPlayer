package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._Zero83;
   import avm2.intrinsics.memory.si32;
   
   public function F_fmodf() : void
   {
      var _loc6_:* = 0;
      var _loc3_:* = NaN;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc16_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = NaN;
      var _loc4_:* = int(ESP);
      _loc6_ = _loc4_;
      _loc4_ = int(_loc4_ - 12);
      _loc1_ = lf32(_loc6_);
      sf32(_loc1_,_loc6_ - 4);
      _loc3_ = lf32(_loc6_ + 4);
      sf32(_loc3_,_loc6_ - 8);
      _loc5_ = li32(_loc6_ - 8);
      _loc16_ = _loc5_ & 2147483647;
      if(_loc16_ != 0)
      {
         var _loc15_:* = li32(_loc6_ - 4);
         _loc14_ = _loc15_ & -2147483648;
         _loc13_ = _loc14_ ^ _loc15_;
         if(_loc13_ <= 2139095039)
         {
            if(uint(_loc16_) < 2139095041)
            {
               if(_loc13_ >= _loc16_)
               {
                  if(_loc13_ == _loc16_)
                  {
                     _loc15_ = int(_Zero83 + (int(_loc14_ >>> 29)));
                     _loc1_ = lf32(_loc15_);
                  }
                  else
                  {
                     if(_loc13_ <= 8388607)
                     {
                        _loc12_ = _loc13_ << 8;
                        _loc9_ = -126;
                        if(_loc12_ >= 1)
                        {
                           do
                           {
                              _loc9_ = int(_loc9_ + -1);
                              _loc12_ = _loc12_ << 1;
                           }
                           while(_loc12_ > 0);
                           
                        }
                     }
                     else
                     {
                        _loc15_ = _loc13_ >> 23;
                        _loc9_ = int(_loc15_ + -127);
                     }
                     if(uint(_loc16_) <= 8388607)
                     {
                        _loc8_ = _loc5_ << 8;
                        _loc12_ = -126;
                        if(_loc8_ >= 0)
                        {
                           do
                           {
                              _loc12_ = int(_loc12_ + -1);
                              _loc8_ = _loc8_ << 1;
                           }
                           while(_loc8_ > -1);
                           
                        }
                     }
                     else
                     {
                        _loc15_ = int(_loc16_ >>> 23);
                        _loc12_ = int(_loc15_ + -127);
                     }
                     if(_loc9_ >= -126)
                     {
                        _loc15_ = _loc13_ & 8388607;
                        _loc13_ = _loc15_ | 8388608;
                     }
                     else
                     {
                        _loc13_ = _loc13_ << int(-126 - _loc9_);
                     }
                     if(_loc12_ >= -126)
                     {
                        _loc15_ = _loc5_ & 8388607;
                        _loc16_ = _loc15_ | 8388608;
                     }
                     else
                     {
                        _loc16_ = _loc16_ << int(-126 - _loc12_);
                     }
                     _loc15_ = int(_loc9_ + 1);
                     _loc8_ = int(_loc15_ - _loc12_);
                     while(true)
                     {
                        _loc5_ = int(_loc13_ - _loc16_);
                        _loc8_ = int(_loc8_ + -1);
                        if(_loc8_ == 0)
                        {
                           if(_loc5_ <= -1)
                           {
                              _loc5_ = _loc13_;
                           }
                           if(_loc5_ != 0)
                           {
                              if(_loc5_ < 8388608)
                              {
                                 do
                                 {
                                    _loc12_ = int(_loc12_ + -1);
                                    _loc5_ = _loc5_ << 1;
                                 }
                                 while(_loc5_ < 8388608);
                                 
                              }
                              if(_loc12_ >= -126)
                              {
                                 var _loc7_:* = _loc12_ << 23;
                                 _loc7_ = int(_loc7_ + 1065353216);
                                 _loc12_ = _loc7_ | int(_loc5_ + -8388608);
                              }
                              else
                              {
                                 _loc12_ = _loc5_ >> int(-126 - _loc12_);
                              }
                              _loc15_ = _loc12_ | _loc14_;
                              si32(_loc15_,_loc6_ - 12);
                              _loc1_ = lf32(_loc6_ - 12);
                              break;
                           }
                           _loc15_ = int(_Zero83 + (int(_loc14_ >>> 29)));
                           _loc1_ = lf32(_loc15_);
                           break;
                        }
                        _loc9_ = _loc13_;
                        if(_loc5_ > -1)
                        {
                           _loc9_ = _loc5_;
                           if(_loc13_ == _loc16_)
                           {
                              _loc15_ = int(_Zero83 + (int(_loc14_ >>> 29)));
                              _loc1_ = lf32(_loc15_);
                              break;
                           }
                        }
                        _loc13_ = _loc9_ << 1;
                     }
                  }
               }
            }
            addr401:
            st0 = _loc1_;
            _loc4_ = _loc6_;
            ESP = _loc4_;
            return;
         }
      }
      var _loc11_:* = _loc3_;
      var _loc10_:* = _loc1_;
      _loc10_ = Number(_loc10_ * _loc11_);
      var _loc2_:* = _loc10_;
      _loc10_ = _loc2_;
      _loc10_ = Number(_loc10_ / _loc10_);
      _loc1_ = _loc10_;
      §§goto(addr401);
   }
}
