package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_gdtoa_2E_o_3A_92ABCEF5_2D_4FB7_2D_41A4_2D_BBA8_2D_EEDE6272412C.*;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li8;
   
   public function F___gdtoa() : void
   {
      var _loc2_:* = 0;
      var _loc4_:* = 0;
      var _loc16_:* = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc20_:* = 0;
      var _loc7_:* = 0;
      var _loc46_:* = 0;
      var _loc49_:int = 0;
      var _loc45_:* = 0;
      var _loc44_:* = 0;
      var _loc37_:* = 0;
      var _loc35_:int = 0;
      var _loc33_:int = 0;
      var _loc31_:* = 0;
      var _loc34_:* = 0;
      var _loc36_:int = 0;
      var _loc42_:* = NaN;
      var _loc21_:* = NaN;
      var _loc8_:* = 0;
      var _loc23_:Number = NaN;
      var _loc24_:* = NaN;
      var _loc27_:* = NaN;
      var _loc17_:int = 0;
      var _loc15_:* = 0;
      var _loc26_:* = NaN;
      var _loc25_:Number = NaN;
      var _loc51_:* = 0;
      var _loc9_:* = 0;
      var _loc18_:* = 0;
      var _loc52_:* = 0;
      var _loc3_:* = 0;
      var _loc47_:* = 0;
      var _loc53_:* = 0;
      var _loc41_:Number = NaN;
      var _loc32_:* = 0;
      var _loc29_:* = 0;
      var _loc30_:* = 0;
      var _loc50_:* = 0;
      var _loc28_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc40_:* = NaN;
      var _loc10_:* = 0;
      var _loc22_:Number = NaN;
      var _loc14_:* = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc1_ = int(_loc1_ - 224);
      _loc4_ = li32(_loc2_ + 12);
      _loc20_ = li32(_loc4_);
      var _loc19_:* = _loc20_ & -49;
      si32(_loc19_,_loc4_);
      _loc18_ = _loc20_ & 7;
      _loc16_ = 0;
      _loc13_ = li32(_loc2_ + 28);
      _loc11_ = li32(_loc2_ + 24);
      if(_loc18_ <= 2)
      {
         if(_loc18_ != 0)
         {
            _loc19_ = int(_loc18_ + -1);
            if(uint(_loc19_) < 2)
            {
               _loc9_ = li32(_loc2_);
               _loc7_ = li32(_loc9_);
               _loc18_ = 32;
               _loc3_ = 0;
               if(_loc7_ >= 33)
               {
                  do
                  {
                     _loc3_ = int(_loc3_ + 1);
                     _loc18_ = _loc18_ << 1;
                  }
                  while(_loc18_ < _loc7_);
                  
               }
               _loc1_ = int(_loc1_ - 16);
               si32(_loc3_,_loc1_);
               _loc19_ = int(_loc7_ + -1);
               _loc19_ = _loc19_ >> 5;
               _loc3_ = int(_loc19_ + 1);
               if(_loc3_ <= 1)
               {
                  _loc3_ = 1;
               }
               _loc50_ = li32(_loc2_ + 20);
               _loc16_ = li32(_loc2_ + 16);
               _loc51_ = li32(_loc2_ + 8);
               _loc52_ = li32(_loc2_ + 4);
               _loc53_ = int(0 - _loc3_);
               ESP = _loc1_;
               F___Balloc_D2A();
               _loc1_ = int(_loc1_ + 16);
               _loc18_ = int(eax);
               _loc46_ = int(_loc18_ + 20);
               _loc47_ = 0;
               do
               {
                  var _loc48_:* = _loc47_ << 2;
                  _loc19_ = int(_loc18_ - _loc48_);
                  _loc48_ = int(_loc51_ - _loc48_);
                  _loc48_ = li32(_loc48_);
                  si32(_loc48_,_loc19_ + 20);
                  _loc47_ = int(_loc47_ + -1);
               }
               while(_loc53_ != _loc47_);
               
               _loc19_ = _loc3_ << 2;
               _loc19_ = int(_loc19_ + _loc18_);
               _loc19_ = int(_loc19_ + 20);
               _loc19_ = int(_loc19_ - _loc46_);
               _loc47_ = _loc19_ >> 2;
               _loc53_ = int(0 - (_loc47_ << 5));
               while(true)
               {
                  _loc3_ = _loc47_ << 2;
                  _loc19_ = int(_loc18_ + _loc3_);
                  _loc19_ = li32(_loc19_ + 16);
                  if(_loc19_ != 0)
                  {
                     si32(_loc47_,_loc18_ + 16);
                     _loc19_ = int(_loc18_ + 16);
                     _loc19_ = int(_loc19_ + _loc3_);
                     _loc1_ = int(_loc1_ - 16);
                     si32(li32(_loc19_),_loc1_);
                     ESP = _loc1_;
                     F___hi0bits_D2A();
                     _loc1_ = int(_loc1_ + 16);
                     _loc19_ = int(0 - int(eax));
                     _loc49_ = _loc19_ - _loc53_;
                     break;
                  }
                  _loc47_ = int(_loc47_ + -1);
                  _loc53_ = int(_loc53_ + 32);
                  if(_loc47_ == 0)
                  {
                     _loc49_ = 0;
                     si32(_loc49_,_loc18_ + 16);
                     break;
                  }
               }
               _loc1_ = int(_loc1_ - 16);
               si32(_loc18_,_loc1_);
               ESP = _loc1_;
               F___trailz_D2A();
               _loc1_ = int(_loc1_ + 16);
               _loc3_ = int(eax);
               si32(_loc3_,_loc2_ - 4);
               _loc45_ = _loc52_;
               if(_loc3_ != 0)
               {
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc3_,_loc1_ + 4);
                  si32(_loc18_,_loc1_);
                  ESP = _loc1_;
                  F___rshift_D2A();
                  _loc1_ = int(_loc1_ + 16);
                  _loc19_ = li32(_loc2_ - 4);
                  _loc49_ = _loc49_ - _loc19_;
                  _loc45_ = int(_loc19_ + _loc52_);
               }
               _loc19_ = li32(_loc18_ + 16);
               if(_loc19_ == 0)
               {
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc18_,_loc1_);
                  ESP = _loc1_;
                  F___Bfree_D2A();
                  _loc1_ = int(_loc1_ + 16);
               }
               else
               {
                  _loc1_ = int(_loc1_ - 16);
                  _loc19_ = int(_loc2_ - 4);
                  si32(_loc19_,_loc1_ + 4);
                  si32(_loc18_,_loc1_);
                  ESP = _loc1_;
                  F___b2d_D2A();
                  _loc1_ = int(_loc1_ + 16);
                  var _loc39_:* = Number(st0);
                  sf64(_loc39_,_loc2_ - 16);
                  _loc19_ = int(_loc2_ - 24);
                  _loc48_ = int(_loc2_ - 16);
                  _loc48_ = _loc48_ | 4;
                  _loc48_ = li32(_loc48_);
                  _loc48_ = _loc48_ & 1048575;
                  _loc46_ = _loc48_ | 1072693248;
                  si32(_loc46_,_loc19_ | 4);
                  _loc47_ = int(_loc45_ + _loc49_);
                  _loc53_ = int(_loc47_ + -1);
                  si32(_loc53_,_loc2_ - 4);
                  _loc44_ = li32(_loc2_ - 16);
                  si32(_loc44_,_loc2_ - 24);
                  _loc3_ = int(1 - _loc47_);
                  if(_loc53_ >= 0)
                  {
                     _loc3_ = _loc53_;
                  }
                  _loc3_ = int(_loc3_ + -1077);
                  _loc39_ = Number(_loc53_);
                  _loc39_ = Number(_loc39_ * 0.301029995663981);
                  var _loc38_:* = lf64(_loc2_ - 24);
                  _loc38_ = Number(_loc38_ + -1.5);
                  _loc38_ = Number(_loc38_ * 0.289529654602168);
                  _loc38_ = Number(_loc38_ + 0.1760912590558);
                  _loc41_ = _loc38_ + _loc39_;
                  if(_loc3_ >= 1)
                  {
                     _loc39_ = Number(_loc3_);
                     _loc39_ = Number(_loc39_ * 7.0e-17);
                     _loc41_ = _loc39_ + _loc41_;
                  }
                  _loc3_ = int(_loc41_);
                  if(!(_loc41_ >= 0 | _loc41_ != _loc41_ | false))
                  {
                     _loc39_ = Number(_loc3_);
                     if(_loc39_ != _loc41_)
                     {
                        _loc3_ = int(_loc3_ + -1);
                     }
                  }
                  _loc19_ = _loc47_ << 20;
                  _loc19_ = int(_loc19_ + _loc46_);
                  _loc19_ = int(_loc19_ + -1048576);
                  _loc37_ = _loc19_ | 0;
                  _loc35_ = 1;
                  if(uint(_loc3_) <= 22)
                  {
                     _loc19_ = int(_loc2_ - 32);
                     si32(_loc37_,_loc19_ | 4);
                     si32(_loc44_,_loc2_ - 32);
                     _loc19_ = int(___tens_D2A + (_loc3_ << 3));
                     _loc35_ = 0;
                     _loc47_ = 1;
                     _loc39_ = lf64(_loc2_ - 32);
                     if(_loc39_ >= lf64(_loc19_))
                     {
                        _loc47_ = _loc35_;
                     }
                     _loc19_ = _loc47_ & 1;
                     _loc3_ = int(_loc3_ - _loc19_);
                  }
                  _loc47_ = int(_loc49_ - _loc53_);
                  _loc36_ = 0;
                  if(_loc47_ <= 0)
                  {
                     _loc36_ = 1 - _loc47_;
                  }
                  _loc33_ = _loc47_ + -1;
                  if(_loc47_ <= 0)
                  {
                     _loc33_ = 0;
                  }
                  if(_loc3_ >= 0)
                  {
                     _loc33_ = _loc33_ + _loc3_;
                     _loc34_ = 0;
                     _loc31_ = _loc3_;
                  }
                  else
                  {
                     _loc36_ = _loc36_ - _loc3_;
                     _loc34_ = int(0 - _loc3_);
                     _loc31_ = 0;
                  }
                  _loc32_ = 0;
                  if(uint(_loc16_) <= 9)
                  {
                     _loc32_ = _loc16_;
                  }
                  _loc46_ = int(_loc32_ + -4);
                  if(_loc32_ <= 5)
                  {
                     _loc46_ = _loc32_;
                  }
                  _loc29_ = 1;
                  if(_loc46_ <= 2)
                  {
                     if(uint(_loc46_) >= 2)
                     {
                        if(_loc46_ == 2)
                        {
                           _loc16_ = 0;
                           addr1035:
                           if(_loc50_ >= _loc29_)
                           {
                              _loc29_ = _loc50_;
                           }
                           _loc53_ = _loc29_;
                           si32(_loc53_,_loc2_ - 4);
                           _loc29_ = _loc16_;
                           _loc30_ = _loc53_;
                           _loc47_ = _loc53_;
                           _loc50_ = _loc53_;
                        }
                     }
                     else
                     {
                        _loc39_ = Number(_loc7_);
                        _loc39_ = Number(_loc39_ * 0.30103);
                        _loc19_ = int(_loc39_);
                        _loc53_ = int(_loc19_ + 3);
                        si32(_loc53_,_loc2_ - 4);
                        _loc50_ = 0;
                        _loc30_ = -1;
                        _loc29_ = 1;
                        _loc47_ = _loc30_;
                     }
                  }
                  else
                  {
                     if(_loc46_ != 3)
                     {
                        _loc16_ = _loc29_;
                        if(_loc46_ != 4)
                        {
                           if(_loc46_ != 5)
                           {
                           }
                        }
                        else
                        {
                           §§goto(addr1035);
                        }
                     }
                     else
                     {
                        _loc29_ = 0;
                     }
                     _loc30_ = int(_loc3_ + _loc50_);
                     _loc47_ = int(_loc30_ + 1);
                     si32(_loc47_,_loc2_ - 4);
                     _loc53_ = _loc47_;
                     if(_loc30_ <= -1)
                     {
                        _loc53_ = 1;
                        si32(_loc53_,_loc2_ - 4);
                     }
                  }
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc53_,_loc1_);
                  ESP = _loc1_;
                  F___rv_alloc_D2A();
                  _loc1_ = int(_loc1_ + 16);
                  _loc16_ = int(eax);
                  _loc19_ = li32(_loc9_ + 12);
                  _loc28_ = int(_loc19_ + -1);
                  _loc53_ = 0;
                  if(_loc28_ != 0)
                  {
                     _loc53_ = 2;
                     if(_loc28_ >= 0)
                     {
                        _loc53_ = _loc28_;
                     }
                     _loc19_ = _loc20_ & 8;
                     if(_loc19_ != 0)
                     {
                        _loc53_ = int(3 - _loc53_);
                     }
                  }
                  _loc20_ = 1;
                  _loc28_ = _loc20_;
                  if(_loc32_ >= 6)
                  {
                     _loc28_ = 0;
                  }
                  if(uint(_loc47_) >= 15)
                  {
                     _loc20_ = 0;
                  }
                  if(_loc53_ == 0)
                  {
                     _loc19_ = _loc20_ & _loc28_;
                     _loc19_ = _loc19_ & 1;
                     if(_loc19_ != 0)
                     {
                        if(_loc3_ == 0)
                        {
                           _loc28_ = 0;
                           si32(_loc28_,_loc2_ - 4);
                           if(_loc3_ >= 1)
                           {
                              _loc28_ = _loc3_ >> 4;
                              _loc20_ = 2;
                              _loc6_ = _loc44_;
                              _loc5_ = _loc37_;
                              if((_loc28_ & 16) != 0)
                              {
                                 _loc19_ = int(_loc2_ - 72);
                                 si32(_loc37_,_loc19_ | 4);
                                 si32(_loc44_,_loc2_ - 72);
                                 _loc38_ = lf64(_loc2_ - 72);
                                 _loc39_ = Number(_loc38_ / lf64(___bigtens_D2A + 32));
                                 sf64(_loc39_,_loc2_ - 80);
                                 _loc28_ = _loc28_ & 15;
                                 _loc19_ = int(_loc2_ - 80);
                                 _loc19_ = _loc19_ | 4;
                                 _loc5_ = li32(_loc19_);
                                 _loc20_ = 3;
                                 _loc6_ = li32(_loc2_ - 80);
                              }
                              _loc19_ = _loc3_ & 15;
                              _loc19_ = _loc19_ << 3;
                              _loc19_ = int(___tens_D2A + _loc19_);
                              _loc40_ = lf64(_loc19_);
                              _loc32_ = 0;
                              if(_loc28_ != 0)
                              {
                                 while(true)
                                 {
                                    _loc19_ = _loc28_ & 1;
                                    if(_loc19_ != 0)
                                    {
                                       _loc19_ = int(___bigtens_D2A + (_loc32_ << 3));
                                       _loc39_ = lf64(_loc19_);
                                       _loc40_ = Number(_loc39_ * _loc40_);
                                       _loc20_ = int(_loc20_ + 1);
                                    }
                                    _loc32_ = int(_loc32_ + 1);
                                    _loc28_ = _loc28_ >> 1;
                                    if(_loc28_ != 0)
                                    {
                                       continue;
                                    }
                                    break;
                                 }
                                 si32(_loc32_,_loc2_ - 4);
                              }
                           }
                           else
                           {
                              _loc40_ = 1;
                              _loc20_ = 2;
                              _loc6_ = _loc44_;
                              _loc5_ = _loc37_;
                              if(_loc3_ != 0)
                              {
                                 _loc48_ = int(_loc2_ - 40);
                                 si32(_loc37_,_loc48_ | 4);
                                 si32(_loc44_,_loc2_ - 40);
                                 _loc48_ = int(0 - _loc3_) & 15;
                                 _loc48_ = int(___tens_D2A + (_loc48_ << 3));
                                 var _loc43_:* = lf64(_loc2_ - 40);
                                 _loc38_ = Number(_loc43_ * lf64(_loc48_));
                                 sf64(_loc38_,_loc2_ - 48);
                                 _loc32_ = int(0 - _loc3_) >> 4;
                                 _loc19_ = int(_loc2_ - 48);
                                 _loc19_ = _loc19_ | 4;
                                 _loc5_ = li32(_loc19_);
                                 _loc40_ = 1;
                                 _loc20_ = 2;
                                 _loc6_ = li32(_loc2_ - 48);
                                 if(_loc32_ != 0)
                                 {
                                    do
                                    {
                                       _loc19_ = _loc32_ & 1;
                                       if(_loc19_ != 0)
                                       {
                                          _loc19_ = int(_loc2_ - 56);
                                          si32(_loc5_,_loc19_ | 4);
                                          si32(_loc6_,_loc2_ - 56);
                                          _loc19_ = int(___bigtens_D2A + (_loc28_ << 3));
                                          _loc39_ = lf64(_loc2_ - 56);
                                          _loc39_ = Number(_loc39_ * lf64(_loc19_));
                                          sf64(_loc39_,_loc2_ - 64);
                                          _loc20_ = int(_loc20_ + 1);
                                          _loc19_ = int(_loc2_ - 64);
                                          _loc19_ = _loc19_ | 4;
                                          _loc5_ = li32(_loc19_);
                                          _loc6_ = li32(_loc2_ - 64);
                                       }
                                       _loc28_ = int(_loc28_ + 1);
                                       _loc32_ = _loc32_ >> 1;
                                    }
                                    while(_loc32_ != 0);
                                    
                                    si32(_loc28_,_loc2_ - 4);
                                    _loc40_ = 1;
                                 }
                              }
                           }
                           _loc28_ = _loc3_;
                           _loc10_ = _loc47_;
                           if(_loc35_ != 0)
                           {
                              _loc19_ = int(_loc2_ - 88);
                              si32(_loc5_,_loc19_ | 4);
                              si32(_loc6_,_loc2_ - 88);
                              _loc42_ = lf64(_loc2_ - 88);
                              _loc28_ = _loc3_;
                              _loc10_ = _loc47_;
                              if(!(_loc42_ >= 1 | _loc42_ != _loc42_ | false))
                              {
                                 _loc28_ = _loc3_;
                                 _loc10_ = _loc47_;
                                 if(_loc47_ >= 1)
                                 {
                                    if(_loc30_ >= 1)
                                    {
                                       _loc39_ = Number(_loc42_ * 10);
                                       sf64(_loc39_,_loc2_ - 96);
                                       _loc20_ = int(_loc20_ + 1);
                                       _loc28_ = int(_loc3_ + -1);
                                       _loc19_ = int(_loc2_ - 96);
                                       _loc19_ = _loc19_ | 4;
                                       _loc5_ = li32(_loc19_);
                                       _loc6_ = li32(_loc2_ - 96);
                                       _loc10_ = _loc30_;
                                    }
                                 }
                              }
                           }
                           _loc19_ = int(_loc2_ - 104);
                           _loc19_ = _loc19_ | 4;
                           si32(_loc5_,_loc19_);
                           si32(_loc6_,_loc2_ - 104);
                           _loc39_ = Number(_loc20_);
                           _loc21_ = lf64(_loc2_ - 104);
                           _loc39_ = Number(_loc39_ * _loc21_);
                           _loc39_ = Number(_loc39_ + 7);
                           sf64(_loc39_,_loc2_ - 112);
                           _loc19_ = int(_loc2_ - 112);
                           _loc19_ = _loc19_ | 4;
                           _loc19_ = li32(_loc19_);
                           _loc32_ = int(_loc19_ + -54525952);
                           _loc8_ = li32(_loc2_ - 112);
                           if(_loc10_ == 0)
                           {
                              _loc19_ = int(_loc2_ - 192);
                              si32(_loc32_,_loc19_ | 4);
                              si32(_loc8_,_loc2_ - 192);
                              _loc21_ = Number(_loc21_ + -5);
                              _loc14_ = 0;
                              _loc42_ = lf64(_loc2_ - 192);
                              _loc5_ = _loc14_;
                              if(_loc21_ <= _loc42_)
                              {
                                 _loc14_ = 0;
                                 _loc6_ = _loc14_;
                                 if(_loc21_ >= Number(-_loc42_))
                                 {
                                 }
                                 addr3374:
                                 _loc3_ = _loc50_ ^ -1;
                                 _loc50_ = 0;
                                 _loc32_ = 16;
                                 addr4712:
                                 _loc20_ = _loc16_;
                                 addr4712:
                                 _loc1_ = int(_loc1_ - 16);
                                 si32(_loc6_,_loc1_);
                                 ESP = _loc1_;
                                 F___Bfree_D2A();
                                 addr4783:
                                 _loc1_ = int(_loc1_ + 16);
                                 addr4783:
                                 if(_loc14_ != 0)
                                 {
                                    if(_loc50_ != 0)
                                    {
                                       if(_loc50_ != _loc14_)
                                       {
                                          _loc1_ = int(_loc1_ - 16);
                                          si32(_loc50_,_loc1_);
                                          ESP = _loc1_;
                                          F___Bfree_D2A();
                                          _loc1_ = int(_loc1_ + 16);
                                       }
                                    }
                                    _loc1_ = int(_loc1_ - 16);
                                    si32(_loc14_,_loc1_);
                                    ESP = _loc1_;
                                    F___Bfree_D2A();
                                    _loc1_ = int(_loc1_ + 16);
                                 }
                                 _loc1_ = int(_loc1_ - 16);
                                 si32(_loc18_,_loc1_);
                                 ESP = _loc1_;
                                 F___Bfree_D2A();
                                 _loc1_ = int(_loc1_ + 16);
                                 si8(0,_loc20_);
                                 _loc19_ = int(_loc3_ + 1);
                                 si32(_loc19_,_loc11_);
                                 if(_loc13_ != 0)
                                 {
                                    si32(_loc20_,_loc13_);
                                 }
                                 _loc19_ = li32(_loc4_);
                                 _loc19_ = _loc19_ | _loc32_;
                                 si32(_loc19_,_loc4_);
                              }
                              addr3386:
                              si8(49,_loc16_);
                              _loc3_ = int(_loc28_ + 1);
                              _loc20_ = int(_loc16_ + 1);
                              _loc50_ = 0;
                              _loc32_ = 32;
                              _loc6_ = _loc5_;
                              §§goto(addr4712);
                           }
                           else if(_loc29_ != 0)
                           {
                              _loc19_ = int(_loc2_ - 120);
                              si32(_loc32_,_loc19_ | 4);
                              si32(_loc8_,_loc2_ - 120);
                              _loc32_ = 0;
                              si32(_loc32_,_loc2_ - 4);
                              _loc19_ = _loc10_ << 3;
                              _loc19_ = int(_loc19_ + ___tens_D2A);
                              _loc39_ = Number(_loc40_ * 0.5);
                              _loc22_ = _loc39_ / lf64(_loc19_ - 8) - lf64(_loc2_ - 120);
                              _loc20_ = int(_loc16_ + 1);
                              while(true)
                              {
                                 _loc19_ = int(_loc2_ - 128);
                                 _loc19_ = _loc19_ | 4;
                                 si32(_loc5_,_loc19_);
                                 si32(_loc6_,_loc2_ - 128);
                                 _loc39_ = lf64(_loc2_ - 128);
                                 _loc38_ = Number(_loc39_ / _loc40_);
                                 var _loc12_:int = _loc38_;
                                 _loc48_ = int(_loc12_ + 48);
                                 si8(_loc48_,_loc20_ - 1);
                                 _loc38_ = Number(_loc12_);
                                 _loc38_ = Number(_loc38_ * _loc40_);
                                 _loc23_ = _loc39_ - _loc38_;
                                 if(!(_loc23_ >= _loc22_ | _loc23_ != _loc23_ | _loc22_ != _loc22_))
                                 {
                                    _loc3_ = _loc28_;
                                    if(_loc23_ != 0)
                                    {
                                       _loc32_ = 16;
                                       _loc3_ = _loc28_;
                                       break;
                                    }
                                    break;
                                 }
                                 _loc39_ = Number(_loc40_ - _loc23_);
                                 if(_loc39_ >= _loc22_)
                                 {
                                    _loc19_ = li32(_loc2_ - 4);
                                    _loc19_ = int(_loc19_ + 1);
                                    si32(_loc19_,_loc2_ - 4);
                                    if(_loc19_ < _loc10_)
                                    {
                                       _loc39_ = Number(_loc23_ * 10);
                                       sf64(_loc39_,_loc2_ - 136);
                                       _loc20_ = int(_loc20_ + 1);
                                       _loc22_ = _loc22_ * 10;
                                       _loc19_ = int(_loc2_ - 136);
                                       _loc19_ = _loc19_ | 4;
                                       _loc5_ = li32(_loc19_);
                                       _loc6_ = li32(_loc2_ - 136);
                                       continue;
                                    }
                                 }
                              }
                              §§goto(addr4783);
                           }
                           else
                           {
                              si32(1,_loc2_ - 4);
                              _loc19_ = _loc10_ << 3;
                              _loc19_ = int(_loc19_ + ___tens_D2A);
                              _loc24_ = lf64(_loc19_ - 8);
                              _loc20_ = int(_loc16_ + 1);
                              while(true)
                              {
                                 _loc19_ = int(_loc2_ - 144);
                                 _loc19_ = _loc19_ | 4;
                                 si32(_loc5_,_loc19_);
                                 si32(_loc6_,_loc2_ - 144);
                                 _loc27_ = lf64(_loc2_ - 144);
                                 _loc39_ = Number(_loc27_ / _loc40_);
                                 _loc17_ = _loc39_;
                                 if(_loc17_ != 0)
                                 {
                                    _loc39_ = Number(_loc17_);
                                    _loc39_ = Number(_loc27_ - _loc39_ * _loc40_);
                                    sf64(_loc39_,_loc2_ - 152);
                                    _loc19_ = int(_loc2_ - 152);
                                    _loc19_ = _loc19_ | 4;
                                    _loc5_ = li32(_loc19_);
                                    _loc6_ = li32(_loc2_ - 152);
                                 }
                                 _loc19_ = int(_loc17_ + 48);
                                 si8(_loc19_,_loc20_ - 1);
                                 _loc15_ = li32(_loc2_ - 4);
                                 if(_loc15_ == _loc10_)
                                 {
                                    break;
                                 }
                                 _loc19_ = int(_loc2_ - 160);
                                 si32(_loc5_,_loc19_ | 4);
                                 si32(_loc6_,_loc2_ - 160);
                                 _loc19_ = int(_loc15_ + 1);
                                 si32(_loc19_,_loc2_ - 4);
                                 _loc39_ = lf64(_loc2_ - 160);
                                 _loc39_ = Number(_loc39_ * 10);
                                 sf64(_loc39_,_loc2_ - 168);
                                 _loc20_ = int(_loc20_ + 1);
                                 _loc19_ = int(_loc2_ - 168);
                                 _loc19_ = _loc19_ | 4;
                                 _loc5_ = li32(_loc19_);
                                 _loc6_ = li32(_loc2_ - 168);
                              }
                              _loc19_ = int(_loc2_ - 176);
                              si32(_loc32_,_loc19_ | 4);
                              _loc19_ = int(_loc2_ - 184);
                              si32(_loc5_,_loc19_ | 4);
                              si32(_loc8_,_loc2_ - 176);
                              si32(_loc6_,_loc2_ - 184);
                              _loc39_ = lf64(_loc2_ - 176);
                              _loc42_ = Number(_loc39_ * _loc24_);
                              _loc23_ = _loc40_ * 0.5;
                              _loc40_ = lf64(_loc2_ - 184);
                              if(_loc40_ <= Number(_loc42_ + _loc23_))
                              {
                                 _loc39_ = Number(_loc23_ - _loc42_);
                                 if(!(_loc40_ >= _loc39_ | _loc40_ != _loc40_ | _loc39_ != _loc39_))
                                 {
                                    _loc32_ = 0;
                                    _loc3_ = _loc28_;
                                    if(_loc40_ != 0)
                                    {
                                       _loc32_ = 16;
                                       _loc3_ = _loc28_;
                                    }
                                    addr2408:
                                    _loc51_ = int(_loc20_ + 1);
                                    do
                                    {
                                       _loc20_ = int(_loc51_ + -1);
                                       _loc19_ = li8(_loc51_ - 2);
                                       _loc51_ = _loc20_;
                                    }
                                    while(_loc19_ == 48);
                                    
                                 }
                                 §§goto(addr4783);
                              }
                           }
                           addr2425:
                           while(true)
                           {
                              _loc51_ = _loc20_;
                              _loc3_ = li8(_loc51_ - 1);
                              if(_loc3_ != 57)
                              {
                                 _loc50_ = int(_loc3_ + 1);
                                 _loc3_ = _loc28_;
                                 break;
                              }
                              _loc20_ = int(_loc51_ + -1);
                              if(_loc16_ == _loc20_)
                              {
                                 si8(48,_loc20_);
                                 _loc3_ = int(_loc28_ + 1);
                                 _loc50_ = 49;
                                 break;
                              }
                           }
                           si8(_loc50_,_loc51_ - 1);
                           _loc32_ = 32;
                           _loc20_ = _loc51_;
                           §§goto(addr4783);
                        }
                     }
                  }
                  if(_loc45_ >= 0)
                  {
                     if(_loc3_ <= 14)
                     {
                        _loc19_ = int(___tens_D2A + (_loc3_ << 3));
                        _loc26_ = lf64(_loc19_);
                        if(_loc50_ <= -1)
                        {
                           if(_loc47_ <= 0)
                           {
                              _loc14_ = 0;
                              _loc6_ = _loc14_;
                              if(_loc47_ >= 0)
                              {
                                 _loc19_ = int(_loc2_ - 216);
                                 si32(_loc37_,_loc19_ | 4);
                                 si32(_loc44_,_loc2_ - 216);
                                 _loc38_ = Number(_loc26_ * 5);
                                 _loc14_ = 0;
                                 _loc39_ = lf64(_loc2_ - 216);
                                 _loc6_ = _loc14_;
                                 _loc28_ = _loc3_;
                                 _loc5_ = _loc14_;
                                 if(_loc39_ > _loc38_ | _loc39_ != _loc39_ | _loc38_ != _loc38_)
                                 {
                                    §§goto(addr3386);
                                 }
                              }
                              §§goto(addr3374);
                           }
                           §§goto(addr4783);
                        }
                        si32(1,_loc2_ - 4);
                        _loc20_ = int(_loc16_ + 1);
                        while(true)
                        {
                           _loc19_ = int(_loc2_ - 200);
                           _loc19_ = _loc19_ | 4;
                           si32(_loc37_,_loc19_);
                           si32(_loc44_,_loc2_ - 200);
                           _loc39_ = lf64(_loc2_ - 200);
                           _loc38_ = Number(_loc39_ / _loc26_);
                           _loc50_ = int(_loc38_);
                           _loc48_ = int(_loc50_ + 48);
                           si8(_loc48_,_loc20_ - 1);
                           _loc38_ = Number(_loc50_);
                           _loc38_ = Number(_loc38_ * _loc26_);
                           _loc25_ = _loc39_ - _loc38_;
                           _loc32_ = 0;
                           if(_loc25_ != 0)
                           {
                              _loc52_ = li32(_loc2_ - 4);
                              if(_loc52_ == _loc47_)
                              {
                                 _loc28_ = _loc3_;
                                 if(_loc53_ != 1)
                                 {
                                    _loc32_ = 16;
                                    if(_loc53_ == 0)
                                    {
                                       _loc25_ = _loc25_ + _loc25_;
                                       _loc28_ = _loc3_;
                                       if(_loc25_ <= _loc26_)
                                       {
                                          _loc32_ = 16;
                                          if(_loc25_ == _loc26_)
                                          {
                                             _loc32_ = 16;
                                             _loc28_ = _loc3_;
                                             if((_loc50_ & 1) != 0)
                                             {
                                             }
                                          }
                                          §§goto(addr2408);
                                       }
                                    }
                                 }
                                 §§goto(addr2425);
                              }
                              else
                              {
                                 _loc39_ = Number(_loc25_ * 10);
                                 sf64(_loc39_,_loc2_ - 208);
                                 _loc19_ = int(_loc52_ + 1);
                                 si32(_loc19_,_loc2_ - 4);
                                 _loc20_ = int(_loc20_ + 1);
                                 _loc19_ = int(_loc2_ - 208);
                                 _loc19_ = _loc19_ | 4;
                                 _loc37_ = li32(_loc19_);
                                 _loc44_ = li32(_loc2_ - 208);
                                 continue;
                              }
                           }
                           §§goto(addr4783);
                        }
                     }
                     §§goto(addr4712);
                  }
                  _loc14_ = 0;
                  _loc44_ = _loc36_;
                  _loc37_ = _loc34_;
                  if(_loc29_ != 0)
                  {
                     if(_loc46_ <= 1)
                     {
                        _loc19_ = int(_loc7_ - _loc49_);
                        _loc7_ = int(_loc19_ + 1);
                        _loc20_ = li32(_loc9_ + 4);
                        si32(_loc7_,_loc2_ - 4);
                        _loc44_ = _loc36_;
                        _loc37_ = _loc34_;
                        if(int(_loc45_ - _loc19_) < _loc20_)
                        {
                           _loc19_ = int(_loc45_ + 1);
                           _loc7_ = int(_loc19_ - _loc20_);
                           si32(_loc7_,_loc2_ - 4);
                           _loc44_ = _loc36_;
                           _loc37_ = _loc34_;
                        }
                     }
                     else
                     {
                        _loc37_ = int(_loc47_ + -1);
                        if(_loc34_ >= _loc37_)
                        {
                           _loc45_ = int(_loc34_ - _loc37_);
                           _loc37_ = _loc34_;
                        }
                        else
                        {
                           _loc19_ = int(_loc31_ - _loc34_);
                           _loc31_ = int(_loc19_ + _loc37_);
                           _loc45_ = 0;
                        }
                        si32(_loc47_,_loc2_ - 4);
                        _loc7_ = _loc47_;
                        _loc34_ = _loc45_;
                        _loc44_ = _loc36_;
                        if(_loc47_ <= -1)
                        {
                           _loc7_ = 0;
                           si32(_loc7_,_loc2_ - 4);
                           _loc44_ = int(_loc36_ - _loc47_);
                           _loc34_ = _loc45_;
                        }
                     }
                     _loc1_ = int(_loc1_ - 16);
                     si32(1,_loc1_);
                     _loc33_ = _loc7_ + _loc33_;
                     _loc36_ = _loc7_ + _loc36_;
                     ESP = _loc1_;
                     F___i2b_D2A();
                     _loc1_ = int(_loc1_ + 16);
                     _loc14_ = int(eax);
                  }
                  if(_loc44_ >= 1)
                  {
                     if(_loc33_ >= 1)
                     {
                        _loc7_ = _loc33_;
                        if(_loc33_ > _loc44_)
                        {
                           _loc7_ = _loc44_;
                        }
                        si32(_loc7_,_loc2_ - 4);
                        _loc33_ = _loc33_ - _loc7_;
                        _loc44_ = int(_loc44_ - _loc7_);
                        _loc36_ = _loc36_ - _loc7_;
                     }
                  }
                  if(_loc37_ >= 1)
                  {
                     if(_loc29_ != 0)
                     {
                        if(_loc34_ >= 1)
                        {
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc34_,_loc1_ + 4);
                           si32(_loc14_,_loc1_);
                           ESP = _loc1_;
                           F___pow5mult_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc14_ = int(eax);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc18_,_loc1_ + 4);
                           si32(_loc14_,_loc1_);
                           ESP = _loc1_;
                           F___mult_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc18_,_loc1_);
                           ESP = _loc1_;
                           F___Bfree_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc18_ = int(eax);
                        }
                        if(_loc37_ != _loc34_)
                        {
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc18_,_loc1_);
                           _loc19_ = int(_loc37_ - _loc34_);
                           si32(_loc19_,_loc1_ + 4);
                           ESP = _loc1_;
                           F___pow5mult_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc18_ = int(eax);
                        }
                     }
                     else
                     {
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc37_,_loc1_ + 4);
                        si32(_loc18_,_loc1_);
                        ESP = _loc1_;
                        F___pow5mult_D2A();
                        _loc1_ = int(_loc1_ + 16);
                        _loc18_ = int(eax);
                     }
                  }
                  _loc1_ = int(_loc1_ - 16);
                  _loc45_ = 1;
                  si32(_loc45_,_loc1_);
                  ESP = _loc1_;
                  F___i2b_D2A();
                  _loc1_ = int(_loc1_ + 16);
                  _loc6_ = int(eax);
                  if(_loc31_ >= 1)
                  {
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc31_,_loc1_ + 4);
                     si32(_loc6_,_loc1_);
                     ESP = _loc1_;
                     F___pow5mult_D2A();
                     _loc1_ = int(_loc1_ + 16);
                     _loc6_ = int(eax);
                  }
                  _loc7_ = 0;
                  if(_loc46_ <= 1)
                  {
                     if(_loc49_ == 1)
                     {
                        _loc19_ = li32(_loc9_ + 4);
                        _loc7_ = 0;
                        if(int(_loc19_ + 1) < _loc52_)
                        {
                           _loc33_ = _loc33_ + 1;
                           _loc36_ = _loc36_ + 1;
                           _loc7_ = 1;
                        }
                     }
                  }
                  if(_loc31_ != 0)
                  {
                     _loc19_ = li32(_loc6_ + 16);
                     _loc19_ = _loc19_ << 2;
                     _loc19_ = int(_loc19_ + _loc6_);
                     _loc1_ = int(_loc1_ - 16);
                     si32(li32(_loc19_ + 16),_loc1_);
                     ESP = _loc1_;
                     F___hi0bits_D2A();
                     _loc1_ = int(_loc1_ + 16);
                     _loc45_ = int(32 - int(eax));
                  }
                  _loc19_ = int(_loc45_ + _loc33_);
                  _loc9_ = _loc19_ & 31;
                  si32(_loc9_,_loc2_ - 4);
                  _loc52_ = 0;
                  if(_loc9_ != 0)
                  {
                     _loc52_ = int(32 - _loc9_);
                     si32(_loc52_,_loc2_ - 4);
                     if(uint(_loc52_) >= 5)
                     {
                        _loc19_ = int(_loc52_ + -4);
                        si32(_loc19_,_loc2_ - 4);
                        _loc33_ = _loc19_ + _loc33_;
                        _loc44_ = int(_loc19_ + _loc44_);
                        _loc36_ = _loc19_ + _loc36_;
                     }
                     else if(uint(_loc52_) <= 3)
                     {
                     }
                     addr3120:
                     if(_loc36_ >= 1)
                     {
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc36_,_loc1_ + 4);
                        si32(_loc18_,_loc1_);
                        ESP = _loc1_;
                        F___lshift_D2A();
                        _loc1_ = int(_loc1_ + 16);
                        _loc18_ = int(eax);
                     }
                     if(_loc33_ >= 1)
                     {
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc33_,_loc1_ + 4);
                        si32(_loc6_,_loc1_);
                        ESP = _loc1_;
                        F___lshift_D2A();
                        _loc1_ = int(_loc1_ + 16);
                        _loc6_ = int(eax);
                     }
                     if(_loc35_ != 0)
                     {
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc6_,_loc1_ + 4);
                        si32(_loc18_,_loc1_);
                        ESP = _loc1_;
                        F___cmp_D2A();
                        _loc1_ = int(_loc1_ + 16);
                        _loc19_ = int(eax);
                        if(_loc19_ <= -1)
                        {
                           _loc1_ = int(_loc1_ - 16);
                           si32(0,_loc1_ + 8);
                           si32(10,_loc1_ + 4);
                           si32(_loc18_,_loc1_);
                           ESP = _loc1_;
                           F___multadd_D2A();
                           _loc3_ = int(_loc3_ + -1);
                           _loc1_ = int(_loc1_ + 16);
                           _loc18_ = int(eax);
                           _loc47_ = _loc30_;
                           if(_loc29_ != 0)
                           {
                              _loc1_ = int(_loc1_ - 16);
                              si32(0,_loc1_ + 8);
                              si32(10,_loc1_ + 4);
                              si32(_loc14_,_loc1_);
                              ESP = _loc1_;
                              F___multadd_D2A();
                              _loc1_ = int(_loc1_ + 16);
                              _loc14_ = int(eax);
                              _loc47_ = _loc30_;
                           }
                        }
                     }
                     if(_loc47_ <= 0)
                     {
                        if(_loc46_ >= 3)
                        {
                           if(_loc47_ >= 0)
                           {
                              _loc1_ = int(_loc1_ - 16);
                              si32(0,_loc1_ + 8);
                              si32(5,_loc1_ + 4);
                              si32(_loc6_,_loc1_);
                              ESP = _loc1_;
                              F___multadd_D2A();
                              _loc1_ = int(_loc1_ + 16);
                              _loc6_ = int(eax);
                              _loc1_ = int(_loc1_ - 16);
                              si32(_loc6_,_loc1_ + 4);
                              si32(_loc18_,_loc1_);
                              ESP = _loc1_;
                              F___cmp_D2A();
                              _loc1_ = int(_loc1_ + 16);
                              _loc28_ = _loc3_;
                              _loc5_ = _loc6_;
                              if(int(eax) > 0)
                              {
                                 §§goto(addr3386);
                              }
                           }
                           §§goto(addr3374);
                        }
                        §§goto(addr4712);
                     }
                     if(_loc29_ == 0)
                     {
                        si32(1,_loc2_ - 4);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc6_,_loc1_ + 4);
                        si32(_loc18_,_loc1_);
                        ESP = _loc1_;
                        F___quorem_D2A();
                        _loc1_ = int(_loc1_ + 16);
                        _loc19_ = int(eax);
                        _loc52_ = int(_loc19_ + 48);
                        si8(_loc52_,_loc16_);
                        _loc51_ = int(_loc16_ + 1);
                        _loc50_ = 0;
                        _loc19_ = li32(_loc2_ - 4);
                        if(_loc19_ < _loc47_)
                        {
                           _loc51_ = int(_loc16_ + 1);
                           do
                           {
                              _loc1_ = int(_loc1_ - 16);
                              _loc50_ = 0;
                              si32(_loc50_,_loc1_ + 8);
                              si32(10,_loc1_ + 4);
                              si32(_loc18_,_loc1_);
                              ESP = _loc1_;
                              F___multadd_D2A();
                              _loc1_ = int(_loc1_ + 16);
                              _loc18_ = int(eax);
                              _loc19_ = li32(_loc2_ - 4);
                              _loc19_ = int(_loc19_ + 1);
                              si32(_loc19_,_loc2_ - 4);
                              _loc1_ = int(_loc1_ - 16);
                              si32(_loc6_,_loc1_ + 4);
                              si32(_loc18_,_loc1_);
                              ESP = _loc1_;
                              F___quorem_D2A();
                              _loc1_ = int(_loc1_ + 16);
                              _loc19_ = int(eax);
                              _loc52_ = int(_loc19_ + 48);
                              si8(_loc52_,_loc51_);
                              _loc51_ = int(_loc51_ + 1);
                              _loc19_ = li32(_loc2_ - 4);
                           }
                           while(_loc19_ < _loc47_);
                           
                        }
                        addr4526:
                        if(_loc53_ != 0)
                        {
                           if(_loc53_ != 2)
                           {
                              _loc19_ = li32(_loc18_ + 16);
                              if(_loc19_ <= 1)
                              {
                                 _loc19_ = li32(_loc18_ + 20);
                                 if(_loc19_ != 0)
                                 {
                                 }
                              }
                           }
                           addr4669:
                           _loc19_ = li32(_loc18_ + 16);
                           if(_loc19_ <= 1)
                           {
                              _loc32_ = 0;
                              if(li32(_loc18_ + 20) != 0)
                              {
                              }
                              addr4690:
                              _loc51_ = int(_loc51_ + 1);
                              do
                              {
                                 _loc20_ = int(_loc51_ + -1);
                                 _loc19_ = li8(_loc51_ - 2);
                                 _loc51_ = _loc20_;
                              }
                              while(_loc19_ == 48);
                              
                           }
                           _loc32_ = 16;
                           §§goto(addr4690);
                        }
                        else
                        {
                           _loc1_ = int(_loc1_ - 16);
                           si32(1,_loc1_ + 4);
                           si32(_loc18_,_loc1_);
                           ESP = _loc1_;
                           F___lshift_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc18_ = int(eax);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc6_,_loc1_ + 4);
                           si32(_loc18_,_loc1_);
                           ESP = _loc1_;
                           F___cmp_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc9_ = int(eax);
                           if(_loc9_ <= 0)
                           {
                              if(_loc9_ == 0)
                              {
                                 _loc19_ = _loc52_ & 1;
                                 if(_loc19_ != 0)
                                 {
                                 }
                              }
                              §§goto(addr4669);
                           }
                        }
                        addr4623:
                        while(true)
                        {
                           _loc20_ = _loc51_;
                           _loc51_ = li8(_loc20_ - 1);
                           if(_loc51_ != 57)
                           {
                              _loc19_ = int(_loc51_ + 1);
                              si8(_loc19_,_loc20_ - 1);
                              _loc32_ = 32;
                           }
                           else
                           {
                              _loc51_ = int(_loc20_ + -1);
                              if(_loc16_ == _loc51_)
                              {
                                 si8(49,_loc51_);
                                 _loc3_ = int(_loc3_ + 1);
                                 _loc32_ = 32;
                              }
                              else
                              {
                                 continue;
                              }
                           }
                        }
                     }
                     else
                     {
                        if(_loc44_ >= 1)
                        {
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc44_,_loc1_ + 4);
                           si32(_loc14_,_loc1_);
                           ESP = _loc1_;
                           F___lshift_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc14_ = int(eax);
                        }
                        _loc52_ = _loc14_;
                        if(_loc7_ != 0)
                        {
                           _loc1_ = int(_loc1_ - 16);
                           si32(li32(_loc14_ + 4),_loc1_);
                           ESP = _loc1_;
                           F___Balloc_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc1_ = int(_loc1_ - 16);
                           _loc48_ = li32(_loc14_ + 16) << 2;
                           _loc48_ = int(_loc48_ + 8);
                           si32(_loc48_,_loc1_ + 8);
                           _loc48_ = int(_loc14_ + 12);
                           si32(_loc48_,_loc1_ + 4);
                           _loc48_ = int(int(eax) + 12);
                           si32(_loc48_,_loc1_);
                           ESP = _loc1_;
                           Fmemcpy();
                           _loc1_ = int(_loc1_ + 16);
                           _loc1_ = int(_loc1_ - 16);
                           si32(1,_loc1_ + 4);
                           si32(int(eax),_loc1_);
                           ESP = _loc1_;
                           F___lshift_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc52_ = int(eax);
                        }
                        _loc32_ = 0;
                        _loc9_ = _loc16_;
                        _loc7_ = 1;
                        _loc50_ = _loc14_;
                        _loc14_ = _loc52_;
                        while(true)
                        {
                           si32(_loc7_,_loc2_ - 4);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc6_,_loc1_ + 4);
                           si32(_loc18_,_loc1_);
                           ESP = _loc1_;
                           F___quorem_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc7_ = int(eax);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc50_,_loc1_ + 4);
                           si32(_loc18_,_loc1_);
                           ESP = _loc1_;
                           F___cmp_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc49_ = eax;
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc14_,_loc1_ + 4);
                           si32(_loc6_,_loc1_);
                           ESP = _loc1_;
                           F___diff_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc35_ = eax;
                           _loc19_ = li32(_loc35_ + 12);
                           _loc45_ = 1;
                           if(_loc19_ == 0)
                           {
                              _loc1_ = int(_loc1_ - 16);
                              si32(_loc35_,_loc1_ + 4);
                              si32(_loc18_,_loc1_);
                              ESP = _loc1_;
                              F___cmp_D2A();
                              _loc1_ = int(_loc1_ + 16);
                              _loc45_ = int(eax);
                           }
                           _loc52_ = int(_loc7_ + 48);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc35_,_loc1_);
                           _loc19_ = _loc45_ | _loc46_;
                           ESP = _loc1_;
                           F___Bfree_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           if(_loc19_ == 0)
                           {
                              _loc19_ = li32(_loc51_);
                              _loc19_ = _loc19_ & 1;
                              _loc19_ = _loc19_ | _loc53_;
                              if(_loc19_ == 0)
                              {
                                 if(_loc52_ != 57)
                                 {
                                    _loc20_ = int(_loc9_ + 1);
                                    if(_loc49_ <= 0)
                                    {
                                       _loc19_ = li32(_loc18_ + 16);
                                       if(_loc19_ >= 2)
                                       {
                                          addr3830:
                                          _loc32_ = 16;
                                       }
                                       else
                                       {
                                          _loc32_ = 0;
                                          if(li32(_loc18_ + 20) != 0)
                                          {
                                             §§goto(addr3830);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       _loc52_ = int(_loc7_ + 49);
                                       _loc32_ = 32;
                                    }
                                    si8(_loc52_,_loc9_);
                                 }
                                 else
                                 {
                                    addr4228:
                                    si8(57,_loc9_);
                                    _loc51_ = int(_loc9_ + 1);
                                 }
                              }
                              §§goto(addr4623);
                           }
                           if(_loc49_ >= 0)
                           {
                              _loc19_ = _loc49_ | _loc46_;
                              if(_loc19_ == 0)
                              {
                                 _loc19_ = li8(_loc51_);
                                 _loc19_ = _loc19_ & 1;
                                 if(_loc19_ == 0)
                                 {
                                    break;
                                 }
                              }
                              if(_loc45_ >= 1)
                              {
                                 if(_loc53_ != 2)
                                 {
                                    if(_loc52_ == 57)
                                    {
                                       §§goto(addr4228);
                                    }
                                    else
                                    {
                                       _loc20_ = int(_loc9_ + 1);
                                       _loc19_ = int(_loc52_ + 1);
                                       si8(_loc19_,_loc9_);
                                       _loc32_ = 32;
                                    }
                                 }
                                 §§goto(addr4623);
                              }
                              si8(_loc52_,_loc9_);
                              _loc19_ = li32(_loc2_ - 4);
                              if(_loc19_ != _loc47_)
                              {
                                 _loc1_ = int(_loc1_ - 16);
                                 si32(_loc32_,_loc1_ + 8);
                                 si32(10,_loc1_ + 4);
                                 si32(_loc18_,_loc1_);
                                 ESP = _loc1_;
                                 F___multadd_D2A();
                                 _loc1_ = int(_loc1_ + 16);
                                 _loc18_ = int(eax);
                                 if(_loc50_ == _loc14_)
                                 {
                                    _loc1_ = int(_loc1_ - 16);
                                    si32(_loc32_,_loc1_ + 8);
                                    si32(10,_loc1_ + 4);
                                    si32(_loc14_,_loc1_);
                                    ESP = _loc1_;
                                    F___multadd_D2A();
                                    _loc1_ = int(_loc1_ + 16);
                                    _loc50_ = int(eax);
                                    _loc14_ = _loc50_;
                                 }
                                 else
                                 {
                                    _loc1_ = int(_loc1_ - 16);
                                    si32(_loc32_,_loc1_ + 8);
                                    si32(10,_loc1_ + 4);
                                    si32(_loc50_,_loc1_);
                                    ESP = _loc1_;
                                    F___multadd_D2A();
                                    _loc1_ = int(_loc1_ + 16);
                                    _loc50_ = int(eax);
                                    _loc1_ = int(_loc1_ - 16);
                                    si32(_loc32_,_loc1_ + 8);
                                    si32(10,_loc1_ + 4);
                                    si32(_loc14_,_loc1_);
                                    ESP = _loc1_;
                                    F___multadd_D2A();
                                    _loc1_ = int(_loc1_ + 16);
                                    _loc14_ = int(eax);
                                 }
                                 continue;
                              }
                              _loc51_ = int(_loc9_ + 1);
                              §§goto(addr4526);
                           }
                           break;
                        }
                        if(_loc53_ != 0)
                        {
                           _loc19_ = li32(_loc18_ + 16);
                           if(_loc19_ <= 1)
                           {
                              _loc19_ = li32(_loc18_ + 20);
                              if(_loc19_ != 0)
                              {
                              }
                              addr4206:
                              si8(_loc52_,_loc9_);
                              _loc20_ = int(_loc9_ + 1);
                           }
                           if(_loc53_ != 2)
                           {
                              _loc1_ = int(_loc1_ - 16);
                              si32(_loc14_,_loc1_ + 4);
                              si32(_loc6_,_loc1_);
                              ESP = _loc1_;
                              F___cmp_D2A();
                              _loc1_ = int(_loc1_ + 16);
                              _loc19_ = int(eax);
                              if(_loc19_ >= 1)
                              {
                                 _loc47_ = _loc14_;
                                 _loc51_ = _loc50_;
                                 do
                                 {
                                    si8(_loc52_,_loc9_);
                                    _loc1_ = int(_loc1_ - 16);
                                    si32(_loc32_,_loc1_ + 8);
                                    si32(10,_loc1_ + 4);
                                    si32(_loc47_,_loc1_);
                                    ESP = _loc1_;
                                    F___multadd_D2A();
                                    _loc1_ = int(_loc1_ + 16);
                                    _loc14_ = int(eax);
                                    _loc1_ = int(_loc1_ - 16);
                                    si32(_loc32_,_loc1_ + 8);
                                    si32(10,_loc1_ + 4);
                                    si32(_loc18_,_loc1_);
                                    ESP = _loc1_;
                                    F___multadd_D2A();
                                    _loc1_ = int(_loc1_ + 16);
                                    _loc18_ = int(eax);
                                    _loc1_ = int(_loc1_ - 16);
                                    si32(_loc6_,_loc1_ + 4);
                                    si32(_loc18_,_loc1_);
                                    ESP = _loc1_;
                                    F___quorem_D2A();
                                    _loc1_ = int(_loc1_ + 16);
                                    _loc52_ = int(eax);
                                    _loc1_ = int(_loc1_ - 16);
                                    si32(_loc14_,_loc1_ + 4);
                                    si32(_loc6_,_loc1_);
                                    _loc50_ = _loc14_;
                                    if(_loc51_ != _loc47_)
                                    {
                                       _loc50_ = _loc51_;
                                    }
                                    ESP = _loc1_;
                                    F___cmp_D2A();
                                    _loc9_ = int(_loc9_ + 1);
                                    _loc52_ = int(_loc52_ + 48);
                                    _loc1_ = int(_loc1_ + 16);
                                    _loc19_ = int(eax);
                                    _loc47_ = _loc14_;
                                    _loc51_ = _loc50_;
                                 }
                                 while(_loc19_ > 0);
                                 
                              }
                              _loc52_ = int(_loc52_ + 1);
                              if(_loc52_ != 58)
                              {
                                 _loc32_ = 32;
                              }
                              else
                              {
                                 §§goto(addr4228);
                              }
                           }
                           else
                           {
                              _loc32_ = 16;
                           }
                           §§goto(addr4206);
                        }
                        if(_loc45_ >= 1)
                        {
                           _loc1_ = int(_loc1_ - 16);
                           si32(1,_loc1_ + 4);
                           si32(_loc18_,_loc1_);
                           ESP = _loc1_;
                           F___lshift_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc18_ = int(eax);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc6_,_loc1_ + 4);
                           si32(_loc18_,_loc1_);
                           ESP = _loc1_;
                           F___cmp_D2A();
                           _loc1_ = int(_loc1_ + 16);
                           _loc51_ = int(eax);
                           if(_loc51_ <= 0)
                           {
                              _loc32_ = 32;
                              if(_loc51_ == 0)
                              {
                                 _loc32_ = 32;
                                 if((_loc52_ & 1) != 0)
                                 {
                                 }
                              }
                           }
                           _loc52_ = int(_loc7_ + 49);
                           if(_loc52_ != 58)
                           {
                              _loc32_ = 32;
                           }
                           else
                           {
                              §§goto(addr4228);
                           }
                        }
                        _loc19_ = li32(_loc18_ + 16);
                        if(_loc19_ <= 1)
                        {
                           _loc19_ = li32(_loc18_ + 20);
                           if(_loc19_ != 0)
                           {
                           }
                           §§goto(addr4206);
                        }
                        _loc32_ = 16;
                        §§goto(addr4206);
                     }
                     §§goto(addr4712);
                  }
                  _loc19_ = int(_loc52_ + 28);
                  si32(_loc19_,_loc2_ - 4);
                  _loc33_ = _loc19_ + _loc33_;
                  _loc44_ = int(_loc19_ + _loc44_);
                  _loc36_ = _loc19_ + _loc36_;
                  §§goto(addr3120);
               }
            }
         }
         si32(1,_loc11_);
         _loc1_ = int(_loc1_ - 16);
         si32(1,_loc1_ + 8);
         si32(_loc13_,_loc1_ + 4);
         si32(L__2E_str2,_loc1_);
         ESP = _loc1_;
         F___nrv_alloc_D2A();
         _loc1_ = int(_loc1_ + 16);
         _loc16_ = int(eax);
      }
      else if(_loc18_ != 4)
      {
         if(_loc18_ == 3)
         {
            si32(-32768,_loc11_);
            _loc1_ = int(_loc1_ - 16);
            si32(8,_loc1_ + 8);
            si32(_loc13_,_loc1_ + 4);
            si32(L__2E_str,_loc1_);
            ESP = _loc1_;
            F___nrv_alloc_D2A();
            _loc1_ = int(_loc1_ + 16);
            _loc16_ = int(eax);
         }
      }
      else
      {
         si32(-32768,_loc11_);
         _loc1_ = int(_loc1_ - 16);
         si32(3,_loc1_ + 8);
         si32(_loc13_,_loc1_ + 4);
         si32(L__2E_str1,_loc1_);
         ESP = _loc1_;
         F___nrv_alloc_D2A();
         _loc1_ = int(_loc1_ + 16);
         _loc16_ = int(eax);
      }
      eax = _loc16_;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
