package sample.xx
{
   import sample.xx_dtoa_strtod_2E_o_3A_AEFFF15D_2D_D802_2D_4C13_2D_A5C3_2D_49AD87A738B7.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.lf64;
   
   public function F_strtod() : void
   {
      var _loc10_:* = 0;
      var _loc36_:* = 0;
      var _loc41_:* = 0;
      var _loc38_:int = 0;
      var _loc37_:* = 0;
      var _loc29_:* = 0;
      var _loc22_:* = 0;
      var _loc14_:* = 0;
      var _loc24_:* = 0;
      var _loc17_:Number = NaN;
      var _loc39_:* = 0;
      var _loc20_:* = NaN;
      var _loc2_:* = NaN;
      var _loc3_:Number = NaN;
      var _loc4_:Number = NaN;
      var _loc7_:* = NaN;
      var _loc6_:Number = NaN;
      var _loc12_:* = 0;
      var _loc40_:* = 0;
      var _loc32_:* = 0;
      var _loc31_:* = 0;
      var _loc15_:int = 0;
      var _loc13_:int = 0;
      var _loc9_:* = 0;
      var _loc26_:* = 0;
      var _loc27_:* = 0;
      var _loc34_:* = 0;
      var _loc28_:* = 0;
      var _loc11_:* = 0;
      var _loc23_:* = 0;
      var _loc35_:* = 0;
      var _loc1_:* = NaN;
      var _loc21_:* = NaN;
      var _loc30_:* = 0;
      var _loc5_:* = NaN;
      var _loc8_:* = int(ESP);
      _loc10_ = _loc8_;
      _loc8_ = int(_loc8_ - 256);
      ESP = _loc8_;
      F_localeconv();
      var _loc25_:* = int(eax);
      _loc41_ = li32(_loc25_);
      _loc8_ = int(_loc8_ - 16);
      si32(_loc41_,_loc8_);
      ESP = _loc8_;
      F_strlen();
      _loc40_ = int(_loc10_ - 24);
      _loc39_ = _loc40_ | 4;
      _loc8_ = int(_loc8_ + 16);
      _loc38_ = eax;
      _loc37_ = 0;
      si32(_loc37_,_loc39_);
      si32(_loc37_,_loc10_ - 24);
      _loc36_ = li32(_loc10_ + 4);
      _loc35_ = li32(_loc10_);
      _loc34_ = _loc35_;
      while(true)
      {
         si32(_loc34_,_loc10_ - 12);
         _loc22_ = si8(li8(_loc34_));
         if(_loc22_ <= 31)
         {
            if(_loc22_ != 0)
            {
               _loc30_ = _loc37_;
               if(uint(int(_loc22_ + -9)) < 5)
               {
                  continue;
               }
            }
            break;
         }
         if(_loc22_ != 32)
         {
            _loc30_ = _loc37_;
            if(_loc22_ != 43)
            {
               _loc30_ = _loc37_;
               if(_loc22_ == 45)
               {
                  _loc30_ = 1;
               }
            }
            _loc25_ = int(_loc34_ + 1);
            si32(_loc25_,_loc10_ - 12);
            _loc22_ = li8(_loc34_ + 1);
            _loc34_ = _loc25_;
            if(_loc22_ != 0)
            {
            }
            break;
         }
         continue;
         _loc25_ = _loc22_ & 255;
         _loc31_ = _loc37_;
         if(_loc25_ == 48)
         {
            _loc25_ = si8(li8(_loc34_ + 1));
            _loc32_ = _loc34_;
            if((_loc25_ | 32) == 120)
            {
               si32(53,_loc10_ - 64);
               _loc25_ = int(_loc10_ - 64);
               si32(-1074,_loc25_ | 4);
               si32(971,_loc10_ - 56);
               si32(0,_loc10_ - 48);
               si32(1,_loc10_ - 52);
               _loc8_ = int(_loc8_ - 32);
               si32(_loc30_,_loc8_ + 16);
               var _loc33_:* = int(_loc10_ - 28);
               si32(_loc33_,_loc8_ + 12);
               _loc33_ = int(_loc10_ - 32);
               si32(_loc33_,_loc8_ + 8);
               si32(_loc25_,_loc8_ + 4);
               _loc25_ = int(_loc10_ - 12);
               si32(_loc25_,_loc8_);
               ESP = _loc8_;
               F___gethex_D2A();
               _loc8_ = int(_loc8_ + 32);
               _loc39_ = int(eax);
               _loc37_ = _loc39_ & 7;
               if(_loc37_ != 0)
               {
                  if(_loc37_ == 6)
                  {
                     si32(_loc35_,_loc10_ - 12);
                     _loc30_ = 0;
                  }
                  else
                  {
                     _loc37_ = li32(_loc10_ - 28);
                     if(_loc37_ != 0)
                     {
                        _loc8_ = int(_loc8_ - 16);
                        si32(_loc37_,_loc8_ + 8);
                        si32(53,_loc8_ + 4);
                        _loc25_ = int(_loc10_ - 40);
                        si32(_loc25_,_loc8_);
                        ESP = _loc8_;
                        F___copybits_D2A();
                        _loc8_ = int(_loc8_ + 16);
                        _loc8_ = int(_loc8_ - 16);
                        si32(li32(_loc10_ - 28),_loc8_);
                        ESP = _loc8_;
                        F___Bfree_D2A();
                        _loc8_ = int(_loc8_ + 16);
                     }
                     _loc25_ = li32(_loc10_ - 32);
                     _loc8_ = int(_loc8_ - 16);
                     si32(_loc39_,_loc8_ + 12);
                     si32(_loc25_,_loc8_ + 8);
                     _loc25_ = int(_loc10_ - 40);
                     si32(_loc25_,_loc8_ + 4);
                     si32(_loc40_,_loc8_);
                     ESP = _loc8_;
                     F___ULtod_D2A();
                     _loc8_ = int(_loc8_ + 16);
                  }
               }
            }
            else
            {
               while(true)
               {
                  _loc34_ = int(_loc32_ + 1);
                  si32(_loc34_,_loc10_ - 12);
                  _loc22_ = li8(_loc32_ + 1);
                  if(_loc22_ != 0)
                  {
                     _loc31_ = 1;
                     _loc32_ = _loc34_;
                     if(_loc22_ == 48)
                     {
                        continue;
                     }
                  }
                  break;
               }
            }
            addr4746:
            if(_loc36_ != 0)
            {
               _loc25_ = li32(_loc10_ - 12);
               si32(_loc25_,_loc36_);
            }
            _loc5_ = lf64(_loc10_ - 24);
            if(_loc30_ != 0)
            {
               _loc5_ = Number(-_loc5_);
            }
            st0 = _loc5_;
            _loc8_ = _loc10_;
            ESP = _loc8_;
            return;
         }
         _loc25_ = _loc22_ << 24;
         _loc26_ = _loc25_ >> 24;
         _loc25_ = int(_loc22_ + -48);
         _loc25_ = _loc25_ & 255;
         _loc27_ = _loc34_;
         _loc32_ = _loc37_;
         _loc28_ = _loc37_;
         _loc40_ = _loc37_;
         if(uint(_loc25_) <= 9)
         {
            _loc29_ = int(_loc34_ + 1);
            _loc32_ = 0;
            _loc28_ = _loc32_;
            _loc40_ = _loc32_;
            do
            {
               _loc22_ = _loc32_;
               _loc32_ = int(_loc22_ + 1);
               if(_loc22_ <= 8)
               {
                  _loc25_ = int(_loc28_ * 10);
                  _loc25_ = int(_loc25_ + _loc26_);
                  _loc28_ = int(_loc25_ + -48);
               }
               else if(_loc22_ <= 15)
               {
                  _loc25_ = int(_loc40_ * 10);
                  _loc25_ = int(_loc25_ + _loc26_);
                  _loc40_ = int(_loc25_ + -48);
               }
               _loc25_ = int(_loc29_ + _loc22_);
               si32(_loc25_,_loc10_ - 12);
               _loc25_ = int(_loc34_ + _loc22_);
               _loc26_ = si8(li8(_loc25_ + 1));
               _loc25_ = int(_loc26_ + -48);
               _loc25_ = _loc25_ & 255;
            }
            while(uint(_loc25_) < 10);
            
            _loc27_ = int(_loc34_ + _loc32_);
            _loc22_ = _loc26_;
         }
         _loc25_ = _loc22_ & 255;
         _loc33_ = li8(_loc41_);
         _loc29_ = _loc37_;
         _loc24_ = _loc37_;
         _loc22_ = _loc32_;
         _loc23_ = _loc37_;
         if(_loc33_ == _loc25_)
         {
            _loc15_ = _loc27_ + 2;
            _loc13_ = 1;
            loop3:
            while(true)
            {
               _loc25_ = int(_loc41_ + _loc13_);
               _loc14_ = li8(_loc25_);
               if(_loc14_ == 0)
               {
                  _loc22_ = int(_loc27_ + _loc13_);
                  si32(_loc22_,_loc10_ - 12);
                  _loc26_ = si8(li8(_loc15_ - 1));
                  _loc29_ = 0;
                  _loc11_ = _loc34_;
                  _loc41_ = _loc29_;
                  _loc12_ = _loc32_;
                  if(_loc32_ == 0)
                  {
                     _loc9_ = 0;
                     _loc29_ = _loc9_;
                     _loc14_ = _loc22_;
                     _loc41_ = _loc9_;
                     if((_loc26_ & 255) == 48)
                     {
                        do
                        {
                           _loc25_ = int(_loc15_ + _loc29_);
                           si32(_loc25_,_loc10_ - 12);
                           _loc25_ = li8(_loc25_);
                           _loc33_ = _loc25_ << 24;
                           _loc26_ = _loc33_ >> 24;
                           _loc29_ = int(_loc29_ + 1);
                        }
                        while(_loc25_ == 48);
                        
                        _loc25_ = int(_loc27_ + _loc13_);
                        _loc14_ = int(_loc25_ + _loc29_);
                        _loc41_ = _loc29_;
                     }
                     _loc25_ = int(_loc26_ + -49);
                     _loc23_ = 1;
                     _loc11_ = _loc14_;
                     _loc12_ = _loc32_;
                     _loc27_ = _loc14_;
                     _loc29_ = _loc41_;
                     _loc24_ = _loc9_;
                     _loc22_ = _loc32_;
                     if(uint(_loc25_) <= 8)
                     {
                        addr801:
                        while(true)
                        {
                           _loc24_ = int(_loc26_ + -48);
                           _loc29_ = int(_loc9_ + 1);
                           if(_loc24_ != 0)
                           {
                              _loc34_ = 1;
                              _loc22_ = _loc34_;
                              if(_loc12_ >= 9)
                              {
                                 _loc22_ = 0;
                              }
                              if(_loc9_ >= 1)
                              {
                                 _loc34_ = _loc29_;
                                 if(_loc29_ <= 2)
                                 {
                                    _loc34_ = 2;
                                 }
                                 _loc26_ = _loc29_;
                                 if(_loc29_ <= 2)
                                 {
                                    _loc26_ = 2;
                                 }
                                 _loc26_ = int(_loc26_ + -1);
                                 _loc27_ = int(_loc12_ + 1);
                                 do
                                 {
                                    _loc25_ = _loc22_ & 1;
                                    if(_loc25_ != 0)
                                    {
                                       _loc28_ = int(_loc28_ * 10);
                                    }
                                    else if(_loc27_ <= 16)
                                    {
                                       _loc40_ = int(_loc40_ * 10);
                                    }
                                    _loc22_ = 1;
                                    if(_loc27_ >= 9)
                                    {
                                       _loc22_ = 0;
                                    }
                                    _loc27_ = int(_loc27_ + 1);
                                    _loc26_ = int(_loc26_ + -1);
                                 }
                                 while(_loc26_ != 0);
                                 
                              }
                              _loc41_ = int(_loc41_ + _loc29_);
                              _loc12_ = int(_loc12_ + _loc34_);
                              _loc25_ = _loc22_ & 1;
                              if(_loc25_ != 0)
                              {
                                 _loc25_ = int(_loc28_ * 10);
                                 _loc28_ = int(_loc25_ + _loc24_);
                                 _loc29_ = 0;
                              }
                              else
                              {
                                 _loc29_ = 0;
                                 if(_loc12_ <= 16)
                                 {
                                    _loc25_ = int(_loc40_ * 10);
                                    _loc40_ = int(_loc25_ + _loc24_);
                                    _loc29_ = 0;
                                 }
                              }
                           }
                           _loc22_ = int(_loc14_ + 1);
                           si32(_loc22_,_loc10_ - 12);
                           _loc26_ = si8(li8(_loc14_ + 1));
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     _loc25_ = int(_loc26_ + -48);
                     _loc23_ = 1;
                     _loc14_ = _loc22_;
                     _loc9_ = _loc29_;
                     _loc27_ = _loc22_;
                     _loc34_ = _loc11_;
                     _loc24_ = _loc41_;
                     _loc22_ = _loc12_;
                     if(uint(_loc25_) >= 10)
                     {
                        break loop3;
                     }
                     §§goto(addr801);
                  }
               }
               else
               {
                  _loc29_ = 0;
                  _loc24_ = _loc29_;
                  _loc22_ = _loc32_;
                  _loc23_ = _loc29_;
                  if(li8(_loc15_ - 1) == _loc14_)
                  {
                     _loc15_ = _loc15_ + 1;
                     _loc13_ = _loc13_ + 1;
                     continue;
                  }
                  break;
               }
            }
         }
         _loc25_ = _loc26_ | 32;
         if(_loc25_ == 101)
         {
            _loc25_ = _loc29_ | _loc31_;
            _loc25_ = _loc25_ | _loc22_;
            if(_loc25_ != 0)
            {
               _loc14_ = int(_loc27_ + 1);
               si32(_loc14_,_loc10_ - 12);
               _loc26_ = si8(li8(_loc27_ + 1));
               _loc41_ = 0;
               if(_loc26_ != 43)
               {
                  if(_loc26_ == 45)
                  {
                     _loc41_ = 1;
                  }
                  addr1061:
                  _loc25_ = int(_loc26_ + -48);
                  if(uint(_loc25_) <= 9)
                  {
                     if(_loc26_ == 48)
                     {
                        do
                        {
                           _loc37_ = int(_loc14_ + 1);
                           si32(_loc37_,_loc10_ - 12);
                           _loc25_ = li8(_loc14_ + 1);
                           _loc33_ = _loc25_ << 24;
                           _loc26_ = _loc33_ >> 24;
                           _loc14_ = _loc37_;
                        }
                        while(_loc25_ == 48);
                        
                        _loc14_ = _loc37_;
                     }
                     _loc25_ = int(_loc26_ + -49);
                     _loc37_ = 0;
                     _loc35_ = _loc27_;
                     if(uint(_loc25_) <= 8)
                     {
                        _loc35_ = int(_loc14_ + 1);
                        si32(_loc35_,_loc10_ - 12);
                        _loc12_ = int(_loc26_ + -48);
                        _loc26_ = si8(li8(_loc14_ + 1));
                        _loc25_ = int(_loc26_ + -48);
                        _loc25_ = _loc25_ & 255;
                        if(uint(_loc25_) <= 9)
                        {
                           _loc37_ = int(_loc14_ + 2);
                           do
                           {
                              _loc25_ = int(_loc12_ * 10);
                              _loc25_ = int(_loc26_ + _loc25_);
                              _loc12_ = int(_loc25_ + -48);
                              _loc35_ = int(_loc35_ + 1);
                              si32(_loc37_,_loc10_ - 12);
                              _loc25_ = int(_loc37_ + 1);
                              _loc26_ = si8(li8(_loc37_));
                              _loc33_ = int(_loc26_ + -48);
                              _loc33_ = _loc33_ & 255;
                              _loc37_ = _loc25_;
                           }
                           while(uint(_loc33_) < 10);
                           
                        }
                        _loc11_ = 1;
                        _loc37_ = 19999;
                        _loc9_ = _loc11_;
                        if(_loc12_ <= _loc37_)
                        {
                           _loc9_ = 0;
                        }
                        _loc25_ = int(_loc35_ - _loc14_);
                        if(_loc25_ <= 8)
                        {
                           _loc11_ = 0;
                        }
                        _loc25_ = _loc11_ | _loc9_;
                        if(_loc25_ == 0)
                        {
                           _loc37_ = _loc12_;
                        }
                        if(_loc41_ != 0)
                        {
                           _loc37_ = int(0 - _loc37_);
                        }
                        _loc35_ = _loc27_;
                     }
                  }
                  else
                  {
                     si32(_loc27_,_loc10_ - 12);
                     _loc37_ = 0;
                     _loc35_ = _loc27_;
                  }
               }
               _loc14_ = int(_loc27_ + 2);
               si32(_loc14_,_loc10_ - 12);
               _loc26_ = si8(li8(_loc27_ + 2));
               §§goto(addr1061);
            }
            break;
         }
         if(_loc22_ == 0)
         {
            _loc25_ = _loc29_ | _loc31_;
            if(_loc25_ == 0)
            {
               if(_loc23_ == 0)
               {
                  if(_loc26_ <= 104)
                  {
                     if(_loc26_ != 73)
                     {
                        if(_loc26_ != 78)
                        {
                           break;
                        }
                     }
                     else
                     {
                        addr1305:
                        _loc8_ = int(_loc8_ - 16);
                        si32(L__2E_str,_loc8_ + 4);
                        _loc37_ = int(_loc10_ - 12);
                        si32(_loc37_,_loc8_);
                        ESP = _loc8_;
                        F___match_D2A();
                        _loc8_ = int(_loc8_ + 16);
                        _loc25_ = int(eax);
                        if(_loc25_ != 0)
                        {
                           _loc25_ = li32(_loc10_ - 12);
                           _loc25_ = int(_loc25_ + -1);
                           si32(_loc25_,_loc10_ - 12);
                           _loc8_ = int(_loc8_ - 16);
                           si32(L__2E_str1,_loc8_ + 4);
                           si32(_loc37_,_loc8_);
                           ESP = _loc8_;
                           F___match_D2A();
                           _loc8_ = int(_loc8_ + 16);
                           _loc25_ = int(eax);
                           if(_loc25_ == 0)
                           {
                              _loc25_ = li32(_loc10_ - 12);
                              _loc25_ = int(_loc25_ + 1);
                              si32(_loc25_,_loc10_ - 12);
                           }
                           si32(2146435072,_loc39_);
                           si32(0,_loc10_ - 24);
                        }
                        else
                        {
                           break;
                        }
                     }
                  }
                  else if(_loc26_ != 110)
                  {
                     if(_loc26_ == 105)
                     {
                        §§goto(addr1305);
                     }
                     break;
                  }
                  _loc8_ = int(_loc8_ - 16);
                  si32(L__2E_str2,_loc8_ + 4);
                  _loc37_ = int(_loc10_ - 12);
                  si32(_loc37_,_loc8_);
                  ESP = _loc8_;
                  F___match_D2A();
                  _loc8_ = int(_loc8_ + 16);
                  _loc25_ = int(eax);
                  if(_loc25_ != 0)
                  {
                     _loc25_ = li32(_loc10_ - 12);
                     _loc25_ = li8(_loc25_);
                     if(_loc25_ == 40)
                     {
                        _loc8_ = int(_loc8_ - 16);
                        _loc25_ = int(_loc10_ - 72);
                        si32(_loc25_,_loc8_ + 8);
                        si32(_fpinan_2E_3414,_loc8_ + 4);
                        si32(_loc37_,_loc8_);
                        ESP = _loc8_;
                        F___hexnan_D2A();
                        _loc8_ = int(_loc8_ + 16);
                        _loc25_ = int(eax);
                        if(_loc25_ == 5)
                        {
                           _loc25_ = li32(_loc10_ - 68);
                           _loc25_ = _loc25_ | 2146959360;
                           si32(_loc25_,_loc39_);
                           _loc25_ = li32(_loc10_ - 72);
                           si32(_loc25_,_loc10_ - 24);
                        }
                     }
                     si32(2146959360,_loc39_);
                     si32(0,_loc10_ - 24);
                  }
                  else
                  {
                     break;
                  }
               }
               break;
            }
         }
         else
         {
            _loc17_ = uint(_loc28_);
            sf64(_loc17_,_loc10_ - 80);
            sf64(_loc17_,_loc10_ - 24);
            _loc35_ = _loc22_;
            if(_loc32_ != 0)
            {
               _loc35_ = _loc32_;
            }
            _loc32_ = 16;
            if(_loc22_ <= _loc32_)
            {
               _loc32_ = _loc22_;
            }
            _loc25_ = int(_loc10_ - 80);
            _loc25_ = _loc25_ | 4;
            _loc29_ = li32(_loc25_);
            _loc27_ = li32(_loc10_ - 80);
            if(_loc32_ >= 10)
            {
               _loc25_ = _loc32_ << 3;
               _loc25_ = int(_loc25_ + ___tens_D2A);
               var _loc16_:* = lf64(_loc25_ - 72);
               _loc17_ = Number(_loc16_ * _loc17_) + Number(uint(_loc40_));
               sf64(_loc17_,_loc10_ - 88);
               sf64(_loc17_,_loc10_ - 24);
               _loc25_ = int(_loc10_ - 88);
               _loc25_ = _loc25_ | 4;
               _loc29_ = li32(_loc25_);
               _loc27_ = li32(_loc10_ - 88);
            }
            _loc40_ = int(_loc37_ - _loc24_);
            if(_loc22_ <= 15)
            {
               if(_loc37_ != _loc24_)
               {
                  if(_loc40_ >= 1)
                  {
                     if(_loc40_ <= 22)
                     {
                        if(_loc30_ != 0)
                        {
                           _loc17_ = -_loc17_;
                           sf64(_loc17_,_loc10_ - 24);
                        }
                        _loc25_ = _loc40_ << 3;
                        _loc25_ = int(___tens_D2A + _loc25_);
                        _loc16_ = lf64(_loc25_);
                        _loc16_ = Number(_loc17_ * _loc16_);
                        sf64(_loc16_,_loc10_ - 24);
                        _loc30_ = 0;
                     }
                     else
                     {
                        _loc25_ = int(37 - _loc22_);
                        if(_loc25_ >= _loc40_)
                        {
                           if(_loc30_ != 0)
                           {
                              _loc17_ = -_loc17_;
                              sf64(_loc17_,_loc10_ - 24);
                           }
                           _loc33_ = int(15 - _loc22_);
                           _loc25_ = _loc33_ << 3;
                           _loc25_ = int(___tens_D2A + _loc25_);
                           _loc16_ = lf64(_loc25_);
                           _loc16_ = Number(_loc17_ * _loc16_);
                           _loc33_ = int(_loc40_ - _loc33_);
                           _loc33_ = _loc33_ << 3;
                           _loc33_ = int(___tens_D2A + _loc33_);
                           var _loc19_:* = lf64(_loc33_);
                           _loc16_ = Number(_loc16_ * _loc19_);
                           sf64(_loc16_,_loc10_ - 24);
                           _loc30_ = 0;
                        }
                     }
                  }
                  else if(_loc40_ >= -22)
                  {
                     if(_loc30_ != 0)
                     {
                        _loc17_ = -_loc17_;
                        sf64(_loc17_,_loc10_ - 24);
                     }
                     _loc25_ = _loc40_ << 3;
                     _loc25_ = int(___tens_D2A - _loc25_);
                     _loc16_ = lf64(_loc25_);
                     _loc16_ = Number(_loc17_ / _loc16_);
                     sf64(_loc16_,_loc10_ - 24);
                     _loc30_ = 0;
                  }
               }
            }
            _loc31_ = 1;
            _loc24_ = int(_loc40_ + (int(_loc22_ - _loc32_)));
            if(_loc24_ >= 1)
            {
               _loc37_ = _loc24_ & 15;
               if(_loc37_ != 0)
               {
                  _loc25_ = int(___tens_D2A + (_loc37_ << 3));
                  _loc17_ = _loc17_ * lf64(_loc25_);
                  sf64(_loc17_,_loc10_ - 112);
                  sf64(_loc17_,_loc10_ - 24);
                  _loc25_ = int(_loc10_ - 112);
                  _loc25_ = _loc25_ | 4;
                  _loc29_ = li32(_loc25_);
               }
               _loc32_ = 0;
               if(uint(_loc24_) >= 16)
               {
                  _loc37_ = 0;
                  if((_loc24_ & -16) < 309)
                  {
                     _loc32_ = _loc24_ >> 4;
                     _loc37_ = 0;
                     _loc24_ = _loc37_;
                     _loc27_ = _loc37_;
                     if(_loc32_ >= 2)
                     {
                        do
                        {
                           _loc25_ = _loc32_ & 1;
                           if(_loc25_ != 0)
                           {
                              _loc25_ = int(___bigtens_D2A + (_loc24_ << 3));
                              _loc17_ = _loc17_ * lf64(_loc25_);
                           }
                           _loc24_ = int(_loc24_ + 1);
                           _loc32_ = _loc32_ >> 1;
                        }
                        while(_loc32_ > 1);
                        
                        sf64(_loc17_,_loc10_ - 120);
                        sf64(_loc17_,_loc10_ - 24);
                        _loc25_ = int(_loc10_ - 120);
                        _loc25_ = _loc25_ | 4;
                        _loc29_ = li32(_loc25_);
                        _loc27_ = _loc24_;
                     }
                     _loc25_ = int(_loc29_ + -55574528);
                     si32(_loc25_,_loc39_);
                     _loc25_ = _loc27_ << 3;
                     _loc25_ = int(___bigtens_D2A + _loc25_);
                     _loc19_ = lf64(_loc25_);
                     _loc16_ = lf64(_loc10_ - 24);
                     _loc16_ = Number(_loc16_ * _loc19_);
                     sf64(_loc16_,_loc10_ - 128);
                     sf64(_loc16_,_loc10_ - 24);
                     _loc25_ = int(_loc10_ - 128);
                     _loc25_ = _loc25_ | 4;
                     _loc32_ = li32(_loc25_);
                     _loc29_ = _loc32_ & 2146435072;
                     if(uint(_loc29_) <= 2090860544)
                     {
                        if(uint(_loc29_) >= 2089811969)
                        {
                           si32(2146435071,_loc39_);
                           si32(-1,_loc10_ - 24);
                           _loc32_ = 0;
                        }
                        else
                        {
                           _loc25_ = int(_loc32_ + 55574528);
                           si32(_loc25_,_loc39_);
                           _loc32_ = 0;
                        }
                     }
                  }
                  addr1906:
                  ESP = _loc8_;
                  F___error();
                  _loc25_ = int(eax);
                  si32(34,_loc25_);
                  if(_loc31_ != 0)
                  {
                     if(_loc31_ != 3)
                     {
                        si32(2146435072,_loc39_);
                        si32(0,_loc10_ - 24);
                     }
                     addr1945:
                     if(_loc37_ != 0)
                     {
                        addr4645:
                        _loc25_ = li32(_loc10_ - 28);
                        _loc8_ = int(_loc8_ - 16);
                        si32(_loc25_,_loc8_);
                        ESP = _loc8_;
                        F___Bfree_D2A();
                        _loc8_ = int(_loc8_ + 16);
                        _loc8_ = int(_loc8_ - 16);
                        si32(_loc38_,_loc8_);
                        ESP = _loc8_;
                        F___Bfree_D2A();
                        _loc8_ = int(_loc8_ + 16);
                        _loc8_ = int(_loc8_ - 16);
                        si32(_loc28_,_loc8_);
                        ESP = _loc8_;
                        F___Bfree_D2A();
                        _loc8_ = int(_loc8_ + 16);
                        _loc8_ = int(_loc8_ - 16);
                        si32(_loc37_,_loc8_);
                        ESP = _loc8_;
                        F___Bfree_D2A();
                        _loc8_ = int(_loc8_ + 16);
                        _loc8_ = int(_loc8_ - 16);
                        si32(_loc27_,_loc8_);
                        ESP = _loc8_;
                        F___Bfree_D2A();
                        _loc8_ = int(_loc8_ + 16);
                     }
                  }
                  si32(2146435071,_loc39_);
                  si32(-1,_loc10_ - 24);
                  §§goto(addr1945);
               }
            }
            else
            {
               _loc32_ = 0;
               if(_loc24_ <= -1)
               {
                  _loc37_ = int(0 - _loc24_);
                  _loc32_ = _loc37_ & 15;
                  if(_loc32_ != 0)
                  {
                     _loc25_ = int(___tens_D2A + (_loc32_ << 3));
                     _loc17_ = _loc17_ / lf64(_loc25_);
                     sf64(_loc17_,_loc10_ - 96);
                     sf64(_loc17_,_loc10_ - 24);
                     _loc25_ = int(_loc10_ - 96);
                     _loc25_ = _loc25_ | 4;
                     _loc29_ = li32(_loc25_);
                     _loc27_ = li32(_loc10_ - 96);
                  }
                  _loc24_ = _loc37_ >> 4;
                  _loc32_ = 0;
                  if(_loc24_ != 0)
                  {
                     _loc37_ = 0;
                     if(_loc24_ <= 31)
                     {
                        _loc32_ = int(_tinytens);
                        _loc37_ = _loc24_;
                        if(_loc24_ >= 1)
                        {
                           do
                           {
                              _loc25_ = _loc37_ & 1;
                              if(_loc25_ != 0)
                              {
                                 _loc17_ = _loc17_ * lf64(_loc32_);
                              }
                              _loc32_ = int(_loc32_ + 8);
                              _loc37_ = _loc37_ >> 1;
                           }
                           while(_loc37_ > 0);
                           
                           sf64(_loc17_,_loc10_ - 104);
                           sf64(_loc17_,_loc10_ - 24);
                           _loc25_ = int(_loc10_ - 104);
                           _loc25_ = _loc25_ | 4;
                           _loc29_ = li32(_loc25_);
                           _loc27_ = li32(_loc10_ - 104);
                        }
                        _loc25_ = _loc24_ & 16;
                        if(_loc25_ != 0)
                        {
                           _loc25_ = int(_loc29_ >>> 20);
                           _loc37_ = int(107 - (_loc25_ & 2047));
                           if(_loc37_ >= 1)
                           {
                              if(_loc37_ >= 32)
                              {
                                 si32(0,_loc10_ - 24);
                                 if(_loc37_ >= 53)
                                 {
                                    si32(57671680,_loc39_);
                                 }
                                 else
                                 {
                                    _loc25_ = _loc29_ & -1 << int(_loc37_ + -32);
                                    si32(_loc25_,_loc39_);
                                 }
                              }
                              else
                              {
                                 _loc25_ = _loc27_ & -1 << _loc37_;
                                 si32(_loc25_,_loc10_ - 24);
                              }
                           }
                        }
                        _loc25_ = _loc24_ << 27;
                        _loc25_ = _loc25_ >> 31;
                        _loc32_ = _loc25_ & 106;
                        _loc37_ = 0;
                        _loc16_ = lf64(_loc10_ - 24);
                        if(_loc16_ != 0 | _loc16_ != _loc16_ | false)
                        {
                        }
                     }
                     addr2364:
                     si32(0,_loc39_);
                     si32(0,_loc10_ - 24);
                     ESP = _loc8_;
                     F___error();
                     _loc25_ = int(eax);
                     si32(34,_loc25_);
                     if(_loc37_ != 0)
                     {
                        §§goto(addr4645);
                     }
                  }
               }
            }
            _loc8_ = int(_loc8_ - 32);
            si32(_loc38_,_loc8_ + 16);
            si32(_loc28_,_loc8_ + 12);
            si32(_loc22_,_loc8_ + 8);
            si32(_loc35_,_loc8_ + 4);
            si32(_loc34_,_loc8_);
            _loc34_ = -1;
            _loc22_ = 0;
            if(_loc40_ <= _loc34_)
            {
               _loc22_ = int(0 - _loc40_);
            }
            if(_loc40_ <= _loc34_)
            {
               _loc40_ = 0;
            }
            _loc37_ = 1;
            if(_loc31_ == 1)
            {
               _loc37_ = 0;
            }
            _loc35_ = int(_loc32_ + _loc40_);
            _loc24_ = _loc37_ & 1;
            ESP = _loc8_;
            F___s2b_D2A();
            _loc26_ = _loc31_ >> 1;
            _loc8_ = int(_loc8_ + 32);
            _loc37_ = int(eax);
            _loc29_ = int(_loc37_ + 12);
            while(true)
            {
               _loc25_ = li32(_loc37_ + 4);
               _loc8_ = int(_loc8_ - 16);
               si32(_loc25_,_loc8_);
               ESP = _loc8_;
               F___Balloc_D2A();
               _loc8_ = int(_loc8_ + 16);
               _loc38_ = eax;
               _loc25_ = li32(_loc37_ + 16);
               _loc8_ = int(_loc8_ - 16);
               _loc25_ = _loc25_ << 2;
               _loc25_ = int(_loc25_ + 8);
               si32(_loc25_,_loc8_ + 8);
               si32(_loc29_,_loc8_ + 4);
               _loc25_ = int(_loc38_ + 12);
               si32(_loc25_,_loc8_);
               ESP = _loc8_;
               Fmemcpy();
               _loc8_ = int(_loc8_ + 16);
               _loc16_ = lf64(_loc10_ - 24);
               _loc8_ = int(_loc8_ - 16);
               _loc33_ = int(_loc10_ - 8);
               si32(_loc33_,_loc8_ + 12);
               _loc33_ = int(_loc10_ - 4);
               si32(_loc33_,_loc8_ + 8);
               sf64(_loc16_,_loc8_);
               ESP = _loc8_;
               F___d2b_D2A();
               _loc8_ = int(_loc8_ + 16);
               _loc25_ = int(eax);
               si32(_loc25_,_loc10_ - 28);
               _loc8_ = int(_loc8_ - 16);
               si32(1,_loc8_);
               ESP = _loc8_;
               F___i2b_D2A();
               _loc8_ = int(_loc8_ + 16);
               _loc28_ = int(eax);
               _loc27_ = li32(_loc10_ - 4);
               _loc25_ = int(_loc27_ - _loc32_);
               _loc23_ = int(_loc25_ + 1075);
               _loc41_ = li32(_loc10_ - 8);
               _loc25_ = int(_loc41_ + _loc25_);
               _loc25_ = int(_loc25_ + -1);
               if(_loc25_ >= -1022)
               {
                  _loc23_ = int(54 - _loc41_);
               }
               _loc14_ = _loc27_;
               if(_loc27_ <= _loc34_)
               {
                  _loc14_ = 0;
               }
               _loc41_ = 0;
               if(_loc27_ <= _loc34_)
               {
                  _loc41_ = int(0 - _loc27_);
               }
               _loc14_ = int(_loc14_ + _loc22_);
               _loc27_ = int(_loc23_ + _loc14_);
               _loc25_ = int(_loc35_ + _loc41_);
               _loc41_ = int(_loc25_ + _loc23_);
               _loc12_ = _loc41_;
               if(_loc41_ > _loc27_)
               {
                  _loc12_ = _loc27_;
               }
               _loc14_ = int(_loc14_ + _loc24_);
               _loc23_ = _loc14_;
               if(_loc12_ <= _loc14_)
               {
                  _loc23_ = _loc12_;
               }
               if(_loc23_ <= 0)
               {
                  _loc23_ = 0;
               }
               if(_loc22_ >= 1)
               {
                  _loc8_ = int(_loc8_ - 16);
                  si32(_loc22_,_loc8_ + 4);
                  si32(_loc28_,_loc8_);
                  ESP = _loc8_;
                  F___pow5mult_D2A();
                  _loc8_ = int(_loc8_ + 16);
                  _loc28_ = int(eax);
                  _loc8_ = int(_loc8_ - 16);
                  si32(li32(_loc10_ - 28),_loc8_ + 4);
                  si32(_loc28_,_loc8_);
                  ESP = _loc8_;
                  F___mult_D2A();
                  _loc8_ = int(_loc8_ + 16);
                  _loc8_ = int(_loc8_ - 16);
                  si32(li32(_loc10_ - 28),_loc8_);
                  ESP = _loc8_;
                  F___Bfree_D2A();
                  _loc8_ = int(_loc8_ + 16);
                  si32(int(eax),_loc10_ - 28);
               }
               _loc27_ = int(_loc27_ - _loc23_);
               if(_loc27_ >= 1)
               {
                  _loc8_ = int(_loc8_ - 16);
                  si32(_loc27_,_loc8_ + 4);
                  si32(li32(_loc10_ - 28),_loc8_);
                  ESP = _loc8_;
                  F___lshift_D2A();
                  _loc8_ = int(_loc8_ + 16);
                  _loc25_ = int(eax);
                  si32(_loc25_,_loc10_ - 28);
               }
               if(_loc40_ >= 1)
               {
                  _loc8_ = int(_loc8_ - 16);
                  si32(_loc40_,_loc8_ + 4);
                  si32(_loc38_,_loc8_);
                  ESP = _loc8_;
                  F___pow5mult_D2A();
                  _loc8_ = int(_loc8_ + 16);
                  _loc38_ = eax;
               }
               _loc27_ = int(_loc41_ - _loc23_);
               if(_loc27_ >= 1)
               {
                  _loc8_ = int(_loc8_ - 16);
                  si32(_loc27_,_loc8_ + 4);
                  si32(_loc38_,_loc8_);
                  ESP = _loc8_;
                  F___lshift_D2A();
                  _loc8_ = int(_loc8_ + 16);
                  _loc38_ = eax;
               }
               _loc27_ = int(_loc14_ - _loc23_);
               if(_loc27_ >= 1)
               {
                  _loc8_ = int(_loc8_ - 16);
                  si32(_loc27_,_loc8_ + 4);
                  si32(_loc28_,_loc8_);
                  ESP = _loc8_;
                  F___lshift_D2A();
                  _loc8_ = int(_loc8_ + 16);
                  _loc28_ = int(eax);
               }
               _loc25_ = li32(_loc10_ - 28);
               _loc8_ = int(_loc8_ - 16);
               si32(_loc38_,_loc8_ + 4);
               si32(_loc25_,_loc8_);
               ESP = _loc8_;
               F___diff_D2A();
               _loc8_ = int(_loc8_ + 16);
               _loc27_ = int(eax);
               _loc23_ = li32(_loc27_ + 12);
               si32(0,_loc27_ + 12);
               _loc8_ = int(_loc8_ - 16);
               si32(_loc28_,_loc8_ + 4);
               si32(_loc27_,_loc8_);
               ESP = _loc8_;
               F___cmp_D2A();
               _loc8_ = int(_loc8_ + 16);
               _loc41_ = int(eax);
               if(_loc31_ != 1)
               {
                  if(_loc41_ <= -1)
                  {
                     _loc25_ = li32(_loc27_ + 20);
                     if(_loc25_ == 0)
                     {
                        _loc25_ = li32(_loc27_ + 16);
                        if(_loc25_ >= 2)
                        {
                        }
                        break;
                     }
                     if(_loc31_ != 0)
                     {
                        _loc40_ = 1072693248;
                        _loc31_ = 0;
                        if(_loc23_ != 0)
                        {
                        }
                        break;
                     }
                     if(_loc23_ == 0)
                     {
                        _loc40_ = -1074790400;
                        _loc31_ = 0;
                        _loc25_ = li32(_loc10_ - 24);
                        if(_loc25_ == 0)
                        {
                           _loc34_ = li32(_loc39_);
                           _loc40_ = -1074790400;
                           _loc31_ = 0;
                           if((_loc34_ & 1048575) == 0)
                           {
                              if(_loc32_ != 0)
                              {
                                 _loc40_ = -1074790400;
                                 _loc31_ = 0;
                                 if((uint(_loc34_ & 2146435072)) >= 111149057)
                                 {
                                 }
                                 addr3197:
                                 _loc39_ = _loc34_ & 2146435072;
                                 addr3219:
                                 if(uint(_loc39_) <= 111149056)
                                 {
                                    _loc25_ = int(112197632 - _loc39_);
                                    _loc40_ = int(_loc25_ + _loc40_);
                                    _loc31_ = 0;
                                 }
                                 _loc25_ = int(_loc10_ - 168);
                                 _loc25_ = _loc25_ | 4;
                                 si32(_loc40_,_loc25_);
                                 si32(_loc31_,_loc10_ - 168);
                                 _loc16_ = lf64(_loc10_ - 24);
                                 _loc8_ = int(_loc8_ - 16);
                                 sf64(_loc16_,_loc8_);
                                 ESP = _loc8_;
                                 F___ulp_D2A();
                                 var _loc18_:* = lf64(_loc10_ - 168);
                                 _loc8_ = int(_loc8_ + 16);
                                 _loc19_ = Number(st0);
                                 _loc19_ = Number(_loc19_ * _loc18_);
                                 _loc16_ = Number(_loc16_ + _loc19_);
                                 sf64(_loc16_,_loc10_ - 24);
                                 break;
                              }
                              _loc8_ = int(_loc8_ - 16);
                              si32(1,_loc8_ + 4);
                              si32(_loc27_,_loc8_);
                              ESP = _loc8_;
                              F___lshift_D2A();
                              _loc8_ = int(_loc8_ + 16);
                              _loc27_ = int(eax);
                              _loc8_ = int(_loc8_ - 16);
                              si32(_loc28_,_loc8_ + 4);
                              si32(_loc27_,_loc8_);
                              ESP = _loc8_;
                              F___cmp_D2A();
                              _loc40_ = -1074790400;
                              _loc31_ = 0;
                              _loc8_ = int(_loc8_ + 16);
                              _loc25_ = int(eax);
                              if(_loc25_ <= 0)
                              {
                                 _loc40_ = -1075838976;
                                 _loc31_ = 0;
                              }
                           }
                        }
                     }
                     break;
                     if(_loc32_ != 0)
                     {
                        _loc34_ = li32(_loc39_);
                        §§goto(addr3197);
                     }
                     §§goto(addr3219);
                  }
                  else
                  {
                     _loc8_ = int(_loc8_ - 16);
                     si32(_loc28_,_loc8_ + 4);
                     si32(_loc27_,_loc8_);
                     ESP = _loc8_;
                     F___ratio_D2A();
                     _loc8_ = int(_loc8_ + 16);
                     _loc21_ = Number(st0);
                     sf64(_loc21_,_loc10_ - 136);
                     _loc14_ = 1072693248;
                     if(_loc21_ >= 1)
                     {
                        _loc25_ = int(_loc10_ - 136);
                        _loc25_ = _loc25_ | 4;
                        _loc14_ = li32(_loc25_);
                     }
                     _loc25_ = int(_loc10_ - 144);
                     _loc25_ = _loc25_ | 4;
                     si32(_loc14_,_loc25_);
                     _loc41_ = 0;
                     if(_loc21_ >= 1)
                     {
                        _loc41_ = li32(_loc10_ - 136);
                     }
                     si32(_loc41_,_loc10_ - 144);
                     _loc20_ = lf64(_loc10_ - 144);
                     if(!(_loc20_ > 2147483646 | _loc20_ != _loc20_ | false))
                     {
                        _loc12_ = int(uint(_loc20_));
                        _loc16_ = Number(uint(_loc12_));
                        if(_loc16_ != _loc20_)
                        {
                           _loc41_ = 1;
                           if(_loc26_ != _loc23_)
                           {
                              _loc41_ = 0;
                           }
                           _loc25_ = _loc41_ & 1;
                           _loc25_ = int(_loc12_ + _loc25_);
                           _loc16_ = Number(uint(_loc25_));
                           sf64(_loc16_,_loc10_ - 152);
                           _loc25_ = int(_loc10_ - 152);
                           _loc25_ = _loc25_ | 4;
                           _loc14_ = li32(_loc25_);
                           _loc41_ = li32(_loc10_ - 152);
                        }
                     }
                     if(_loc32_ != 0)
                     {
                        _loc25_ = li32(_loc39_);
                        _loc12_ = _loc25_ & 2146435072;
                        if(uint(_loc12_) <= 111149056)
                        {
                           _loc25_ = int(_loc14_ + 112197632);
                           _loc14_ = int(_loc25_ - _loc12_);
                        }
                     }
                     _loc25_ = int(_loc10_ - 160);
                     _loc25_ = _loc25_ | 4;
                     si32(_loc14_,_loc25_);
                     si32(_loc41_,_loc10_ - 160);
                     _loc16_ = lf64(_loc10_ - 24);
                     _loc8_ = int(_loc8_ - 16);
                     sf64(_loc16_,_loc8_);
                     ESP = _loc8_;
                     F___ulp_D2A();
                     _loc19_ = lf64(_loc10_ - 160);
                     _loc8_ = int(_loc8_ + 16);
                     _loc16_ = Number(st0);
                     _loc1_ = Number(_loc16_ * _loc19_);
                     if(_loc23_ != 0)
                     {
                        _loc25_ = li32(_loc39_);
                        if(_loc25_ == 2146435071)
                        {
                           _loc25_ = li32(_loc10_ - 24);
                           if(_loc25_ != -1)
                           {
                           }
                        }
                        _loc16_ = lf64(_loc10_ - 24);
                        _loc16_ = Number(_loc16_ + _loc1_);
                        sf64(_loc16_,_loc10_ - 24);
                     }
                     else
                     {
                        _loc16_ = lf64(_loc10_ - 24);
                        _loc16_ = Number(_loc16_ - _loc1_);
                        sf64(_loc16_,_loc10_ - 24);
                     }
                     continue;
                  }
               }
               else
               {
                  if(_loc41_ <= -1)
                  {
                     if(_loc23_ == 0)
                     {
                        _loc25_ = li32(_loc10_ - 24);
                        if(_loc25_ == 0)
                        {
                           _loc40_ = li32(_loc39_);
                           _loc25_ = _loc40_ & 1048575;
                           if(_loc25_ == 0)
                           {
                              _loc25_ = _loc40_ & 2146435072;
                              if(uint(_loc25_) >= 112197633)
                              {
                                 _loc25_ = li32(_loc27_ + 20);
                                 if(_loc25_ == 0)
                                 {
                                    _loc25_ = li32(_loc27_ + 16);
                                    if(_loc25_ >= 2)
                                    {
                                    }
                                    break;
                                 }
                                 _loc8_ = int(_loc8_ - 16);
                                 si32(1,_loc8_ + 4);
                                 si32(_loc27_,_loc8_);
                                 ESP = _loc8_;
                                 F___lshift_D2A();
                                 _loc8_ = int(_loc8_ + 16);
                                 _loc27_ = int(eax);
                                 _loc8_ = int(_loc8_ - 16);
                                 si32(_loc28_,_loc8_ + 4);
                                 si32(_loc27_,_loc8_);
                                 ESP = _loc8_;
                                 F___cmp_D2A();
                                 _loc8_ = int(_loc8_ + 16);
                                 _loc25_ = int(eax);
                                 if(_loc25_ <= 0)
                                 {
                                    break;
                                 }
                                 addr3773:
                                 _loc40_ = li32(_loc39_);
                                 if(_loc32_ != 0)
                                 {
                                    _loc31_ = _loc40_ & 2146435072;
                                    if(uint(_loc31_) <= 112197632)
                                    {
                                       if(uint(_loc31_) <= 57671680)
                                       {
                                          §§goto(addr2364);
                                       }
                                       else
                                       {
                                          addr4593:
                                          _loc16_ = lf64(_loc10_ - 24);
                                          _loc16_ = Number(_loc16_ * 1.23259516440783e-32);
                                          sf64(_loc16_,_loc10_ - 248);
                                          sf64(_loc16_,_loc10_ - 24);
                                          _loc25_ = int(_loc10_ - 248);
                                          _loc25_ = _loc25_ | 4;
                                          _loc25_ = li32(_loc25_);
                                          _loc25_ = _loc25_ & 2146435072;
                                          if(_loc25_ == 0)
                                          {
                                             ESP = _loc8_;
                                             F___error();
                                             si32(34,int(eax));
                                          }
                                       }
                                       §§goto(addr4645);
                                    }
                                 }
                                 _loc25_ = _loc40_ & 2146435072;
                                 _loc25_ = int(_loc25_ + -1048576);
                                 _loc25_ = _loc25_ | 1048575;
                                 si32(_loc25_,_loc39_);
                                 si32(-1,_loc10_ - 24);
                                 break;
                              }
                              break;
                           }
                           break;
                        }
                        break;
                     }
                     break;
                  }
                  if(_loc41_ == 0)
                  {
                     _loc40_ = li32(_loc39_);
                     _loc31_ = _loc40_ & 1048575;
                     if(_loc23_ != 0)
                     {
                        if(_loc31_ == 1048575)
                        {
                           _loc22_ = li32(_loc10_ - 24);
                           if(_loc32_ != 0)
                           {
                              _loc31_ = _loc40_ & 2146435072;
                              _loc34_ = -1;
                              if(uint(_loc31_) <= 111149056)
                              {
                                 _loc34_ = -1 << int(107 - (int(_loc31_ >>> 20)));
                              }
                           }
                           if(_loc22_ == _loc34_)
                           {
                              _loc25_ = _loc40_ & 2146435072;
                              _loc25_ = int(_loc25_ + 1048576);
                              si32(_loc25_,_loc39_);
                              si32(0,_loc10_ - 24);
                              break;
                           }
                        }
                     }
                     else if(_loc31_ == 0)
                     {
                        _loc25_ = li32(_loc10_ - 24);
                        if(_loc25_ == 0)
                        {
                           §§goto(addr3773);
                        }
                        §§goto(addr2364);
                     }
                     _loc25_ = li8(_loc10_ - 24);
                     _loc25_ = _loc25_ & 1;
                     if(_loc25_ != 0)
                     {
                        _loc2_ = lf64(_loc10_ - 24);
                        _loc8_ = int(_loc8_ - 16);
                        sf64(_loc2_,_loc8_);
                        ESP = _loc8_;
                        F___ulp_D2A();
                        _loc8_ = int(_loc8_ + 16);
                        _loc3_ = st0;
                        if(_loc23_ != 0)
                        {
                           _loc16_ = Number(_loc2_ + _loc3_);
                           sf64(_loc16_,_loc10_ - 24);
                           break;
                        }
                        _loc16_ = Number(_loc2_ - _loc3_);
                        sf64(_loc16_,_loc10_ - 24);
                        if(_loc16_ != 0)
                        {
                           break;
                        }
                        §§goto(addr2364);
                     }
                     break;
                  }
                  _loc8_ = int(_loc8_ - 16);
                  si32(_loc28_,_loc8_ + 4);
                  si32(_loc27_,_loc8_);
                  ESP = _loc8_;
                  F___ratio_D2A();
                  _loc8_ = int(_loc8_ + 16);
                  _loc4_ = st0;
                  if(!(_loc4_ > 2 | _loc4_ != _loc4_ | false))
                  {
                     _loc11_ = 1072693248;
                     _loc12_ = 0;
                     _loc1_ = 1;
                     if(_loc23_ == 0)
                     {
                        _loc14_ = li32(_loc10_ - 24);
                        if(_loc14_ != 1)
                        {
                           _loc11_ = -1074790400;
                           _loc12_ = 0;
                           _loc1_ = 1;
                           if(_loc14_ == 0)
                           {
                              _loc25_ = li32(_loc39_);
                              _loc11_ = -1074790400;
                              _loc12_ = 0;
                              _loc1_ = 1;
                              if((_loc25_ & 1048575) == 0)
                              {
                                 _loc1_ = 0.5;
                                 if(_loc4_ >= 1)
                                 {
                                    _loc1_ = Number(_loc4_ * 0.5);
                                 }
                                 sf64(_loc1_,_loc10_ - 176);
                                 _loc25_ = int(_loc10_ - 176);
                                 _loc25_ = _loc25_ | 4;
                                 _loc25_ = li32(_loc25_);
                                 _loc11_ = _loc25_ ^ -2147483648;
                                 _loc12_ = li32(_loc10_ - 176);
                              }
                           }
                        }
                        else
                        {
                           _loc11_ = -1074790400;
                           _loc12_ = 0;
                           _loc1_ = 1;
                           if(li32(_loc39_) == 0)
                           {
                              §§goto(addr2364);
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc1_ = Number(_loc4_ * 0.5);
                     _loc7_ = _loc1_;
                     if(_loc23_ == 0)
                     {
                        _loc7_ = Number(-_loc1_);
                     }
                     if(_loc31_ != 0)
                     {
                        if(_loc31_ != 2)
                        {
                           if(_loc31_ != 3)
                           {
                              sf64(_loc7_,_loc10_ - 200);
                              _loc25_ = int(_loc10_ - 200);
                              _loc25_ = _loc25_ | 4;
                              _loc11_ = li32(_loc25_);
                              _loc12_ = li32(_loc10_ - 200);
                           }
                        }
                        else
                        {
                           _loc16_ = Number(_loc7_ + -0.5);
                           sf64(_loc16_,_loc10_ - 184);
                           _loc25_ = int(_loc10_ - 184);
                           _loc25_ = _loc25_ | 4;
                           _loc11_ = li32(_loc25_);
                           _loc12_ = li32(_loc10_ - 184);
                        }
                     }
                     _loc16_ = Number(_loc7_ + 0.5);
                     sf64(_loc16_,_loc10_ - 192);
                     _loc25_ = int(_loc10_ - 192);
                     _loc25_ = _loc25_ | 4;
                     _loc11_ = li32(_loc25_);
                     _loc12_ = li32(_loc10_ - 192);
                  }
                  _loc9_ = li32(_loc39_);
                  _loc14_ = _loc9_ & 2146435072;
                  if(_loc14_ == 2145386496)
                  {
                     _loc25_ = int(_loc10_ - 232);
                     si32(_loc11_,_loc25_ | 4);
                     _loc11_ = li32(_loc39_);
                     _loc9_ = li32(_loc10_ - 24);
                     si32(int(_loc9_ + -55574528),_loc39_);
                     si32(_loc12_,_loc10_ - 232);
                     _loc8_ = int(_loc8_ - 16);
                     sf64(lf64(_loc10_ - 24),_loc8_);
                     ESP = _loc8_;
                     F___ulp_D2A();
                     _loc8_ = int(_loc8_ + 16);
                     _loc19_ = Number(st0);
                     _loc19_ = lf64(_loc10_ - 24);
                     _loc16_ = Number(_loc19_ + Number(_loc19_ * lf64(_loc10_ - 232)));
                     sf64(_loc16_,_loc10_ - 240);
                     sf64(_loc16_,_loc10_ - 24);
                     _loc25_ = int(_loc10_ - 240);
                     _loc25_ = _loc25_ | 4;
                     _loc12_ = li32(_loc25_);
                     _loc25_ = _loc12_ & 2145386496;
                     if(uint(_loc25_) >= 2090860544)
                     {
                        _loc25_ = _loc11_ ^ 2146435071;
                        if(_loc25_ == 0)
                        {
                           if(_loc9_ != -1)
                           {
                           }
                        }
                        si32(2146435071,_loc39_);
                        si32(_loc34_,_loc10_ - 24);
                        continue;
                     }
                     _loc11_ = li32(_loc10_ - 240);
                     _loc12_ = int(_loc12_ + 55574528);
                     si32(_loc12_,_loc39_);
                  }
                  else
                  {
                     if(_loc32_ != 0)
                     {
                        if(uint(_loc14_) <= 111149056)
                        {
                           if(!(_loc1_ > 2147483647 | _loc1_ != _loc1_ | false))
                           {
                              _loc12_ = int(uint(_loc1_));
                              _loc1_ = 1;
                              if(_loc12_ != 0)
                              {
                                 _loc1_ = Number(uint(_loc12_));
                              }
                              _loc21_ = _loc1_;
                              if(_loc23_ == 0)
                              {
                                 _loc21_ = Number(-_loc1_);
                              }
                              sf64(_loc21_,_loc10_ - 208);
                              _loc25_ = int(_loc10_ - 208);
                              _loc25_ = _loc25_ | 4;
                              _loc11_ = li32(_loc25_);
                              _loc12_ = li32(_loc10_ - 208);
                           }
                           _loc25_ = int(112197632 - _loc14_);
                           _loc11_ = int(_loc25_ + _loc11_);
                        }
                     }
                     _loc25_ = int(_loc10_ - 216);
                     _loc25_ = _loc25_ | 4;
                     si32(_loc11_,_loc25_);
                     si32(_loc12_,_loc10_ - 216);
                     _loc16_ = lf64(_loc10_ - 24);
                     _loc8_ = int(_loc8_ - 16);
                     sf64(_loc16_,_loc8_);
                     ESP = _loc8_;
                     F___ulp_D2A();
                     _loc16_ = lf64(_loc10_ - 216);
                     _loc8_ = int(_loc8_ + 16);
                     _loc19_ = Number(st0);
                     _loc16_ = Number(_loc19_ * _loc16_);
                     _loc19_ = lf64(_loc10_ - 24);
                     _loc16_ = Number(_loc19_ + _loc16_);
                     sf64(_loc16_,_loc10_ - 224);
                     sf64(_loc16_,_loc10_ - 24);
                     _loc25_ = int(_loc10_ - 224);
                     _loc25_ = _loc25_ | 4;
                     _loc12_ = li32(_loc25_);
                     _loc11_ = li32(_loc10_ - 224);
                  }
                  if(_loc32_ == 0)
                  {
                     if(_loc14_ == (_loc12_ & 2146435072))
                     {
                        _loc33_ = int(_loc1_);
                        _loc6_ = _loc1_ - _loc33_;
                        if((_loc23_ | _loc11_) == 0)
                        {
                           _loc25_ = _loc12_ & 1048575;
                           if(_loc25_ == 0)
                           {
                              if(_loc6_ >= 0.24999995)
                              {
                                 continue;
                              }
                              break;
                           }
                        }
                        if(_loc6_ >= 0.4999999)
                        {
                           if(_loc6_ <= 0.5000001)
                           {
                              continue;
                           }
                           break;
                        }
                        break;
                     }
                     continue;
                  }
                  continue;
               }
               §§goto(addr1906);
            }
            if(_loc32_ != 0)
            {
               §§goto(addr4593);
            }
            §§goto(addr4645);
         }
         §§goto(addr4746);
      }
      si32(_loc35_,_loc10_ - 12);
      _loc30_ = 0;
      §§goto(addr4746);
   }
}
