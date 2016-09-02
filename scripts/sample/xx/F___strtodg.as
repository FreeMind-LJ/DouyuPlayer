package sample.xx
{
   import sample.xx_dtoa_strtodg_2E_o_3A_D03194A0_2D_E400_2D_413E_2D_98F8_2D_5D6B1524177D.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   
   public function F___strtodg() : void
   {
      var _loc9_:* = 0;
      var _loc36_:* = 0;
      var _loc43_:* = 0;
      var _loc38_:* = 0;
      var _loc40_:* = 0;
      var _loc46_:* = 0;
      var _loc45_:int = 0;
      var _loc42_:* = 0;
      var _loc8_:* = 0;
      var _loc44_:* = 0;
      var _loc16_:* = NaN;
      var _loc17_:Number = NaN;
      var _loc28_:* = 0;
      var _loc21_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = NaN;
      var _loc37_:* = 0;
      var _loc41_:int = 0;
      var _loc35_:* = 0;
      var _loc2_:Number = NaN;
      var _loc6_:* = 0;
      var _loc30_:* = 0;
      var _loc11_:* = 0;
      var _loc14_:* = 0;
      var _loc33_:* = 0;
      var _loc19_:Number = NaN;
      var _loc13_:* = 0;
      var _loc26_:* = 0;
      var _loc22_:* = 0;
      var _loc34_:* = 0;
      var _loc29_:* = 0;
      var _loc25_:* = 0;
      var _loc7_:* = 0;
      var _loc3_:* = 0;
      var _loc27_:* = 0;
      var _loc23_:* = 0;
      var _loc4_:* = 0;
      var _loc31_:* = 0;
      var _loc20_:* = NaN;
      var _loc32_:* = 0;
      var _loc5_:* = int(ESP);
      _loc9_ = _loc5_;
      _loc5_ = int(_loc5_ - 192);
      ESP = _loc5_;
      F_localeconv();
      var _loc24_:* = int(eax);
      _loc46_ = li32(_loc24_);
      _loc5_ = int(_loc5_ - 16);
      si32(_loc46_,_loc5_);
      ESP = _loc5_;
      F_strlen();
      _loc5_ = int(_loc5_ + 16);
      _loc45_ = eax;
      _loc44_ = 0;
      si32(_loc44_,_loc9_ - 16);
      si32(_loc44_,_loc9_ - 32);
      _loc43_ = li32(_loc9_ + 8);
      _loc42_ = li32(_loc43_);
      _loc40_ = li32(_loc9_ + 16);
      _loc38_ = li32(_loc9_ + 12);
      _loc36_ = li32(_loc9_ + 4);
      _loc21_ = li32(_loc9_);
      _loc29_ = _loc21_;
      loop0:
      while(true)
      {
         si32(_loc29_,_loc9_ - 28);
         _loc30_ = si8(li8(_loc29_));
         if(_loc30_ <= 31)
         {
            if(_loc30_ != 0)
            {
               _loc32_ = _loc44_;
               if(uint(int(_loc30_ + -9)) >= 5)
               {
                  addr257:
                  _loc24_ = _loc30_ & 255;
                  _loc34_ = _loc44_;
                  if(_loc24_ == 48)
                  {
                     _loc24_ = si8(li8(_loc29_ + 1));
                     _loc25_ = _loc29_;
                     if((_loc24_ | 32) == 120)
                     {
                        _loc5_ = int(_loc5_ - 32);
                        si32(_loc32_,_loc5_ + 16);
                        _loc24_ = int(_loc9_ - 32);
                        si32(_loc24_,_loc5_ + 12);
                        si32(_loc38_,_loc5_ + 8);
                        si32(_loc43_,_loc5_ + 4);
                        _loc24_ = int(_loc9_ - 28);
                        si32(_loc24_,_loc5_);
                        ESP = _loc5_;
                        F___gethex_D2A();
                        _loc5_ = int(_loc5_ + 32);
                        _loc24_ = int(eax);
                        si32(_loc24_,_loc9_ - 16);
                        if(_loc24_ == 6)
                        {
                           si32(_loc21_,_loc9_ - 28);
                           _loc32_ = 0;
                           break;
                        }
                        break;
                     }
                     while(true)
                     {
                        _loc29_ = int(_loc25_ + 1);
                        si32(_loc29_,_loc9_ - 28);
                        _loc30_ = li8(_loc25_ + 1);
                        if(_loc30_ != 0)
                        {
                           _loc34_ = 1;
                           _loc25_ = _loc29_;
                           if(_loc30_ == 48)
                           {
                              continue;
                           }
                        }
                        break loop0;
                     }
                  }
                  _loc25_ = li32(_loc43_ + 16);
                  _loc24_ = _loc30_ << 24;
                  _loc26_ = _loc24_ >> 24;
                  _loc24_ = int(_loc30_ + -48);
                  _loc24_ = _loc24_ & 255;
                  _loc27_ = _loc29_;
                  _loc28_ = _loc44_;
                  _loc23_ = _loc44_;
                  _loc22_ = _loc44_;
                  if(uint(_loc24_) <= 9)
                  {
                     _loc30_ = int(_loc29_ + 1);
                     _loc28_ = 0;
                     _loc23_ = _loc28_;
                     _loc22_ = _loc28_;
                     do
                     {
                        _loc14_ = _loc22_;
                        _loc22_ = int(_loc14_ + 1);
                        if(_loc14_ <= 8)
                        {
                           _loc24_ = int(_loc23_ * 10);
                           _loc24_ = int(_loc24_ + _loc26_);
                           _loc23_ = int(_loc24_ + -48);
                        }
                        else if(_loc14_ <= 15)
                        {
                           _loc24_ = int(_loc28_ * 10);
                           _loc24_ = int(_loc24_ + _loc26_);
                           _loc28_ = int(_loc24_ + -48);
                        }
                        _loc24_ = int(_loc30_ + _loc14_);
                        si32(_loc24_,_loc9_ - 28);
                        _loc24_ = int(_loc29_ + _loc14_);
                        _loc26_ = si8(li8(_loc24_ + 1));
                        _loc24_ = int(_loc26_ + -48);
                        _loc24_ = _loc24_ & 255;
                     }
                     while(uint(_loc24_) < 10);
                     
                     _loc27_ = int(_loc29_ + _loc22_);
                     _loc30_ = _loc26_;
                  }
                  var _loc12_:* = _loc30_ & 255;
                  _loc24_ = li8(_loc46_);
                  _loc14_ = _loc44_;
                  _loc13_ = _loc44_;
                  _loc30_ = _loc22_;
                  _loc10_ = _loc44_;
                  if(_loc24_ == _loc12_)
                  {
                     _loc11_ = int(_loc27_ + 2);
                     _loc7_ = 1;
                     loop3:
                     while(true)
                     {
                        _loc24_ = int(_loc46_ + _loc7_);
                        _loc8_ = li8(_loc24_);
                        if(_loc8_ == 0)
                        {
                           _loc30_ = int(_loc27_ + _loc7_);
                           si32(_loc30_,_loc9_ - 28);
                           _loc26_ = si8(li8(_loc11_ - 1));
                           _loc14_ = 0;
                           _loc4_ = _loc29_;
                           _loc8_ = _loc14_;
                           _loc6_ = _loc22_;
                           if(_loc22_ == 0)
                           {
                              _loc3_ = 0;
                              _loc14_ = _loc3_;
                              _loc46_ = _loc30_;
                              _loc8_ = _loc3_;
                              if((_loc26_ & 255) == 48)
                              {
                                 do
                                 {
                                    _loc24_ = int(_loc11_ + _loc14_);
                                    si32(_loc24_,_loc9_ - 28);
                                    _loc12_ = li8(_loc24_);
                                    _loc24_ = _loc12_ << 24;
                                    _loc26_ = _loc24_ >> 24;
                                    _loc14_ = int(_loc14_ + 1);
                                 }
                                 while(_loc12_ == 48);
                                 
                                 _loc24_ = int(_loc27_ + _loc7_);
                                 _loc46_ = int(_loc24_ + _loc14_);
                                 _loc8_ = _loc14_;
                              }
                              _loc24_ = int(_loc26_ + -49);
                              _loc10_ = 1;
                              _loc4_ = _loc46_;
                              _loc6_ = _loc22_;
                              _loc27_ = _loc46_;
                              _loc14_ = _loc8_;
                              _loc13_ = _loc3_;
                              _loc30_ = _loc22_;
                              if(uint(_loc24_) <= 8)
                              {
                                 addr689:
                                 while(true)
                                 {
                                    _loc13_ = int(_loc26_ + -48);
                                    _loc14_ = int(_loc3_ + 1);
                                    if(_loc13_ != 0)
                                    {
                                       _loc30_ = 1;
                                       _loc29_ = _loc30_;
                                       if(_loc6_ >= 9)
                                       {
                                          _loc29_ = 0;
                                       }
                                       if(_loc3_ >= 1)
                                       {
                                          _loc30_ = _loc14_;
                                          if(_loc14_ <= 2)
                                          {
                                             _loc30_ = 2;
                                          }
                                          _loc26_ = _loc14_;
                                          if(_loc14_ <= 2)
                                          {
                                             _loc26_ = 2;
                                          }
                                          _loc27_ = int(_loc26_ + -1);
                                          _loc26_ = int(_loc6_ + 1);
                                          do
                                          {
                                             _loc24_ = _loc29_ & 1;
                                             if(_loc24_ != 0)
                                             {
                                                _loc23_ = int(_loc23_ * 10);
                                             }
                                             else if(_loc26_ <= 16)
                                             {
                                                _loc28_ = int(_loc28_ * 10);
                                             }
                                             _loc29_ = 1;
                                             if(_loc26_ >= 9)
                                             {
                                                _loc29_ = 0;
                                             }
                                             _loc26_ = int(_loc26_ + 1);
                                             _loc27_ = int(_loc27_ + -1);
                                          }
                                          while(_loc27_ != 0);
                                          
                                       }
                                       _loc8_ = int(_loc8_ + _loc14_);
                                       _loc6_ = int(_loc6_ + _loc30_);
                                       _loc24_ = _loc29_ & 1;
                                       if(_loc24_ != 0)
                                       {
                                          _loc24_ = int(_loc23_ * 10);
                                          _loc23_ = int(_loc24_ + _loc13_);
                                          _loc14_ = 0;
                                       }
                                       else
                                       {
                                          _loc14_ = 0;
                                          if(_loc6_ <= 16)
                                          {
                                             _loc24_ = int(_loc28_ * 10);
                                             _loc28_ = int(_loc24_ + _loc13_);
                                             _loc14_ = 0;
                                          }
                                       }
                                    }
                                    _loc30_ = int(_loc46_ + 1);
                                    si32(_loc30_,_loc9_ - 28);
                                    _loc26_ = si8(li8(_loc46_ + 1));
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              _loc24_ = int(_loc26_ + -48);
                              _loc10_ = 1;
                              _loc46_ = _loc30_;
                              _loc3_ = _loc14_;
                              _loc27_ = _loc30_;
                              _loc29_ = _loc4_;
                              _loc13_ = _loc8_;
                              _loc30_ = _loc6_;
                              if(uint(_loc24_) >= 10)
                              {
                                 break loop3;
                              }
                              §§goto(addr689);
                           }
                        }
                        else
                        {
                           _loc14_ = 0;
                           _loc13_ = _loc14_;
                           _loc30_ = _loc22_;
                           _loc10_ = _loc14_;
                           if(li8(_loc11_ - 1) == _loc8_)
                           {
                              _loc11_ = int(_loc11_ + 1);
                              _loc7_ = int(_loc7_ + 1);
                              continue;
                           }
                           break;
                        }
                     }
                  }
                  _loc24_ = _loc26_ | 32;
                  if(_loc24_ == 101)
                  {
                     _loc24_ = _loc14_ | _loc34_;
                     _loc24_ = _loc24_ | _loc30_;
                     if(_loc24_ == 0)
                     {
                        si32(6,_loc9_ - 16);
                        si32(_loc21_,_loc9_ - 28);
                        break;
                     }
                     _loc46_ = int(_loc27_ + 1);
                     si32(_loc46_,_loc9_ - 28);
                     _loc26_ = si8(li8(_loc27_ + 1));
                     _loc8_ = 0;
                     if(_loc26_ != 43)
                     {
                        if(_loc26_ == 45)
                        {
                           _loc8_ = 1;
                        }
                        addr961:
                        _loc24_ = int(_loc26_ + -48);
                        if(uint(_loc24_) <= 9)
                        {
                           if(_loc26_ == 48)
                           {
                              do
                              {
                                 _loc44_ = int(_loc46_ + 1);
                                 si32(_loc44_,_loc9_ - 28);
                                 _loc24_ = li8(_loc46_ + 1);
                                 _loc12_ = _loc24_ << 24;
                                 _loc26_ = _loc12_ >> 24;
                                 _loc46_ = _loc44_;
                              }
                              while(_loc24_ == 48);
                              
                              _loc46_ = _loc44_;
                           }
                           _loc24_ = int(_loc26_ + -49);
                           _loc44_ = 0;
                           _loc21_ = _loc27_;
                           if(uint(_loc24_) <= 8)
                           {
                              _loc21_ = int(_loc46_ + 1);
                              si32(_loc21_,_loc9_ - 28);
                              _loc6_ = int(_loc26_ + -48);
                              _loc26_ = si8(li8(_loc46_ + 1));
                              _loc24_ = int(_loc26_ + -48);
                              _loc24_ = _loc24_ & 255;
                              if(uint(_loc24_) <= 9)
                              {
                                 _loc44_ = int(_loc46_ + 2);
                                 do
                                 {
                                    _loc24_ = int(_loc6_ * 10);
                                    _loc24_ = int(_loc26_ + _loc24_);
                                    _loc6_ = int(_loc24_ + -48);
                                    _loc21_ = int(_loc21_ + 1);
                                    si32(_loc44_,_loc9_ - 28);
                                    _loc24_ = int(_loc44_ + 1);
                                    _loc26_ = si8(li8(_loc44_));
                                    _loc12_ = int(_loc26_ + -48);
                                    _loc12_ = _loc12_ & 255;
                                    _loc44_ = _loc24_;
                                 }
                                 while(uint(_loc12_) < 10);
                                 
                              }
                              _loc4_ = 1;
                              _loc44_ = 19999;
                              _loc3_ = _loc4_;
                              if(_loc6_ <= _loc44_)
                              {
                                 _loc3_ = 0;
                              }
                              _loc24_ = int(_loc21_ - _loc46_);
                              if(_loc24_ <= 8)
                              {
                                 _loc4_ = 0;
                              }
                              _loc24_ = _loc4_ | _loc3_;
                              if(_loc24_ == 0)
                              {
                                 _loc44_ = _loc6_;
                              }
                              if(_loc8_ != 0)
                              {
                                 _loc44_ = int(0 - _loc44_);
                              }
                              _loc21_ = _loc27_;
                           }
                        }
                        else
                        {
                           si32(_loc27_,_loc9_ - 28);
                           _loc44_ = 0;
                           _loc21_ = _loc27_;
                        }
                     }
                     _loc46_ = int(_loc27_ + 2);
                     si32(_loc46_,_loc9_ - 28);
                     _loc26_ = si8(li8(_loc27_ + 2));
                     §§goto(addr961);
                  }
                  if(_loc30_ == 0)
                  {
                     _loc24_ = _loc14_ | _loc34_;
                     if(_loc24_ == 0)
                     {
                        if(_loc10_ == 0)
                        {
                           if(_loc26_ <= 104)
                           {
                              if(_loc26_ != 73)
                              {
                                 if(_loc26_ != 78)
                                 {
                                 }
                              }
                              else
                              {
                                 addr1205:
                                 _loc5_ = int(_loc5_ - 16);
                                 si32(L__2E_str,_loc5_ + 4);
                                 _loc44_ = int(_loc9_ - 28);
                                 si32(_loc44_,_loc5_);
                                 ESP = _loc5_;
                                 F___match_D2A();
                                 _loc5_ = int(_loc5_ + 16);
                                 _loc24_ = int(eax);
                                 if(_loc24_ != 0)
                                 {
                                    _loc24_ = li32(_loc9_ - 28);
                                    _loc24_ = int(_loc24_ + -1);
                                    si32(_loc24_,_loc9_ - 28);
                                    _loc5_ = int(_loc5_ - 16);
                                    si32(L__2E_str1,_loc5_ + 4);
                                    si32(_loc44_,_loc5_);
                                    ESP = _loc5_;
                                    F___match_D2A();
                                    _loc5_ = int(_loc5_ + 16);
                                    _loc24_ = int(eax);
                                    if(_loc24_ == 0)
                                    {
                                       _loc24_ = li32(_loc9_ - 28);
                                       _loc24_ = int(_loc24_ + 1);
                                       si32(_loc24_,_loc9_ - 28);
                                    }
                                    si32(3,_loc9_ - 16);
                                    _loc44_ = int(_loc43_ + 8);
                                    _loc28_ = 0;
                                 }
                              }
                           }
                           else if(_loc26_ != 110)
                           {
                              if(_loc26_ == 105)
                              {
                                 §§goto(addr1205);
                              }
                           }
                           _loc5_ = int(_loc5_ - 16);
                           si32(L__2E_str2,_loc5_ + 4);
                           _loc34_ = int(_loc9_ - 28);
                           si32(_loc34_,_loc5_);
                           ESP = _loc5_;
                           F___match_D2A();
                           _loc5_ = int(_loc5_ + 16);
                           _loc24_ = int(eax);
                           if(_loc24_ != 0)
                           {
                              si32(4,_loc9_ - 16);
                              _loc24_ = li32(_loc43_ + 8);
                              _loc24_ = int(_loc24_ + 1);
                              si32(_loc24_,_loc38_);
                              _loc44_ = int(_loc43_ + 8);
                              _loc24_ = li32(_loc9_ - 28);
                              _loc28_ = 0;
                              if(li8(_loc24_) == 40)
                              {
                                 _loc5_ = int(_loc5_ - 16);
                                 si32(_loc40_,_loc5_ + 8);
                                 si32(_loc43_,_loc5_ + 4);
                                 si32(_loc34_,_loc5_);
                                 ESP = _loc5_;
                                 F___hexnan_D2A();
                                 _loc5_ = int(_loc5_ + 16);
                                 _loc24_ = int(eax);
                                 si32(_loc24_,_loc9_ - 16);
                                 _loc28_ = 0;
                              }
                           }
                        }
                        si32(6,_loc9_ - 16);
                        si32(_loc21_,_loc9_ - 28);
                        break;
                     }
                     break;
                  }
                  si32(1,_loc9_ - 16);
                  _loc21_ = int(_loc44_ - _loc13_);
                  _loc24_ = li32(_loc43_ + 12);
                  _loc14_ = _loc24_ & 3;
                  if(_loc14_ != 0)
                  {
                     if(_loc14_ != 3)
                     {
                        _loc34_ = 0;
                        if(_loc14_ == 2)
                        {
                           _loc34_ = int(2 - _loc32_);
                        }
                     }
                     else
                     {
                        _loc34_ = int(_loc32_ + 1);
                     }
                  }
                  else
                  {
                     _loc34_ = 1;
                  }
                  _loc14_ = _loc30_;
                  if(_loc22_ != 0)
                  {
                     _loc14_ = _loc22_;
                  }
                  _loc26_ = 16;
                  if(_loc30_ <= _loc26_)
                  {
                     _loc26_ = _loc30_;
                  }
                  _loc16_ = Number(uint(_loc23_));
                  if(_loc26_ >= 10)
                  {
                     _loc24_ = _loc26_ << 3;
                     _loc24_ = int(_loc24_ + ___tens_D2A);
                     var _loc15_:* = lf64(_loc24_ - 72);
                     _loc16_ = Number(Number(_loc15_ * _loc16_) + Number(uint(_loc28_)));
                  }
                  sf64(_loc16_,_loc9_ - 40);
                  _loc24_ = int(_loc9_ - 40);
                  _loc24_ = _loc24_ | 4;
                  _loc22_ = li32(_loc24_);
                  _loc28_ = li32(_loc9_ - 40);
                  _loc10_ = _loc21_;
                  if(_loc42_ <= 53)
                  {
                     _loc10_ = _loc21_;
                     if(_loc30_ <= 15)
                     {
                        if(_loc44_ == _loc13_)
                        {
                           _loc5_ = int(_loc5_ - 32);
                           _loc24_ = int(_loc9_ - 16);
                           si32(_loc24_,_loc5_ + 28);
                           si32(_loc34_,_loc5_ + 24);
                           si32(1,_loc5_ + 20);
                           si32(_loc40_,_loc5_ + 16);
                           si32(_loc38_,_loc5_ + 12);
                           si32(_loc43_,_loc5_ + 8);
                           sf64(_loc16_,_loc5_);
                           ESP = _loc5_;
                           F_rvOK();
                           _loc5_ = int(_loc5_ + 32);
                           _loc10_ = _loc21_;
                           if(int(eax) != 0)
                           {
                              break;
                           }
                        }
                        else if(_loc21_ >= 1)
                        {
                           if(_loc21_ <= 22)
                           {
                              si32(_loc28_,_loc9_ - 4);
                              _loc24_ = int(_fivesbits + (_loc21_ << 2));
                              _loc44_ = li32(_loc24_);
                              if(_loc28_ != 0)
                              {
                                 _loc5_ = int(_loc5_ - 16);
                                 _loc24_ = int(_loc9_ - 4);
                                 si32(_loc24_,_loc5_);
                                 ESP = _loc5_;
                                 F___lo0bits_D2A();
                                 _loc5_ = int(_loc5_ + 16);
                                 _loc28_ = int(53 - int(eax));
                              }
                              else
                              {
                                 _loc24_ = _loc22_ | 1048576;
                                 si32(_loc24_,_loc9_ - 4);
                                 _loc5_ = int(_loc5_ - 16);
                                 _loc24_ = int(_loc9_ - 4);
                                 si32(_loc24_,_loc5_);
                                 ESP = _loc5_;
                                 F___lo0bits_D2A();
                                 _loc5_ = int(_loc5_ + 16);
                                 _loc28_ = int(21 - int(eax));
                              }
                              _loc5_ = int(_loc5_ - 32);
                              _loc24_ = int(_loc9_ - 16);
                              si32(_loc24_,_loc5_ + 28);
                              si32(_loc34_,_loc5_ + 24);
                              si32(_loc40_,_loc5_ + 16);
                              si32(_loc38_,_loc5_ + 12);
                              si32(_loc43_,_loc5_ + 8);
                              _loc24_ = int(_loc28_ + _loc44_);
                              _loc44_ = 1;
                              if(_loc24_ >= 54)
                              {
                                 _loc44_ = 0;
                              }
                              _loc24_ = _loc44_ & 1;
                              si32(_loc24_,_loc5_ + 20);
                              _loc24_ = _loc21_ << 3;
                              _loc24_ = int(___tens_D2A + _loc24_);
                              _loc15_ = lf64(_loc24_);
                              _loc17_ = _loc16_ * _loc15_;
                              sf64(_loc17_,_loc5_);
                              ESP = _loc5_;
                              F_rvOK();
                              _loc5_ = int(_loc5_ + 32);
                              _loc24_ = int(eax);
                              if(_loc24_ == 0)
                              {
                                 sf64(_loc17_,_loc9_ - 64);
                                 _loc24_ = int(_loc9_ - 64);
                                 _loc24_ = _loc24_ | 4;
                                 _loc22_ = li32(_loc24_);
                                 _loc10_ = 0;
                                 _loc28_ = li32(_loc9_ - 64);
                              }
                              break;
                           }
                           _loc10_ = _loc21_;
                           if(int(37 - _loc30_) >= _loc21_)
                           {
                              _loc24_ = int(15 - _loc30_);
                              _loc5_ = int(_loc5_ - 32);
                              _loc12_ = int(_loc9_ - 16);
                              si32(_loc12_,_loc5_ + 28);
                              si32(_loc34_,_loc5_ + 24);
                              _loc10_ = 0;
                              si32(_loc10_,_loc5_ + 20);
                              si32(_loc40_,_loc5_ + 16);
                              si32(_loc38_,_loc5_ + 12);
                              si32(_loc43_,_loc5_ + 8);
                              _loc12_ = int(___tens_D2A + (_loc24_ << 3));
                              _loc24_ = int(_loc21_ - _loc24_);
                              _loc24_ = int(___tens_D2A + (_loc24_ << 3));
                              _loc17_ = _loc16_ * lf64(_loc12_) * lf64(_loc24_);
                              sf64(_loc17_,_loc5_);
                              ESP = _loc5_;
                              F_rvOK();
                              _loc5_ = int(_loc5_ + 32);
                              _loc24_ = int(eax);
                              if(_loc24_ == 0)
                              {
                                 sf64(_loc17_,_loc9_ - 56);
                                 _loc24_ = int(_loc9_ - 56);
                                 _loc24_ = _loc24_ | 4;
                                 _loc22_ = li32(_loc24_);
                                 _loc28_ = li32(_loc9_ - 56);
                              }
                              break;
                           }
                        }
                        else
                        {
                           _loc10_ = _loc21_;
                           if(_loc21_ >= -22)
                           {
                              _loc5_ = int(_loc5_ - 32);
                              _loc24_ = int(_loc9_ - 16);
                              si32(_loc24_,_loc5_ + 28);
                              si32(_loc34_,_loc5_ + 24);
                              _loc10_ = 0;
                              si32(_loc10_,_loc5_ + 20);
                              si32(_loc40_,_loc5_ + 16);
                              si32(_loc38_,_loc5_ + 12);
                              si32(_loc43_,_loc5_ + 8);
                              _loc24_ = int(___tens_D2A - (_loc21_ << 3));
                              _loc17_ = _loc16_ / lf64(_loc24_);
                              sf64(_loc17_,_loc5_);
                              ESP = _loc5_;
                              F_rvOK();
                              _loc5_ = int(_loc5_ + 32);
                              _loc24_ = int(eax);
                              if(_loc24_ == 0)
                              {
                                 sf64(_loc17_,_loc9_ - 48);
                                 _loc24_ = int(_loc9_ - 48);
                                 _loc24_ = _loc24_ | 4;
                                 _loc22_ = li32(_loc24_);
                                 _loc28_ = li32(_loc9_ - 48);
                              }
                              break;
                           }
                        }
                     }
                  }
                  _loc24_ = int(_loc30_ - _loc26_);
                  _loc13_ = int(_loc10_ + _loc24_);
                  if(_loc13_ >= 1)
                  {
                     _loc44_ = _loc13_ & 15;
                     if(_loc44_ != 0)
                     {
                        _loc24_ = int(_loc9_ - 120);
                        si32(_loc22_,_loc24_ | 4);
                        si32(_loc28_,_loc9_ - 120);
                        _loc24_ = int(___tens_D2A + (_loc44_ << 3));
                        _loc15_ = lf64(_loc9_ - 120);
                        _loc15_ = Number(_loc15_ * lf64(_loc24_));
                        sf64(_loc15_,_loc9_ - 128);
                        _loc24_ = int(_loc9_ - 128);
                        _loc24_ = _loc24_ | 4;
                        _loc22_ = li32(_loc24_);
                        _loc28_ = li32(_loc9_ - 128);
                     }
                     _loc44_ = 0;
                     if(uint(_loc13_) >= 16)
                     {
                        _loc13_ = _loc13_ >> 4;
                        _loc24_ = _loc22_ & -2146435073;
                        _loc26_ = _loc24_ | 1072693248;
                        _loc24_ = int(_loc22_ >>> 20);
                        _loc24_ = _loc24_ & 2047;
                        _loc44_ = int(_loc24_ + -1023);
                        _loc22_ = _loc26_;
                        if(_loc13_ >= 16)
                        {
                           _loc16_ = lf64(___bigtens_D2A + 32);
                           _loc22_ = _loc26_;
                           do
                           {
                              _loc24_ = int(_loc9_ - 136);
                              _loc24_ = _loc24_ | 4;
                              si32(_loc22_,_loc24_);
                              si32(_loc28_,_loc9_ - 136);
                              _loc15_ = lf64(_loc9_ - 136);
                              _loc15_ = Number(_loc15_ * _loc16_);
                              sf64(_loc15_,_loc9_ - 144);
                              _loc24_ = int(_loc9_ - 144);
                              _loc24_ = _loc24_ | 4;
                              _loc24_ = li32(_loc24_);
                              _loc12_ = int(_loc24_ >>> 20);
                              _loc12_ = _loc12_ & 2047;
                              _loc12_ = int(_loc44_ + _loc12_);
                              _loc44_ = int(_loc12_ + -1023);
                              _loc13_ = int(_loc13_ + -16);
                              _loc24_ = _loc24_ & -2146435073;
                              _loc22_ = _loc24_ | 1072693248;
                              _loc28_ = li32(_loc9_ - 144);
                           }
                           while(_loc13_ > 15);
                           
                        }
                        _loc26_ = int(___bigtens_D2A);
                        if(_loc13_ >= 1)
                        {
                           do
                           {
                              _loc24_ = _loc13_ & 1;
                              if(_loc24_ != 0)
                              {
                                 _loc24_ = int(_loc9_ - 152);
                                 si32(_loc22_,_loc24_ | 4);
                                 si32(_loc28_,_loc9_ - 152);
                                 _loc15_ = lf64(_loc9_ - 152);
                                 _loc15_ = Number(_loc15_ * lf64(_loc26_));
                                 sf64(_loc15_,_loc9_ - 160);
                                 _loc24_ = int(_loc9_ - 160);
                                 _loc24_ = _loc24_ | 4;
                                 _loc22_ = li32(_loc24_);
                                 _loc28_ = li32(_loc9_ - 160);
                              }
                              _loc26_ = int(_loc26_ + 8);
                              _loc13_ = _loc13_ >> 1;
                           }
                           while(_loc13_ > 0);
                           
                        }
                     }
                  }
                  else
                  {
                     _loc44_ = 0;
                     if(_loc13_ <= -1)
                     {
                        _loc13_ = int(0 - _loc13_);
                        _loc44_ = _loc13_ & 15;
                        if(_loc44_ != 0)
                        {
                           _loc24_ = int(_loc9_ - 72);
                           si32(_loc22_,_loc24_ | 4);
                           si32(_loc28_,_loc9_ - 72);
                           _loc24_ = int(___tens_D2A + (_loc44_ << 3));
                           _loc15_ = lf64(_loc9_ - 72);
                           _loc15_ = Number(_loc15_ / lf64(_loc24_));
                           sf64(_loc15_,_loc9_ - 80);
                           _loc24_ = int(_loc9_ - 80);
                           _loc24_ = _loc24_ | 4;
                           _loc22_ = li32(_loc24_);
                           _loc28_ = li32(_loc9_ - 80);
                        }
                        _loc44_ = 0;
                        if(uint(_loc13_) >= 16)
                        {
                           _loc13_ = _loc13_ >> 4;
                           _loc24_ = _loc22_ & -2146435073;
                           _loc26_ = _loc24_ | 1072693248;
                           _loc24_ = int(_loc22_ >>> 20);
                           _loc24_ = _loc24_ & 2047;
                           _loc44_ = int(_loc24_ + -1023);
                           _loc22_ = _loc26_;
                           if(_loc13_ >= 16)
                           {
                              _loc16_ = lf64(___tinytens_D2A + 32);
                              _loc22_ = _loc26_;
                              do
                              {
                                 _loc24_ = int(_loc9_ - 88);
                                 _loc24_ = _loc24_ | 4;
                                 si32(_loc22_,_loc24_);
                                 si32(_loc28_,_loc9_ - 88);
                                 _loc15_ = lf64(_loc9_ - 88);
                                 _loc15_ = Number(_loc15_ * _loc16_);
                                 sf64(_loc15_,_loc9_ - 96);
                                 _loc24_ = int(_loc9_ - 96);
                                 _loc24_ = _loc24_ | 4;
                                 _loc24_ = li32(_loc24_);
                                 _loc12_ = int(_loc24_ >>> 20);
                                 _loc12_ = _loc12_ & 2047;
                                 _loc12_ = int(_loc44_ + _loc12_);
                                 _loc44_ = int(_loc12_ + -1023);
                                 _loc13_ = int(_loc13_ + -16);
                                 _loc24_ = _loc24_ & -2146435073;
                                 _loc22_ = _loc24_ | 1072693248;
                                 _loc28_ = li32(_loc9_ - 96);
                              }
                              while(_loc13_ > 15);
                              
                           }
                           _loc26_ = int(___tinytens_D2A);
                           if(_loc13_ >= 1)
                           {
                              do
                              {
                                 _loc24_ = _loc13_ & 1;
                                 if(_loc24_ != 0)
                                 {
                                    _loc24_ = int(_loc9_ - 104);
                                    si32(_loc22_,_loc24_ | 4);
                                    si32(_loc28_,_loc9_ - 104);
                                    _loc15_ = lf64(_loc9_ - 104);
                                    _loc15_ = Number(_loc15_ * lf64(_loc26_));
                                    sf64(_loc15_,_loc9_ - 112);
                                    _loc24_ = int(_loc9_ - 112);
                                    _loc24_ = _loc24_ | 4;
                                    _loc22_ = li32(_loc24_);
                                    _loc28_ = li32(_loc9_ - 112);
                                 }
                                 _loc26_ = int(_loc26_ + 8);
                                 _loc13_ = _loc13_ >> 1;
                              }
                              while(_loc13_ > 0);
                              
                           }
                        }
                     }
                  }
                  _loc5_ = int(_loc5_ - 16);
                  si32(_loc28_,_loc5_);
                  _loc24_ = int(_loc9_ - 20);
                  si32(_loc24_,_loc5_ + 12);
                  _loc24_ = int(_loc9_ - 24);
                  si32(_loc24_,_loc5_ + 8);
                  si32(_loc22_,_loc5_ + 4);
                  ESP = _loc5_;
                  F___d2b_D2A();
                  _loc5_ = int(_loc5_ + 16);
                  _loc28_ = int(eax);
                  si32(_loc28_,_loc9_ - 32);
                  _loc24_ = li32(_loc9_ - 24);
                  _loc10_ = int(_loc24_ + _loc44_);
                  si32(_loc10_,_loc9_ - 24);
                  _loc26_ = li32(_loc9_ - 20);
                  _loc44_ = int(_loc26_ - _loc42_);
                  if(_loc44_ >= 1)
                  {
                     _loc5_ = int(_loc5_ - 16);
                     si32(_loc28_,_loc5_);
                     si32(_loc44_,_loc5_ + 4);
                     ESP = _loc5_;
                     F___rshift_D2A();
                     _loc5_ = int(_loc5_ + 16);
                     si32(_loc42_,_loc9_ - 20);
                     _loc24_ = li32(_loc9_ - 24);
                     _loc10_ = int(_loc24_ + _loc44_);
                     si32(_loc10_,_loc9_ - 24);
                     _loc26_ = _loc42_;
                  }
                  _loc24_ = int(_loc10_ - _loc42_);
                  _loc27_ = int(_loc24_ + _loc26_);
                  _loc44_ = int(_loc43_ + 8);
                  _loc24_ = li32(_loc43_ + 8);
                  _loc24_ = int(_loc24_ + 1);
                  _loc28_ = 0;
                  if(_loc24_ >= _loc27_)
                  {
                     _loc22_ = li32(_loc43_ + 4);
                     _loc13_ = _loc27_;
                     _loc28_ = 0;
                     if(_loc22_ > _loc27_)
                     {
                        _loc28_ = int(_loc10_ - _loc22_);
                        if(_loc28_ >= 1)
                        {
                           _loc5_ = int(_loc5_ - 16);
                           si32(li32(_loc9_ - 32),_loc5_);
                           si32(_loc28_,_loc5_ + 4);
                           ESP = _loc5_;
                           F___lshift_D2A();
                           _loc5_ = int(_loc5_ + 16);
                           _loc24_ = int(eax);
                           si32(_loc24_,_loc9_ - 32);
                           _loc24_ = li32(_loc9_ - 20);
                           _loc24_ = int(_loc24_ + _loc28_);
                           si32(_loc24_,_loc9_ - 20);
                        }
                        else if(_loc28_ <= -1)
                        {
                           _loc13_ = int(_loc28_ + _loc26_);
                           si32(_loc13_,_loc9_ - 20);
                           if(_loc13_ <= 0)
                           {
                              if(_loc13_ > -2)
                              {
                                 _loc24_ = li32(_loc9_ - 32);
                                 si32(1,_loc9_ - 20);
                                 si32(1,_loc24_ + 16);
                                 si32(1,_loc24_ + 20);
                              }
                              addr2940:
                              _loc24_ = li32(_loc9_ - 32);
                              si32(0,_loc24_ + 16);
                              _loc24_ = li32(_loc9_ - 32);
                              si32(0,_loc24_ + 20);
                              si32(_loc22_,_loc38_);
                              addr6448:
                              si32(80,_loc9_ - 16);
                              if(_loc25_ != 0)
                              {
                                 si32(0,li32(_loc9_ - 32) + 16);
                                 si32(80,_loc9_ - 16);
                                 ESP = _loc5_;
                                 F___error();
                                 si32(34,int(eax));
                                 break;
                              }
                              _loc24_ = li32(_loc9_ - 32);
                              _loc25_ = 2;
                              if(li32(_loc24_ + 16) <= 0)
                              {
                                 _loc25_ = 0;
                              }
                              _loc24_ = li32(_loc9_ - 16);
                              _loc12_ = _loc24_ & -8;
                              _loc25_ = _loc25_ | _loc12_;
                              si32(_loc25_,_loc9_ - 16);
                              _loc24_ = _loc24_ & 48;
                              if(_loc24_ != 0)
                              {
                                 _loc24_ = _loc25_ | 64;
                                 si32(_loc24_,_loc9_ - 16);
                                 ESP = _loc5_;
                                 F___error();
                                 si32(34,int(eax));
                                 break;
                              }
                              break;
                           }
                           _loc5_ = int(_loc5_ - 16);
                           _loc24_ = int(0 - _loc28_);
                           si32(_loc24_,_loc5_ + 4);
                           si32(li32(_loc9_ - 32),_loc5_);
                           ESP = _loc5_;
                           F___rshift_D2A();
                           _loc5_ = int(_loc5_ + 16);
                        }
                        si32(_loc22_,_loc9_ - 24);
                        _loc28_ = 1;
                        _loc13_ = _loc22_;
                        if(_loc25_ != 0)
                        {
                           _loc28_ = 1;
                           _loc13_ = _loc22_;
                           if(int(_loc27_ + 1) < _loc22_)
                           {
                              §§goto(addr2940);
                           }
                           §§goto(addr6448);
                        }
                     }
                     _loc5_ = int(_loc5_ - 32);
                     si32(_loc45_,_loc5_ + 16);
                     si32(_loc23_,_loc5_ + 12);
                     si32(_loc30_,_loc5_ + 8);
                     si32(_loc14_,_loc5_ + 4);
                     si32(_loc29_,_loc5_);
                     _loc10_ = 0;
                     if(_loc21_ <= -1)
                     {
                        _loc10_ = int(0 - _loc21_);
                     }
                     if(_loc21_ <= -1)
                     {
                        _loc21_ = 0;
                     }
                     ESP = _loc5_;
                     F___s2b_D2A();
                     _loc8_ = _loc34_ & 1;
                     _loc46_ = int(_loc42_ + 1);
                     _loc5_ = int(_loc5_ + 32);
                     _loc29_ = int(eax);
                     _loc27_ = int(_loc29_ + 12);
                     _loc26_ = 17;
                     _loc4_ = 0;
                     loop14:
                     while(true)
                     {
                        _loc24_ = li32(_loc29_ + 4);
                        _loc5_ = int(_loc5_ - 16);
                        si32(_loc24_,_loc5_);
                        ESP = _loc5_;
                        F___Balloc_D2A();
                        _loc5_ = int(_loc5_ + 16);
                        _loc45_ = eax;
                        _loc24_ = li32(_loc29_ + 16);
                        _loc5_ = int(_loc5_ - 16);
                        _loc24_ = _loc24_ << 2;
                        _loc24_ = int(_loc24_ + 8);
                        si32(_loc24_,_loc5_ + 8);
                        si32(_loc27_,_loc5_ + 4);
                        _loc24_ = int(_loc45_ + 12);
                        si32(_loc24_,_loc5_);
                        ESP = _loc5_;
                        Fmemcpy();
                        _loc5_ = int(_loc5_ + 16);
                        _loc24_ = li32(_loc9_ - 32);
                        _loc24_ = li32(_loc24_ + 4);
                        _loc5_ = int(_loc5_ - 16);
                        si32(_loc24_,_loc5_);
                        ESP = _loc5_;
                        F___Balloc_D2A();
                        _loc5_ = int(_loc5_ + 16);
                        _loc23_ = int(eax);
                        _loc24_ = li32(_loc9_ - 32);
                        _loc12_ = li32(_loc24_ + 16);
                        _loc5_ = int(_loc5_ - 16);
                        _loc12_ = _loc12_ << 2;
                        _loc12_ = int(_loc12_ + 8);
                        si32(_loc12_,_loc5_ + 8);
                        _loc24_ = int(_loc24_ + 12);
                        si32(_loc24_,_loc5_ + 4);
                        _loc24_ = int(_loc23_ + 12);
                        si32(_loc24_,_loc5_);
                        ESP = _loc5_;
                        Fmemcpy();
                        _loc5_ = int(_loc5_ + 16);
                        _loc6_ = li32(_loc9_ - 24);
                        _loc30_ = li32(_loc9_ - 20);
                        _loc5_ = int(_loc5_ - 16);
                        si32(1,_loc5_);
                        _loc11_ = int(_loc6_ + _loc4_);
                        _loc3_ = _loc11_;
                        if(_loc11_ <= -1)
                        {
                           _loc3_ = 0;
                        }
                        _loc14_ = 0;
                        if(_loc11_ <= -1)
                        {
                           _loc14_ = _loc11_;
                        }
                        _loc24_ = int(_loc30_ - _loc42_);
                        _loc7_ = int(_loc24_ + _loc6_);
                        _loc6_ = int(_loc30_ - _loc4_);
                        _loc11_ = int(_loc46_ - _loc6_);
                        ESP = _loc5_;
                        F___i2b_D2A();
                        _loc5_ = int(_loc5_ + 16);
                        _loc30_ = int(eax);
                        if(_loc7_ < _loc22_)
                        {
                           _loc24_ = int(_loc11_ - _loc22_);
                           _loc11_ = int(_loc24_ + _loc7_);
                        }
                        _loc3_ = int(_loc3_ + _loc10_);
                        _loc24_ = int(_loc21_ - _loc14_);
                        _loc14_ = int(_loc11_ + _loc3_);
                        _loc33_ = int(_loc11_ + _loc24_);
                        _loc7_ = _loc33_;
                        if(_loc33_ > _loc14_)
                        {
                           _loc7_ = _loc14_;
                        }
                        _loc11_ = _loc3_;
                        if(_loc7_ <= _loc3_)
                        {
                           _loc11_ = _loc7_;
                        }
                        if(_loc11_ <= 0)
                        {
                           _loc11_ = 0;
                        }
                        if(_loc10_ >= 1)
                        {
                           _loc5_ = int(_loc5_ - 16);
                           si32(_loc10_,_loc5_ + 4);
                           si32(_loc30_,_loc5_);
                           ESP = _loc5_;
                           F___pow5mult_D2A();
                           _loc5_ = int(_loc5_ + 16);
                           _loc30_ = int(eax);
                           _loc5_ = int(_loc5_ - 16);
                           si32(_loc23_,_loc5_ + 4);
                           si32(_loc30_,_loc5_);
                           ESP = _loc5_;
                           F___mult_D2A();
                           _loc5_ = int(_loc5_ + 16);
                           _loc5_ = int(_loc5_ - 16);
                           si32(_loc23_,_loc5_);
                           ESP = _loc5_;
                           F___Bfree_D2A();
                           _loc5_ = int(_loc5_ + 16);
                           _loc23_ = int(eax);
                        }
                        _loc24_ = int(_loc14_ - _loc11_);
                        _loc14_ = int(_loc33_ - _loc11_);
                        _loc3_ = int(_loc3_ - _loc11_);
                        _loc4_ = int(_loc24_ - _loc4_);
                        if(_loc4_ >= 1)
                        {
                           _loc5_ = int(_loc5_ - 16);
                           si32(_loc4_,_loc5_ + 4);
                           si32(_loc23_,_loc5_);
                           ESP = _loc5_;
                           F___lshift_D2A();
                           _loc5_ = int(_loc5_ + 16);
                           _loc23_ = int(eax);
                        }
                        else if(_loc4_ <= -1)
                        {
                           _loc5_ = int(_loc5_ - 16);
                           si32(_loc23_,_loc5_);
                           _loc24_ = int(0 - _loc4_);
                           si32(_loc24_,_loc5_ + 4);
                           ESP = _loc5_;
                           F___rshift_D2A();
                           _loc5_ = int(_loc5_ + 16);
                        }
                        if(_loc21_ >= 1)
                        {
                           _loc5_ = int(_loc5_ - 16);
                           si32(_loc21_,_loc5_ + 4);
                           si32(_loc45_,_loc5_);
                           ESP = _loc5_;
                           F___pow5mult_D2A();
                           _loc5_ = int(_loc5_ + 16);
                           _loc45_ = eax;
                        }
                        if(_loc14_ >= 1)
                        {
                           _loc5_ = int(_loc5_ - 16);
                           si32(_loc14_,_loc5_ + 4);
                           si32(_loc45_,_loc5_);
                           ESP = _loc5_;
                           F___lshift_D2A();
                           _loc5_ = int(_loc5_ + 16);
                           _loc45_ = eax;
                        }
                        if(_loc3_ >= 1)
                        {
                           _loc5_ = int(_loc5_ - 16);
                           si32(_loc3_,_loc5_ + 4);
                           si32(_loc30_,_loc5_);
                           ESP = _loc5_;
                           F___lshift_D2A();
                           _loc5_ = int(_loc5_ + 16);
                           _loc30_ = int(eax);
                        }
                        _loc5_ = int(_loc5_ - 16);
                        si32(_loc45_,_loc5_ + 4);
                        si32(_loc23_,_loc5_);
                        ESP = _loc5_;
                        F___diff_D2A();
                        _loc5_ = int(_loc5_ + 16);
                        _loc14_ = int(eax);
                        _loc24_ = li32(_loc14_ + 16);
                        if(_loc24_ <= 1)
                        {
                           _loc24_ = li32(_loc14_ + 20);
                           if(_loc24_ != 0)
                           {
                           }
                           break;
                        }
                        _loc4_ = li32(_loc14_ + 12);
                        si32(0,_loc14_ + 12);
                        _loc5_ = int(_loc5_ - 16);
                        si32(_loc30_,_loc5_ + 4);
                        si32(_loc14_,_loc5_);
                        ESP = _loc5_;
                        F___cmp_D2A();
                        _loc5_ = int(_loc5_ + 16);
                        _loc3_ = int(eax);
                        if(_loc34_ != 0)
                        {
                           if(_loc3_ <= 0)
                           {
                              si32(1,_loc9_ - 16);
                              if(_loc8_ != _loc4_)
                              {
                                 _loc3_ = _loc4_ ^ _loc8_;
                                 if(_loc4_ != 0)
                                 {
                                    si32(33,_loc9_ - 16);
                                    _loc31_ = 1072693248;
                                    _loc37_ = 0;
                                    _loc11_ = 32;
                                    _loc20_ = 1;
                                    _loc33_ = _loc37_;
                                    _loc35_ = _loc37_;
                                 }
                                 else
                                 {
                                    si32(_loc26_,_loc9_ - 16);
                                    if(_loc13_ != _loc22_)
                                    {
                                       _loc11_ = li32(_loc9_ - 32);
                                       _loc7_ = int(_loc11_ + 20);
                                       _loc33_ = _loc42_;
                                       while(true)
                                       {
                                          if(_loc33_ <= 31)
                                          {
                                             if(_loc33_ >= 2)
                                             {
                                                _loc5_ = int(_loc5_ - 16);
                                                si32(_loc7_,_loc5_);
                                                ESP = _loc5_;
                                                F___lo0bits_D2A();
                                                _loc5_ = int(_loc5_ + 16);
                                                _loc24_ = int(eax);
                                                if(_loc24_ >= int(_loc33_ + -1))
                                                {
                                                   _loc11_ = li32(_loc9_ - 32);
                                                }
                                                else
                                                {
                                                   break;
                                                }
                                             }
                                             _loc24_ = int(_loc13_ + -1);
                                             si32(_loc24_,_loc9_ - 24);
                                             si32(_loc42_,_loc9_ - 20);
                                             _loc24_ = li32(_loc11_ + 4);
                                             _loc12_ = int(_loc42_ + 31);
                                             _loc34_ = _loc12_ >> 5;
                                             if(_loc24_ < _loc34_)
                                             {
                                                _loc5_ = int(_loc5_ - 16);
                                                si32(_loc11_,_loc5_);
                                                ESP = _loc5_;
                                                F___Bfree_D2A();
                                                _loc5_ = int(_loc5_ + 16);
                                                _loc5_ = int(_loc5_ - 16);
                                                si32(_loc34_,_loc5_);
                                                ESP = _loc5_;
                                                F___Balloc_D2A();
                                                _loc5_ = int(_loc5_ + 16);
                                                _loc11_ = int(eax);
                                             }
                                             _loc34_ = _loc42_ & 31;
                                             _loc21_ = 1;
                                             if(_loc34_ == 0)
                                             {
                                                _loc21_ = 0;
                                             }
                                             _loc24_ = _loc21_ & 1;
                                             _loc12_ = _loc42_ >> 5;
                                             _loc22_ = int(_loc24_ + _loc12_);
                                             si32(_loc22_,_loc11_ + 16);
                                             _loc21_ = int(_loc11_ + 20);
                                             if(_loc22_ >= 1)
                                             {
                                                _loc22_ = int(_loc21_ + (_loc22_ << 2));
                                                _loc21_ = int(_loc11_ + 20);
                                                do
                                                {
                                                   si32(-1,_loc21_);
                                                   _loc21_ = int(_loc21_ + 4);
                                                }
                                                while(uint(_loc21_) < uint(_loc22_));
                                                
                                             }
                                             if(_loc34_ != 0)
                                             {
                                                _loc12_ = li32(_loc21_ - 4);
                                                _loc24_ = int(_loc12_ >>> int(32 - _loc34_));
                                                si32(_loc24_,_loc21_ - 4);
                                             }
                                             si32(_loc11_,_loc9_ - 32);
                                             break loop14;
                                          }
                                          _loc24_ = li32(_loc7_);
                                          if(_loc24_ == 0)
                                          {
                                             _loc33_ = int(_loc33_ + -32);
                                             _loc7_ = int(_loc7_ + 4);
                                             continue;
                                          }
                                          break;
                                       }
                                    }
                                    addr4857:
                                    _loc31_ = 1072693248;
                                    _loc37_ = 0;
                                    _loc35_ = 1;
                                    _loc11_ = 16;
                                    _loc20_ = 1;
                                    _loc33_ = _loc37_;
                                    if(_loc28_ != 0)
                                    {
                                       _loc33_ = _loc37_;
                                       if(_loc6_ <= 1)
                                       {
                                          _loc21_ = li32(_loc9_ - 32);
                                          addr4885:
                                          si32(0,_loc21_ + 16);
                                          si32(_loc22_,_loc9_ - 24);
                                          si32(80,_loc9_ - 16);
                                          break;
                                       }
                                    }
                                 }
                                 addr5076:
                                 _loc6_ = li32(_loc9_ - 24);
                                 _loc4_ = li32(_loc9_ - 20);
                                 if(_loc28_ == 0)
                                 {
                                    if(_loc4_ < _loc42_)
                                    {
                                       _loc5_ = int(_loc5_ - 16);
                                       si32(li32(_loc9_ - 32),_loc5_);
                                       _loc24_ = int(_loc42_ - _loc4_);
                                       si32(_loc24_,_loc5_ + 4);
                                       ESP = _loc5_;
                                       F___lshift_D2A();
                                       _loc5_ = int(_loc5_ + 16);
                                       _loc12_ = int(eax);
                                       si32(_loc12_,_loc9_ - 32);
                                       _loc12_ = li32(_loc9_ - 24);
                                       _loc24_ = int(_loc12_ - _loc24_);
                                       si32(_loc24_,_loc9_ - 24);
                                       si32(_loc42_,_loc9_ - 20);
                                    }
                                 }
                                 _loc6_ = int(_loc4_ + _loc6_);
                                 _loc24_ = int(_loc9_ - 184);
                                 _loc24_ = _loc24_ | 4;
                                 si32(_loc31_,_loc24_);
                                 _loc5_ = int(_loc5_ - 16);
                                 si32(_loc37_,_loc5_);
                                 _loc24_ = int(_loc9_ - 12);
                                 si32(_loc24_,_loc5_ + 12);
                                 _loc24_ = int(_loc9_ - 8);
                                 si32(_loc24_,_loc5_ + 8);
                                 si32(_loc37_,_loc9_ - 184);
                                 si32(_loc31_,_loc5_ + 4);
                                 ESP = _loc5_;
                                 F___d2b_D2A();
                                 _loc1_ = lf64(_loc9_ - 184);
                                 _loc5_ = int(_loc5_ + 16);
                                 _loc31_ = int(eax);
                                 _loc37_ = li32(_loc9_ - 8);
                                 if(_loc37_ <= -1)
                                 {
                                    _loc5_ = int(_loc5_ - 16);
                                    si32(_loc31_,_loc5_);
                                    _loc24_ = int(0 - _loc37_);
                                    si32(_loc24_,_loc5_ + 4);
                                    ESP = _loc5_;
                                    F___rshift_D2A();
                                    _loc5_ = int(_loc5_ + 16);
                                 }
                                 else if(_loc37_ >= 1)
                                 {
                                    _loc5_ = int(_loc5_ - 16);
                                    si32(_loc37_,_loc5_ + 4);
                                    si32(_loc31_,_loc5_);
                                    ESP = _loc5_;
                                    F___lshift_D2A();
                                    _loc5_ = int(_loc5_ + 16);
                                    _loc31_ = int(eax);
                                 }
                                 _loc37_ = li32(_loc9_ - 32);
                                 if(_loc35_ != 0)
                                 {
                                    _loc24_ = li32(_loc37_ + 16);
                                    _loc24_ = _loc24_ << 2;
                                    _loc24_ = int(_loc24_ + _loc37_);
                                    _loc5_ = int(_loc5_ - 16);
                                    si32(li32(_loc24_ + 16),_loc5_);
                                    ESP = _loc5_;
                                    F___hi0bits_D2A();
                                    _loc5_ = int(_loc5_ + 16);
                                    _loc5_ = int(_loc5_ - 16);
                                    si32(_loc31_,_loc5_ + 4);
                                    si32(li32(_loc9_ - 32),_loc5_);
                                    ESP = _loc5_;
                                    F___diff_D2A();
                                    _loc5_ = int(_loc5_ + 16);
                                    _loc41_ = eax;
                                    si32(_loc41_,_loc9_ - 32);
                                    if(_loc28_ == 0)
                                    {
                                       _loc35_ = li32(_loc37_ + 16);
                                       _loc24_ = li32(_loc41_ + 16);
                                       if(_loc24_ > int(_loc35_ + -1))
                                       {
                                          _loc24_ = _loc35_ << 2;
                                          _loc12_ = int(_loc41_ + _loc24_);
                                          _loc5_ = int(_loc5_ - 16);
                                          si32(li32(_loc12_ + 16),_loc5_);
                                          ESP = _loc5_;
                                          F___hi0bits_D2A();
                                          _loc5_ = int(_loc5_ + 16);
                                          _loc24_ = int(eax);
                                          _loc5_ = int(_loc5_ - 16);
                                          si32(li32(int(_loc37_ + _loc24_) + 16),_loc5_);
                                          ESP = _loc5_;
                                          F___hi0bits_D2A();
                                          _loc5_ = int(_loc5_ + 16);
                                          if(_loc24_ > int(eax))
                                          {
                                          }
                                       }
                                       if(_loc13_ == _loc22_)
                                       {
                                          _loc24_ = li32(_loc9_ - 20);
                                          _loc24_ = int(_loc24_ + -1);
                                          si32(_loc24_,_loc9_ - 20);
                                          _loc28_ = 1;
                                       }
                                       else
                                       {
                                          _loc5_ = int(_loc5_ - 16);
                                          si32(1,_loc5_ + 4);
                                          si32(li32(_loc9_ - 32),_loc5_);
                                          ESP = _loc5_;
                                          F___lshift_D2A();
                                          _loc5_ = int(_loc5_ + 16);
                                          _loc24_ = int(eax);
                                          si32(_loc24_,_loc9_ - 32);
                                          _loc24_ = li32(_loc9_ - 24);
                                          _loc24_ = int(_loc24_ + -1);
                                          si32(_loc24_,_loc9_ - 24);
                                          _loc13_ = int(_loc13_ + -1);
                                          _loc3_ = 0;
                                          _loc33_ = _loc3_;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc5_ = int(_loc5_ - 16);
                                    si32(_loc31_,_loc5_ + 4);
                                    si32(_loc37_,_loc5_);
                                    ESP = _loc5_;
                                    F___sum_D2A();
                                    _loc5_ = int(_loc5_ + 16);
                                    _loc41_ = eax;
                                    si32(_loc41_,_loc9_ - 32);
                                    _loc35_ = li32(_loc41_ + 16);
                                    if(li32(_loc37_ + 16) > int(_loc35_ + -1))
                                    {
                                       _loc24_ = _loc35_ << 2;
                                       _loc12_ = int(_loc41_ + _loc24_);
                                       _loc5_ = int(_loc5_ - 16);
                                       si32(li32(_loc12_ + 16),_loc5_);
                                       ESP = _loc5_;
                                       F___hi0bits_D2A();
                                       _loc5_ = int(_loc5_ + 16);
                                       _loc24_ = int(eax);
                                       _loc5_ = int(_loc5_ - 16);
                                       si32(li32(int(_loc37_ + _loc24_) + 16),_loc5_);
                                       ESP = _loc5_;
                                       F___hi0bits_D2A();
                                       _loc5_ = int(_loc5_ + 16);
                                       if(_loc24_ < int(eax))
                                       {
                                       }
                                    }
                                    if(_loc28_ != 0)
                                    {
                                       _loc24_ = li32(_loc9_ - 20);
                                       _loc24_ = int(_loc24_ + 1);
                                       si32(_loc24_,_loc9_ - 20);
                                       if(_loc24_ == _loc42_)
                                       {
                                          _loc28_ = 0;
                                       }
                                    }
                                    else
                                    {
                                       _loc5_ = int(_loc5_ - 16);
                                       si32(1,_loc5_ + 4);
                                       si32(li32(_loc9_ - 32),_loc5_);
                                       ESP = _loc5_;
                                       F___rshift_D2A();
                                       _loc5_ = int(_loc5_ + 16);
                                       _loc24_ = li32(_loc9_ - 24);
                                       _loc24_ = int(_loc24_ + 1);
                                       si32(_loc24_,_loc9_ - 24);
                                       _loc13_ = int(_loc13_ + 1);
                                       _loc33_ = 0;
                                       _loc28_ = _loc33_;
                                    }
                                 }
                                 _loc5_ = int(_loc5_ - 16);
                                 si32(_loc31_,_loc5_);
                                 ESP = _loc5_;
                                 F___Bfree_D2A();
                                 _loc5_ = int(_loc5_ + 16);
                                 _loc5_ = int(_loc5_ - 16);
                                 si32(_loc37_,_loc5_);
                                 ESP = _loc5_;
                                 F___Bfree_D2A();
                                 _loc5_ = int(_loc5_ + 16);
                                 if(_loc3_ == 0)
                                 {
                                    _loc12_ = li32(_loc9_ - 20);
                                    if(_loc6_ == int(_loc12_ + li32(_loc9_ - 24)))
                                    {
                                       if(_loc33_ != 0)
                                       {
                                          _loc2_ = _loc20_ + -0.5;
                                          _loc1_ = Number(_loc1_ * 5.0e-16);
                                          _loc15_ = Number(-_loc1_);
                                          if(!(_loc2_ >= _loc15_ | _loc2_ != _loc2_ | _loc15_ != _loc15_))
                                          {
                                             if(!(_loc20_ <= _loc1_ | _loc20_ != _loc20_ | _loc1_ != _loc1_))
                                             {
                                                _loc24_ = li32(_loc9_ - 16);
                                                _loc24_ = _loc24_ | _loc11_;
                                                si32(_loc24_,_loc9_ - 16);
                                                break;
                                             }
                                          }
                                          else if(!(_loc2_ <= _loc1_ | _loc2_ != _loc2_ | _loc1_ != _loc1_))
                                          {
                                             _loc15_ = Number(1 - _loc1_);
                                             if(!(_loc15_ <= _loc20_ | _loc15_ != _loc15_ | _loc20_ != _loc20_))
                                             {
                                                _loc24_ = li32(_loc9_ - 16);
                                                _loc24_ = _loc24_ | _loc11_;
                                                si32(_loc24_,_loc9_ - 16);
                                                break;
                                             }
                                          }
                                       }
                                    }
                                    _loc4_ = 0;
                                    if(_loc28_ == 0)
                                    {
                                       _loc5_ = int(_loc5_ - 16);
                                       si32(li32(_loc9_ - 32),_loc5_);
                                       ESP = _loc5_;
                                       F___trailz_D2A();
                                       _loc5_ = int(_loc5_ + 16);
                                       _loc4_ = int(eax);
                                       continue;
                                    }
                                    continue;
                                 }
                                 break;
                              }
                              _loc34_ = 17;
                              if(_loc4_ == 0)
                              {
                                 _loc34_ = 33;
                              }
                              si32(_loc34_,_loc9_ - 16);
                              break;
                           }
                           addr4841:
                           _loc31_ = 1072693248;
                           _loc37_ = 0;
                           _loc11_ = 32;
                           _loc20_ = 1;
                           _loc33_ = _loc37_;
                           _loc35_ = _loc37_;
                           if(_loc4_ == 0)
                           {
                              §§goto(addr4857);
                           }
                           §§goto(addr5076);
                        }
                        if(_loc3_ <= -1)
                        {
                           _loc34_ = 33;
                           if(_loc4_ != 0)
                           {
                              _loc34_ = 17;
                           }
                           si32(_loc34_,_loc9_ - 16);
                           _loc21_ = 1;
                           _loc34_ = _loc21_;
                           if(_loc4_ == 0)
                           {
                              _loc34_ = 0;
                           }
                           _loc26_ = _loc21_;
                           if(_loc6_ <= _loc21_)
                           {
                              _loc26_ = 0;
                           }
                           if(_loc28_ == 0)
                           {
                              _loc21_ = 0;
                           }
                           if(_loc13_ != _loc22_)
                           {
                              _loc24_ = _loc26_ | _loc34_;
                              _loc24_ = _loc24_ | _loc21_;
                              if(_loc24_ == 0)
                              {
                                 _loc5_ = int(_loc5_ - 16);
                                 si32(1,_loc5_ + 4);
                                 si32(_loc14_,_loc5_);
                                 ESP = _loc5_;
                                 F___lshift_D2A();
                                 _loc5_ = int(_loc5_ + 16);
                                 _loc14_ = int(eax);
                                 _loc5_ = int(_loc5_ - 16);
                                 si32(_loc30_,_loc5_ + 4);
                                 si32(_loc14_,_loc5_);
                                 ESP = _loc5_;
                                 F___cmp_D2A();
                                 _loc5_ = int(_loc5_ + 16);
                                 _loc24_ = int(eax);
                                 if(_loc24_ <= 0)
                                 {
                                    break;
                                 }
                                 si32(17,_loc9_ - 16);
                                 if(_loc13_ != _loc22_)
                                 {
                                    addr4397:
                                    _loc24_ = li32(_loc9_ - 24);
                                    _loc24_ = int(_loc24_ - _loc42_);
                                    si32(_loc24_,_loc9_ - 24);
                                    _loc34_ = li32(_loc9_ - 32);
                                    si32(_loc42_,_loc9_ - 20);
                                    _loc24_ = int(_loc42_ + 31);
                                    _loc21_ = _loc24_ >> 5;
                                    _loc24_ = li32(_loc34_ + 4);
                                    if(_loc24_ < _loc21_)
                                    {
                                       _loc5_ = int(_loc5_ - 16);
                                       si32(_loc34_,_loc5_);
                                       ESP = _loc5_;
                                       F___Bfree_D2A();
                                       _loc5_ = int(_loc5_ + 16);
                                       _loc5_ = int(_loc5_ - 16);
                                       si32(_loc21_,_loc5_);
                                       ESP = _loc5_;
                                       F___Balloc_D2A();
                                       _loc5_ = int(_loc5_ + 16);
                                       _loc34_ = int(eax);
                                    }
                                    _loc21_ = _loc42_ & 31;
                                    _loc22_ = 1;
                                    if(_loc21_ == 0)
                                    {
                                       _loc22_ = 0;
                                    }
                                    _loc12_ = _loc22_ & 1;
                                    _loc24_ = _loc42_ >> 5;
                                    _loc13_ = int(_loc12_ + _loc24_);
                                    si32(_loc13_,_loc34_ + 16);
                                    _loc22_ = int(_loc34_ + 20);
                                    if(_loc13_ >= 1)
                                    {
                                       _loc13_ = int(_loc22_ + (_loc13_ << 2));
                                       _loc22_ = int(_loc34_ + 20);
                                       do
                                       {
                                          si32(-1,_loc22_);
                                          _loc22_ = int(_loc22_ + 4);
                                       }
                                       while(uint(_loc22_) < uint(_loc13_));
                                       
                                    }
                                    if(_loc21_ != 0)
                                    {
                                       _loc12_ = li32(_loc22_ - 4);
                                       _loc24_ = int(_loc12_ >>> int(32 - _loc21_));
                                       si32(_loc24_,_loc22_ - 4);
                                    }
                                    si32(_loc34_,_loc9_ - 32);
                                    break;
                                 }
                              }
                              break;
                           }
                           break;
                        }
                        if(_loc3_ == 0)
                        {
                           if(_loc4_ != 0)
                           {
                              _loc34_ = 1;
                              if(_loc28_ != 0)
                              {
                                 _loc26_ = li32(_loc9_ - 20);
                                 _loc13_ = _loc26_ >> 5;
                                 _loc21_ = 0;
                                 _loc34_ = li32(_loc9_ - 32);
                                 while(true)
                                 {
                                    if(_loc21_ >= _loc13_)
                                    {
                                       _loc13_ = _loc26_ & 31;
                                       if(_loc13_ != 0)
                                       {
                                          _loc12_ = int(_loc34_ + (_loc21_ << 2));
                                          _loc12_ = li32(_loc12_ + 20);
                                          _loc24_ = _loc12_ | -1 << _loc13_;
                                          if(_loc24_ != -1)
                                          {
                                             break;
                                          }
                                       }
                                       _loc21_ = 1;
                                       si32(_loc21_,_loc34_ + 16);
                                       _loc24_ = li32(_loc9_ - 32);
                                       si32(_loc21_,_loc24_ + 20);
                                       si32(_loc21_,_loc9_ - 20);
                                       _loc24_ = int(_loc42_ + _loc22_);
                                       _loc24_ = int(_loc24_ + -1);
                                       si32(_loc24_,_loc9_ - 24);
                                       si32(33,_loc9_ - 16);
                                       addr6037:
                                       _loc28_ = 0;
                                       addr6139:
                                       if(_loc42_ != _loc21_)
                                       {
                                          _loc28_ = int(_loc42_ - _loc21_);
                                          _loc34_ = li32(_loc9_ - 32);
                                          if(_loc28_ >= 1)
                                          {
                                             _loc5_ = int(_loc5_ - 16);
                                             si32(_loc28_,_loc5_ + 4);
                                             si32(_loc34_,_loc5_);
                                             ESP = _loc5_;
                                             F___lshift_D2A();
                                             _loc5_ = int(_loc5_ + 16);
                                             _loc24_ = int(eax);
                                             si32(_loc24_,_loc9_ - 32);
                                          }
                                          else
                                          {
                                             _loc5_ = int(_loc5_ - 16);
                                             si32(_loc34_,_loc5_);
                                             _loc24_ = int(0 - _loc28_);
                                             si32(_loc24_,_loc5_ + 4);
                                             ESP = _loc5_;
                                             F___rshift_D2A();
                                             _loc5_ = int(_loc5_ + 16);
                                          }
                                          _loc24_ = li32(_loc9_ - 24);
                                          _loc24_ = int(_loc24_ - _loc28_);
                                          si32(_loc24_,_loc9_ - 24);
                                          _loc28_ = 0;
                                       }
                                       _loc24_ = li32(_loc9_ - 24);
                                       si32(_loc24_,_loc38_);
                                       _loc5_ = int(_loc5_ - 16);
                                       si32(_loc23_,_loc5_);
                                       ESP = _loc5_;
                                       F___Bfree_D2A();
                                       _loc5_ = int(_loc5_ + 16);
                                       _loc5_ = int(_loc5_ - 16);
                                       si32(_loc45_,_loc5_);
                                       ESP = _loc5_;
                                       F___Bfree_D2A();
                                       _loc5_ = int(_loc5_ + 16);
                                       _loc5_ = int(_loc5_ - 16);
                                       si32(_loc30_,_loc5_);
                                       ESP = _loc5_;
                                       F___Bfree_D2A();
                                       _loc5_ = int(_loc5_ + 16);
                                       _loc5_ = int(_loc5_ - 16);
                                       si32(_loc29_,_loc5_);
                                       ESP = _loc5_;
                                       F___Bfree_D2A();
                                       _loc5_ = int(_loc5_ + 16);
                                       _loc5_ = int(_loc5_ - 16);
                                       si32(_loc14_,_loc5_);
                                       ESP = _loc5_;
                                       F___Bfree_D2A();
                                       _loc5_ = int(_loc5_ + 16);
                                       _loc12_ = li32(_loc44_);
                                       addr6444:
                                       _loc24_ = li32(_loc9_ - 24);
                                       if(_loc12_ < _loc24_)
                                       {
                                          _loc24_ = li32(_loc43_ + 12);
                                          _loc34_ = _loc24_ & 3;
                                          if(_loc34_ != 1)
                                          {
                                             if(_loc34_ != 3)
                                             {
                                                if(_loc34_ == 2)
                                                {
                                                   if(_loc32_ != 0)
                                                   {
                                                   }
                                                }
                                                addr6284:
                                                _loc24_ = li32(_loc9_ - 32);
                                                _loc5_ = int(_loc5_ - 16);
                                                si32(_loc24_,_loc5_);
                                                ESP = _loc5_;
                                                F___Bfree_D2A();
                                                _loc5_ = int(_loc5_ + 16);
                                                _loc44_ = 0;
                                                si32(_loc44_,_loc9_ - 32);
                                                si32(17,_loc9_ - 16);
                                                _loc24_ = li32(_loc43_ + 8);
                                                si32(_loc24_,_loc38_);
                                                _loc34_ = li32(_loc43_);
                                                _loc24_ = int(_loc34_ + 31);
                                                _loc38_ = _loc24_ >> 5;
                                                if(_loc38_ >= 1)
                                                {
                                                   do
                                                   {
                                                      _loc24_ = _loc44_ << 2;
                                                      _loc24_ = int(_loc40_ + _loc24_);
                                                      si32(-1,_loc24_);
                                                      _loc44_ = int(_loc44_ + 1);
                                                   }
                                                   while(_loc44_ < _loc38_);
                                                   
                                                   _loc34_ = li32(_loc43_);
                                                }
                                                _loc43_ = _loc34_ & 31;
                                                if(_loc43_ != 0)
                                                {
                                                   _loc24_ = _loc38_ << 2;
                                                   _loc24_ = int(_loc24_ + _loc40_);
                                                   _loc12_ = int(li32(_loc24_ - 4) >>> int(32 - _loc43_));
                                                   si32(_loc12_,_loc24_ - 4);
                                                }
                                             }
                                             else if(_loc32_ == 0)
                                             {
                                                §§goto(addr6284);
                                             }
                                          }
                                       }
                                       if(_loc28_ != 0)
                                       {
                                          §§goto(addr6448);
                                       }
                                       break loop0;
                                    }
                                    _loc24_ = int(_loc34_ + (_loc21_ << 2));
                                    _loc21_ = int(_loc21_ + 1);
                                    if(li32(_loc24_ + 20) == -1)
                                    {
                                       continue;
                                    }
                                    break;
                                 }
                                 si32(17,_loc9_ - 16);
                              }
                              addr4600:
                              _loc21_ = li32(_loc9_ - 32);
                              _loc34_ = li32(_loc21_ + 20);
                              _loc24_ = _loc34_ & 1;
                              if(_loc24_ != 0)
                              {
                                 if(_loc4_ != 0)
                                 {
                                    _loc5_ = int(_loc5_ - 16);
                                    si32(_loc21_,_loc5_);
                                    ESP = _loc5_;
                                    F___increment_D2A();
                                    _loc5_ = int(_loc5_ + 16);
                                    _loc24_ = int(eax);
                                    si32(_loc24_,_loc9_ - 32);
                                    _loc12_ = li32(_loc24_ + 16);
                                    _loc12_ = _loc12_ << 2;
                                    _loc24_ = int(_loc12_ + _loc24_);
                                    _loc24_ = li32(_loc9_ - 20);
                                    _loc5_ = int(_loc5_ - 16);
                                    si32(li32(_loc24_ + 16),_loc5_);
                                    ESP = _loc5_;
                                    F___hi0bits_D2A();
                                    _loc24_ = int(0 - _loc24_);
                                    _loc5_ = int(_loc5_ + 16);
                                    _loc24_ = int(eax);
                                    if(_loc24_ != (_loc24_ & 31))
                                    {
                                       _loc24_ = li32(_loc9_ - 20);
                                       _loc24_ = int(_loc24_ + 1);
                                       si32(_loc24_,_loc9_ - 20);
                                    }
                                    si32(33,_loc9_ - 16);
                                    break;
                                 }
                                 if(_loc6_ != 1)
                                 {
                                    _loc24_ = li32(_loc21_ + 16);
                                    _loc24_ = int(_loc21_ + (_loc24_ << 2));
                                    _loc22_ = int(_loc24_ + 20);
                                    _loc21_ = int(_loc21_ + 24);
                                    while(true)
                                    {
                                       if(_loc34_ != 0)
                                       {
                                          _loc24_ = int(_loc34_ + -1);
                                          si32(_loc24_,_loc21_ - 4);
                                          break;
                                       }
                                       si32(-1,_loc21_ - 4);
                                       if(uint(_loc21_) < uint(_loc22_))
                                       {
                                          _loc34_ = li32(_loc21_);
                                          _loc21_ = int(_loc21_ + 4);
                                          continue;
                                       }
                                       break;
                                    }
                                    si32(17,_loc9_ - 16);
                                    break;
                                 }
                              }
                              break;
                           }
                           if(_loc6_ == 1)
                           {
                              si32(1,_loc9_ - 16);
                              if(_loc13_ != _loc22_)
                              {
                                 §§goto(addr4397);
                              }
                           }
                           else
                           {
                              _loc34_ = 1;
                              if(_loc28_ != 0)
                              {
                                 _loc34_ = 0;
                              }
                              _loc26_ = 33;
                           }
                           si32(_loc26_,_loc9_ - 16);
                           if(_loc6_ < _loc42_)
                           {
                              if(_loc34_ == 0)
                              {
                              }
                              break;
                           }
                           §§goto(addr4600);
                        }
                        else
                        {
                           _loc5_ = int(_loc5_ - 16);
                           si32(_loc30_,_loc5_ + 4);
                           si32(_loc14_,_loc5_);
                           ESP = _loc5_;
                           F___ratio_D2A();
                           _loc3_ = 0;
                           _loc5_ = int(_loc5_ + 16);
                           _loc19_ = st0;
                           if(!(_loc19_ > 2 | _loc19_ != _loc19_ | false))
                           {
                              §§goto(addr4841);
                           }
                           else
                           {
                              _loc20_ = Number(_loc19_ * 0.5);
                              sf64(_loc20_,_loc9_ - 168);
                              _loc11_ = 32;
                              _loc3_ = 0;
                              if(_loc4_ != _loc3_)
                              {
                                 _loc11_ = 16;
                              }
                              _loc6_ = 1;
                              if(_loc4_ != _loc3_)
                              {
                                 _loc6_ = _loc3_;
                              }
                              _loc35_ = _loc6_ & 1;
                              _loc24_ = int(_loc9_ - 168);
                              _loc24_ = _loc24_ | 4;
                              _loc31_ = li32(_loc24_);
                              _loc37_ = li32(_loc9_ - 168);
                              _loc33_ = _loc3_;
                              if(!(_loc20_ >= 2147483647 | _loc20_ != _loc20_ | false))
                              {
                                 _loc33_ = int(_loc20_);
                                 _loc20_ = Number(_loc20_ - _loc33_);
                                 if(_loc34_ != 2)
                                 {
                                    if(_loc34_ != 1)
                                    {
                                       if(_loc34_ == 0)
                                       {
                                          if(!(_loc20_ < 0.5 | _loc20_ != _loc20_ | false))
                                          {
                                             addr5037:
                                             _loc11_ = int(48 - _loc11_);
                                             _loc33_ = int(_loc33_ + 1);
                                          }
                                       }
                                    }
                                    else if(_loc4_ == 0)
                                    {
                                       if(_loc20_ > 0)
                                       {
                                          §§goto(addr5037);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc6_ = 1;
                                    if(_loc4_ == 0)
                                    {
                                       _loc6_ = 0;
                                    }
                                    if(!(_loc20_ <= 0 | _loc20_ != _loc20_ | false))
                                    {
                                       _loc24_ = _loc6_ & 1;
                                       if(_loc24_ != 0)
                                       {
                                          §§goto(addr5037);
                                       }
                                    }
                                 }
                                 _loc15_ = Number(_loc33_);
                                 sf64(_loc15_,_loc9_ - 176);
                                 _loc24_ = int(_loc9_ - 176);
                                 _loc24_ = _loc24_ | 4;
                                 _loc31_ = li32(_loc24_);
                                 _loc3_ = 0;
                                 _loc37_ = li32(_loc9_ - 176);
                              }
                           }
                           §§goto(addr5076);
                        }
                        §§goto(addr4885);
                        si32(33,_loc9_ - 16);
                        _loc34_ = li32(_loc9_ - 32);
                        _loc24_ = li32(_loc34_ + 16);
                        if(_loc24_ == 1)
                        {
                           _loc24_ = li32(_loc34_ + 20);
                           if(_loc24_ == 1)
                           {
                              _loc25_ = 1;
                              break;
                           }
                           break;
                        }
                        break;
                     }
                     if(_loc28_ == 0)
                     {
                        _loc21_ = li32(_loc9_ - 20);
                        §§goto(addr6037);
                     }
                     §§goto(addr6139);
                  }
                  _loc24_ = li32(_loc9_ - 32);
                  si32(0,_loc24_ + 16);
                  si32(163,_loc9_ - 16);
                  ESP = _loc5_;
                  F___error();
                  _loc24_ = int(eax);
                  si32(34,_loc24_);
                  _loc24_ = li32(_loc44_);
                  _loc24_ = int(_loc24_ + 1);
                  si32(_loc24_,_loc38_);
                  §§goto(addr6444);
               }
            }
            else
            {
               addr236:
               si32(6,_loc9_ - 16);
               si32(_loc21_,_loc9_ - 28);
               _loc32_ = 0;
               break;
            }
         }
         else if(_loc30_ != 32)
         {
            _loc32_ = _loc44_;
            if(_loc30_ != 43)
            {
               _loc32_ = _loc44_;
               if(_loc30_ == 45)
               {
                  _loc32_ = 1;
               }
               §§goto(addr257);
            }
            _loc24_ = int(_loc29_ + 1);
            si32(_loc24_,_loc9_ - 28);
            _loc30_ = li8(_loc29_ + 1);
            _loc29_ = _loc24_;
            if(_loc30_ == 0)
            {
               §§goto(addr236);
            }
            else
            {
               §§goto(addr257);
            }
         }
         _loc29_ = int(_loc29_ + 1);
      }
      if(_loc36_ != 0)
      {
         _loc24_ = li32(_loc9_ - 28);
         si32(_loc24_,_loc36_);
      }
      if(_loc32_ != 0)
      {
         _loc24_ = li32(_loc9_ - 16);
         _loc24_ = _loc24_ | 8;
         si32(_loc24_,_loc9_ - 16);
      }
      _loc32_ = li32(_loc9_ - 32);
      if(_loc32_ != 0)
      {
         _loc5_ = int(_loc5_ - 16);
         si32(_loc32_,_loc5_ + 8);
         si32(_loc42_,_loc5_ + 4);
         si32(_loc40_,_loc5_);
         ESP = _loc5_;
         F___copybits_D2A();
         _loc5_ = int(_loc5_ + 16);
         _loc5_ = int(_loc5_ - 16);
         si32(li32(_loc9_ - 32),_loc5_);
         ESP = _loc5_;
         F___Bfree_D2A();
         _loc5_ = int(_loc5_ + 16);
      }
      _loc24_ = li32(_loc9_ - 16);
      eax = _loc24_;
      _loc5_ = _loc9_;
      ESP = _loc5_;
   }
}
