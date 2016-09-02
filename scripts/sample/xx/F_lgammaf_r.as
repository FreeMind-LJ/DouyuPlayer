package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.sf32;
   
   public function F_lgammaf_r() : void
   {
      var _loc6_:* = 0;
      var _loc24_:* = 0;
      var _loc35_:* = 0;
      var _loc33_:* = 0;
      var _loc22_:* = NaN;
      var _loc29_:int = 0;
      var _loc27_:int = 0;
      var _loc13_:* = NaN;
      var _loc23_:int = 0;
      var _loc20_:* = NaN;
      var _loc8_:* = NaN;
      var _loc17_:* = NaN;
      var _loc1_:* = NaN;
      var _loc2_:* = NaN;
      var _loc3_:* = NaN;
      var _loc31_:* = 0;
      var _loc28_:* = 0;
      var _loc26_:* = 0;
      var _loc15_:* = NaN;
      var _loc19_:* = NaN;
      var _loc10_:* = NaN;
      var _loc5_:* = int(ESP);
      _loc6_ = _loc5_;
      _loc5_ = int(_loc5_ - 32);
      _loc24_ = li32(_loc6_ + 4);
      si32(1,_loc24_);
      _loc20_ = lf32(_loc6_);
      sf32(_loc20_,_loc6_ - 4);
      _loc35_ = li32(_loc6_ - 4);
      _loc33_ = _loc35_ & 2147483647;
      if(uint(_loc33_) >= 2139095040)
      {
         var _loc11_:* = _loc20_;
         _loc11_ = Number(_loc11_ * _loc11_);
         _loc22_ = _loc11_;
      }
      else
      {
         _loc22_ = Number(inf);
         if(_loc33_ != 0)
         {
            if(uint(_loc33_) <= 889192447)
            {
               if(_loc35_ <= -1)
               {
                  si32(-1,_loc24_);
                  _loc5_ = int(_loc5_ - 16);
                  _loc11_ = _loc20_;
                  _loc11_ = Number(-_loc11_);
                  sf32(_loc11_,_loc5_);
                  ESP = _loc5_;
                  F_logf();
                  _loc5_ = int(_loc5_ + 16);
                  var _loc21_:* = Number(st0);
                  _loc11_ = _loc21_;
                  _loc11_ = Number(-_loc11_);
                  _loc22_ = _loc11_;
               }
               else
               {
                  _loc5_ = int(_loc5_ - 16);
                  sf32(_loc20_,_loc5_);
                  ESP = _loc5_;
                  F_logf();
                  _loc5_ = int(_loc5_ + 16);
                  _loc21_ = Number(st0);
                  _loc11_ = _loc21_;
                  _loc11_ = Number(-_loc11_);
                  _loc22_ = _loc11_;
               }
            }
            else
            {
               if(_loc35_ <= -1)
               {
                  _loc22_ = Number(inf);
                  if(uint(_loc33_) <= 1258291199)
                  {
                     if(uint(_loc33_) <= 1048575999)
                     {
                        var _loc16_:* = 3.14159274101257;
                        _loc11_ = Number(_loc20_ * _loc16_);
                        _loc21_ = _loc11_;
                        _loc11_ = _loc21_;
                        var _loc14_:* = Number(_loc11_ * _loc11_);
                        var _loc9_:* = Number(_loc14_ * _loc11_);
                        var _loc18_:* = Number(_loc14_ * 2.71831149398982e-6);
                        _loc14_ = Number(_loc14_ * 0.00833332938588946);
                        _loc14_ = Number(_loc14_ + -0.166666666416265);
                        _loc9_ = Number(_loc14_ * _loc9_);
                        _loc11_ = Number(_loc9_ + _loc11_);
                        _loc11_ = Number(_loc11_ + Number(_loc9_ * (_loc14_ * _loc14_) * (_loc18_ + -0.000198393348360966)));
                        _loc19_ = _loc11_;
                     }
                     else
                     {
                        _loc17_ = _loc20_;
                        _loc11_ = Number(-_loc17_);
                        _loc22_ = _loc11_;
                        sf32(_loc22_,_loc6_ - 8);
                        _loc31_ = li32(_loc6_ - 8);
                        var _loc30_:* = int(_loc31_ >>> 23);
                        _loc30_ = _loc30_ & 255;
                        _loc29_ = _loc30_ + -127;
                        if(_loc29_ <= 22)
                        {
                           if(_loc29_ <= -1)
                           {
                              _loc21_ = 1.00000001504747e30;
                              _loc11_ = _loc21_;
                              _loc11_ = Number(_loc11_ - _loc17_);
                              _loc21_ = _loc11_;
                              _loc11_ = _loc21_;
                              _loc16_ = 0;
                              _loc9_ = _loc16_;
                              _loc28_ = _loc31_;
                              if(!(_loc11_ <= _loc9_ | _loc11_ != _loc11_ | _loc9_ != _loc9_))
                              {
                                 _loc28_ = 0;
                                 if(_loc31_ <= -1)
                                 {
                                    _loc28_ = _loc31_;
                                    if((_loc31_ & 2147483647) != 0)
                                    {
                                       _loc28_ = -1082130432;
                                    }
                                 }
                              }
                              addr453:
                              si32(_loc28_,_loc6_ - 12);
                              _loc13_ = lf32(_loc6_ - 12);
                           }
                           else
                           {
                              _loc27_ = 8388607 >>> _loc29_;
                              _loc13_ = _loc22_;
                              if((_loc27_ & _loc31_) != 0)
                              {
                                 _loc21_ = 1.00000001504747e30;
                                 _loc11_ = _loc21_;
                                 _loc11_ = Number(_loc11_ - _loc17_);
                                 _loc21_ = _loc11_;
                                 _loc11_ = _loc21_;
                                 _loc16_ = 0;
                                 _loc9_ = _loc16_;
                                 _loc28_ = _loc31_;
                                 if(!(_loc11_ <= _loc9_ | _loc11_ != _loc11_ | _loc9_ != _loc9_))
                                 {
                                    if(_loc31_ <= -1)
                                    {
                                       _loc30_ = int(8388608 >>> _loc29_);
                                       _loc31_ = int(_loc30_ + _loc31_);
                                    }
                                    _loc30_ = _loc27_ ^ -1;
                                    _loc28_ = _loc31_ & _loc30_;
                                 }
                                 §§goto(addr453);
                              }
                           }
                        }
                        else
                        {
                           _loc13_ = _loc22_;
                           if(_loc29_ == 128)
                           {
                              _loc21_ = -2;
                              _loc11_ = Number(_loc17_ * _loc21_);
                              _loc13_ = _loc11_;
                           }
                        }
                        _loc9_ = _loc22_;
                        _loc11_ = _loc13_;
                        if(_loc11_ != _loc9_)
                        {
                           _loc21_ = -0.5;
                           _loc11_ = Number(_loc17_ * _loc21_);
                           _loc13_ = _loc11_;
                           sf32(_loc13_,_loc6_ - 20);
                           _loc26_ = li32(_loc6_ - 20);
                           _loc30_ = int(_loc26_ >>> 23);
                           _loc30_ = _loc30_ & 255;
                           _loc23_ = _loc30_ + -127;
                           if(_loc23_ <= 22)
                           {
                              if(_loc23_ <= -1)
                              {
                                 _loc16_ = 1.00000001504747e30;
                                 _loc11_ = Number(_loc13_ + _loc16_);
                                 _loc21_ = _loc11_;
                                 _loc11_ = _loc21_;
                                 _loc16_ = 0;
                                 _loc9_ = _loc16_;
                                 _loc31_ = _loc26_;
                                 if(!(_loc11_ <= _loc9_ | _loc11_ != _loc11_ | _loc9_ != _loc9_))
                                 {
                                    _loc31_ = 0;
                                    if(_loc26_ <= -1)
                                    {
                                       _loc31_ = _loc26_;
                                       if((_loc26_ & 2147483647) != 0)
                                       {
                                          _loc31_ = -1082130432;
                                       }
                                    }
                                 }
                                 addr651:
                                 si32(_loc31_,_loc6_ - 24);
                                 _loc15_ = lf32(_loc6_ - 24);
                              }
                              else
                              {
                                 _loc29_ = 8388607 >>> _loc23_;
                                 _loc15_ = _loc13_;
                                 if((_loc29_ & _loc26_) != 0)
                                 {
                                    _loc16_ = 1.00000001504747e30;
                                    _loc11_ = Number(_loc13_ + _loc16_);
                                    _loc21_ = _loc11_;
                                    _loc11_ = _loc21_;
                                    _loc16_ = 0;
                                    _loc9_ = _loc16_;
                                    _loc31_ = _loc26_;
                                    if(!(_loc11_ <= _loc9_ | _loc11_ != _loc11_ | _loc9_ != _loc9_))
                                    {
                                       if(_loc26_ <= -1)
                                       {
                                          _loc30_ = int(8388608 >>> _loc23_);
                                          _loc26_ = int(_loc30_ + _loc26_);
                                       }
                                       _loc30_ = _loc29_ ^ -1;
                                       _loc31_ = _loc26_ & _loc30_;
                                    }
                                    §§goto(addr651);
                                 }
                              }
                           }
                           else
                           {
                              _loc15_ = _loc13_;
                              if(_loc23_ == 128)
                              {
                                 _loc11_ = _loc13_;
                                 _loc11_ = Number(_loc11_ + _loc11_);
                                 _loc15_ = _loc11_;
                              }
                           }
                           _loc9_ = _loc15_;
                           _loc11_ = _loc13_;
                           _loc11_ = Number(_loc11_ - _loc9_);
                           _loc21_ = _loc11_;
                           _loc11_ = _loc21_;
                           _loc11_ = Number(_loc11_ + _loc11_);
                           _loc22_ = _loc11_;
                           _loc11_ = _loc22_;
                           _loc16_ = 4;
                           _loc9_ = _loc16_;
                           _loc11_ = Number(_loc11_ * _loc9_);
                           _loc21_ = _loc11_;
                           _loc26_ = int(_loc21_);
                           addr746:
                           addr1194:
                           if(_loc26_ <= 2)
                           {
                              if(_loc26_ != 0)
                              {
                                 _loc30_ = int(_loc26_ + -1);
                                 if(uint(_loc30_) >= 2)
                                 {
                                    addr1103:
                                    _loc11_ = _loc22_;
                                    _loc16_ = -2;
                                    _loc9_ = _loc16_;
                                    _loc11_ = Number(_loc11_ + _loc9_);
                                    _loc21_ = _loc11_;
                                    _loc11_ = _loc21_;
                                    _loc16_ = 3.14159274101257;
                                    _loc9_ = _loc16_;
                                    _loc11_ = Number(_loc11_ * _loc9_);
                                    _loc21_ = _loc11_;
                                    _loc11_ = _loc21_;
                                    _loc14_ = Number(_loc11_ * _loc11_);
                                    _loc9_ = Number(_loc14_ * _loc11_);
                                    var _loc12_:* = Number(_loc14_ * _loc14_);
                                    _loc12_ = Number(_loc9_ * _loc12_);
                                    _loc18_ = Number(_loc14_ * 2.71831149398982e-6);
                                    _loc18_ = Number(_loc18_ + -0.000198393348360966);
                                    _loc12_ = Number(_loc12_ * _loc18_);
                                    _loc14_ = Number(_loc14_ * 0.00833332938588946);
                                    _loc14_ = Number(_loc14_ + -0.166666666416265);
                                    _loc9_ = Number(_loc14_ * _loc9_);
                                    _loc11_ = Number(_loc9_ + _loc11_);
                                    _loc11_ = Number(_loc11_ + _loc12_);
                                    _loc19_ = _loc11_;
                                 }
                                 else
                                 {
                                    _loc16_ = 0.5;
                                    _loc9_ = _loc16_;
                                    _loc11_ = Number(_loc9_ - _loc22_);
                                    _loc21_ = _loc11_;
                                    _loc16_ = 3.14159274101257;
                                    _loc11_ = Number(_loc21_ * _loc16_);
                                    _loc21_ = _loc11_;
                                    _loc11_ = _loc21_;
                                    _loc11_ = Number(_loc11_ * _loc11_);
                                    _loc14_ = Number(_loc11_ * _loc11_);
                                    _loc12_ = Number(_loc11_ * 0.0000243904487962774);
                                    _loc11_ = Number(_loc11_ * -0.499999997251031);
                                    _loc11_ = Number(_loc11_ + 1);
                                    _loc11_ = Number(_loc11_ + Number(_loc14_ * 0.0416666233237391));
                                    _loc11_ = Number(_loc11_ + Number(_loc14_ * _loc11_ * (_loc12_ + -0.00138867637746099)));
                                    _loc19_ = _loc11_;
                                 }
                              }
                           }
                           else
                           {
                              _loc30_ = int(_loc26_ + -3);
                              if(uint(_loc30_) >= 2)
                              {
                                 _loc30_ = int(_loc26_ + -5);
                                 if(uint(_loc30_) >= 2)
                                 {
                                    §§goto(addr1103);
                                 }
                                 else
                                 {
                                    _loc16_ = -1.5;
                                    _loc11_ = Number(_loc22_ + _loc16_);
                                    _loc21_ = _loc11_;
                                    _loc16_ = 3.14159274101257;
                                    _loc11_ = Number(_loc21_ * _loc16_);
                                    _loc21_ = _loc11_;
                                    _loc11_ = _loc21_;
                                    _loc9_ = Number(_loc11_ * _loc11_);
                                    _loc14_ = Number(_loc9_ * _loc9_);
                                    _loc12_ = Number(_loc9_ * 0.0000243904487962774);
                                    _loc9_ = Number(_loc9_ * -0.499999997251031);
                                    _loc9_ = Number(_loc9_ + 1);
                                    _loc9_ = Number(_loc9_ + Number(_loc14_ * 0.0416666233237391));
                                    _loc11_ = Number(_loc9_ + Number(_loc14_ * _loc9_ * (_loc12_ + -0.00138867637746099)));
                                    _loc21_ = _loc11_;
                                    _loc11_ = _loc21_;
                                    _loc11_ = Number(-_loc11_);
                                    _loc19_ = _loc11_;
                                 }
                              }
                              else
                              {
                                 _loc16_ = 1;
                                 _loc9_ = _loc16_;
                                 _loc11_ = Number(_loc9_ - _loc22_);
                                 _loc21_ = _loc11_;
                                 _loc16_ = 3.14159274101257;
                                 _loc11_ = Number(_loc21_ * _loc16_);
                                 _loc21_ = _loc11_;
                                 _loc11_ = _loc21_;
                                 _loc12_ = Number(_loc11_ * _loc11_);
                                 _loc9_ = Number(_loc12_ * _loc11_);
                                 _loc18_ = Number(_loc12_ * 2.71831149398982e-6);
                                 _loc12_ = Number(_loc12_ * 0.00833332938588946);
                                 _loc12_ = Number(_loc12_ + -0.166666666416265);
                                 _loc9_ = Number(_loc12_ * _loc9_);
                                 _loc11_ = Number(_loc9_ + _loc11_);
                                 _loc11_ = Number(_loc11_ + Number(_loc9_ * (_loc12_ * _loc12_) * (_loc18_ + -0.000198393348360966)));
                                 _loc19_ = _loc11_;
                              }
                           }
                           _loc11_ = _loc19_;
                           _loc11_ = Number(-_loc11_);
                           _loc19_ = _loc11_;
                        }
                        else
                        {
                           _loc22_ = 0;
                           if(uint(_loc33_) <= 1266679807)
                           {
                              if(uint(_loc33_) <= 1258291199)
                              {
                                 _loc21_ = 8388608;
                                 _loc11_ = _loc21_;
                                 _loc11_ = Number(_loc11_ - _loc17_);
                                 _loc13_ = _loc11_;
                              }
                              sf32(_loc13_,_loc6_ - 16);
                              _loc30_ = li32(_loc6_ - 16);
                              _loc30_ = _loc30_ & 1;
                              _loc26_ = _loc30_ << 2;
                              _loc22_ = Number(_loc30_);
                              §§goto(addr746);
                           }
                        }
                        _loc11_ = _loc22_;
                        _loc16_ = 3.14159274101257;
                        _loc9_ = _loc16_;
                        _loc11_ = Number(_loc11_ * _loc9_);
                        _loc21_ = _loc11_;
                        _loc11_ = _loc21_;
                        _loc12_ = Number(_loc11_ * _loc11_);
                        _loc9_ = Number(_loc12_ * _loc11_);
                        _loc14_ = Number(_loc12_ * _loc12_);
                        _loc14_ = Number(_loc9_ * _loc14_);
                        _loc18_ = Number(_loc12_ * 2.71831149398982e-6);
                        _loc18_ = Number(_loc18_ + -0.000198393348360966);
                        _loc14_ = Number(_loc14_ * _loc18_);
                        _loc12_ = Number(_loc12_ * 0.00833332938588946);
                        _loc12_ = Number(_loc12_ + -0.166666666416265);
                        _loc9_ = Number(_loc12_ * _loc9_);
                        _loc11_ = Number(_loc9_ + _loc11_);
                        _loc11_ = Number(_loc11_ + _loc14_);
                        _loc19_ = _loc11_;
                        §§goto(addr1194);
                     }
                     _loc22_ = Number(inf);
                     _loc1_ = _loc19_;
                     _loc21_ = 0;
                     _loc2_ = _loc21_;
                     if(_loc1_ != _loc2_)
                     {
                        _loc3_ = _loc20_;
                        _loc11_ = Number(_loc1_ * _loc3_);
                        sf32(_loc11_,_loc6_ - 28);
                        _loc30_ = li32(_loc6_ - 28);
                        _loc30_ = _loc30_ & 2147483647;
                        si32(_loc30_,_loc6_ - 32);
                        _loc21_ = 3.14159274101257;
                        _loc5_ = int(_loc5_ - 16);
                        sf32(Number(_loc21_ / lf32(_loc6_ - 32)),_loc5_);
                        ESP = _loc5_;
                        F_logf();
                        _loc5_ = int(_loc5_ + 16);
                        _loc19_ = Number(st0);
                        if(!(_loc1_ >= _loc2_ | _loc1_ != _loc1_ | _loc2_ != _loc2_))
                        {
                           si32(-1,_loc24_);
                        }
                        _loc11_ = Number(-_loc3_);
                        _loc20_ = _loc11_;
                     }
                  }
               }
               _loc22_ = 0;
               if(_loc33_ != 1065353216)
               {
                  if(_loc33_ != 1073741824)
                  {
                     if(uint(_loc33_) <= 1073741823)
                     {
                        if(uint(_loc33_) <= 1063675494)
                        {
                           _loc5_ = int(_loc5_ - 16);
                           sf32(_loc20_,_loc5_);
                           ESP = _loc5_;
                           F_logf();
                           _loc22_ = 1;
                           _loc5_ = int(_loc5_ + 16);
                           _loc21_ = Number(st0);
                           _loc11_ = _loc21_;
                           _loc11_ = Number(-_loc11_);
                           _loc8_ = _loc11_;
                           if(uint(_loc33_) <= 1060850207)
                           {
                              if(uint(_loc33_) >= 1047343880)
                              {
                                 _loc16_ = -0.461632132530212;
                                 _loc11_ = Number(_loc20_ + _loc16_);
                                 _loc10_ = _loc11_;
                                 addr1721:
                                 _loc14_ = _loc10_;
                                 _loc11_ = Number(_loc14_ * _loc14_);
                                 _loc21_ = _loc11_;
                                 _loc11_ = _loc21_;
                                 _loc9_ = Number(_loc11_ * _loc14_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 var _loc32_:* = -0.000312754156766459;
                                 _loc12_ = _loc32_;
                                 _loc12_ = Number(_loc9_ * _loc12_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 var _loc34_:* = 0.000881081854458898;
                                 _loc18_ = _loc34_;
                                 _loc12_ = Number(_loc12_ + _loc18_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc12_ = Number(_loc12_ * _loc9_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc34_ = -0.00368452025577426;
                                 _loc18_ = _loc34_;
                                 _loc12_ = Number(_loc12_ + _loc18_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc12_ = Number(_loc12_ * _loc9_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc34_ = 0.0179706756025553;
                                 _loc18_ = _loc34_;
                                 _loc12_ = Number(_loc12_ + _loc18_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc12_ = Number(_loc12_ * _loc9_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc34_ = -0.147587716579437;
                                 _loc18_ = _loc34_;
                                 _loc12_ = Number(_loc12_ + _loc18_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc34_ = 0.000335529184667394;
                                 _loc18_ = _loc34_;
                                 _loc18_ = Number(_loc9_ * _loc18_);
                                 _loc34_ = _loc18_;
                                 _loc18_ = _loc34_;
                                 var _loc25_:* = -0.000538595311809331;
                                 var _loc4_:* = _loc25_;
                                 _loc18_ = Number(_loc18_ + _loc4_);
                                 _loc34_ = _loc18_;
                                 _loc18_ = _loc34_;
                                 _loc18_ = Number(_loc18_ * _loc9_);
                                 _loc34_ = _loc18_;
                                 _loc18_ = _loc34_;
                                 _loc25_ = 0.00225964770652354;
                                 _loc4_ = _loc25_;
                                 _loc18_ = Number(_loc18_ + _loc4_);
                                 _loc34_ = _loc18_;
                                 _loc18_ = _loc34_;
                                 _loc18_ = Number(_loc18_ * _loc9_);
                                 _loc34_ = _loc18_;
                                 _loc18_ = _loc34_;
                                 _loc25_ = -0.0103142242878675;
                                 _loc4_ = _loc25_;
                                 _loc18_ = Number(_loc18_ + _loc4_);
                                 _loc34_ = _loc18_;
                                 _loc18_ = _loc34_;
                                 _loc18_ = Number(_loc18_ * _loc9_);
                                 _loc34_ = _loc18_;
                                 _loc18_ = _loc34_;
                                 _loc25_ = 0.0646249428391457;
                                 _loc4_ = _loc25_;
                                 _loc18_ = Number(_loc18_ + _loc4_);
                                 _loc34_ = _loc18_;
                                 _loc18_ = _loc34_;
                                 _loc14_ = Number(_loc14_ * _loc18_);
                                 var _loc7_:* = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc14_ = Number(_loc14_ + _loc12_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc14_ = Number(_loc14_ * _loc9_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc32_ = 6.69710065182017e-9;
                                 _loc12_ = _loc32_;
                                 _loc14_ = Number(_loc12_ - _loc14_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc32_ = 0.000315632059937343;
                                 _loc12_ = _loc32_;
                                 _loc12_ = Number(_loc9_ * _loc12_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc34_ = -0.00140346470288932;
                                 _loc18_ = _loc34_;
                                 _loc12_ = Number(_loc12_ + _loc18_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc12_ = Number(_loc12_ * _loc9_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc34_ = 0.00610053865239024;
                                 _loc18_ = _loc34_;
                                 _loc12_ = Number(_loc12_ + _loc18_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc12_ = Number(_loc12_ * _loc9_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc34_ = -0.0327885411679745;
                                 _loc18_ = _loc34_;
                                 _loc12_ = Number(_loc12_ + _loc18_);
                                 _loc32_ = _loc12_;
                                 _loc12_ = _loc32_;
                                 _loc9_ = Number(_loc12_ * _loc9_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc32_ = 0.483836114406586;
                                 _loc12_ = _loc32_;
                                 _loc9_ = Number(_loc9_ + _loc12_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc11_ = Number(_loc11_ * _loc9_);
                                 _loc21_ = _loc11_;
                                 _loc11_ = _loc21_;
                                 _loc11_ = Number(_loc11_ - _loc14_);
                                 _loc21_ = _loc11_;
                                 _loc11_ = _loc21_;
                                 _loc16_ = -0.121486283838749;
                                 _loc9_ = _loc16_;
                                 _loc11_ = Number(_loc11_ + _loc9_);
                                 _loc21_ = _loc11_;
                                 _loc11_ = _loc21_;
                                 _loc9_ = _loc8_;
                                 _loc11_ = Number(_loc11_ + _loc9_);
                                 _loc22_ = _loc11_;
                              }
                              else
                              {
                                 addr2099:
                                 _loc11_ = _loc20_;
                                 _loc16_ = 0.00321709248237312;
                                 _loc9_ = _loc16_;
                                 _loc9_ = Number(_loc11_ * _loc9_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc7_ = 0.104222647845745;
                                 _loc14_ = _loc7_;
                                 _loc9_ = Number(_loc9_ + _loc14_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc9_ = Number(_loc9_ * _loc11_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc7_ = 0.769285142421722;
                                 _loc14_ = _loc7_;
                                 _loc9_ = Number(_loc9_ + _loc14_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc9_ = Number(_loc9_ * _loc11_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc7_ = 2.12848973274231;
                                 _loc14_ = _loc7_;
                                 _loc9_ = Number(_loc9_ + _loc14_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc9_ = Number(_loc9_ * _loc11_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc7_ = 2.45597791671753;
                                 _loc14_ = _loc7_;
                                 _loc9_ = Number(_loc9_ + _loc14_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc9_ = Number(_loc9_ * _loc11_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc7_ = 1;
                                 _loc14_ = _loc7_;
                                 _loc9_ = Number(_loc9_ + _loc14_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc7_ = 0.0133810918778181;
                                 _loc14_ = _loc7_;
                                 _loc14_ = Number(_loc11_ * _loc14_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc32_ = 0.228963732719421;
                                 _loc12_ = _loc32_;
                                 _loc14_ = Number(_loc14_ + _loc12_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc14_ = Number(_loc14_ * _loc11_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc32_ = 0.977717518806458;
                                 _loc12_ = _loc32_;
                                 _loc14_ = Number(_loc14_ + _loc12_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc14_ = Number(_loc14_ * _loc11_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc32_ = 1.45492255687714;
                                 _loc12_ = _loc32_;
                                 _loc14_ = Number(_loc14_ + _loc12_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc14_ = Number(_loc14_ * _loc11_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc32_ = 0.632827043533325;
                                 _loc12_ = _loc32_;
                                 _loc14_ = Number(_loc14_ + _loc12_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc14_ = Number(_loc14_ * _loc11_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc32_ = -0.077215664088726;
                                 _loc12_ = _loc32_;
                                 _loc14_ = Number(_loc14_ + _loc12_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc14_ = Number(_loc14_ * _loc11_);
                                 _loc7_ = _loc14_;
                                 _loc14_ = _loc7_;
                                 _loc9_ = Number(_loc14_ / _loc9_);
                                 _loc16_ = _loc9_;
                                 _loc9_ = _loc16_;
                                 _loc7_ = -0.5;
                                 _loc14_ = _loc7_;
                                 _loc11_ = Number(_loc11_ * _loc14_);
                                 _loc21_ = _loc11_;
                                 _loc11_ = _loc21_;
                                 _loc11_ = Number(_loc11_ + _loc9_);
                                 _loc21_ = _loc11_;
                                 _loc11_ = _loc21_;
                                 _loc9_ = _loc8_;
                                 _loc11_ = Number(_loc11_ + _loc9_);
                                 _loc22_ = _loc11_;
                              }
                           }
                        }
                        else
                        {
                           _loc22_ = 2;
                           _loc8_ = 0;
                           if(uint(_loc33_) <= 1071490583)
                           {
                              if(uint(_loc33_) >= 1067296288)
                              {
                                 _loc16_ = -1.46163213253021;
                                 _loc11_ = Number(_loc20_ + _loc16_);
                                 _loc10_ = _loc11_;
                                 _loc8_ = 0;
                                 §§goto(addr1721);
                              }
                              else
                              {
                                 _loc16_ = -1;
                                 _loc11_ = Number(_loc20_ + _loc16_);
                                 _loc20_ = _loc11_;
                                 _loc8_ = 0;
                                 §§goto(addr2099);
                              }
                           }
                        }
                        _loc11_ = _loc20_;
                        _loc9_ = _loc22_;
                        _loc11_ = Number(_loc9_ - _loc11_);
                        _loc21_ = _loc11_;
                        _loc11_ = _loc21_;
                        _loc9_ = Number(_loc11_ * _loc11_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc7_ = 0.0000448640967078973;
                        _loc14_ = _loc7_;
                        _loc14_ = Number(_loc9_ * _loc14_);
                        _loc7_ = _loc14_;
                        _loc14_ = _loc7_;
                        _loc32_ = 0.00010801156895468;
                        _loc12_ = _loc32_;
                        _loc14_ = Number(_loc14_ + _loc12_);
                        _loc7_ = _loc14_;
                        _loc14_ = _loc7_;
                        _loc14_ = Number(_loc14_ * _loc9_);
                        _loc7_ = _loc14_;
                        _loc14_ = _loc7_;
                        _loc32_ = 0.000510069774463773;
                        _loc12_ = _loc32_;
                        _loc14_ = Number(_loc14_ + _loc12_);
                        _loc7_ = _loc14_;
                        _loc14_ = _loc7_;
                        _loc14_ = Number(_loc14_ * _loc9_);
                        _loc7_ = _loc14_;
                        _loc14_ = _loc7_;
                        _loc32_ = 0.00289051374420524;
                        _loc12_ = _loc32_;
                        _loc14_ = Number(_loc14_ + _loc12_);
                        _loc7_ = _loc14_;
                        _loc14_ = _loc7_;
                        _loc14_ = Number(_loc14_ * _loc9_);
                        _loc7_ = _loc14_;
                        _loc14_ = _loc7_;
                        _loc32_ = 0.0205808077007532;
                        _loc12_ = _loc32_;
                        _loc14_ = Number(_loc14_ + _loc12_);
                        _loc7_ = _loc14_;
                        _loc14_ = _loc7_;
                        _loc14_ = Number(_loc14_ * _loc9_);
                        _loc7_ = _loc14_;
                        _loc14_ = _loc7_;
                        _loc32_ = 0.322467029094696;
                        _loc12_ = _loc32_;
                        _loc14_ = Number(_loc14_ + _loc12_);
                        _loc7_ = _loc14_;
                        _loc14_ = _loc7_;
                        _loc14_ = Number(_loc14_ * _loc9_);
                        _loc7_ = _loc14_;
                        _loc14_ = _loc7_;
                        _loc32_ = 0.0000252144564001355;
                        _loc12_ = _loc32_;
                        _loc12_ = Number(_loc9_ * _loc12_);
                        _loc32_ = _loc12_;
                        _loc12_ = _loc32_;
                        _loc34_ = 0.00022086278477218;
                        _loc18_ = _loc34_;
                        _loc12_ = Number(_loc12_ + _loc18_);
                        _loc32_ = _loc12_;
                        _loc12_ = _loc32_;
                        _loc12_ = Number(_loc12_ * _loc9_);
                        _loc32_ = _loc12_;
                        _loc12_ = _loc32_;
                        _loc34_ = 0.00119270768482238;
                        _loc18_ = _loc34_;
                        _loc12_ = Number(_loc12_ + _loc18_);
                        _loc32_ = _loc12_;
                        _loc12_ = _loc32_;
                        _loc12_ = Number(_loc12_ * _loc9_);
                        _loc32_ = _loc12_;
                        _loc12_ = _loc32_;
                        _loc34_ = 0.0073855509981513;
                        _loc18_ = _loc34_;
                        _loc12_ = Number(_loc12_ + _loc18_);
                        _loc32_ = _loc12_;
                        _loc12_ = _loc32_;
                        _loc12_ = Number(_loc12_ * _loc9_);
                        _loc32_ = _loc12_;
                        _loc12_ = _loc32_;
                        _loc34_ = 0.0673523023724556;
                        _loc18_ = _loc34_;
                        _loc12_ = Number(_loc12_ + _loc18_);
                        _loc32_ = _loc12_;
                        _loc12_ = _loc32_;
                        _loc9_ = Number(_loc12_ * _loc9_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc32_ = 0.077215664088726;
                        _loc12_ = _loc32_;
                        _loc9_ = Number(_loc9_ + _loc12_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc9_ = Number(_loc11_ * _loc9_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc9_ = Number(_loc9_ + _loc14_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc7_ = -0.5;
                        _loc14_ = _loc7_;
                        _loc11_ = Number(_loc11_ * _loc14_);
                        _loc21_ = _loc11_;
                        _loc11_ = _loc21_;
                        _loc11_ = Number(_loc11_ + _loc9_);
                        _loc21_ = _loc11_;
                        _loc11_ = _loc21_;
                        _loc9_ = _loc8_;
                        _loc11_ = Number(_loc11_ + _loc9_);
                        _loc22_ = _loc11_;
                     }
                     else if(uint(_loc33_) <= 1090519039)
                     {
                        _loc33_ = int(_loc20_);
                        _loc16_ = Number(_loc33_);
                        _loc11_ = Number(_loc20_ - _loc16_);
                        _loc21_ = _loc11_;
                        _loc3_ = _loc21_;
                        _loc21_ = 7.32668422642746e-6;
                        _loc11_ = Number(_loc3_ * _loc21_);
                        _loc21_ = _loc11_;
                        _loc16_ = 0.000777942477725446;
                        _loc11_ = Number(_loc21_ + _loc16_);
                        _loc21_ = _loc11_;
                        _loc11_ = _loc21_;
                        _loc11_ = Number(_loc11_ * _loc3_);
                        _loc21_ = _loc11_;
                        _loc16_ = 0.0186459198594093;
                        _loc11_ = Number(_loc21_ + _loc16_);
                        _loc21_ = _loc11_;
                        _loc11_ = _loc21_;
                        _loc11_ = Number(_loc11_ * _loc3_);
                        _loc21_ = _loc11_;
                        _loc16_ = 0.171933859586716;
                        _loc11_ = Number(_loc21_ + _loc16_);
                        _loc21_ = _loc11_;
                        _loc11_ = _loc21_;
                        _loc11_ = Number(_loc11_ * _loc3_);
                        _loc21_ = _loc11_;
                        _loc16_ = 0.721935570240021;
                        _loc11_ = Number(_loc21_ + _loc16_);
                        _loc21_ = _loc11_;
                        _loc11_ = _loc21_;
                        _loc11_ = Number(_loc11_ * _loc3_);
                        _loc21_ = _loc11_;
                        _loc16_ = 1.39200532436371;
                        _loc11_ = Number(_loc21_ + _loc16_);
                        _loc21_ = _loc11_;
                        _loc11_ = _loc21_;
                        _loc11_ = Number(_loc11_ * _loc3_);
                        _loc21_ = _loc11_;
                        _loc8_ = 1;
                        _loc11_ = Number(_loc21_ + _loc8_);
                        _loc21_ = _loc11_;
                        _loc16_ = 0.0000319475329888519;
                        _loc9_ = Number(_loc3_ * _loc16_);
                        _loc16_ = _loc9_;
                        _loc7_ = 0.00184028455987573;
                        _loc9_ = Number(_loc16_ + _loc7_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc9_ = Number(_loc9_ * _loc3_);
                        _loc16_ = _loc9_;
                        _loc7_ = 0.026642270386219;
                        _loc9_ = Number(_loc16_ + _loc7_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc9_ = Number(_loc9_ * _loc3_);
                        _loc16_ = _loc9_;
                        _loc7_ = 0.146350473165512;
                        _loc9_ = Number(_loc16_ + _loc7_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc9_ = Number(_loc9_ * _loc3_);
                        _loc16_ = _loc9_;
                        _loc7_ = 0.325778782367706;
                        _loc9_ = Number(_loc16_ + _loc7_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc9_ = Number(_loc9_ * _loc3_);
                        _loc16_ = _loc9_;
                        _loc7_ = 0.21498242020607;
                        _loc9_ = Number(_loc16_ + _loc7_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc9_ = Number(_loc9_ * _loc3_);
                        _loc16_ = _loc9_;
                        _loc7_ = -0.077215664088726;
                        _loc9_ = Number(_loc16_ + _loc7_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc9_ = Number(_loc9_ * _loc3_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc11_ = Number(_loc9_ / _loc21_);
                        _loc21_ = _loc11_;
                        _loc16_ = 0.5;
                        _loc9_ = Number(_loc3_ * _loc16_);
                        _loc16_ = _loc9_;
                        _loc9_ = _loc16_;
                        _loc11_ = Number(_loc9_ + _loc21_);
                        _loc22_ = _loc11_;
                        if(_loc33_ <= 4)
                        {
                           if(_loc33_ != 3)
                           {
                              if(_loc33_ != 4)
                              {
                              }
                           }
                           addr2762:
                           _loc21_ = 2;
                           _loc11_ = _loc21_;
                           _loc11_ = Number(_loc3_ + _loc11_);
                           _loc21_ = _loc11_;
                           _loc9_ = _loc21_;
                           _loc11_ = _loc8_;
                           _loc11_ = Number(_loc9_ * _loc11_);
                           _loc5_ = int(_loc5_ - 16);
                           sf32(_loc11_,_loc5_);
                           ESP = _loc5_;
                           F_logf();
                           _loc11_ = _loc22_;
                           _loc5_ = int(_loc5_ + 16);
                           _loc16_ = Number(st0);
                           _loc9_ = _loc16_;
                           _loc11_ = Number(_loc9_ + _loc11_);
                           _loc22_ = _loc11_;
                        }
                        else
                        {
                           if(_loc33_ != 5)
                           {
                              if(_loc33_ != 6)
                              {
                                 if(_loc33_ == 7)
                                 {
                                    _loc21_ = 6;
                                    _loc11_ = Number(_loc3_ + _loc21_);
                                    _loc8_ = _loc11_;
                                 }
                              }
                              _loc21_ = 5;
                              _loc11_ = _loc21_;
                              _loc11_ = Number(_loc3_ + _loc11_);
                              _loc21_ = _loc11_;
                              _loc9_ = _loc21_;
                              _loc11_ = _loc8_;
                              _loc11_ = Number(_loc9_ * _loc11_);
                              _loc8_ = _loc11_;
                           }
                           _loc21_ = 4;
                           _loc11_ = _loc21_;
                           _loc11_ = Number(_loc3_ + _loc11_);
                           _loc21_ = _loc11_;
                           _loc9_ = _loc21_;
                           _loc11_ = _loc8_;
                           _loc11_ = Number(_loc9_ * _loc11_);
                           _loc8_ = _loc11_;
                        }
                        _loc21_ = 3;
                        _loc11_ = _loc21_;
                        _loc11_ = Number(_loc3_ + _loc11_);
                        _loc21_ = _loc11_;
                        _loc9_ = _loc21_;
                        _loc11_ = _loc8_;
                        _loc11_ = Number(_loc9_ * _loc11_);
                        _loc8_ = _loc11_;
                        §§goto(addr2762);
                     }
                     else
                     {
                        _loc5_ = int(_loc5_ - 16);
                        sf32(_loc20_,_loc5_);
                        ESP = _loc5_;
                        F_logf();
                        _loc5_ = int(_loc5_ + 16);
                        _loc8_ = Number(st0);
                        if(uint(_loc33_) <= 1551892479)
                        {
                           _loc16_ = -1;
                           _loc11_ = Number(_loc8_ + _loc16_);
                           _loc21_ = _loc11_;
                           _loc9_ = _loc20_;
                           _loc7_ = -0.5;
                           _loc14_ = Number(_loc9_ + _loc7_);
                           _loc7_ = _loc14_;
                           _loc14_ = _loc7_;
                           _loc11_ = Number(_loc14_ * _loc21_);
                           _loc21_ = _loc11_;
                           _loc7_ = 1;
                           _loc14_ = _loc7_;
                           _loc9_ = Number(_loc14_ / _loc9_);
                           _loc16_ = _loc9_;
                           _loc9_ = _loc16_;
                           _loc14_ = Number(_loc9_ * _loc9_);
                           _loc7_ = _loc14_;
                           _loc14_ = _loc7_;
                           _loc32_ = -0.0016309292986989;
                           _loc12_ = Number(_loc14_ * _loc32_);
                           _loc32_ = _loc12_;
                           _loc34_ = 0.000836339895613492;
                           _loc12_ = Number(_loc32_ + _loc34_);
                           _loc32_ = _loc12_;
                           _loc12_ = _loc32_;
                           _loc12_ = Number(_loc12_ * _loc14_);
                           _loc32_ = _loc12_;
                           _loc34_ = -0.000595187535509467;
                           _loc12_ = Number(_loc32_ + _loc34_);
                           _loc32_ = _loc12_;
                           _loc12_ = _loc32_;
                           _loc12_ = Number(_loc12_ * _loc14_);
                           _loc32_ = _loc12_;
                           _loc34_ = 0.000793650571722537;
                           _loc12_ = Number(_loc32_ + _loc34_);
                           _loc32_ = _loc12_;
                           _loc12_ = _loc32_;
                           _loc12_ = Number(_loc12_ * _loc14_);
                           _loc32_ = _loc12_;
                           _loc34_ = -0.00277777784503996;
                           _loc12_ = Number(_loc32_ + _loc34_);
                           _loc32_ = _loc12_;
                           _loc12_ = _loc32_;
                           _loc14_ = Number(_loc12_ * _loc14_);
                           _loc7_ = _loc14_;
                           _loc32_ = 0.0833333358168602;
                           _loc14_ = Number(_loc7_ + _loc32_);
                           _loc7_ = _loc14_;
                           _loc14_ = _loc7_;
                           _loc9_ = Number(_loc14_ * _loc9_);
                           _loc16_ = _loc9_;
                           _loc7_ = 0.418938547372818;
                           _loc9_ = Number(_loc16_ + _loc7_);
                           _loc16_ = _loc9_;
                           _loc11_ = Number(_loc21_ + _loc16_);
                           _loc22_ = _loc11_;
                        }
                        else
                        {
                           _loc16_ = -1;
                           _loc11_ = Number(_loc8_ + _loc16_);
                           _loc21_ = _loc11_;
                           _loc11_ = Number(_loc21_ * _loc20_);
                           _loc22_ = _loc11_;
                        }
                     }
                  }
               }
               if(_loc35_ <= -1)
               {
                  _loc9_ = _loc19_;
                  _loc11_ = Number(_loc9_ - _loc22_);
                  _loc22_ = _loc11_;
               }
            }
         }
      }
      st0 = _loc22_;
      _loc5_ = _loc6_;
      ESP = _loc5_;
   }
}
