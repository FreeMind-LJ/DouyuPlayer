package sample.xx
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.LCPI145_0;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._bp;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._dp_l;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F._dp_h;
   
   public function F_powf() : void
   {
      var _loc9_:* = 0;
      var _loc25_:* = NaN;
      var _loc23_:* = NaN;
      var _loc40_:* = 0;
      var _loc27_:* = 0;
      var _loc38_:* = 0;
      var _loc42_:* = 0;
      var _loc35_:* = 0;
      var _loc37_:int = 0;
      var _loc32_:* = NaN;
      var _loc34_:* = NaN;
      var _loc6_:* = NaN;
      var _loc5_:* = NaN;
      var _loc15_:* = NaN;
      var _loc33_:int = 0;
      var _loc24_:* = NaN;
      var _loc18_:* = NaN;
      var _loc8_:* = int(ESP);
      _loc9_ = _loc8_;
      _loc8_ = int(_loc8_ - 96);
      _loc23_ = lf32(_loc9_ + 4);
      sf32(_loc23_,_loc9_ - 8);
      _loc25_ = lf32(_loc9_);
      sf32(_loc25_,_loc9_ - 4);
      _loc24_ = 1;
      _loc27_ = li32(_loc9_ - 8);
      _loc42_ = _loc27_ & 2147483647;
      if(_loc42_ != 0)
      {
         _loc40_ = li32(_loc9_ - 4);
         _loc38_ = _loc40_ & 2147483647;
         if(uint(_loc38_) <= 2139095040)
         {
            if(uint(_loc42_) < 2139095041)
            {
               _loc37_ = 0;
               if(_loc40_ <= -1)
               {
                  _loc37_ = 2;
                  if(uint(_loc42_) <= 1266679807)
                  {
                     _loc37_ = 0;
                     if(uint(_loc42_) >= 1065353216)
                     {
                        var _loc36_:* = int(150 - (int(_loc42_ >>> 23)));
                        _loc35_ = int(_loc42_ >>> _loc36_);
                        _loc37_ = 0;
                        if(_loc35_ << _loc36_ == _loc42_)
                        {
                           _loc37_ = 2 - (_loc35_ & 1);
                        }
                     }
                  }
               }
               if(_loc42_ != 1065353216)
               {
                  if(_loc42_ == 2139095040)
                  {
                     if(_loc38_ == 1065353216)
                     {
                        var _loc12_:* = _loc23_;
                        _loc12_ = Number(_loc12_ - _loc12_);
                        _loc24_ = _loc12_;
                     }
                     else if(uint(_loc38_) >= 1065353217)
                     {
                        _loc15_ = _loc23_;
                        if(_loc27_ <= -1)
                        {
                           var _loc19_:* = 0;
                           _loc15_ = _loc19_;
                        }
                        _loc24_ = _loc15_;
                     }
                     else
                     {
                        _loc24_ = 0;
                        if(_loc27_ <= -1)
                        {
                           _loc12_ = _loc23_;
                           _loc12_ = Number(-_loc12_);
                           _loc24_ = _loc12_;
                        }
                     }
                  }
                  else
                  {
                     if(_loc27_ != 1056964608)
                     {
                        if(_loc27_ == 1073741824)
                        {
                           _loc12_ = _loc25_;
                           _loc12_ = Number(_loc12_ * _loc12_);
                           _loc24_ = _loc12_;
                        }
                     }
                     else if(_loc40_ >= 0)
                     {
                        _loc12_ = Number(Math.sqrt(_loc25_));
                        _loc24_ = _loc12_;
                     }
                     si32(_loc38_,_loc9_ - 12);
                     _loc24_ = lf32(_loc9_ - 12);
                     if(_loc38_ != 0)
                     {
                        if(_loc38_ != 1065353216)
                        {
                           if(_loc38_ != 2139095040)
                           {
                              _loc36_ = int(_loc40_ >>> 31);
                              _loc40_ = int(_loc36_ + -1);
                              _loc36_ = _loc37_ | _loc40_;
                              if(_loc36_ == 0)
                              {
                                 _loc12_ = _loc25_;
                                 _loc12_ = Number(_loc12_ - _loc12_);
                                 _loc19_ = _loc12_;
                                 _loc12_ = _loc19_;
                                 _loc12_ = Number(_loc12_ / _loc12_);
                                 _loc24_ = _loc12_;
                              }
                              else
                              {
                                 _loc36_ = int(_loc37_ + -1);
                                 _loc37_ = 1;
                                 if((_loc36_ | _loc40_) != 0)
                                 {
                                    _loc37_ = 0;
                                 }
                                 _loc33_ = 4;
                                 if(_loc37_ == 0)
                                 {
                                    _loc33_ = 0;
                                 }
                                 _loc36_ = int(LCPI145_0 + _loc33_);
                                 _loc25_ = lf32(_loc36_);
                                 if(uint(_loc42_) >= 1291845633)
                                 {
                                    if(uint(_loc38_) <= 1065353207)
                                    {
                                       if(_loc27_ <= -1)
                                       {
                                          _loc19_ = 1.00000001504747e30;
                                          _loc12_ = _loc19_;
                                          var _loc14_:* = Number(_loc25_ * _loc12_);
                                          var _loc21_:* = _loc14_;
                                          _loc14_ = _loc21_;
                                          _loc12_ = Number(_loc14_ * _loc12_);
                                          _loc24_ = _loc12_;
                                       }
                                       else
                                       {
                                          _loc19_ = 1.00000000317108e-30;
                                          _loc12_ = _loc19_;
                                          _loc14_ = Number(_loc25_ * _loc12_);
                                          _loc21_ = _loc14_;
                                          _loc14_ = _loc21_;
                                          _loc12_ = Number(_loc14_ * _loc12_);
                                          _loc24_ = _loc12_;
                                       }
                                    }
                                    else if(uint(_loc38_) >= 1065353224)
                                    {
                                       if(_loc27_ >= 1)
                                       {
                                          _loc19_ = 1.00000001504747e30;
                                          _loc12_ = _loc19_;
                                          _loc14_ = Number(_loc25_ * _loc12_);
                                          _loc21_ = _loc14_;
                                          _loc14_ = _loc21_;
                                          _loc12_ = Number(_loc14_ * _loc12_);
                                          _loc24_ = _loc12_;
                                       }
                                       else
                                       {
                                          _loc19_ = 1.00000000317108e-30;
                                          _loc12_ = _loc19_;
                                          _loc14_ = Number(_loc25_ * _loc12_);
                                          _loc21_ = _loc14_;
                                          _loc14_ = _loc21_;
                                          _loc12_ = Number(_loc14_ * _loc12_);
                                          _loc24_ = _loc12_;
                                       }
                                    }
                                    else
                                    {
                                       _loc21_ = -1;
                                       _loc12_ = Number(_loc24_ + _loc21_);
                                       _loc19_ = _loc12_;
                                       _loc12_ = _loc19_;
                                       _loc21_ = -0.25;
                                       _loc14_ = Number(_loc12_ * _loc21_);
                                       _loc21_ = _loc14_;
                                       var _loc16_:* = 0.333333343267441;
                                       _loc14_ = Number(_loc21_ + _loc16_);
                                       _loc21_ = _loc14_;
                                       _loc14_ = _loc21_;
                                       _loc14_ = Number(_loc14_ * _loc12_);
                                       _loc21_ = _loc14_;
                                       _loc16_ = 0.5;
                                       var _loc17_:* = _loc16_;
                                       _loc14_ = Number(_loc17_ - _loc21_);
                                       _loc21_ = _loc14_;
                                       _loc17_ = Number(_loc12_ * _loc12_);
                                       _loc16_ = _loc17_;
                                       _loc17_ = _loc16_;
                                       _loc14_ = Number(_loc17_ * _loc21_);
                                       _loc21_ = _loc14_;
                                       _loc16_ = -1.44269502162933;
                                       _loc14_ = Number(_loc21_ * _loc16_);
                                       _loc21_ = _loc14_;
                                       _loc16_ = 7.05260754330084e-6;
                                       _loc17_ = Number(_loc12_ * _loc16_);
                                       _loc16_ = _loc17_;
                                       _loc17_ = _loc16_;
                                       _loc14_ = Number(_loc17_ + _loc21_);
                                       _loc21_ = _loc14_;
                                       _loc14_ = _loc21_;
                                       _loc16_ = 1.44268798828125;
                                       _loc12_ = Number(_loc12_ * _loc16_);
                                       _loc19_ = _loc12_;
                                       _loc12_ = _loc19_;
                                       _loc17_ = Number(_loc12_ + _loc14_);
                                       sf32(_loc17_,_loc9_ - 60);
                                       var _loc31_:* = li32(_loc9_ - 60);
                                       _loc31_ = _loc31_ & -4096;
                                       si32(_loc31_,_loc9_ - 64);
                                       _loc18_ = lf32(_loc9_ - 64);
                                       _loc17_ = _loc18_;
                                       _loc12_ = Number(_loc17_ - _loc12_);
                                       _loc19_ = _loc12_;
                                       _loc12_ = Number(_loc14_ - _loc19_);
                                       _loc24_ = _loc12_;
                                    }
                                 }
                                 else
                                 {
                                    _loc42_ = -127;
                                    if(uint(_loc38_) <= 8388607)
                                    {
                                       _loc21_ = 16777216;
                                       _loc12_ = Number(_loc24_ * _loc21_);
                                       sf32(_loc12_,_loc9_ - 16);
                                       _loc42_ = -151;
                                       _loc38_ = li32(_loc9_ - 16);
                                    }
                                    _loc36_ = _loc38_ >> 23;
                                    _loc35_ = int(_loc36_ + _loc42_);
                                    _loc38_ = _loc38_ & 8388607;
                                    _loc42_ = _loc38_ | 1065353216;
                                    _loc37_ = 0;
                                    if(uint(_loc38_) >= 1885298)
                                    {
                                       _loc37_ = 1;
                                       if(uint(_loc38_) >= 6140887)
                                       {
                                          _loc42_ = int(_loc42_ + -8388608);
                                          _loc35_ = int(_loc35_ + 1);
                                          _loc37_ = 0;
                                       }
                                    }
                                    _loc36_ = _loc37_ << 21;
                                    _loc36_ = _loc36_ | 4194304;
                                    si32(_loc42_,_loc9_ - 20);
                                    var _loc26_:* = _loc42_ >> 1;
                                    _loc26_ = _loc26_ & -536875008;
                                    _loc26_ = _loc26_ | 536870912;
                                    _loc36_ = int(_loc26_ + _loc36_);
                                    si32(_loc36_,_loc9_ - 24);
                                    _loc36_ = _loc37_ << 2;
                                    _loc26_ = int(_bp + _loc36_);
                                    var _loc22_:* = lf32(_loc26_);
                                    var _loc20_:* = lf32(_loc9_ - 20);
                                    _loc14_ = Number(_loc20_ - _loc22_);
                                    _loc21_ = _loc14_;
                                    var _loc1_:* = _loc21_;
                                    _loc14_ = Number(_loc22_ + _loc20_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    _loc16_ = 1;
                                    _loc17_ = _loc16_;
                                    _loc14_ = Number(_loc17_ / _loc14_);
                                    _loc21_ = _loc14_;
                                    var _loc2_:* = _loc21_;
                                    _loc14_ = Number(_loc1_ * _loc2_);
                                    _loc21_ = _loc14_;
                                    sf32(_loc21_,_loc9_ - 28);
                                    _loc31_ = li32(_loc9_ - 28);
                                    _loc31_ = _loc31_ & -4096;
                                    si32(_loc31_,_loc9_ - 32);
                                    _loc17_ = _loc21_;
                                    _loc14_ = lf32(_loc9_ - 32);
                                    var _loc3_:* = Number(_loc14_ + _loc17_);
                                    var _loc11_:* = _loc3_;
                                    _loc3_ = _loc11_;
                                    var _loc4_:* = lf32(_loc9_ - 24);
                                    var _loc7_:* = Number(_loc14_ * _loc4_);
                                    var _loc13_:* = _loc7_;
                                    _loc7_ = _loc13_;
                                    _loc1_ = Number(_loc1_ - _loc7_);
                                    var _loc10_:* = _loc1_;
                                    _loc1_ = _loc10_;
                                    _loc22_ = Number(_loc4_ - _loc22_);
                                    var _loc39_:* = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc20_ = Number(_loc20_ - _loc22_);
                                    var _loc41_:* = _loc20_;
                                    _loc20_ = _loc41_;
                                    _loc20_ = Number(_loc14_ * _loc20_);
                                    _loc41_ = _loc20_;
                                    _loc20_ = _loc41_;
                                    _loc20_ = Number(_loc1_ - _loc20_);
                                    _loc41_ = _loc20_;
                                    _loc20_ = _loc41_;
                                    _loc2_ = Number(_loc20_ * _loc2_);
                                    var _loc30_:* = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc20_ = Number(_loc3_ * _loc2_);
                                    _loc41_ = _loc20_;
                                    _loc20_ = _loc41_;
                                    _loc3_ = Number(_loc17_ * _loc17_);
                                    _loc11_ = _loc3_;
                                    _loc3_ = _loc11_;
                                    _loc39_ = 0.206975013017654;
                                    _loc22_ = _loc39_;
                                    _loc22_ = Number(_loc3_ * _loc22_);
                                    _loc39_ = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc10_ = 0.230660751461983;
                                    _loc1_ = _loc10_;
                                    _loc22_ = Number(_loc22_ + _loc1_);
                                    _loc39_ = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc22_ = Number(_loc22_ * _loc3_);
                                    _loc39_ = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc10_ = 0.272728115320206;
                                    _loc1_ = _loc10_;
                                    _loc22_ = Number(_loc22_ + _loc1_);
                                    _loc39_ = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc22_ = Number(_loc22_ * _loc3_);
                                    _loc39_ = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc10_ = 0.333333343267441;
                                    _loc1_ = _loc10_;
                                    _loc22_ = Number(_loc22_ + _loc1_);
                                    _loc39_ = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc22_ = Number(_loc22_ * _loc3_);
                                    _loc39_ = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc10_ = 0.428571432828903;
                                    _loc1_ = _loc10_;
                                    _loc22_ = Number(_loc22_ + _loc1_);
                                    _loc39_ = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc22_ = Number(_loc22_ * _loc3_);
                                    _loc39_ = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc10_ = 0.600000023841858;
                                    _loc1_ = _loc10_;
                                    _loc22_ = Number(_loc22_ + _loc1_);
                                    _loc39_ = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc3_ = Number(_loc3_ * _loc3_);
                                    _loc11_ = _loc3_;
                                    _loc3_ = _loc11_;
                                    _loc3_ = Number(_loc3_ * _loc22_);
                                    _loc11_ = _loc3_;
                                    _loc3_ = _loc11_;
                                    _loc20_ = Number(_loc20_ + _loc3_);
                                    _loc41_ = _loc20_;
                                    _loc3_ = _loc41_;
                                    _loc41_ = 3;
                                    _loc20_ = _loc41_;
                                    _loc22_ = Number(_loc14_ * _loc14_);
                                    _loc39_ = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc20_ = Number(_loc22_ + _loc20_);
                                    _loc41_ = _loc20_;
                                    _loc20_ = _loc41_;
                                    _loc20_ = Number(_loc20_ + _loc3_);
                                    sf32(_loc20_,_loc9_ - 36);
                                    var _loc28_:* = li32(_loc9_ - 36);
                                    _loc28_ = _loc28_ & -4096;
                                    si32(_loc28_,_loc9_ - 40);
                                    _loc41_ = -3;
                                    _loc1_ = _loc41_;
                                    _loc20_ = lf32(_loc9_ - 40);
                                    _loc1_ = Number(_loc20_ + _loc1_);
                                    _loc10_ = _loc1_;
                                    _loc1_ = _loc10_;
                                    _loc22_ = Number(_loc1_ - _loc22_);
                                    _loc39_ = _loc22_;
                                    _loc22_ = _loc39_;
                                    _loc3_ = Number(_loc3_ - _loc22_);
                                    _loc11_ = _loc3_;
                                    _loc3_ = _loc11_;
                                    _loc17_ = Number(_loc3_ * _loc17_);
                                    _loc16_ = _loc17_;
                                    _loc17_ = _loc16_;
                                    _loc2_ = Number(_loc2_ * _loc20_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc17_ = Number(_loc2_ + _loc17_);
                                    _loc16_ = _loc17_;
                                    _loc2_ = _loc16_;
                                    _loc14_ = Number(_loc14_ * _loc20_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    _loc17_ = Number(_loc14_ + _loc2_);
                                    sf32(_loc17_,_loc9_ - 44);
                                    _loc31_ = li32(_loc9_ - 44);
                                    _loc31_ = _loc31_ & -4096;
                                    si32(_loc31_,_loc9_ - 48);
                                    _loc17_ = lf32(_loc9_ - 48);
                                    _loc14_ = Number(_loc17_ - _loc14_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    _loc14_ = Number(_loc2_ - _loc14_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    _loc30_ = 0.961796700954437;
                                    _loc2_ = _loc30_;
                                    _loc14_ = Number(_loc14_ * _loc2_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    _loc30_ = -0.000117368574137799;
                                    _loc2_ = _loc30_;
                                    _loc2_ = Number(_loc17_ * _loc2_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc14_ = Number(_loc2_ + _loc14_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    var _loc29_:int = _dp_l + _loc36_;
                                    _loc2_ = lf32(_loc29_);
                                    _loc14_ = Number(_loc14_ + _loc2_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    _loc30_ = 0.9619140625;
                                    _loc2_ = _loc30_;
                                    _loc17_ = Number(_loc17_ * _loc2_);
                                    _loc16_ = _loc17_;
                                    _loc17_ = _loc16_;
                                    _loc2_ = Number(_loc17_ + _loc14_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc36_ = int(_dp_h + _loc36_);
                                    _loc12_ = lf32(_loc36_);
                                    _loc2_ = Number(_loc2_ + _loc12_);
                                    _loc30_ = _loc2_;
                                    _loc20_ = _loc30_;
                                    _loc30_ = Number(_loc35_);
                                    _loc2_ = _loc30_;
                                    _loc20_ = Number(_loc20_ + _loc2_);
                                    sf32(_loc20_,_loc9_ - 52);
                                    _loc28_ = li32(_loc9_ - 52);
                                    _loc28_ = _loc28_ & -4096;
                                    si32(_loc28_,_loc9_ - 56);
                                    _loc18_ = lf32(_loc9_ - 56);
                                    _loc20_ = _loc18_;
                                    _loc2_ = Number(_loc20_ - _loc2_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc12_ = Number(_loc2_ - _loc12_);
                                    _loc19_ = _loc12_;
                                    _loc12_ = _loc19_;
                                    _loc12_ = Number(_loc12_ - _loc17_);
                                    _loc19_ = _loc12_;
                                    _loc12_ = _loc19_;
                                    _loc12_ = Number(_loc14_ - _loc12_);
                                    _loc24_ = _loc12_;
                                 }
                                 _loc36_ = _loc27_ & -4096;
                                 si32(_loc36_,_loc9_ - 68);
                                 _loc17_ = _loc23_;
                                 _loc12_ = _loc24_;
                                 _loc12_ = Number(_loc12_ * _loc17_);
                                 _loc19_ = _loc12_;
                                 _loc14_ = _loc19_;
                                 _loc12_ = lf32(_loc9_ - 68);
                                 _loc17_ = Number(_loc17_ - _loc12_);
                                 _loc16_ = _loc17_;
                                 _loc2_ = _loc16_;
                                 _loc17_ = _loc18_;
                                 _loc2_ = Number(_loc2_ * _loc17_);
                                 _loc30_ = _loc2_;
                                 _loc2_ = _loc30_;
                                 _loc14_ = Number(_loc2_ + _loc14_);
                                 _loc21_ = _loc14_;
                                 _loc6_ = _loc21_;
                                 _loc12_ = Number(_loc12_ * _loc17_);
                                 _loc32_ = _loc12_;
                                 _loc5_ = _loc32_;
                                 _loc12_ = Number(_loc6_ + _loc5_);
                                 _loc34_ = _loc12_;
                                 sf32(_loc34_,_loc9_ - 72);
                                 _loc35_ = li32(_loc9_ - 72);
                                 if(_loc35_ >= 1124073473)
                                 {
                                    _loc19_ = 1.00000001504747e30;
                                    _loc12_ = _loc19_;
                                    _loc14_ = Number(_loc25_ * _loc12_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    _loc12_ = Number(_loc14_ * _loc12_);
                                    _loc24_ = _loc12_;
                                 }
                                 else
                                 {
                                    if(_loc35_ == 1124073472)
                                    {
                                       _loc12_ = _loc34_;
                                       _loc12_ = Number(_loc12_ - _loc5_);
                                       _loc19_ = _loc12_;
                                       _loc21_ = 4.29956656944341e-8;
                                       _loc14_ = Number(_loc6_ + _loc21_);
                                       _loc21_ = _loc14_;
                                       _loc14_ = _loc21_;
                                       if(_loc14_ <= _loc19_)
                                       {
                                          _loc42_ = _loc35_ & 2147483647;
                                          addr1730:
                                          _loc36_ = int(_loc42_ >>> 23);
                                          _loc36_ = int(_loc36_ + -126);
                                          _loc36_ = int(8388608 >>> _loc36_);
                                          _loc26_ = int(_loc36_ + _loc35_);
                                          _loc36_ = int(_loc26_ >>> 23);
                                          _loc36_ = _loc36_ & 255;
                                          _loc31_ = int(_loc36_ + -127);
                                          _loc31_ = int(8388607 >>> _loc31_);
                                          _loc31_ = _loc31_ ^ -1;
                                          _loc31_ = _loc26_ & _loc31_;
                                          si32(_loc31_,_loc9_ - 76);
                                          _loc26_ = _loc26_ & 8388607;
                                          _loc26_ = _loc26_ | 8388608;
                                          _loc36_ = int(150 - _loc36_);
                                          _loc42_ = int(_loc26_ >>> _loc36_);
                                          _loc27_ = int(0 - _loc42_);
                                          if(_loc35_ >= 0)
                                          {
                                             _loc27_ = _loc42_;
                                          }
                                          _loc12_ = lf32(_loc9_ - 76);
                                          _loc12_ = Number(_loc5_ - _loc12_);
                                          _loc32_ = _loc12_;
                                       }
                                       else
                                       {
                                          _loc19_ = 1.00000001504747e30;
                                          _loc12_ = _loc19_;
                                          _loc14_ = Number(_loc25_ * _loc12_);
                                          _loc21_ = _loc14_;
                                          _loc14_ = _loc21_;
                                          _loc12_ = Number(_loc14_ * _loc12_);
                                          _loc24_ = _loc12_;
                                       }
                                    }
                                    else
                                    {
                                       _loc42_ = _loc35_ & 2147483647;
                                       if(uint(_loc42_) >= 1125515265)
                                       {
                                          _loc19_ = 1.00000000317108e-30;
                                          _loc12_ = _loc19_;
                                          _loc14_ = Number(_loc25_ * _loc12_);
                                          _loc21_ = _loc14_;
                                          _loc14_ = _loc21_;
                                          _loc12_ = Number(_loc14_ * _loc12_);
                                          _loc24_ = _loc12_;
                                       }
                                       else
                                       {
                                          if(_loc35_ == -1021968384)
                                          {
                                             _loc12_ = _loc34_;
                                             _loc12_ = Number(_loc12_ - _loc5_);
                                             _loc19_ = _loc12_;
                                             _loc12_ = _loc19_;
                                             if(!(_loc12_ < _loc6_ | _loc12_ != _loc12_ | _loc6_ != _loc6_))
                                             {
                                                _loc19_ = 1.00000000317108e-30;
                                                _loc12_ = _loc19_;
                                                _loc14_ = Number(_loc25_ * _loc12_);
                                                _loc21_ = _loc14_;
                                                _loc14_ = _loc21_;
                                                _loc12_ = Number(_loc14_ * _loc12_);
                                                _loc24_ = _loc12_;
                                             }
                                          }
                                          _loc27_ = 0;
                                          if(uint(_loc42_) >= 1056964609)
                                          {
                                             §§goto(addr1730);
                                          }
                                       }
                                    }
                                    _loc17_ = _loc32_;
                                    _loc12_ = Number(_loc6_ + _loc17_);
                                    sf32(_loc12_,_loc9_ - 80);
                                    _loc36_ = li32(_loc9_ - 80);
                                    _loc36_ = _loc36_ & -32768;
                                    si32(_loc36_,_loc9_ - 84);
                                    _loc19_ = 1.42860653795651e-6;
                                    _loc14_ = _loc19_;
                                    _loc12_ = lf32(_loc9_ - 84);
                                    _loc14_ = Number(_loc12_ * _loc14_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    _loc17_ = Number(_loc12_ - _loc17_);
                                    _loc16_ = _loc17_;
                                    _loc17_ = _loc16_;
                                    _loc17_ = Number(_loc6_ - _loc17_);
                                    _loc16_ = _loc17_;
                                    _loc17_ = _loc16_;
                                    _loc30_ = 0.6931471824646;
                                    _loc2_ = _loc30_;
                                    _loc17_ = Number(_loc17_ * _loc2_);
                                    _loc16_ = _loc17_;
                                    _loc17_ = _loc16_;
                                    _loc14_ = Number(_loc17_ + _loc14_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    _loc16_ = 0.693145751953125;
                                    _loc17_ = _loc16_;
                                    _loc12_ = Number(_loc12_ * _loc17_);
                                    _loc19_ = _loc12_;
                                    _loc17_ = _loc19_;
                                    _loc12_ = Number(_loc17_ + _loc14_);
                                    _loc19_ = _loc12_;
                                    _loc12_ = _loc19_;
                                    _loc17_ = Number(_loc12_ - _loc17_);
                                    _loc16_ = _loc17_;
                                    _loc17_ = _loc16_;
                                    _loc14_ = Number(_loc14_ - _loc17_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    _loc17_ = Number(_loc12_ * _loc14_);
                                    _loc16_ = _loc17_;
                                    _loc17_ = _loc16_;
                                    _loc14_ = Number(_loc17_ + _loc14_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    _loc17_ = Number(_loc12_ * _loc12_);
                                    _loc16_ = _loc17_;
                                    _loc17_ = _loc16_;
                                    _loc30_ = 4.13813694422061e-8;
                                    _loc2_ = _loc30_;
                                    _loc2_ = Number(_loc17_ * _loc2_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc41_ = -1.65339019986277e-6;
                                    _loc20_ = _loc41_;
                                    _loc2_ = Number(_loc2_ + _loc20_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc2_ = Number(_loc2_ * _loc17_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc41_ = 0.0000661375597701408;
                                    _loc20_ = _loc41_;
                                    _loc2_ = Number(_loc2_ + _loc20_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc2_ = Number(_loc2_ * _loc17_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc41_ = -0.00277777784503996;
                                    _loc20_ = _loc41_;
                                    _loc2_ = Number(_loc2_ + _loc20_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc2_ = Number(_loc2_ * _loc17_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc41_ = 0.16666667163372;
                                    _loc20_ = _loc41_;
                                    _loc2_ = Number(_loc2_ + _loc20_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc17_ = Number(_loc2_ * _loc17_);
                                    _loc16_ = _loc17_;
                                    _loc17_ = _loc16_;
                                    _loc17_ = Number(_loc12_ - _loc17_);
                                    _loc16_ = _loc17_;
                                    _loc17_ = _loc16_;
                                    _loc30_ = -2;
                                    _loc2_ = _loc30_;
                                    _loc2_ = Number(_loc17_ + _loc2_);
                                    _loc30_ = _loc2_;
                                    _loc2_ = _loc30_;
                                    _loc17_ = Number(_loc12_ * _loc17_);
                                    _loc16_ = _loc17_;
                                    _loc17_ = _loc16_;
                                    _loc17_ = Number(_loc17_ / _loc2_);
                                    _loc16_ = _loc17_;
                                    _loc17_ = _loc16_;
                                    _loc14_ = Number(_loc17_ - _loc14_);
                                    _loc21_ = _loc14_;
                                    _loc14_ = _loc21_;
                                    _loc12_ = Number(_loc14_ - _loc12_);
                                    _loc19_ = _loc12_;
                                    _loc12_ = _loc19_;
                                    _loc21_ = 1;
                                    _loc14_ = _loc21_;
                                    _loc12_ = Number(_loc14_ - _loc12_);
                                    _loc23_ = _loc12_;
                                    sf32(_loc23_,_loc9_ - 88);
                                    _loc36_ = _loc27_ << 23;
                                    _loc26_ = li32(_loc9_ - 88);
                                    _loc38_ = int(_loc26_ + _loc36_);
                                    _loc36_ = _loc38_ >> 23;
                                    if(_loc36_ <= 0)
                                    {
                                       _loc8_ = int(_loc8_ - 16);
                                       si32(_loc27_,_loc8_ + 4);
                                       sf32(_loc23_,_loc8_);
                                       ESP = _loc8_;
                                       F_scalbnf();
                                       _loc8_ = int(_loc8_ + 16);
                                       _loc34_ = Number(st0);
                                    }
                                    else
                                    {
                                       si32(_loc38_,_loc9_ - 92);
                                       _loc34_ = lf32(_loc9_ - 92);
                                    }
                                    _loc12_ = _loc34_;
                                    _loc14_ = _loc25_;
                                    _loc12_ = Number(_loc14_ * _loc12_);
                                    _loc24_ = _loc12_;
                                 }
                              }
                           }
                        }
                     }
                     if(_loc27_ <= -1)
                     {
                        _loc21_ = 1;
                        _loc14_ = _loc21_;
                        _loc12_ = Number(_loc14_ / _loc24_);
                        _loc24_ = _loc12_;
                     }
                     if(_loc40_ <= -1)
                     {
                        _loc36_ = _loc37_ | int(_loc38_ + -1065353216);
                        if(_loc36_ == 0)
                        {
                           _loc12_ = _loc24_;
                           _loc12_ = Number(_loc12_ - _loc12_);
                           _loc19_ = _loc12_;
                           _loc12_ = _loc19_;
                           _loc12_ = Number(_loc12_ / _loc12_);
                           _loc24_ = _loc12_;
                        }
                        else if(_loc37_ == 1)
                        {
                           _loc12_ = _loc24_;
                           _loc12_ = Number(-_loc12_);
                           _loc24_ = _loc12_;
                        }
                     }
                  }
               }
               else
               {
                  _loc24_ = _loc25_;
                  if(_loc27_ <= -1)
                  {
                     _loc21_ = 1;
                     _loc14_ = _loc21_;
                     _loc12_ = Number(_loc14_ / _loc25_);
                     _loc24_ = _loc12_;
                  }
               }
            }
         }
         _loc14_ = _loc23_;
         _loc19_ = 0;
         _loc12_ = _loc19_;
         _loc14_ = Number(_loc14_ + _loc12_);
         _loc21_ = _loc14_;
         _loc14_ = _loc21_;
         _loc17_ = _loc25_;
         _loc12_ = Number(_loc17_ + _loc12_);
         _loc19_ = _loc12_;
         _loc12_ = _loc19_;
         _loc12_ = Number(_loc12_ + _loc14_);
         _loc24_ = _loc12_;
      }
      st0 = _loc24_;
      _loc8_ = _loc9_;
      ESP = _loc8_;
   }
}
