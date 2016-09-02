package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si8;
   import sample.xx_printf_float_2E_o_3A_C4FC3488_2D_1919_2D_4ECA_2D_B95B_2D_0F277BFFF845.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   
   public function F___printf_render_float() : void
   {
      var _loc2_:* = 0;
      var _loc21_:* = 0;
      var _loc9_:* = 0;
      var _loc22_:* = 0;
      var _loc23_:* = 0;
      var _loc19_:* = 0;
      var _loc5_:* = NaN;
      var _loc11_:* = 0;
      var _loc8_:int = 0;
      var _loc24_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:int = 0;
      var _loc13_:* = 0;
      var _loc20_:* = 0;
      var _loc18_:* = 0;
      var _loc6_:* = 0;
      var _loc25_:* = 0;
      var _loc14_:* = 0;
      var _loc16_:* = 0;
      var _loc17_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:int = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc1_ = int(_loc1_ - 144);
      _loc9_ = li32(_loc2_ + 4);
      _loc25_ = li32(_loc9_);
      si8(0,_loc2_ - 41);
      _loc24_ = li32(_loc9_ + 40);
      si8(_loc24_,_loc2_ - 21);
      ESP = _loc1_;
      F_localeconv();
      _loc24_ = int(eax);
      _loc24_ = li32(_loc24_ + 4);
      _loc24_ = li8(_loc24_);
      si8(_loc24_,_loc2_ - 43);
      _loc24_ = li32(_loc9_ + 28);
      _loc23_ = 0;
      if(_loc24_ != 0)
      {
         ESP = _loc1_;
         F_localeconv();
         _loc24_ = int(eax);
         _loc23_ = li32(_loc24_ + 8);
      }
      _loc22_ = li32(_loc2_ + 8);
      _loc21_ = li32(_loc2_);
      ESP = _loc1_;
      F_localeconv();
      _loc24_ = int(eax);
      _loc20_ = li32(_loc9_ + 8);
      _loc19_ = li32(_loc24_);
      if(_loc20_ <= 96)
      {
         if(_loc20_ <= 69)
         {
            if(_loc20_ != 65)
            {
               if(_loc20_ != 69)
               {
                  addr458:
                  _loc1_ = int(_loc1_ - 16);
                  si32(L__2E_str2,_loc1_ + 12);
                  si32(242,_loc1_ + 8);
                  si32(L__2E_str,_loc1_ + 4);
                  si32(___func___2E_2786,_loc1_);
                  ESP = _loc1_;
                  F___assert();
                  _loc1_ = int(_loc1_ + 16);
               }
               else
               {
                  addr428:
                  _loc6_ = 7;
                  if(_loc25_ >= 0)
                  {
                     _loc6_ = int(_loc25_ + 1);
                  }
                  _loc18_ = _loc20_;
                  _loc25_ = _loc6_;
               }
            }
            else
            {
               addr205:
               _loc18_ = 120;
               if(_loc20_ != 97)
               {
                  _loc18_ = 88;
               }
               si8(_loc18_,_loc2_ - 41);
               _loc6_ = int(___lowercase_hex);
               if(_loc20_ != 97)
               {
                  _loc6_ = int(___uppercase_hex);
               }
               _loc18_ = 112;
               if(_loc20_ != 97)
               {
                  _loc18_ = 80;
               }
               _loc24_ = int(_loc25_ >>> 31);
               _loc24_ = _loc24_ ^ 1;
               _loc14_ = int(_loc24_ + _loc25_);
               _loc24_ = li32(_loc9_ + 12);
               var _loc15_:* = li32(_loc22_);
               _loc5_ = lf64(_loc15_);
               if(_loc24_ != 0)
               {
                  sf64(_loc5_,_loc2_ - 40);
                  _loc1_ = int(_loc1_ - 32);
                  _loc24_ = int(_loc2_ - 20);
                  si32(_loc24_,_loc1_ + 24);
                  _loc24_ = int(_loc2_ - 16);
                  si32(_loc24_,_loc1_ + 20);
                  _loc24_ = int(_loc2_ - 12);
                  si32(_loc24_,_loc1_ + 16);
                  si32(_loc14_,_loc1_ + 12);
                  si32(_loc6_,_loc1_ + 8);
                  sf64(_loc5_,_loc1_);
                  ESP = _loc1_;
                  F___hldtoa();
                  _loc1_ = int(_loc1_ + 32);
                  _loc25_ = int(eax);
               }
               else
               {
                  _loc1_ = int(_loc1_ - 32);
                  _loc24_ = int(_loc2_ - 20);
                  si32(_loc24_,_loc1_ + 24);
                  _loc24_ = int(_loc2_ - 16);
                  si32(_loc24_,_loc1_ + 20);
                  _loc24_ = int(_loc2_ - 12);
                  si32(_loc24_,_loc1_ + 16);
                  si32(_loc14_,_loc1_ + 12);
                  si32(_loc6_,_loc1_ + 8);
                  sf64(_loc5_,_loc1_);
                  ESP = _loc1_;
                  F___hdtoa();
                  _loc1_ = int(_loc1_ + 32);
                  _loc25_ = int(eax);
               }
               if(_loc14_ <= -1)
               {
                  _loc24_ = li32(_loc2_ - 20);
                  _loc14_ = int(_loc24_ - _loc25_);
               }
               _loc24_ = li32(_loc2_ - 12);
               if(_loc24_ == 2147483647)
               {
                  si8(0,_loc2_ - 41);
               }
            }
            addr687:
            _loc24_ = li32(_loc2_ - 16);
            if(_loc24_ != 0)
            {
               si8(45,_loc2_ - 21);
            }
            _loc16_ = li32(_loc2_ - 12);
            if(_loc16_ == 2147483647)
            {
               _loc22_ = li32(_loc9_ + 8);
               _loc24_ = li8(_loc25_);
               if(_loc24_ == 78)
               {
                  si8(0,_loc2_ - 21);
                  _loc6_ = int(L__2E_str3);
                  if(_loc22_ <= 96)
                  {
                     _loc6_ = int(L__2E_str4);
                  }
                  _loc17_ = 1;
                  _loc10_ = 3;
                  _loc11_ = _loc23_;
                  _loc20_ = _loc14_;
               }
               else
               {
                  _loc6_ = int(L__2E_str5);
                  if(_loc22_ <= 96)
                  {
                     _loc6_ = int(L__2E_str6);
                  }
                  _loc17_ = 1;
                  _loc10_ = 3;
                  _loc11_ = _loc23_;
                  _loc20_ = _loc14_;
               }
            }
            else
            {
               _loc24_ = li32(_loc2_ - 20);
               _loc22_ = int(_loc24_ - _loc25_);
               _loc24_ = li32(_loc9_ + 8);
               _loc24_ = _loc24_ | 32;
               if(_loc24_ == 103)
               {
                  _loc20_ = li32(_loc9_ + 28);
                  if(_loc16_ >= -3)
                  {
                     if(_loc16_ <= _loc14_)
                     {
                        _loc18_ = 0;
                        _loc6_ = _loc22_;
                        if(_loc20_ != _loc18_)
                        {
                           _loc6_ = _loc14_;
                        }
                        _loc20_ = int(_loc6_ - _loc16_);
                        if(_loc20_ >= _loc18_)
                        {
                           _loc18_ = _loc20_;
                        }
                        _loc14_ = _loc18_;
                     }
                     addr1098:
                     _loc10_ = 1;
                     if(_loc16_ >= _loc10_)
                     {
                        _loc10_ = _loc16_;
                     }
                     if(_loc14_ == 0)
                     {
                        _loc20_ = 0;
                        if(li32(_loc9_ + 28) != 0)
                        {
                        }
                        addr1132:
                        _loc11_ = 0;
                        _loc6_ = _loc25_;
                        _loc18_ = _loc11_;
                        _loc17_ = _loc11_;
                        if(_loc23_ != 0)
                        {
                           _loc18_ = 0;
                           _loc11_ = _loc23_;
                           _loc6_ = _loc25_;
                           _loc17_ = _loc18_;
                           if(_loc16_ >= 1)
                           {
                              _loc6_ = li8(_loc23_);
                              _loc12_ = 0;
                              _loc14_ = _loc12_;
                              loop0:
                              while(true)
                              {
                                 _loc11_ = int(_loc23_ + _loc14_);
                                 _loc18_ = int(_loc14_ + 1);
                                 _loc24_ = _loc6_ << 24;
                                 _loc13_ = _loc24_ >> 24;
                                 while(true)
                                 {
                                    _loc24_ = _loc6_ & 255;
                                    if(_loc24_ != 127)
                                    {
                                       if(_loc13_ >= _loc16_)
                                       {
                                          break;
                                       }
                                       _loc17_ = li8(_loc11_ + 1);
                                       if(_loc17_ != 0)
                                       {
                                          _loc16_ = int(_loc16_ - _loc13_);
                                          _loc6_ = _loc17_;
                                          _loc14_ = _loc18_;
                                          continue loop0;
                                       }
                                       _loc16_ = int(_loc16_ - _loc13_);
                                       _loc12_ = _loc12_ + 1;
                                       continue;
                                    }
                                    break;
                                 }
                                 _loc24_ = int(_loc10_ + _loc14_);
                                 _loc10_ = int(_loc24_ + _loc12_);
                                 _loc18_ = 0;
                                 _loc6_ = _loc25_;
                                 _loc17_ = _loc18_;
                              }
                           }
                        }
                     }
                     _loc24_ = int(_loc14_ + _loc10_);
                     _loc10_ = int(_loc24_ + 1);
                     _loc20_ = _loc14_;
                     §§goto(addr1132);
                  }
                  if(_loc20_ == 0)
                  {
                     _loc14_ = _loc22_;
                  }
               }
               _loc24_ = _loc18_ & 255;
               if(_loc24_ != 0)
               {
                  si8(_loc18_,_loc2_ - 29);
                  _loc6_ = int(_loc16_ + -1);
                  _loc20_ = 45;
                  _loc17_ = 0;
                  if(_loc6_ >= _loc17_)
                  {
                     _loc20_ = 43;
                  }
                  si8(_loc20_,_loc2_ - 28);
                  _loc20_ = int(1 - _loc16_);
                  if(_loc6_ >= _loc17_)
                  {
                     _loc20_ = _loc6_;
                  }
                  _loc12_ = _loc2_ - 29;
                  _loc16_ = int(_loc12_ + 2);
                  if(_loc20_ >= 10)
                  {
                     _loc10_ = int(_loc2_ - 6);
                     _loc11_ = int(_loc10_ + 6);
                     _loc6_ = 0;
                     do
                     {
                        _loc24_ = _loc20_;
                        _loc13_ = int(_loc10_ - _loc6_);
                        _loc15_ = int(_loc24_ % 10);
                        _loc15_ = int(_loc15_ + 48);
                        si8(_loc15_,_loc13_ + 5);
                        _loc6_ = int(_loc6_ + 1);
                        _loc20_ = int(_loc24_ / 10);
                     }
                     while(_loc24_ > 99);
                     
                     _loc24_ = int(_loc20_ + 48);
                     si8(_loc24_,_loc13_ + 4);
                     _loc24_ = int(_loc10_ - _loc6_);
                     _loc20_ = int(_loc24_ + 5);
                     if(uint(_loc11_) > uint(_loc20_))
                     {
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc16_,_loc1_);
                        _loc24_ = int(_loc6_ + 1);
                        si32(_loc24_,_loc1_ + 8);
                        si32(_loc20_,_loc1_ + 4);
                        _loc24_ = int(_loc12_ + _loc6_);
                        _loc16_ = int(_loc24_ + 3);
                        ESP = _loc1_;
                        Fmemcpy();
                        _loc1_ = int(_loc1_ + 16);
                     }
                  }
                  else
                  {
                     _loc24_ = _loc18_ << 24;
                     _loc24_ = _loc24_ >> 24;
                     _loc24_ = _loc24_ | 32;
                     if(_loc24_ == 101)
                     {
                        si8(48,_loc2_ - 27);
                        _loc16_ = int(_loc12_ + 3);
                     }
                     _loc24_ = int(_loc20_ + 48);
                     si8(_loc24_,_loc16_);
                     _loc16_ = int(_loc16_ + 1);
                  }
                  _loc8_ = _loc16_ - _loc12_;
                  _loc10_ = int(_loc8_ + _loc14_);
                  if(_loc14_ <= 1)
                  {
                     _loc11_ = _loc23_;
                     _loc6_ = _loc25_;
                     _loc20_ = _loc14_;
                     if(li32(_loc9_ + 28) != 0)
                     {
                     }
                  }
                  _loc10_ = int(_loc10_ + 1);
                  _loc17_ = 0;
                  _loc11_ = _loc23_;
                  _loc6_ = _loc25_;
                  _loc20_ = _loc14_;
               }
               else
               {
                  §§goto(addr1098);
               }
            }
            _loc23_ = 1;
            _loc7_ = 0;
            _loc13_ = li8(_loc2_ - 21);
            if(_loc13_ == _loc7_)
            {
               _loc23_ = _loc7_;
            }
            _loc4_ = -1;
            if(_loc10_ >= _loc4_)
            {
               _loc4_ = _loc10_;
            }
            _loc24_ = _loc23_ & 1;
            _loc23_ = int(_loc24_ + _loc4_);
            _loc24_ = li8(_loc2_ - 41);
            if(_loc24_ != _loc7_)
            {
               _loc23_ = int(_loc23_ + 2);
            }
            _loc24_ = li32(_loc9_ + 56);
            if(_loc24_ != 48)
            {
               _loc7_ = 0;
               if(li32(_loc9_ + 36) == 0)
               {
                  _loc1_ = int(_loc1_ - 16);
                  si32(0,_loc1_ + 8);
                  _loc24_ = int(li32(_loc9_ + 4) - _loc23_);
                  si32(_loc24_,_loc1_ + 4);
                  si32(_loc21_,_loc1_);
                  ESP = _loc1_;
                  F___printf_pad();
                  _loc1_ = int(_loc1_ + 16);
                  _loc7_ = eax;
                  _loc13_ = li8(_loc2_ - 21);
               }
            }
            _loc24_ = _loc13_ & 255;
            if(_loc24_ != 0)
            {
               _loc1_ = int(_loc1_ - 16);
               si32(1,_loc1_ + 8);
               _loc24_ = int(_loc2_ - 21);
               si32(_loc24_,_loc1_ + 4);
               si32(_loc21_,_loc1_);
               ESP = _loc1_;
               F___printf_puts();
               _loc1_ = int(_loc1_ + 16);
               _loc24_ = int(eax);
               _loc7_ = _loc24_ + _loc7_;
            }
            _loc24_ = li8(_loc2_ - 41);
            if(_loc24_ != 0)
            {
               si8(48,_loc2_ - 42);
               _loc1_ = int(_loc1_ - 16);
               si32(2,_loc1_ + 8);
               _loc24_ = int(_loc2_ - 42);
               si32(_loc24_,_loc1_ + 4);
               si32(_loc21_,_loc1_);
               ESP = _loc1_;
               F___printf_puts();
               _loc1_ = int(_loc1_ + 16);
               _loc24_ = int(eax);
               _loc7_ = _loc24_ + _loc7_;
            }
            _loc24_ = li32(_loc9_ + 56);
            if(_loc24_ == 48)
            {
               _loc24_ = li32(_loc9_ + 36);
               if(_loc24_ == 0)
               {
                  _loc1_ = int(_loc1_ - 16);
                  si32(1,_loc1_ + 8);
                  _loc24_ = int(li32(_loc9_ + 4) - _loc23_);
                  si32(_loc24_,_loc1_ + 4);
                  si32(_loc21_,_loc1_);
                  ESP = _loc1_;
                  F___printf_pad();
                  _loc1_ = int(_loc1_ + 16);
                  _loc24_ = int(eax);
                  _loc7_ = _loc24_ + _loc7_;
               }
            }
            _loc1_ = int(_loc1_ - 16);
            _loc13_ = 1;
            si32(_loc13_,_loc1_ + 8);
            si32(_loc21_,_loc1_);
            _loc24_ = _loc10_ ^ -1;
            si32(_loc24_,_loc1_ + 4);
            ESP = _loc1_;
            F___printf_pad();
            _loc1_ = int(_loc1_ + 16);
            _loc24_ = int(eax);
            _loc7_ = _loc24_ + _loc7_;
            if(_loc17_ != 0)
            {
               _loc1_ = int(_loc1_ - 16);
               si32(_loc10_,_loc1_ + 8);
               si32(_loc6_,_loc1_ + 4);
               si32(_loc21_,_loc1_);
               ESP = _loc1_;
               F___printf_puts();
               _loc1_ = int(_loc1_ + 16);
               _loc24_ = int(eax);
               _loc19_ = int(_loc24_ + _loc7_);
            }
            else
            {
               _loc24_ = _loc18_ & 255;
               if(_loc24_ == 0)
               {
                  _loc24_ = li32(_loc2_ - 12);
                  if(_loc24_ <= 0)
                  {
                     _loc1_ = int(_loc1_ - 16);
                     si32(1,_loc1_ + 8);
                     si32(L__2E_str7,_loc1_ + 4);
                     si32(_loc21_,_loc1_);
                     ESP = _loc1_;
                     F___printf_puts();
                     _loc1_ = int(_loc1_ + 16);
                     _loc24_ = int(eax);
                     _loc18_ = int(_loc24_ + _loc7_);
                     if(_loc20_ == 0)
                     {
                        _loc24_ = li32(_loc9_ + 28);
                        if(_loc24_ != 0)
                        {
                        }
                        addr1717:
                        _loc24_ = li32(_loc2_ - 12);
                        _loc1_ = int(_loc1_ - 16);
                        si32(1,_loc1_ + 8);
                        _loc24_ = int(0 - _loc24_);
                        si32(_loc24_,_loc1_ + 4);
                        si32(_loc21_,_loc1_);
                        ESP = _loc1_;
                        F___printf_pad();
                        _loc1_ = int(_loc1_ + 16);
                        _loc24_ = int(eax);
                        _loc18_ = int(_loc24_ + _loc18_);
                        _loc24_ = li32(_loc2_ - 12);
                        _loc22_ = int(_loc24_ + _loc20_);
                     }
                     _loc1_ = int(_loc1_ - 16);
                     si32(1,_loc1_ + 8);
                     si32(_loc19_,_loc1_ + 4);
                     si32(_loc21_,_loc1_);
                     ESP = _loc1_;
                     F___printf_puts();
                     _loc1_ = int(_loc1_ + 16);
                     _loc24_ = int(eax);
                     _loc18_ = int(_loc24_ + _loc18_);
                     §§goto(addr1717);
                  }
                  else
                  {
                     _loc24_ = li32(_loc2_ - 20);
                     _loc22_ = int(_loc24_ - _loc6_);
                     _loc18_ = _loc16_;
                     if(_loc22_ <= _loc16_)
                     {
                        _loc18_ = _loc22_;
                     }
                     if(_loc18_ >= 1)
                     {
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc18_,_loc1_ + 8);
                        si32(_loc6_,_loc1_ + 4);
                        si32(_loc21_,_loc1_);
                        ESP = _loc1_;
                        F___printf_puts();
                        _loc1_ = int(_loc1_ + 16);
                        _loc24_ = int(eax);
                        _loc7_ = _loc24_ + _loc7_;
                     }
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc13_,_loc1_ + 8);
                     si32(_loc21_,_loc1_);
                     _loc22_ = 0;
                     if(_loc18_ >= _loc22_)
                     {
                        _loc22_ = _loc18_;
                     }
                     _loc24_ = int(_loc16_ - _loc22_);
                     si32(_loc24_,_loc1_ + 4);
                     _loc6_ = int(_loc6_ + _loc16_);
                     ESP = _loc1_;
                     F___printf_pad();
                     _loc1_ = int(_loc1_ + 16);
                     _loc24_ = int(eax);
                     _loc18_ = int(_loc24_ + _loc7_);
                     if(_loc11_ != 0)
                     {
                        if(_loc12_ <= 0)
                        {
                           _loc13_ = 0;
                        }
                        if(_loc14_ <= 0)
                        {
                           if(_loc12_ >= 1)
                           {
                           }
                           addr2136:
                           _loc22_ = li32(_loc2_ - 20);
                           if(uint(_loc6_) > uint(_loc22_))
                           {
                              _loc6_ = _loc22_;
                           }
                        }
                        while(true)
                        {
                           _loc1_ = int(_loc1_ - 16);
                           _loc17_ = 1;
                           si32(_loc17_,_loc1_ + 8);
                           _loc24_ = int(_loc2_ - 43);
                           si32(_loc24_,_loc1_ + 4);
                           si32(_loc21_,_loc1_);
                           if(_loc13_ == 0)
                           {
                              _loc11_ = int(_loc11_ + -1);
                           }
                           ESP = _loc1_;
                           F___printf_puts();
                           _loc1_ = int(_loc1_ + 16);
                           _loc10_ = int(eax);
                           _loc16_ = si8(li8(_loc11_));
                           _loc24_ = li32(_loc2_ - 20);
                           _loc8_ = _loc24_ - _loc6_;
                           _loc22_ = _loc16_;
                           if(_loc16_ >= _loc8_)
                           {
                              _loc22_ = _loc8_;
                           }
                           _loc10_ = int(_loc10_ + _loc18_);
                           if(_loc22_ >= 1)
                           {
                              _loc1_ = int(_loc1_ - 16);
                              si32(_loc22_,_loc1_ + 8);
                              si32(_loc6_,_loc1_ + 4);
                              si32(_loc21_,_loc1_);
                              ESP = _loc1_;
                              F___printf_puts();
                              _loc1_ = int(_loc1_ + 16);
                              _loc24_ = int(eax);
                              _loc10_ = int(_loc24_ + _loc10_);
                              _loc16_ = li8(_loc11_);
                           }
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc21_,_loc1_);
                           _loc18_ = 0;
                           if(_loc22_ >= 0)
                           {
                              _loc18_ = _loc22_;
                           }
                           _loc24_ = _loc13_ & 1;
                           _loc12_ = _loc12_ - _loc24_;
                           _loc24_ = _loc16_ << 24;
                           _loc24_ = _loc24_ >> 24;
                           _loc24_ = int(_loc24_ - _loc18_);
                           si32(_loc24_,_loc1_ + 4);
                           si32(_loc17_,_loc1_ + 8);
                           if(_loc12_ <= 0)
                           {
                              _loc17_ = 0;
                           }
                           _loc24_ = _loc13_ ^ -1;
                           _loc24_ = _loc24_ & 1;
                           _loc14_ = int(_loc14_ - _loc24_);
                           ESP = _loc1_;
                           F___printf_pad();
                           _loc1_ = int(_loc1_ + 16);
                           _loc24_ = int(eax);
                           _loc18_ = int(_loc24_ + _loc10_);
                           _loc24_ = si8(li8(_loc11_));
                           _loc6_ = int(_loc6_ + _loc24_);
                           _loc13_ = _loc17_;
                           if(_loc14_ <= 0)
                           {
                              _loc13_ = _loc17_;
                              if(_loc12_ <= 0)
                              {
                                 break;
                              }
                           }
                        }
                        §§goto(addr2136);
                     }
                     if(_loc20_ == 0)
                     {
                        _loc22_ = 0;
                        if(li32(_loc9_ + 28) != 0)
                        {
                        }
                     }
                     _loc1_ = int(_loc1_ - 16);
                     si32(1,_loc1_ + 8);
                     si32(_loc19_,_loc1_ + 4);
                     si32(_loc21_,_loc1_);
                     ESP = _loc1_;
                     F___printf_puts();
                     _loc1_ = int(_loc1_ + 16);
                     _loc24_ = int(eax);
                     _loc18_ = int(_loc24_ + _loc18_);
                     _loc22_ = _loc20_;
                  }
                  _loc24_ = li32(_loc2_ - 20);
                  _loc20_ = int(_loc24_ - _loc6_);
                  _loc19_ = _loc22_;
                  if(_loc20_ <= _loc22_)
                  {
                     _loc19_ = _loc20_;
                  }
                  if(_loc19_ >= 1)
                  {
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc19_,_loc1_ + 8);
                     si32(_loc6_,_loc1_ + 4);
                     si32(_loc21_,_loc1_);
                     ESP = _loc1_;
                     F___printf_puts();
                     _loc1_ = int(_loc1_ + 16);
                     _loc24_ = int(eax);
                     _loc18_ = int(_loc24_ + _loc18_);
                  }
                  _loc1_ = int(_loc1_ - 16);
                  si32(1,_loc1_ + 8);
                  si32(_loc21_,_loc1_);
                  _loc20_ = 0;
                  if(_loc19_ >= _loc20_)
                  {
                     _loc20_ = _loc19_;
                  }
                  _loc24_ = int(_loc22_ - _loc20_);
                  si32(_loc24_,_loc1_ + 4);
                  ESP = _loc1_;
                  F___printf_pad();
                  _loc1_ = int(_loc1_ + 16);
                  _loc24_ = int(eax);
                  _loc19_ = int(_loc24_ + _loc18_);
               }
               else
               {
                  if(_loc20_ <= 1)
                  {
                     _loc24_ = li32(_loc9_ + 28);
                     if(_loc24_ == 0)
                     {
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc13_,_loc1_ + 8);
                        si32(_loc6_,_loc1_ + 4);
                        si32(_loc21_,_loc1_);
                        ESP = _loc1_;
                        F___printf_puts();
                        _loc1_ = int(_loc1_ + 16);
                        _loc24_ = int(eax);
                        _loc19_ = int(_loc24_ + _loc7_);
                     }
                     addr2515:
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc8_,_loc1_ + 8);
                     _loc24_ = int(_loc2_ - 29);
                     si32(_loc24_,_loc1_ + 4);
                     si32(_loc21_,_loc1_);
                     ESP = _loc1_;
                     F___printf_puts();
                     _loc1_ = int(_loc1_ + 16);
                     _loc24_ = int(eax);
                     _loc19_ = int(_loc24_ + _loc19_);
                  }
                  _loc24_ = li8(_loc6_);
                  si8(_loc24_,_loc2_ - 143);
                  _loc24_ = li8(_loc19_);
                  si8(_loc24_,_loc2_ - 142);
                  _loc1_ = int(_loc1_ - 16);
                  si32(2,_loc1_ + 8);
                  _loc24_ = int(_loc2_ - 143);
                  si32(_loc24_,_loc1_ + 4);
                  si32(_loc21_,_loc1_);
                  ESP = _loc1_;
                  F___printf_puts();
                  _loc1_ = int(_loc1_ + 16);
                  _loc24_ = int(eax);
                  _loc1_ = int(_loc1_ - 16);
                  _loc15_ = int(_loc22_ + -1);
                  si32(_loc15_,_loc1_ + 8);
                  _loc15_ = int(_loc6_ + 1);
                  si32(_loc15_,_loc1_ + 4);
                  si32(_loc21_,_loc1_);
                  ESP = _loc1_;
                  F___printf_puts();
                  _loc1_ = int(_loc1_ + 16);
                  _loc15_ = int(eax);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc13_,_loc1_ + 8);
                  var _loc3_:int = _loc20_ - _loc22_;
                  si32(_loc3_,_loc1_ + 4);
                  si32(_loc21_,_loc1_);
                  _loc24_ = int(_loc24_ + _loc7_);
                  _loc15_ = int(_loc24_ + _loc15_);
                  ESP = _loc1_;
                  F___printf_pad();
                  _loc1_ = int(_loc1_ + 16);
                  _loc24_ = int(eax);
                  _loc19_ = int(_loc15_ + _loc24_);
                  §§goto(addr2515);
               }
            }
            _loc24_ = li32(_loc9_ + 36);
            if(_loc24_ != 0)
            {
               _loc1_ = int(_loc1_ - 16);
               si32(0,_loc1_ + 8);
               _loc24_ = int(li32(_loc9_ + 4) - _loc23_);
               si32(_loc24_,_loc1_ + 4);
               si32(_loc21_,_loc1_);
               ESP = _loc1_;
               F___printf_pad();
               _loc1_ = int(_loc1_ + 16);
               _loc24_ = int(eax);
               _loc19_ = int(_loc24_ + _loc19_);
            }
            _loc1_ = int(_loc1_ - 16);
            si32(_loc21_,_loc1_);
            ESP = _loc1_;
            F___printf_flush();
            _loc1_ = int(_loc1_ + 16);
            if(_loc25_ != 0)
            {
               _loc1_ = int(_loc1_ - 16);
               si32(_loc25_,_loc1_);
               ESP = _loc1_;
               F___freedtoa();
               _loc1_ = int(_loc1_ + 16);
            }
            eax = _loc19_;
            _loc1_ = _loc2_;
            ESP = _loc1_;
            return;
         }
         _loc18_ = 0;
         if(_loc20_ != 70)
         {
            if(_loc20_ != 71)
            {
               §§goto(addr458);
            }
            else
            {
               addr445:
               _loc18_ = int(_loc20_ + -2);
               if(_loc25_ == 0)
               {
                  _loc25_ = 1;
               }
            }
         }
      }
      else if(_loc20_ <= 101)
      {
         if(_loc20_ != 97)
         {
            if(_loc20_ != 101)
            {
               §§goto(addr458);
            }
            else
            {
               §§goto(addr428);
            }
         }
         else
         {
            §§goto(addr205);
         }
         §§goto(addr687);
      }
      else
      {
         _loc18_ = 0;
         if(_loc20_ != 102)
         {
            if(_loc20_ != 103)
            {
               §§goto(addr458);
            }
            else
            {
               §§goto(addr445);
            }
         }
      }
      _loc14_ = 6;
      if(_loc25_ >= 0)
      {
         _loc14_ = _loc25_;
      }
      _loc24_ = li32(_loc9_ + 12);
      _loc15_ = li32(_loc22_);
      _loc5_ = lf64(_loc15_);
      if(_loc24_ != 0)
      {
         sf64(_loc5_,_loc2_ - 40);
         _loc1_ = int(_loc1_ - 32);
         _loc24_ = int(_loc2_ - 20);
         si32(_loc24_,_loc1_ + 20);
         _loc24_ = int(_loc2_ - 16);
         si32(_loc24_,_loc1_ + 16);
         _loc24_ = int(_loc2_ - 12);
         si32(_loc24_,_loc1_ + 12);
         si32(_loc14_,_loc1_ + 8);
         _loc25_ = 3;
         if((_loc18_ & 255) != 0)
         {
            _loc25_ = 2;
         }
         si32(_loc25_,_loc1_ + 4);
         _loc24_ = int(_loc2_ - 40);
         si32(_loc24_,_loc1_);
         ESP = _loc1_;
         F___ldtoa();
         _loc1_ = int(_loc1_ + 32);
         _loc25_ = int(eax);
      }
      else
      {
         _loc1_ = int(_loc1_ - 32);
         _loc24_ = int(_loc2_ - 20);
         si32(_loc24_,_loc1_ + 24);
         _loc24_ = int(_loc2_ - 16);
         si32(_loc24_,_loc1_ + 20);
         _loc24_ = int(_loc2_ - 12);
         si32(_loc24_,_loc1_ + 16);
         si32(_loc14_,_loc1_ + 12);
         sf64(_loc5_,_loc1_);
         _loc25_ = 3;
         if((_loc18_ & 255) != 0)
         {
            _loc25_ = 2;
         }
         si32(_loc25_,_loc1_ + 8);
         ESP = _loc1_;
         F___dtoa();
         _loc1_ = int(_loc1_ + 32);
         _loc25_ = int(eax);
         _loc24_ = li32(_loc2_ - 12);
         if(_loc24_ == 9999)
         {
            si32(2147483647,_loc2_ - 12);
         }
      }
      §§goto(addr687);
   }
}
