package sample.xx
{
   import sample.xx_fprintf_2E_o_3A_0BC8B663_2D_A41B_2D_4979_2D_8659_2D_24B6D3749F76.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   
   public function F___vfprintf() : void
   {
      var _loc2_:* = 0;
      var _loc24_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc46_:int = 0;
      var _loc43_:int = 0;
      var _loc41_:int = 0;
      var _loc45_:int = 0;
      var _loc49_:int = 0;
      var _loc44_:int = 0;
      var _loc25_:* = 0;
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc23_:* = 0;
      var _loc17_:* = 0;
      var _loc40_:* = 0;
      var _loc29_:* = 0;
      var _loc36_:* = 0;
      var _loc10_:* = 0;
      var _loc18_:* = 0;
      var _loc34_:* = 0;
      var _loc13_:* = 0;
      var _loc15_:* = 0;
      var _loc32_:* = 0;
      var _loc22_:* = 0;
      var _loc16_:int = 0;
      var _loc14_:int = 0;
      var _loc12_:* = 0;
      var _loc47_:int = 0;
      var _loc48_:int = 0;
      var _loc42_:int = 0;
      var _loc31_:* = 0;
      var _loc33_:* = 0;
      var _loc38_:* = NaN;
      var _loc6_:* = 0;
      var _loc37_:* = 0;
      var _loc11_:* = 0;
      var _loc21_:* = 0;
      var _loc27_:* = 0;
      var _loc35_:* = 0;
      var _loc5_:* = 0;
      var _loc26_:* = 0;
      var _loc7_:* = 0;
      var _loc19_:* = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc1_ = int(_loc1_ - 528);
      _loc9_ = li32(___use_xprintf);
      _loc26_ = li32(_loc2_ + 8);
      _loc24_ = li32(_loc2_ + 4);
      _loc22_ = li32(_loc2_);
      if(_loc9_ == 0)
      {
         _loc1_ = int(_loc1_ - 16);
         si32(L__2E_str,_loc1_);
         ESP = _loc1_;
         F_getenv();
         _loc1_ = int(_loc1_ + 16);
         var _loc20_:* = int(eax);
         if(_loc20_ != 0)
         {
            si32(1,___use_xprintf);
            addr156:
            _loc1_ = int(_loc1_ - 16);
            si32(_loc26_,_loc1_ + 8);
            si32(_loc24_,_loc1_ + 4);
            si32(_loc22_,_loc1_);
            ESP = _loc1_;
            F___xvprintf();
            _loc1_ = int(_loc1_ + 16);
            _loc18_ = int(eax);
         }
         addr9599:
         eax = _loc18_;
         _loc1_ = _loc2_;
         ESP = _loc1_;
         return;
      }
      if(_loc9_ >= 1)
      {
         §§goto(addr156);
      }
      §§goto(addr9599);
      _loc9_ = li16(_loc22_ + 12);
      _loc20_ = _loc9_ & 8;
      if(_loc20_ != 0)
      {
         _loc20_ = li32(_loc22_ + 16);
         if(_loc20_ == 0)
         {
            _loc20_ = _loc9_ & 512;
            if(_loc20_ == 0)
            {
            }
         }
         addr248:
         si32(0,_loc2_ - 320);
         si32(_loc26_,_loc2_ - 392);
         si32(_loc26_,_loc2_ - 388);
         _loc16_ = _loc2_ - 280;
         _loc14_ = _loc16_ + 16;
         _loc12_ = _loc16_ | 4;
         si32(_loc14_,_loc12_);
         si32(0,_loc12_ + 8);
         si32(0,_loc2_ - 272);
         si32(_loc22_,_loc2_ - 280);
         ESP = _loc1_;
         F_localeconv();
         _loc20_ = int(eax);
         _loc8_ = li32(_loc20_);
         _loc20_ = li8(_loc8_ + 1);
         _loc46_ = 1;
         if(_loc20_ != 0)
         {
            _loc1_ = int(_loc1_ - 16);
            si32(_loc8_,_loc1_);
            ESP = _loc1_;
            F_strlen();
            _loc1_ = int(_loc1_ + 16);
            _loc46_ = eax;
         }
         _loc47_ = _loc2_ - 138;
         _loc9_ = int(_loc47_ + 5);
         _loc48_ = _loc2_ - 200;
         _loc49_ = _loc48_ + 3;
         _loc42_ = _loc2_ - 312;
         _loc43_ = _loc42_ + 32;
         _loc44_ = _loc42_ + 31;
         _loc45_ = _loc47_ + 6;
         _loc41_ = _loc48_ + 2;
         _loc40_ = _loc24_;
         _loc37_ = 0;
         _loc35_ = 0;
         _loc36_ = 1;
         _loc33_ = 0;
         loop0:
         while(true)
         {
            _loc34_ = 0;
            while(true)
            {
               _loc31_ = int(_loc40_ - _loc34_);
               _loc32_ = li8(_loc31_);
               if(_loc32_ != 0)
               {
                  if(_loc32_ == 37)
                  {
                     break;
                  }
                  _loc34_ = int(_loc34_ + -1);
                  continue;
               }
               break;
            }
            _loc29_ = _loc37_;
            if(_loc34_ != 0)
            {
               _loc29_ = int(_loc37_ - _loc34_);
               _loc18_ = -1;
               if(_loc29_ >= 0)
               {
                  var _loc30_:* = li32(_loc2_ - 272);
                  si32(_loc40_,int(_loc14_ + (_loc30_ << 3)));
                  _loc30_ = li32(_loc2_ - 272);
                  var _loc28_:* = int(_loc14_ + (_loc30_ << 3));
                  si32(int(0 - _loc34_),_loc28_ | 4);
                  _loc40_ = li32(_loc2_ - 268);
                  _loc20_ = int(_loc40_ - _loc34_);
                  si32(_loc20_,_loc2_ - 268);
                  _loc20_ = int(_loc30_ + 1);
                  si32(_loc20_,_loc2_ - 272);
                  if(_loc20_ >= 8)
                  {
                     if(_loc40_ == _loc34_)
                     {
                        si32(0,_loc2_ - 272);
                     }
                     else
                     {
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc12_,_loc1_ + 4);
                        si32(li32(_loc2_ - 280),_loc1_);
                        ESP = _loc1_;
                        F___sfvwrite();
                        _loc1_ = int(_loc1_ + 16);
                        si32(0,_loc2_ - 268);
                        si32(0,_loc2_ - 272);
                        _loc18_ = _loc37_;
                        if(int(eax) == 0)
                        {
                        }
                     }
                  }
               }
               addr9498:
               if(_loc35_ != 0)
               {
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc35_,_loc1_);
                  ESP = _loc1_;
                  F___freedtoa();
                  _loc1_ = int(_loc1_ + 16);
               }
               if(_loc33_ != 0)
               {
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc33_,_loc1_);
                  ESP = _loc1_;
                  F_free();
                  _loc1_ = int(_loc1_ + 16);
               }
               _loc20_ = li8(_loc22_ + 12);
               _loc20_ = _loc20_ & 64;
               if(_loc20_ != 0)
               {
                  _loc18_ = -1;
               }
               _loc22_ = li32(_loc2_ - 320);
               if(_loc22_ != 0)
               {
                  _loc20_ = int(_loc2_ - 384);
                  if(_loc20_ != _loc22_)
                  {
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc22_,_loc1_);
                     ESP = _loc1_;
                     F_free();
                     _loc1_ = int(_loc1_ + 16);
                  }
               }
               §§goto(addr9599);
            }
            if(_loc32_ != 0)
            {
               _loc37_ = 0;
               si32(_loc37_,_loc2_ - 160);
               si8(_loc37_,_loc2_ - 139);
               si8(_loc37_,_loc2_ - 313);
               _loc40_ = int(_loc31_ + 1);
               _loc34_ = -1;
               _loc31_ = _loc37_;
               loop2:
               while(true)
               {
                  _loc32_ = int(_loc40_ + 1);
                  _loc11_ = si8(li8(_loc40_));
                  _loc10_ = _loc31_;
                  loop3:
                  while(true)
                  {
                     _loc31_ = _loc10_;
                     while(true)
                     {
                        _loc40_ = _loc32_;
                        _loc10_ = 0;
                        if(_loc11_ <= 87)
                        {
                           if(_loc11_ <= 64)
                           {
                              if(_loc11_ <= 42)
                              {
                                 break;
                              }
                              if(_loc11_ <= 45)
                              {
                                 if(_loc11_ != 43)
                                 {
                                    if(_loc11_ != 45)
                                    {
                                       addr6230:
                                       if(_loc11_ != 0)
                                       {
                                          si8(_loc11_,_loc2_ - 312);
                                          _loc19_ = 0;
                                          si8(_loc19_,_loc2_ - 139);
                                          _loc13_ = 1;
                                          _loc15_ = int(_loc2_ - 312);
                                          _loc32_ = _loc37_;
                                       }
                                       else
                                       {
                                          break loop0;
                                       }
                                    }
                                    else
                                    {
                                       addr1071:
                                       _loc37_ = _loc37_ | 4;
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    si8(43,_loc2_ - 139);
                                    continue loop2;
                                 }
                              }
                              else if(_loc11_ != 46)
                              {
                                 if(_loc11_ != 48)
                                 {
                                    _loc20_ = int(_loc11_ + -49);
                                    if(uint(_loc20_) >= 9)
                                    {
                                       §§goto(addr6230);
                                    }
                                    else
                                    {
                                       do
                                       {
                                          _loc20_ = int(_loc10_ * 10);
                                          _loc20_ = int(_loc11_ + _loc20_);
                                          _loc10_ = int(_loc20_ + -48);
                                          _loc32_ = int(_loc40_ + 1);
                                          _loc11_ = si8(li8(_loc40_));
                                          _loc20_ = int(_loc11_ + -48);
                                          _loc40_ = _loc32_;
                                       }
                                       while(uint(_loc20_) < 10);
                                       
                                       _loc20_ = _loc11_ & 255;
                                       if(_loc20_ == 36)
                                       {
                                          _loc40_ = _loc32_;
                                          _loc36_ = _loc10_;
                                          if(li32(_loc2_ - 320) == 0)
                                          {
                                             _loc20_ = int(_loc2_ - 384);
                                             si32(_loc20_,_loc2_ - 320);
                                             _loc1_ = int(_loc1_ - 16);
                                             _loc20_ = int(_loc2_ - 320);
                                             si32(_loc20_,_loc1_ + 8);
                                             si32(li32(_loc2_ - 388),_loc1_ + 4);
                                             si32(_loc24_,_loc1_);
                                             ESP = _loc1_;
                                             F___find_arguments();
                                             _loc18_ = -1;
                                             _loc1_ = int(_loc1_ + 16);
                                             _loc40_ = _loc32_;
                                             _loc36_ = _loc10_;
                                             if(int(eax) == 0)
                                             {
                                                continue loop2;
                                             }
                                          }
                                          else
                                          {
                                             continue loop2;
                                          }
                                       }
                                       else
                                       {
                                          continue loop3;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    break loop3;
                                 }
                              }
                              else
                              {
                                 _loc32_ = int(_loc40_ + 1);
                                 _loc34_ = li8(_loc40_);
                                 if(_loc34_ != 42)
                                 {
                                    _loc20_ = _loc34_ << 24;
                                    _loc11_ = _loc20_ >> 24;
                                    _loc15_ = int(_loc11_ + -48);
                                    _loc34_ = 0;
                                    if(uint(_loc15_) <= 9)
                                    {
                                       _loc40_ = int(_loc40_ + 1);
                                       _loc34_ = 0;
                                       do
                                       {
                                          _loc20_ = int(_loc34_ * 10);
                                          _loc34_ = int(_loc20_ + _loc15_);
                                          _loc32_ = int(_loc40_ + 1);
                                          _loc11_ = si8(li8(_loc40_));
                                          _loc15_ = int(_loc11_ + -48);
                                          _loc40_ = _loc32_;
                                       }
                                       while(uint(_loc15_) < 10);
                                       
                                    }
                                    continue;
                                 }
                                 _loc18_ = si8(li8(_loc32_));
                                 _loc11_ = int(_loc18_ + -48);
                                 _loc15_ = 0;
                                 _loc34_ = _loc32_;
                                 if(uint(_loc11_) <= 9)
                                 {
                                    do
                                    {
                                       _loc20_ = int(_loc15_ * 10);
                                       _loc15_ = int(_loc11_ + _loc20_);
                                       _loc34_ = int(_loc40_ + 1);
                                       _loc18_ = si8(li8(_loc40_ + 2));
                                       _loc11_ = int(_loc18_ + -48);
                                       _loc40_ = _loc34_;
                                    }
                                    while(uint(_loc11_) < 10);
                                    
                                    _loc34_ = int(_loc34_ + 1);
                                 }
                                 _loc20_ = _loc18_ & 255;
                                 _loc40_ = li32(_loc2_ - 320);
                                 if(_loc20_ == 36)
                                 {
                                    if(_loc40_ == 0)
                                    {
                                       _loc20_ = int(_loc2_ - 384);
                                       si32(_loc20_,_loc2_ - 320);
                                       _loc1_ = int(_loc1_ - 16);
                                       _loc30_ = int(_loc2_ - 320);
                                       si32(_loc30_,_loc1_ + 8);
                                       si32(li32(_loc2_ - 388),_loc1_ + 4);
                                       si32(_loc24_,_loc1_);
                                       ESP = _loc1_;
                                       F___find_arguments();
                                       _loc18_ = -1;
                                       _loc1_ = int(_loc1_ + 16);
                                       _loc20_ = int(eax);
                                       if(_loc20_ == 0)
                                       {
                                          _loc40_ = li32(_loc2_ - 320);
                                          if(_loc40_ == 0)
                                          {
                                             _loc32_ = _loc26_;
                                             _loc26_ = int(_loc26_ + 4);
                                          }
                                          addr1289:
                                          _loc40_ = int(_loc34_ + 1);
                                          _loc34_ = li32(_loc32_);
                                          continue loop2;
                                       }
                                    }
                                    _loc20_ = _loc15_ << 3;
                                    _loc32_ = int(_loc40_ + _loc20_);
                                    §§goto(addr1289);
                                 }
                                 else
                                 {
                                    if(_loc40_ != 0)
                                    {
                                       _loc40_ = int(_loc40_ + (_loc36_ << 3));
                                    }
                                    else
                                    {
                                       _loc40_ = _loc26_;
                                       _loc26_ = int(_loc26_ + 4);
                                    }
                                    _loc34_ = li32(_loc40_);
                                    _loc36_ = int(_loc36_ + 1);
                                    _loc40_ = _loc32_;
                                    continue loop2;
                                 }
                              }
                              §§goto(addr9498);
                           }
                           else if(_loc11_ <= 70)
                           {
                              if(_loc11_ <= 67)
                              {
                                 if(_loc11_ != 65)
                                 {
                                    if(_loc11_ != 67)
                                    {
                                       §§goto(addr6230);
                                    }
                                    else
                                    {
                                       _loc37_ = _loc37_ | 16;
                                       addr1568:
                                       _loc20_ = _loc37_ & 16;
                                       if(_loc20_ != 0)
                                       {
                                          _loc1_ = int(_loc1_ - 16);
                                          si32(128,_loc1_ + 8);
                                          si32(0,_loc1_ + 4);
                                          _loc32_ = int(_loc2_ - 520);
                                          si32(_loc32_,_loc1_);
                                          ESP = _loc1_;
                                          Fmemset();
                                          _loc1_ = int(_loc1_ + 16);
                                          _loc15_ = li32(_loc2_ - 320);
                                          if(_loc15_ != 0)
                                          {
                                             _loc15_ = int(_loc15_ + (_loc36_ << 3));
                                          }
                                          else
                                          {
                                             _loc15_ = _loc26_;
                                             _loc26_ = int(_loc26_ + 4);
                                          }
                                          _loc20_ = li32(_loc15_);
                                          _loc1_ = int(_loc1_ - 16);
                                          si32(_loc32_,_loc1_ + 8);
                                          si32(_loc20_,_loc1_ + 4);
                                          si32(_loc42_,_loc1_);
                                          ESP = _loc1_;
                                          F_wcrtomb();
                                          _loc1_ = int(_loc1_ + 16);
                                          _loc13_ = int(eax);
                                          if(_loc13_ == -1)
                                          {
                                             _loc20_ = li16(_loc22_ + 12);
                                             _loc20_ = _loc20_ | 64;
                                             si16(_loc20_,_loc22_ + 12);
                                             _loc18_ = _loc29_;
                                          }
                                          §§goto(addr9498);
                                       }
                                       else
                                       {
                                          _loc32_ = li32(_loc2_ - 320);
                                          if(_loc32_ != 0)
                                          {
                                             _loc20_ = int(_loc32_ + (_loc36_ << 3));
                                             _loc32_ = li32(_loc20_);
                                          }
                                          else
                                          {
                                             _loc32_ = li32(_loc26_);
                                             _loc26_ = int(_loc26_ + 4);
                                          }
                                          si8(_loc32_,_loc2_ - 312);
                                          _loc13_ = 1;
                                       }
                                       _loc19_ = 0;
                                       si8(_loc19_,_loc2_ - 139);
                                       _loc36_ = int(_loc36_ + 1);
                                       _loc15_ = _loc42_;
                                       _loc32_ = _loc37_;
                                    }
                                 }
                                 else
                                 {
                                    addr2140:
                                    _loc27_ = 120;
                                    if(_loc11_ != 97)
                                    {
                                       _loc27_ = 88;
                                    }
                                    si8(_loc27_,_loc2_ - 313);
                                    _loc27_ = int(_xdigs_lower_2E_4558);
                                    if(_loc11_ != 97)
                                    {
                                       _loc27_ = int(_xdigs_upper_2E_4559);
                                    }
                                    _loc10_ = 112;
                                    if(_loc11_ != 97)
                                    {
                                       _loc10_ = 80;
                                    }
                                    if(_loc35_ != 0)
                                    {
                                       _loc1_ = int(_loc1_ - 16);
                                       si32(_loc35_,_loc1_);
                                       ESP = _loc1_;
                                       F___freedtoa();
                                       _loc1_ = int(_loc1_ + 16);
                                    }
                                    _loc20_ = int(_loc34_ >>> 31);
                                    _loc20_ = _loc20_ ^ 1;
                                    _loc18_ = int(_loc20_ + _loc34_);
                                    _loc20_ = _loc37_ & 8;
                                    _loc35_ = li32(_loc2_ - 320);
                                    if(_loc20_ != 0)
                                    {
                                       if(_loc35_ != 0)
                                       {
                                          _loc35_ = int(_loc35_ + (_loc36_ << 3));
                                       }
                                       else
                                       {
                                          _loc35_ = _loc26_;
                                          _loc26_ = int(_loc26_ + 8);
                                       }
                                       var _loc39_:* = lf64(_loc35_);
                                       sf64(_loc39_,_loc2_ - 184);
                                       _loc1_ = int(_loc1_ - 32);
                                       _loc30_ = int(_loc2_ - 192);
                                       si32(_loc30_,_loc1_ + 24);
                                       _loc30_ = int(_loc2_ - 172);
                                       si32(_loc30_,_loc1_ + 20);
                                       _loc30_ = int(_loc2_ - 188);
                                       si32(_loc30_,_loc1_ + 16);
                                       si32(_loc18_,_loc1_ + 12);
                                       si32(_loc27_,_loc1_ + 8);
                                       sf64(_loc39_,_loc1_);
                                       ESP = _loc1_;
                                       F___hldtoa();
                                       _loc1_ = int(_loc1_ + 32);
                                       _loc35_ = int(eax);
                                    }
                                    else
                                    {
                                       if(_loc35_ != 0)
                                       {
                                          _loc35_ = int(_loc35_ + (_loc36_ << 3));
                                       }
                                       else
                                       {
                                          _loc35_ = _loc26_;
                                          _loc26_ = int(_loc26_ + 8);
                                       }
                                       _loc39_ = lf64(_loc35_);
                                       sf64(_loc39_,_loc2_ - 184);
                                       _loc1_ = int(_loc1_ - 32);
                                       _loc30_ = int(_loc2_ - 192);
                                       si32(_loc30_,_loc1_ + 24);
                                       _loc30_ = int(_loc2_ - 172);
                                       si32(_loc30_,_loc1_ + 20);
                                       _loc30_ = int(_loc2_ - 188);
                                       si32(_loc30_,_loc1_ + 16);
                                       si32(_loc18_,_loc1_ + 12);
                                       si32(_loc27_,_loc1_ + 8);
                                       sf64(_loc39_,_loc1_);
                                       ESP = _loc1_;
                                       F___hdtoa();
                                       _loc1_ = int(_loc1_ + 32);
                                       _loc35_ = int(eax);
                                    }
                                    if(_loc18_ <= -1)
                                    {
                                       _loc20_ = li32(_loc2_ - 192);
                                       _loc18_ = int(_loc20_ - _loc35_);
                                    }
                                    _loc36_ = int(_loc36_ + 1);
                                    _loc20_ = li32(_loc2_ - 188);
                                    if(_loc20_ == 2147483647)
                                    {
                                       si8(0,_loc2_ - 313);
                                    }
                                 }
                              }
                              else if(_loc11_ != 68)
                              {
                                 if(_loc11_ != 69)
                                 {
                                    if(_loc11_ != 70)
                                    {
                                       §§goto(addr6230);
                                    }
                                 }
                                 else
                                 {
                                    addr2445:
                                    _loc25_ = 7;
                                    if(_loc34_ >= 0)
                                    {
                                       _loc25_ = int(_loc34_ + 1);
                                    }
                                    _loc34_ = _loc25_;
                                    _loc10_ = _loc11_;
                                 }
                                 addr2474:
                                 _loc18_ = 6;
                                 if(_loc34_ >= 0)
                                 {
                                    _loc18_ = _loc34_;
                                 }
                                 if(_loc35_ != 0)
                                 {
                                    _loc1_ = int(_loc1_ - 16);
                                    si32(_loc35_,_loc1_);
                                    ESP = _loc1_;
                                    F___freedtoa();
                                    _loc1_ = int(_loc1_ + 16);
                                 }
                                 _loc20_ = _loc37_ & 8;
                                 _loc35_ = li32(_loc2_ - 320);
                                 if(_loc20_ != 0)
                                 {
                                    if(_loc35_ != 0)
                                    {
                                       _loc35_ = int(_loc35_ + (_loc36_ << 3));
                                    }
                                    else
                                    {
                                       _loc35_ = _loc26_;
                                       _loc26_ = int(_loc26_ + 8);
                                    }
                                    _loc39_ = lf64(_loc35_);
                                    sf64(_loc39_,_loc2_ - 184);
                                    _loc1_ = int(_loc1_ - 32);
                                    _loc20_ = int(_loc2_ - 192);
                                    si32(_loc20_,_loc1_ + 20);
                                    _loc20_ = int(_loc2_ - 172);
                                    si32(_loc20_,_loc1_ + 16);
                                    _loc20_ = int(_loc2_ - 188);
                                    si32(_loc20_,_loc1_ + 12);
                                    si32(_loc18_,_loc1_ + 8);
                                    _loc20_ = _loc10_ & 255;
                                    _loc35_ = 3;
                                    if(_loc20_ != 0)
                                    {
                                       _loc35_ = 2;
                                    }
                                    si32(_loc35_,_loc1_ + 4);
                                    _loc20_ = int(_loc2_ - 184);
                                    si32(_loc20_,_loc1_);
                                    ESP = _loc1_;
                                    F___ldtoa();
                                    _loc36_ = int(_loc36_ + 1);
                                    _loc1_ = int(_loc1_ + 32);
                                    _loc35_ = int(eax);
                                 }
                                 else
                                 {
                                    if(_loc35_ != 0)
                                    {
                                       _loc35_ = int(_loc35_ + (_loc36_ << 3));
                                    }
                                    else
                                    {
                                       _loc35_ = _loc26_;
                                       _loc26_ = int(_loc26_ + 8);
                                    }
                                    _loc38_ = lf64(_loc35_);
                                    sf64(_loc38_,_loc2_ - 184);
                                    _loc1_ = int(_loc1_ - 32);
                                    _loc20_ = int(_loc2_ - 192);
                                    si32(_loc20_,_loc1_ + 24);
                                    _loc20_ = int(_loc2_ - 172);
                                    si32(_loc20_,_loc1_ + 20);
                                    _loc20_ = int(_loc2_ - 188);
                                    si32(_loc20_,_loc1_ + 16);
                                    si32(_loc18_,_loc1_ + 12);
                                    _loc20_ = _loc10_ & 255;
                                    _loc25_ = 3;
                                    if(_loc20_ != 0)
                                    {
                                       _loc25_ = 2;
                                    }
                                    si32(_loc25_,_loc1_ + 8);
                                    sf64(_loc38_,_loc1_);
                                    ESP = _loc1_;
                                    F___dtoa();
                                    _loc36_ = int(_loc36_ + 1);
                                    _loc1_ = int(_loc1_ + 32);
                                    _loc35_ = int(eax);
                                    _loc20_ = li32(_loc2_ - 188);
                                    if(_loc20_ == 9999)
                                    {
                                       si32(2147483647,_loc2_ - 188);
                                    }
                                 }
                              }
                              else
                              {
                                 _loc37_ = _loc37_ | 16;
                                 break loop2;
                              }
                              _loc20_ = li32(_loc2_ - 172);
                              if(_loc20_ != 0)
                              {
                                 si8(45,_loc2_ - 139);
                              }
                              _loc5_ = li32(_loc2_ - 188);
                              if(_loc5_ == 2147483647)
                              {
                                 _loc20_ = li8(_loc35_);
                                 if(_loc20_ == 78)
                                 {
                                    si8(0,_loc2_ - 139);
                                    _loc15_ = int(L__2E_str1);
                                    if(_loc11_ <= 96)
                                    {
                                       _loc15_ = int(L__2E_str2);
                                    }
                                 }
                                 else
                                 {
                                    _loc15_ = int(L__2E_str3);
                                    if(_loc11_ <= 96)
                                    {
                                       _loc15_ = int(L__2E_str4);
                                    }
                                 }
                                 _loc32_ = _loc37_ & -129;
                                 _loc13_ = 3;
                                 _loc19_ = 0;
                                 _loc34_ = _loc18_;
                                 _loc25_ = _loc10_;
                              }
                              else
                              {
                                 _loc20_ = li32(_loc2_ - 192);
                                 _loc4_ = _loc20_ - _loc35_;
                                 _loc32_ = _loc37_ | 256;
                                 _loc20_ = _loc11_ | 32;
                                 if(_loc20_ == 103)
                                 {
                                    _loc25_ = _loc37_ & 1;
                                    if(_loc5_ >= -3)
                                    {
                                       if(_loc5_ <= _loc18_)
                                       {
                                          _loc34_ = 0;
                                          _loc15_ = _loc4_;
                                          if(_loc25_ != _loc34_)
                                          {
                                             _loc15_ = _loc18_;
                                          }
                                          _loc25_ = int(_loc15_ - _loc5_);
                                          if(_loc25_ >= _loc34_)
                                          {
                                             _loc34_ = _loc25_;
                                          }
                                          _loc18_ = _loc34_;
                                       }
                                       addr3127:
                                       _loc11_ = 1;
                                       if(_loc5_ >= _loc11_)
                                       {
                                          _loc11_ = _loc5_;
                                       }
                                       if(_loc18_ == 0)
                                       {
                                          _loc34_ = 0;
                                          if((_loc37_ & 1) != 0)
                                          {
                                          }
                                          addr3160:
                                          _loc20_ = _loc37_ & 512;
                                          _loc25_ = 0;
                                          _loc15_ = _loc35_;
                                          _loc19_ = _loc25_;
                                          _loc13_ = _loc11_;
                                          if(_loc20_ != 0)
                                          {
                                             _loc15_ = _loc35_;
                                             _loc19_ = _loc25_;
                                             _loc13_ = _loc11_;
                                             if(_loc5_ >= 1)
                                             {
                                                ESP = _loc1_;
                                                F_localeconv();
                                                _loc20_ = int(eax);
                                                _loc7_ = li32(_loc20_ + 8);
                                                si32(_loc7_,_loc2_ - 160);
                                                _loc20_ = li32(_loc20_ + 4);
                                                si32(_loc20_,_loc2_ - 168);
                                                _loc1_ = int(_loc1_ - 16);
                                                si32(_loc20_,_loc1_);
                                                ESP = _loc1_;
                                                F_strlen();
                                                _loc20_ = int(_loc2_ - 168);
                                                _loc1_ = int(_loc1_ + 16);
                                                _loc18_ = int(eax);
                                                si32(_loc18_,_loc20_ | 4);
                                                _loc37_ = 0;
                                                si32(_loc37_,_loc2_ - 148);
                                                si32(_loc37_,_loc2_ - 152);
                                                si32(_loc5_,_loc2_ - 156);
                                                _loc10_ = _loc37_;
                                                while(true)
                                                {
                                                   _loc20_ = int(_loc10_ + _loc37_);
                                                   _loc20_ = int(_loc18_ * _loc20_);
                                                   _loc13_ = int(_loc11_ + _loc20_);
                                                   _loc37_ = int(_loc37_ + 1);
                                                   while(true)
                                                   {
                                                      _loc6_ = li8(_loc7_);
                                                      _loc25_ = 0;
                                                      _loc15_ = _loc35_;
                                                      _loc19_ = _loc25_;
                                                      if(_loc6_ != 127)
                                                      {
                                                         _loc20_ = _loc6_ << 24;
                                                         _loc6_ = _loc20_ >> 24;
                                                         _loc25_ = 0;
                                                         _loc15_ = _loc35_;
                                                         _loc19_ = _loc25_;
                                                         if(_loc5_ > _loc6_)
                                                         {
                                                            _loc25_ = int(_loc7_ + 1);
                                                            _loc5_ = int(_loc5_ - _loc6_);
                                                            si32(_loc5_,_loc2_ - 156);
                                                            _loc20_ = li8(_loc25_);
                                                            if(_loc20_ != 0)
                                                            {
                                                               _loc10_ = int(_loc10_ + 1);
                                                               si32(_loc10_,_loc2_ - 152);
                                                               si32(_loc25_,_loc2_ - 160);
                                                               _loc13_ = int(_loc13_ + _loc18_);
                                                               _loc7_ = _loc25_;
                                                               continue;
                                                            }
                                                            break;
                                                         }
                                                      }
                                                   }
                                                   si32(_loc37_,_loc2_ - 148);
                                                }
                                             }
                                          }
                                       }
                                       _loc20_ = int(_loc18_ + _loc46_);
                                       _loc11_ = int(_loc20_ + _loc11_);
                                       _loc34_ = _loc18_;
                                       §§goto(addr3160);
                                    }
                                    if(_loc25_ == 0)
                                    {
                                       _loc18_ = _loc4_;
                                    }
                                 }
                                 _loc20_ = _loc10_ & 255;
                                 if(_loc20_ != 0)
                                 {
                                    si8(_loc10_,_loc2_ - 200);
                                    _loc34_ = int(_loc5_ + -1);
                                    _loc3_ = 0;
                                    _loc25_ = 45;
                                    if(_loc34_ >= _loc3_)
                                    {
                                       _loc25_ = 43;
                                    }
                                    si8(_loc25_,_loc2_ - 199);
                                    _loc25_ = int(1 - _loc5_);
                                    if(_loc34_ >= _loc3_)
                                    {
                                       _loc25_ = _loc34_;
                                    }
                                    if(_loc25_ >= 10)
                                    {
                                       do
                                       {
                                          _loc20_ = _loc25_;
                                          _loc34_ = int(_loc47_ - _loc3_);
                                          _loc30_ = int(_loc20_ % 10);
                                          _loc30_ = int(_loc30_ + 48);
                                          si8(_loc30_,_loc34_ + 5);
                                          _loc3_ = int(_loc3_ + 1);
                                          _loc25_ = int(_loc20_ / 10);
                                       }
                                       while(_loc20_ > 99);
                                       
                                       _loc20_ = int(_loc25_ + 48);
                                       si8(_loc20_,_loc34_ + 4);
                                       _loc25_ = _loc41_;
                                       if(uint(_loc45_) > uint(int(_loc9_ - _loc3_)))
                                       {
                                          _loc1_ = int(_loc1_ - 16);
                                          si32(_loc41_,_loc1_);
                                          _loc20_ = int(_loc3_ + 1);
                                          si32(_loc20_,_loc1_ + 8);
                                          _loc20_ = int(_loc9_ - _loc3_);
                                          si32(_loc20_,_loc1_ + 4);
                                          _loc25_ = int(_loc49_ + _loc3_);
                                          ESP = _loc1_;
                                          Fmemcpy();
                                          _loc1_ = int(_loc1_ + 16);
                                       }
                                    }
                                    else
                                    {
                                       _loc20_ = _loc10_ | 32;
                                       _loc3_ = _loc41_;
                                       if((_loc20_ & 255) == 101)
                                       {
                                          si8(48,_loc2_ - 198);
                                          _loc3_ = _loc49_;
                                       }
                                       _loc20_ = int(_loc25_ + 48);
                                       si8(_loc20_,_loc3_);
                                       _loc25_ = int(_loc3_ + 1);
                                    }
                                    _loc3_ = int(_loc25_ - _loc48_);
                                    _loc13_ = int(_loc3_ + _loc18_);
                                    if(_loc18_ <= 1)
                                    {
                                       _loc19_ = 0;
                                       _loc15_ = _loc35_;
                                       _loc34_ = _loc18_;
                                       _loc25_ = _loc10_;
                                       if((_loc37_ & 1) != 0)
                                       {
                                       }
                                    }
                                    _loc13_ = int(_loc13_ + _loc46_);
                                    _loc19_ = 0;
                                    _loc15_ = _loc35_;
                                    _loc34_ = _loc18_;
                                    _loc25_ = _loc10_;
                                 }
                                 else
                                 {
                                    §§goto(addr3127);
                                 }
                              }
                           }
                           else if(_loc11_ <= 78)
                           {
                              if(_loc11_ != 71)
                              {
                                 if(_loc11_ != 76)
                                 {
                                    §§goto(addr6230);
                                 }
                                 else
                                 {
                                    _loc37_ = _loc37_ | 8;
                                    continue loop2;
                                 }
                              }
                              else
                              {
                                 addr2462:
                                 _loc10_ = int(_loc11_ + -2);
                                 if(_loc34_ == 0)
                                 {
                                    _loc34_ = 1;
                                 }
                                 §§goto(addr2474);
                              }
                           }
                           else
                           {
                              if(_loc11_ != 79)
                              {
                                 if(_loc11_ != 83)
                                 {
                                    if(_loc11_ != 85)
                                    {
                                       §§goto(addr6230);
                                    }
                                    else
                                    {
                                       _loc37_ = _loc37_ | 16;
                                    }
                                 }
                                 else
                                 {
                                    _loc37_ = _loc37_ | 16;
                                    addr4165:
                                    _loc20_ = _loc37_ & 16;
                                    if(_loc20_ != 0)
                                    {
                                       if(_loc33_ != 0)
                                       {
                                          _loc1_ = int(_loc1_ - 16);
                                          si32(_loc33_,_loc1_);
                                          ESP = _loc1_;
                                          F_free();
                                          _loc1_ = int(_loc1_ + 16);
                                       }
                                       _loc32_ = li32(_loc2_ - 320);
                                       if(_loc32_ != 0)
                                       {
                                          _loc32_ = int(_loc32_ + (_loc36_ << 3));
                                       }
                                       else
                                       {
                                          _loc32_ = _loc26_;
                                          _loc26_ = int(_loc26_ + 4);
                                       }
                                       _loc32_ = li32(_loc32_);
                                       _loc36_ = int(_loc36_ + 1);
                                       _loc15_ = int(L__2E_str5);
                                       if(_loc32_ != 0)
                                       {
                                          if(_loc34_ <= -1)
                                          {
                                             si32(_loc32_,_loc2_ - 132);
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(128,_loc1_ + 8);
                                             si32(0,_loc1_ + 4);
                                             _loc20_ = int(_loc2_ - 128);
                                             si32(_loc20_,_loc1_);
                                             ESP = _loc1_;
                                             Fmemset();
                                             _loc1_ = int(_loc1_ + 16);
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(_loc20_,_loc1_ + 12);
                                             si32(0,_loc1_ + 8);
                                             _loc20_ = int(_loc2_ - 132);
                                             si32(_loc20_,_loc1_ + 4);
                                             si32(0,_loc1_);
                                             ESP = _loc1_;
                                             F_wcsrtombs();
                                             _loc1_ = int(_loc1_ + 16);
                                             _loc33_ = int(eax);
                                             if(_loc33_ != -1)
                                             {
                                             }
                                             addr4602:
                                             _loc20_ = li16(_loc22_ + 12);
                                             _loc20_ = _loc20_ | 64;
                                             si16(_loc20_,_loc22_ + 12);
                                             _loc33_ = 0;
                                             _loc18_ = _loc29_;
                                             §§goto(addr9498);
                                          }
                                          else
                                          {
                                             _loc33_ = _loc34_;
                                             if(_loc34_ >= 128)
                                             {
                                                si32(_loc32_,_loc2_ - 132);
                                                _loc1_ = int(_loc1_ - 16);
                                                si32(128,_loc1_ + 8);
                                                _loc33_ = 0;
                                                si32(_loc33_,_loc1_ + 4);
                                                _loc15_ = int(_loc2_ - 128);
                                                si32(_loc15_,_loc1_);
                                                ESP = _loc1_;
                                                Fmemset();
                                                _loc1_ = int(_loc1_ + 16);
                                                _loc18_ = _loc32_;
                                                while(true)
                                                {
                                                   _loc20_ = li32(_loc18_);
                                                   _loc30_ = int(_loc18_ + 4);
                                                   si32(_loc30_,_loc2_ - 132);
                                                   _loc1_ = int(_loc1_ - 16);
                                                   si32(_loc15_,_loc1_ + 8);
                                                   si32(_loc20_,_loc1_ + 4);
                                                   si32(_loc47_,_loc1_);
                                                   ESP = _loc1_;
                                                   F_wcrtomb();
                                                   _loc1_ = int(_loc1_ + 16);
                                                   _loc11_ = int(eax);
                                                   _loc20_ = int(_loc11_ + -1);
                                                   if(uint(_loc20_) <= 4294967293)
                                                   {
                                                      _loc11_ = int(_loc11_ + _loc33_);
                                                      if(uint(_loc11_) <= uint(_loc34_))
                                                      {
                                                         _loc18_ = li32(_loc2_ - 132);
                                                         _loc33_ = _loc11_;
                                                         continue;
                                                      }
                                                      break;
                                                   }
                                                   break;
                                                }
                                             }
                                          }
                                          _loc1_ = int(_loc1_ - 16);
                                          _loc20_ = int(_loc33_ + 1);
                                          si32(_loc20_,_loc1_);
                                          ESP = _loc1_;
                                          F_malloc();
                                          _loc1_ = int(_loc1_ + 16);
                                          _loc15_ = int(eax);
                                          if(_loc15_ != 0)
                                          {
                                             si32(_loc32_,_loc2_ - 132);
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(128,_loc1_ + 8);
                                             si32(0,_loc1_ + 4);
                                             _loc20_ = int(_loc2_ - 128);
                                             si32(_loc20_,_loc1_);
                                             ESP = _loc1_;
                                             Fmemset();
                                             _loc1_ = int(_loc1_ + 16);
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(_loc20_,_loc1_ + 12);
                                             si32(_loc33_,_loc1_ + 8);
                                             _loc20_ = int(_loc2_ - 132);
                                             si32(_loc20_,_loc1_ + 4);
                                             si32(_loc15_,_loc1_);
                                             ESP = _loc1_;
                                             F_wcsrtombs();
                                             _loc1_ = int(_loc1_ + 16);
                                             _loc33_ = int(eax);
                                             if(_loc33_ == -1)
                                             {
                                                _loc1_ = int(_loc1_ - 16);
                                                si32(_loc15_,_loc1_);
                                                ESP = _loc1_;
                                                F_free();
                                                _loc1_ = int(_loc1_ + 16);
                                             }
                                             else
                                             {
                                                si8(0,int(_loc15_ + _loc33_));
                                                _loc33_ = _loc15_;
                                             }
                                             §§goto(addr9498);
                                          }
                                          §§goto(addr4602);
                                       }
                                    }
                                    else
                                    {
                                       _loc32_ = li32(_loc2_ - 320);
                                       if(_loc32_ != 0)
                                       {
                                          _loc32_ = int(_loc32_ + (_loc36_ << 3));
                                       }
                                       else
                                       {
                                          _loc32_ = _loc26_;
                                          _loc26_ = int(_loc26_ + 4);
                                       }
                                       _loc15_ = li32(_loc32_);
                                       _loc36_ = int(_loc36_ + 1);
                                       if(_loc15_ == 0)
                                       {
                                          _loc15_ = int(L__2E_str5);
                                       }
                                    }
                                    if(_loc34_ >= 0)
                                    {
                                       _loc1_ = int(_loc1_ - 16);
                                       si32(_loc34_,_loc1_ + 4);
                                       si32(_loc15_,_loc1_);
                                       ESP = _loc1_;
                                       F_strnlen();
                                       _loc1_ = int(_loc1_ + 16);
                                       _loc13_ = int(eax);
                                    }
                                    else
                                    {
                                       _loc1_ = int(_loc1_ - 16);
                                       si32(_loc15_,_loc1_);
                                       ESP = _loc1_;
                                       F_strlen();
                                       _loc1_ = int(_loc1_ + 16);
                                       _loc13_ = int(eax);
                                    }
                                    _loc19_ = 0;
                                    si8(_loc19_,_loc2_ - 139);
                                    _loc32_ = _loc37_;
                                 }
                              }
                              else
                              {
                                 _loc37_ = _loc37_ | 16;
                                 addr3782:
                                 _loc20_ = _loc37_ & 7200;
                                 if(_loc20_ != 0)
                                 {
                                    _loc20_ = _loc37_ & 4096;
                                    if(_loc20_ != 0)
                                    {
                                       _loc17_ = li32(_loc2_ - 320);
                                       if(_loc17_ != 0)
                                       {
                                          _loc23_ = int(_loc17_ + (_loc36_ << 3));
                                       }
                                       else
                                       {
                                          _loc23_ = _loc26_;
                                          _loc26_ = int(_loc26_ + 8);
                                       }
                                       _loc17_ = li32(_loc23_ + 4);
                                       _loc23_ = li32(_loc23_);
                                       _loc11_ = 8;
                                    }
                                    else
                                    {
                                       _loc20_ = _loc37_ & 1024;
                                       if(_loc20_ != 0)
                                       {
                                          _loc17_ = li32(_loc2_ - 320);
                                          if(_loc17_ != 0)
                                          {
                                             _loc17_ = int(_loc17_ + (_loc36_ << 3));
                                          }
                                          else
                                          {
                                             _loc17_ = _loc26_;
                                             _loc26_ = int(_loc26_ + 4);
                                          }
                                          _loc23_ = li32(_loc17_);
                                          _loc17_ = 0;
                                          _loc11_ = 8;
                                       }
                                       else
                                       {
                                          _loc17_ = li32(_loc2_ - 320);
                                          if((_loc37_ & 2048) != 0)
                                          {
                                             if(_loc17_ != 0)
                                             {
                                                _loc17_ = int(_loc17_ + (_loc36_ << 3));
                                             }
                                             else
                                             {
                                                _loc17_ = _loc26_;
                                                _loc26_ = int(_loc26_ + 4);
                                             }
                                             _loc23_ = li32(_loc17_);
                                             _loc17_ = _loc23_ >> 31;
                                             _loc11_ = 8;
                                          }
                                          else
                                          {
                                             if(_loc17_ != 0)
                                             {
                                                _loc23_ = int(_loc17_ + (_loc36_ << 3));
                                             }
                                             else
                                             {
                                                _loc23_ = _loc26_;
                                                _loc26_ = int(_loc26_ + 8);
                                             }
                                             _loc17_ = li32(_loc23_ + 4);
                                             _loc23_ = li32(_loc23_);
                                             _loc11_ = 8;
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc20_ = _loc37_ & 16;
                                    if(_loc20_ != 0)
                                    {
                                       _loc21_ = li32(_loc2_ - 320);
                                       if(_loc21_ != 0)
                                       {
                                          _loc21_ = int(_loc21_ + (_loc36_ << 3));
                                       }
                                       else
                                       {
                                          _loc21_ = _loc26_;
                                          _loc26_ = int(_loc26_ + 4);
                                       }
                                       _loc21_ = li32(_loc21_);
                                       _loc11_ = 8;
                                    }
                                    else
                                    {
                                       _loc20_ = _loc37_ & 64;
                                       if(_loc20_ != 0)
                                       {
                                          _loc21_ = li32(_loc2_ - 320);
                                          if(_loc21_ != 0)
                                          {
                                             _loc21_ = int(_loc21_ + (_loc36_ << 3));
                                          }
                                          else
                                          {
                                             _loc21_ = _loc26_;
                                             _loc26_ = int(_loc26_ + 4);
                                          }
                                          _loc21_ = li16(_loc21_);
                                          _loc11_ = 8;
                                       }
                                       else
                                       {
                                          _loc21_ = li32(_loc2_ - 320);
                                          if((_loc37_ & 8192) != 0)
                                          {
                                             if(_loc21_ != 0)
                                             {
                                                _loc21_ = int(_loc21_ + (_loc36_ << 3));
                                             }
                                             else
                                             {
                                                _loc21_ = _loc26_;
                                                _loc26_ = int(_loc26_ + 4);
                                             }
                                             _loc21_ = li8(_loc21_);
                                             _loc11_ = 8;
                                          }
                                          else
                                          {
                                             if(_loc21_ != 0)
                                             {
                                                _loc21_ = int(_loc21_ + (_loc36_ << 3));
                                             }
                                             else
                                             {
                                                _loc21_ = _loc26_;
                                                _loc26_ = int(_loc26_ + 4);
                                             }
                                             _loc21_ = li32(_loc21_);
                                             _loc11_ = 8;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr5444:
                              si8(0,_loc2_ - 139);
                              addr5455:
                              _loc36_ = int(_loc36_ + 1);
                              _loc32_ = _loc37_ & -129;
                              if(_loc34_ <= -1)
                              {
                                 _loc32_ = _loc37_;
                              }
                              _loc20_ = _loc32_ & 7200;
                              if(_loc20_ != 0)
                              {
                                 _loc13_ = _loc32_ & 1;
                                 if((_loc23_ | _loc17_) == 0)
                                 {
                                    if(_loc34_ == 0)
                                    {
                                       _loc15_ = _loc43_;
                                       if(_loc13_ != 0)
                                       {
                                          _loc15_ = _loc43_;
                                          if(_loc11_ == 8)
                                          {
                                          }
                                       }
                                       addr6012:
                                       _loc10_ = int(_loc43_ - _loc15_);
                                       if(_loc10_ >= 33)
                                       {
                                          ESP = _loc1_;
                                          F_abort();
                                       }
                                       _loc20_ = _loc32_ & 512;
                                       _loc19_ = _loc34_;
                                       _loc13_ = _loc10_;
                                       if(_loc20_ != 0)
                                       {
                                          _loc19_ = _loc34_;
                                          _loc13_ = _loc10_;
                                          if(_loc43_ != _loc15_)
                                          {
                                             ESP = _loc1_;
                                             F_localeconv();
                                             _loc20_ = int(eax);
                                             _loc37_ = li32(_loc20_ + 8);
                                             si32(_loc37_,_loc2_ - 160);
                                             _loc20_ = li32(_loc20_ + 4);
                                             si32(_loc20_,_loc2_ - 168);
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(_loc20_,_loc1_);
                                             ESP = _loc1_;
                                             F_strlen();
                                             _loc20_ = int(_loc2_ - 168);
                                             _loc1_ = int(_loc1_ + 16);
                                             _loc7_ = int(eax);
                                             si32(_loc7_,_loc20_ | 4);
                                             _loc5_ = 0;
                                             si32(_loc5_,_loc2_ - 148);
                                             si32(_loc5_,_loc2_ - 152);
                                             si32(_loc10_,_loc2_ - 156);
                                             _loc11_ = _loc10_;
                                             _loc18_ = _loc5_;
                                             loop9:
                                             while(true)
                                             {
                                                _loc20_ = int(_loc18_ + _loc5_);
                                                _loc20_ = int(_loc7_ * _loc20_);
                                                _loc13_ = int(_loc10_ + _loc20_);
                                                _loc5_ = int(_loc5_ + 1);
                                                while(true)
                                                {
                                                   _loc6_ = li8(_loc37_);
                                                   _loc19_ = _loc34_;
                                                   if(_loc6_ != 127)
                                                   {
                                                      _loc20_ = _loc6_ << 24;
                                                      _loc6_ = _loc20_ >> 24;
                                                      _loc19_ = _loc34_;
                                                      if(_loc11_ > _loc6_)
                                                      {
                                                         _loc19_ = int(_loc37_ + 1);
                                                         _loc11_ = int(_loc11_ - _loc6_);
                                                         si32(_loc11_,_loc2_ - 156);
                                                         _loc20_ = li8(_loc19_);
                                                         if(_loc20_ != 0)
                                                         {
                                                            _loc18_ = int(_loc18_ + 1);
                                                            si32(_loc18_,_loc2_ - 152);
                                                            si32(_loc19_,_loc2_ - 160);
                                                            _loc13_ = int(_loc13_ + _loc7_);
                                                            _loc37_ = _loc19_;
                                                            continue;
                                                         }
                                                         si32(_loc5_,_loc2_ - 148);
                                                         continue loop9;
                                                      }
                                                      break;
                                                   }
                                                   break;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(_loc17_ == 0)
                                 {
                                    _loc1_ = int(_loc1_ - 32);
                                    si32(_loc27_,_loc1_ + 16);
                                    si32(_loc13_,_loc1_ + 12);
                                    si32(_loc11_,_loc1_ + 8);
                                    si32(_loc43_,_loc1_ + 4);
                                    si32(_loc23_,_loc1_);
                                    ESP = _loc1_;
                                    F___ultoa();
                                    _loc1_ = int(_loc1_ + 32);
                                    _loc15_ = int(eax);
                                 }
                                 else
                                 {
                                    _loc15_ = _loc43_;
                                    _loc19_ = _loc44_;
                                    _loc37_ = _loc23_;
                                    _loc18_ = _loc17_;
                                    if(_loc11_ != 8)
                                    {
                                       _loc15_ = _loc43_;
                                       _loc18_ = _loc23_;
                                       _loc37_ = _loc17_;
                                       if(_loc11_ != 16)
                                       {
                                          if(_loc11_ == 10)
                                          {
                                             _loc15_ = _loc43_;
                                             _loc7_ = _loc23_;
                                             _loc5_ = _loc17_;
                                             if(_loc17_ <= -1)
                                             {
                                                _loc1_ = int(_loc1_ - 16);
                                                si32(0,_loc1_ + 12);
                                                si32(10,_loc1_ + 8);
                                                si32(_loc23_,_loc1_);
                                                si32(_loc17_,_loc1_ + 4);
                                                ESP = _loc1_;
                                                F___udivdi3();
                                                _loc1_ = int(_loc1_ + 16);
                                                _loc7_ = int(eax);
                                                _loc5_ = int(edx);
                                                _loc1_ = int(_loc1_ - 16);
                                                si32(0,_loc1_ + 12);
                                                si32(10,_loc1_ + 8);
                                                si32(_loc17_,_loc1_ + 4);
                                                si32(_loc23_,_loc1_);
                                                ESP = _loc1_;
                                                F___umoddi3();
                                                _loc1_ = int(_loc1_ + 16);
                                                _loc20_ = int(eax);
                                                _loc20_ = _loc20_ | 48;
                                                si8(_loc20_,_loc2_ - 281);
                                                _loc15_ = _loc44_;
                                             }
                                             do
                                             {
                                                _loc1_ = int(_loc1_ - 16);
                                                si32(0,_loc1_ + 12);
                                                si32(10,_loc1_ + 8);
                                                si32(_loc7_,_loc1_);
                                                si32(_loc5_,_loc1_ + 4);
                                                ESP = _loc1_;
                                                F___divdi3();
                                                _loc1_ = int(_loc1_ + 16);
                                                _loc18_ = int(eax);
                                                _loc13_ = int(edx);
                                                _loc1_ = int(_loc1_ - 16);
                                                si32(0,_loc1_ + 12);
                                                si32(10,_loc1_ + 8);
                                                si32(_loc5_,_loc1_ + 4);
                                                si32(_loc7_,_loc1_);
                                                ESP = _loc1_;
                                                F___moddi3();
                                                _loc1_ = int(_loc1_ + 16);
                                                _loc20_ = int(eax);
                                                _loc20_ = int(_loc20_ + 48);
                                                si8(_loc20_,_loc15_ - 1);
                                                _loc10_ = int(_loc7_ + 9);
                                                _loc11_ = 1;
                                                _loc37_ = _loc11_;
                                                if(uint(_loc10_) <= 18)
                                                {
                                                   _loc37_ = 0;
                                                }
                                                _loc19_ = _loc11_;
                                                if(uint(_loc10_) >= uint(_loc7_))
                                                {
                                                   _loc19_ = 0;
                                                }
                                                _loc7_ = _loc11_;
                                                if(uint(_loc10_) >= 9)
                                                {
                                                   _loc7_ = _loc19_;
                                                }
                                                _loc19_ = int(_loc5_ + _loc7_);
                                                if(_loc19_ == 0)
                                                {
                                                   _loc11_ = 0;
                                                }
                                                if(_loc19_ != 0)
                                                {
                                                   _loc37_ = _loc11_;
                                                }
                                                _loc15_ = int(_loc15_ + -1);
                                                _loc7_ = _loc18_;
                                                _loc5_ = _loc13_;
                                             }
                                             while(_loc37_ != 0);
                                             
                                          }
                                          else
                                          {
                                             ESP = _loc1_;
                                             F_abort();
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             _loc20_ = _loc18_ & 15;
                                             _loc20_ = int(_loc27_ + _loc20_);
                                             _loc20_ = li8(_loc20_);
                                             si8(_loc20_,_loc15_ - 1);
                                             _loc20_ = int(_loc18_ >>> 4);
                                             _loc30_ = _loc37_ << 28;
                                             _loc18_ = _loc20_ | _loc30_;
                                             _loc37_ = int(_loc37_ >>> 4);
                                             _loc20_ = _loc18_ | _loc37_;
                                             _loc15_ = int(_loc15_ + -1);
                                             if(_loc20_ != 0)
                                             {
                                                continue;
                                             }
                                             break;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       do
                                       {
                                          _loc20_ = _loc37_ & 7;
                                          _loc11_ = _loc20_ | 48;
                                          si8(_loc11_,_loc19_);
                                          _loc30_ = int(_loc37_ >>> 3);
                                          _loc20_ = _loc18_ << 29;
                                          _loc37_ = _loc30_ | _loc20_;
                                          _loc18_ = int(_loc18_ >>> 3);
                                          _loc20_ = _loc37_ | _loc18_;
                                          _loc15_ = int(_loc15_ + -1);
                                          _loc19_ = int(_loc19_ + -1);
                                       }
                                       while(_loc20_ != 0);
                                       
                                       if(_loc13_ != 0)
                                       {
                                          _loc20_ = _loc11_ & 255;
                                          if(_loc20_ != 48)
                                          {
                                             si8(48,_loc19_);
                                             _loc15_ = _loc19_;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr6012);
                              }
                              _loc20_ = _loc21_ | _loc34_;
                              _loc37_ = _loc32_ & 1;
                              if(_loc20_ == 0)
                              {
                                 _loc15_ = _loc43_;
                                 if(_loc37_ != 0)
                                 {
                                    _loc15_ = _loc43_;
                                    if(_loc11_ == 8)
                                    {
                                    }
                                 }
                                 §§goto(addr6012);
                              }
                              _loc1_ = int(_loc1_ - 32);
                              si32(_loc27_,_loc1_ + 16);
                              si32(_loc37_,_loc1_ + 12);
                              si32(_loc11_,_loc1_ + 8);
                              si32(_loc43_,_loc1_ + 4);
                              si32(_loc21_,_loc1_);
                              ESP = _loc1_;
                              F___ultoa();
                              _loc1_ = int(_loc1_ + 32);
                              _loc15_ = int(eax);
                              §§goto(addr6012);
                           }
                           addr6256:
                           _loc11_ = 1;
                           _loc5_ = li8(_loc2_ - 139);
                           if(_loc5_ == 0)
                           {
                              _loc11_ = 0;
                           }
                           _loc37_ = _loc13_;
                           if(_loc13_ < _loc19_)
                           {
                              _loc37_ = _loc19_;
                           }
                           _loc20_ = _loc11_ & 1;
                           _loc11_ = int(_loc20_ + _loc37_);
                           _loc20_ = li8(_loc2_ - 313);
                           if(_loc20_ != 0)
                           {
                              _loc11_ = int(_loc11_ + 2);
                           }
                           _loc37_ = _loc11_;
                           if(_loc11_ < _loc31_)
                           {
                              _loc37_ = _loc31_;
                           }
                           _loc37_ = int(_loc37_ + _loc29_);
                           _loc18_ = -1;
                           if(_loc37_ >= 0)
                           {
                              _loc10_ = _loc32_ & 132;
                              if(_loc10_ == 0)
                              {
                                 _loc5_ = int(_loc31_ - _loc11_);
                                 while(true)
                                 {
                                    if(_loc5_ <= 0)
                                    {
                                       _loc5_ = li8(_loc2_ - 139);
                                    }
                                    else
                                    {
                                       _loc20_ = li32(_loc2_ - 272);
                                       si32(_blanks,int(_loc14_ + (_loc20_ << 3)));
                                       _loc7_ = 16;
                                       if(_loc5_ <= _loc7_)
                                       {
                                          _loc7_ = _loc5_;
                                       }
                                       _loc20_ = li32(_loc2_ - 272);
                                       _loc30_ = _loc20_ << 3;
                                       _loc30_ = int(_loc14_ + _loc30_);
                                       _loc30_ = _loc30_ | 4;
                                       si32(_loc7_,_loc30_);
                                       _loc30_ = li32(_loc2_ - 268);
                                       _loc18_ = int(_loc30_ + _loc7_);
                                       si32(_loc18_,_loc2_ - 268);
                                       _loc20_ = int(_loc20_ + 1);
                                       si32(_loc20_,_loc2_ - 272);
                                       if(_loc20_ >= 8)
                                       {
                                          if(_loc18_ == 0)
                                          {
                                             si32(0,_loc2_ - 272);
                                          }
                                          else
                                          {
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(_loc12_,_loc1_ + 4);
                                             si32(li32(_loc2_ - 280),_loc1_);
                                             ESP = _loc1_;
                                             F___sfvwrite();
                                             _loc1_ = int(_loc1_ + 16);
                                             si32(0,_loc2_ - 268);
                                             si32(0,_loc2_ - 272);
                                             _loc18_ = _loc29_;
                                             if(int(eax) == 0)
                                             {
                                             }
                                          }
                                       }
                                       _loc5_ = int(_loc5_ - _loc7_);
                                       continue;
                                    }
                                 }
                              }
                              _loc20_ = _loc5_ & 255;
                              if(_loc20_ != 0)
                              {
                                 _loc20_ = li32(_loc2_ - 272);
                                 _loc20_ = int(_loc2_ - 139);
                                 si32(_loc20_,int(_loc14_ + (_loc20_ << 3)));
                                 _loc20_ = li32(_loc2_ - 272);
                                 _loc30_ = int(_loc14_ + (_loc20_ << 3));
                                 si32(1,_loc30_ | 4);
                                 _loc30_ = li32(_loc2_ - 268);
                                 _loc18_ = int(_loc30_ + 1);
                                 si32(_loc18_,_loc2_ - 268);
                                 _loc20_ = int(_loc20_ + 1);
                                 si32(_loc20_,_loc2_ - 272);
                                 if(_loc20_ >= 8)
                                 {
                                    if(_loc18_ == 0)
                                    {
                                       si32(0,_loc2_ - 272);
                                    }
                                    else
                                    {
                                       _loc1_ = int(_loc1_ - 16);
                                       si32(_loc12_,_loc1_ + 4);
                                       si32(li32(_loc2_ - 280),_loc1_);
                                       ESP = _loc1_;
                                       F___sfvwrite();
                                       _loc1_ = int(_loc1_ + 16);
                                       si32(0,_loc2_ - 268);
                                       si32(0,_loc2_ - 272);
                                       _loc18_ = _loc29_;
                                       if(int(eax) == 0)
                                       {
                                       }
                                    }
                                 }
                              }
                              _loc20_ = li8(_loc2_ - 313);
                              if(_loc20_ != 0)
                              {
                                 si8(48,_loc2_ - 314);
                                 _loc20_ = li32(_loc2_ - 272);
                                 _loc30_ = int(_loc2_ - 314);
                                 si32(_loc30_,int(_loc14_ + (_loc20_ << 3)));
                                 _loc20_ = li32(_loc2_ - 272);
                                 _loc30_ = int(_loc14_ + (_loc20_ << 3));
                                 si32(2,_loc30_ | 4);
                                 _loc30_ = li32(_loc2_ - 268);
                                 _loc18_ = int(_loc30_ + 2);
                                 si32(_loc18_,_loc2_ - 268);
                                 _loc20_ = int(_loc20_ + 1);
                                 si32(_loc20_,_loc2_ - 272);
                                 if(_loc20_ >= 8)
                                 {
                                    if(_loc18_ == 0)
                                    {
                                       si32(0,_loc2_ - 272);
                                    }
                                    else
                                    {
                                       _loc1_ = int(_loc1_ - 16);
                                       si32(_loc12_,_loc1_ + 4);
                                       si32(li32(_loc2_ - 280),_loc1_);
                                       ESP = _loc1_;
                                       F___sfvwrite();
                                       _loc1_ = int(_loc1_ + 16);
                                       si32(0,_loc2_ - 268);
                                       si32(0,_loc2_ - 272);
                                       _loc18_ = _loc29_;
                                       if(int(eax) == 0)
                                       {
                                       }
                                    }
                                 }
                              }
                              if(_loc10_ == 128)
                              {
                                 _loc5_ = int(_loc31_ - _loc11_);
                                 while(true)
                                 {
                                    if(_loc5_ > 0)
                                    {
                                       _loc20_ = li32(_loc2_ - 272);
                                       si32(_zeroes,int(_loc14_ + (_loc20_ << 3)));
                                       _loc10_ = 16;
                                       if(_loc5_ <= _loc10_)
                                       {
                                          _loc10_ = _loc5_;
                                       }
                                       _loc20_ = li32(_loc2_ - 272);
                                       _loc30_ = _loc20_ << 3;
                                       _loc30_ = int(_loc14_ + _loc30_);
                                       _loc30_ = _loc30_ | 4;
                                       si32(_loc10_,_loc30_);
                                       _loc30_ = li32(_loc2_ - 268);
                                       _loc18_ = int(_loc30_ + _loc10_);
                                       si32(_loc18_,_loc2_ - 268);
                                       _loc20_ = int(_loc20_ + 1);
                                       si32(_loc20_,_loc2_ - 272);
                                       if(_loc20_ >= 8)
                                       {
                                          if(_loc18_ == 0)
                                          {
                                             si32(0,_loc2_ - 272);
                                          }
                                          else
                                          {
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(_loc12_,_loc1_ + 4);
                                             si32(li32(_loc2_ - 280),_loc1_);
                                             ESP = _loc1_;
                                             F___sfvwrite();
                                             _loc1_ = int(_loc1_ + 16);
                                             si32(0,_loc2_ - 268);
                                             si32(0,_loc2_ - 272);
                                             _loc18_ = _loc29_;
                                             if(int(eax) == 0)
                                             {
                                             }
                                          }
                                       }
                                       _loc5_ = int(_loc5_ - _loc10_);
                                       continue;
                                    }
                                 }
                              }
                              _loc20_ = _loc32_ & 256;
                              if(_loc20_ == 0)
                              {
                                 _loc34_ = int(_loc19_ - _loc13_);
                                 while(true)
                                 {
                                    if(_loc34_ <= 0)
                                    {
                                       _loc20_ = li32(_loc2_ - 160);
                                       if(_loc20_ != 0)
                                       {
                                          _loc1_ = int(_loc1_ - 16);
                                          si32(_loc43_,_loc1_ + 12);
                                          si32(_loc15_,_loc1_ + 8);
                                          si32(_loc16_,_loc1_ + 4);
                                          _loc20_ = int(_loc2_ - 168);
                                          si32(_loc20_,_loc1_);
                                          ESP = _loc1_;
                                          F_grouping_print();
                                          _loc1_ = int(_loc1_ + 16);
                                          _loc18_ = _loc29_;
                                          if(int(eax) >= 0)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          _loc20_ = li32(_loc2_ - 272);
                                          si32(_loc15_,int(_loc14_ + (_loc20_ << 3)));
                                          _loc20_ = li32(_loc2_ - 272);
                                          _loc30_ = int(_loc14_ + (_loc20_ << 3));
                                          si32(_loc13_,_loc30_ | 4);
                                          _loc30_ = li32(_loc2_ - 268);
                                          _loc34_ = int(_loc30_ + _loc13_);
                                          si32(_loc34_,_loc2_ - 268);
                                          _loc20_ = int(_loc20_ + 1);
                                          si32(_loc20_,_loc2_ - 272);
                                          if(_loc20_ >= 8)
                                          {
                                             if(_loc34_ == 0)
                                             {
                                                si32(0,_loc2_ - 272);
                                             }
                                             else
                                             {
                                                _loc1_ = int(_loc1_ - 16);
                                                si32(_loc12_,_loc1_ + 4);
                                                si32(li32(_loc2_ - 280),_loc1_);
                                                ESP = _loc1_;
                                                F___sfvwrite();
                                                _loc1_ = int(_loc1_ + 16);
                                                si32(0,_loc2_ - 268);
                                                si32(0,_loc2_ - 272);
                                                _loc18_ = _loc29_;
                                                if(int(eax) != 0)
                                                {
                                                }
                                             }
                                          }
                                       }
                                       addr9226:
                                       _loc20_ = _loc32_ & 4;
                                       if(_loc20_ != 0)
                                       {
                                          _loc31_ = int(_loc31_ - _loc11_);
                                          while(true)
                                          {
                                             if(_loc31_ > 0)
                                             {
                                                _loc20_ = li32(_loc2_ - 272);
                                                si32(_blanks,int(_loc14_ + (_loc20_ << 3)));
                                                _loc34_ = 16;
                                                if(_loc31_ <= _loc34_)
                                                {
                                                   _loc34_ = _loc31_;
                                                }
                                                _loc20_ = li32(_loc2_ - 272);
                                                _loc30_ = _loc20_ << 3;
                                                _loc30_ = int(_loc14_ + _loc30_);
                                                _loc30_ = _loc30_ | 4;
                                                si32(_loc34_,_loc30_);
                                                _loc30_ = li32(_loc2_ - 268);
                                                _loc32_ = int(_loc30_ + _loc34_);
                                                si32(_loc32_,_loc2_ - 268);
                                                _loc20_ = int(_loc20_ + 1);
                                                si32(_loc20_,_loc2_ - 272);
                                                if(_loc20_ >= 8)
                                                {
                                                   if(_loc32_ == 0)
                                                   {
                                                      si32(0,_loc2_ - 272);
                                                   }
                                                   else
                                                   {
                                                      _loc1_ = int(_loc1_ - 16);
                                                      si32(_loc12_,_loc1_ + 4);
                                                      si32(li32(_loc2_ - 280),_loc1_);
                                                      ESP = _loc1_;
                                                      F___sfvwrite();
                                                      _loc1_ = int(_loc1_ + 16);
                                                      si32(0,_loc2_ - 268);
                                                      si32(0,_loc2_ - 272);
                                                      _loc18_ = _loc29_;
                                                      if(int(eax) == 0)
                                                      {
                                                      }
                                                   }
                                                }
                                                _loc31_ = int(_loc31_ - _loc34_);
                                                continue;
                                             }
                                          }
                                       }
                                       _loc20_ = li32(_loc2_ - 268);
                                       if(_loc20_ == 0)
                                       {
                                          si32(0,_loc2_ - 272);
                                          continue loop0;
                                       }
                                       _loc1_ = int(_loc1_ - 16);
                                       si32(_loc12_,_loc1_ + 4);
                                       si32(li32(_loc2_ - 280),_loc1_);
                                       ESP = _loc1_;
                                       F___sfvwrite();
                                       _loc1_ = int(_loc1_ + 16);
                                       si32(0,_loc2_ - 268);
                                       si32(0,_loc2_ - 272);
                                       _loc18_ = _loc37_;
                                       if(int(eax) == 0)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       _loc20_ = li32(_loc2_ - 272);
                                       si32(_zeroes,int(_loc14_ + (_loc20_ << 3)));
                                       _loc19_ = 16;
                                       if(_loc34_ <= _loc19_)
                                       {
                                          _loc19_ = _loc34_;
                                       }
                                       _loc20_ = li32(_loc2_ - 272);
                                       _loc30_ = _loc20_ << 3;
                                       _loc30_ = int(_loc14_ + _loc30_);
                                       _loc30_ = _loc30_ | 4;
                                       si32(_loc19_,_loc30_);
                                       _loc30_ = li32(_loc2_ - 268);
                                       _loc18_ = int(_loc30_ + _loc19_);
                                       si32(_loc18_,_loc2_ - 268);
                                       _loc20_ = int(_loc20_ + 1);
                                       si32(_loc20_,_loc2_ - 272);
                                       if(_loc20_ >= 8)
                                       {
                                          if(_loc18_ == 0)
                                          {
                                             si32(0,_loc2_ - 272);
                                          }
                                          else
                                          {
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(_loc12_,_loc1_ + 4);
                                             si32(li32(_loc2_ - 280),_loc1_);
                                             ESP = _loc1_;
                                             F___sfvwrite();
                                             _loc1_ = int(_loc1_ + 16);
                                             si32(0,_loc2_ - 268);
                                             si32(0,_loc2_ - 272);
                                             _loc18_ = _loc29_;
                                             if(int(eax) == 0)
                                             {
                                             }
                                          }
                                       }
                                       _loc34_ = int(_loc34_ - _loc19_);
                                       continue;
                                    }
                                 }
                              }
                              else
                              {
                                 _loc20_ = _loc25_ & 255;
                                 if(_loc20_ == 0)
                                 {
                                    _loc13_ = li32(_loc2_ - 188);
                                    if(_loc13_ <= 0)
                                    {
                                       _loc20_ = li32(_loc2_ - 272);
                                       si32(_zeroes,int(_loc14_ + (_loc20_ << 3)));
                                       _loc20_ = li32(_loc2_ - 272);
                                       _loc30_ = int(_loc14_ + (_loc20_ << 3));
                                       si32(1,_loc30_ | 4);
                                       _loc30_ = li32(_loc2_ - 268);
                                       _loc18_ = int(_loc30_ + 1);
                                       si32(_loc18_,_loc2_ - 268);
                                       _loc13_ = int(_loc20_ + 1);
                                       si32(_loc13_,_loc2_ - 272);
                                       if(_loc13_ >= 8)
                                       {
                                          if(_loc18_ == 0)
                                          {
                                             _loc13_ = 0;
                                             si32(_loc13_,_loc2_ - 272);
                                          }
                                          else
                                          {
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(_loc12_,_loc1_ + 4);
                                             si32(li32(_loc2_ - 280),_loc1_);
                                             ESP = _loc1_;
                                             F___sfvwrite();
                                             _loc1_ = int(_loc1_ + 16);
                                             _loc13_ = 0;
                                             si32(_loc13_,_loc2_ - 268);
                                             si32(_loc13_,_loc2_ - 272);
                                             _loc18_ = _loc29_;
                                             if(int(eax) == 0)
                                             {
                                             }
                                          }
                                       }
                                       if(_loc34_ == 0)
                                       {
                                          _loc20_ = _loc32_ & 1;
                                          if(_loc20_ != 0)
                                          {
                                          }
                                          addr7495:
                                          _loc20_ = li32(_loc2_ - 188);
                                          _loc19_ = int(0 - _loc20_);
                                          while(true)
                                          {
                                             if(_loc19_ <= 0)
                                             {
                                                _loc20_ = li32(_loc2_ - 188);
                                                _loc13_ = int(_loc20_ + _loc34_);
                                                addr8158:
                                                _loc20_ = li32(_loc2_ - 192);
                                                _loc18_ = int(_loc20_ - _loc15_);
                                                _loc34_ = _loc13_;
                                                if(_loc18_ <= _loc13_)
                                                {
                                                   _loc34_ = _loc18_;
                                                }
                                                _loc19_ = 0;
                                                if(_loc34_ >= 1)
                                                {
                                                   _loc20_ = li32(_loc2_ - 272);
                                                   si32(_loc15_,int(_loc14_ + (_loc20_ << 3)));
                                                   _loc20_ = li32(_loc2_ - 272);
                                                   _loc30_ = int(_loc14_ + (_loc20_ << 3));
                                                   si32(_loc34_,_loc30_ | 4);
                                                   _loc30_ = li32(_loc2_ - 268);
                                                   _loc15_ = int(_loc30_ + _loc34_);
                                                   si32(_loc15_,_loc2_ - 268);
                                                   _loc20_ = int(_loc20_ + 1);
                                                   si32(_loc20_,_loc2_ - 272);
                                                   _loc19_ = _loc34_;
                                                   if(_loc20_ >= 8)
                                                   {
                                                      if(_loc15_ == 0)
                                                      {
                                                         si32(0,_loc2_ - 272);
                                                         _loc19_ = _loc34_;
                                                      }
                                                      else
                                                      {
                                                         _loc1_ = int(_loc1_ - 16);
                                                         si32(_loc12_,_loc1_ + 4);
                                                         si32(li32(_loc2_ - 280),_loc1_);
                                                         ESP = _loc1_;
                                                         F___sfvwrite();
                                                         _loc1_ = int(_loc1_ + 16);
                                                         si32(0,_loc2_ - 268);
                                                         si32(0,_loc2_ - 272);
                                                         _loc19_ = _loc34_;
                                                         _loc18_ = _loc29_;
                                                         if(int(eax) == 0)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                                _loc34_ = int(_loc13_ - _loc19_);
                                                while(true)
                                                {
                                                   if(_loc34_ <= 0)
                                                   {
                                                      §§goto(addr9226);
                                                   }
                                                   else
                                                   {
                                                      _loc20_ = li32(_loc2_ - 272);
                                                      si32(_zeroes,int(_loc14_ + (_loc20_ << 3)));
                                                      _loc15_ = 16;
                                                      if(_loc34_ <= _loc15_)
                                                      {
                                                         _loc15_ = _loc34_;
                                                      }
                                                      _loc20_ = li32(_loc2_ - 272);
                                                      _loc30_ = _loc20_ << 3;
                                                      _loc30_ = int(_loc14_ + _loc30_);
                                                      _loc30_ = _loc30_ | 4;
                                                      si32(_loc15_,_loc30_);
                                                      _loc30_ = li32(_loc2_ - 268);
                                                      _loc18_ = int(_loc30_ + _loc15_);
                                                      si32(_loc18_,_loc2_ - 268);
                                                      _loc20_ = int(_loc20_ + 1);
                                                      si32(_loc20_,_loc2_ - 272);
                                                      if(_loc20_ >= 8)
                                                      {
                                                         if(_loc18_ == 0)
                                                         {
                                                            si32(0,_loc2_ - 272);
                                                         }
                                                         else
                                                         {
                                                            _loc1_ = int(_loc1_ - 16);
                                                            si32(_loc12_,_loc1_ + 4);
                                                            si32(li32(_loc2_ - 280),_loc1_);
                                                            ESP = _loc1_;
                                                            F___sfvwrite();
                                                            _loc1_ = int(_loc1_ + 16);
                                                            si32(0,_loc2_ - 268);
                                                            si32(0,_loc2_ - 272);
                                                            _loc18_ = _loc29_;
                                                            if(int(eax) == 0)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      _loc34_ = int(_loc34_ - _loc15_);
                                                      continue;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                si32(_zeroes,int(_loc14_ + (_loc13_ << 3)));
                                                _loc10_ = 16;
                                                if(_loc19_ <= _loc10_)
                                                {
                                                   _loc10_ = _loc19_;
                                                }
                                                _loc20_ = li32(_loc2_ - 272);
                                                _loc30_ = _loc20_ << 3;
                                                _loc30_ = int(_loc14_ + _loc30_);
                                                _loc30_ = _loc30_ | 4;
                                                si32(_loc10_,_loc30_);
                                                _loc30_ = li32(_loc2_ - 268);
                                                _loc18_ = int(_loc30_ + _loc10_);
                                                si32(_loc18_,_loc2_ - 268);
                                                _loc13_ = int(_loc20_ + 1);
                                                si32(_loc13_,_loc2_ - 272);
                                                if(_loc13_ >= 8)
                                                {
                                                   if(_loc18_ == 0)
                                                   {
                                                      _loc13_ = 0;
                                                      si32(_loc13_,_loc2_ - 272);
                                                   }
                                                   else
                                                   {
                                                      _loc1_ = int(_loc1_ - 16);
                                                      si32(_loc12_,_loc1_ + 4);
                                                      si32(li32(_loc2_ - 280),_loc1_);
                                                      ESP = _loc1_;
                                                      F___sfvwrite();
                                                      _loc1_ = int(_loc1_ + 16);
                                                      _loc13_ = 0;
                                                      si32(_loc13_,_loc2_ - 268);
                                                      si32(_loc13_,_loc2_ - 272);
                                                      _loc18_ = _loc29_;
                                                      if(int(eax) == 0)
                                                      {
                                                      }
                                                   }
                                                }
                                                _loc19_ = int(_loc19_ - _loc10_);
                                                continue;
                                             }
                                          }
                                       }
                                       _loc20_ = _loc13_ << 3;
                                       _loc20_ = int(_loc14_ + _loc20_);
                                       si32(_loc8_,_loc20_);
                                       _loc20_ = li32(_loc2_ - 272);
                                       _loc30_ = _loc20_ << 3;
                                       _loc30_ = int(_loc14_ + _loc30_);
                                       _loc30_ = _loc30_ | 4;
                                       si32(_loc46_,_loc30_);
                                       _loc30_ = li32(_loc2_ - 268);
                                       _loc18_ = int(_loc30_ + _loc46_);
                                       si32(_loc18_,_loc2_ - 268);
                                       _loc13_ = int(_loc20_ + 1);
                                       si32(_loc13_,_loc2_ - 272);
                                       if(_loc13_ >= 8)
                                       {
                                          if(_loc18_ == 0)
                                          {
                                             _loc13_ = 0;
                                             si32(_loc13_,_loc2_ - 272);
                                          }
                                          else
                                          {
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(_loc12_,_loc1_ + 4);
                                             si32(li32(_loc2_ - 280),_loc1_);
                                             ESP = _loc1_;
                                             F___sfvwrite();
                                             _loc1_ = int(_loc1_ + 16);
                                             _loc13_ = 0;
                                             si32(_loc13_,_loc2_ - 268);
                                             si32(_loc13_,_loc2_ - 272);
                                             _loc18_ = _loc29_;
                                             if(int(eax) == 0)
                                             {
                                             }
                                          }
                                       }
                                       §§goto(addr7495);
                                    }
                                    else
                                    {
                                       _loc18_ = li32(_loc2_ - 192);
                                       _loc20_ = li32(_loc2_ - 160);
                                       if(_loc20_ != 0)
                                       {
                                          _loc1_ = int(_loc1_ - 16);
                                          si32(_loc18_,_loc1_ + 12);
                                          si32(_loc15_,_loc1_ + 8);
                                          si32(_loc16_,_loc1_ + 4);
                                          _loc20_ = int(_loc2_ - 168);
                                          si32(_loc20_,_loc1_);
                                          ESP = _loc1_;
                                          F_grouping_print();
                                          _loc1_ = int(_loc1_ + 16);
                                          _loc13_ = int(eax);
                                          _loc18_ = _loc29_;
                                          if(_loc13_ >= 0)
                                          {
                                             addr8013:
                                             _loc15_ = int(_loc15_ + _loc13_);
                                             if(_loc34_ == 0)
                                             {
                                                _loc13_ = 0;
                                                if((_loc32_ & 1) != 0)
                                                {
                                                }
                                                §§goto(addr8158);
                                             }
                                             _loc20_ = li32(_loc2_ - 272);
                                             _loc20_ = _loc20_ << 3;
                                             _loc20_ = int(_loc14_ + _loc20_);
                                             si32(_loc8_,_loc20_);
                                             _loc20_ = li32(_loc2_ - 272);
                                             _loc30_ = _loc20_ << 3;
                                             _loc30_ = int(_loc14_ + _loc30_);
                                             _loc30_ = _loc30_ | 4;
                                             si32(_loc46_,_loc30_);
                                             _loc30_ = li32(_loc2_ - 268);
                                             _loc18_ = int(_loc30_ + _loc46_);
                                             si32(_loc18_,_loc2_ - 268);
                                             _loc20_ = int(_loc20_ + 1);
                                             si32(_loc20_,_loc2_ - 272);
                                             _loc13_ = _loc34_;
                                             if(_loc20_ >= 8)
                                             {
                                                if(_loc18_ == 0)
                                                {
                                                   si32(0,_loc2_ - 272);
                                                   _loc13_ = _loc34_;
                                                }
                                                else
                                                {
                                                   _loc1_ = int(_loc1_ - 16);
                                                   si32(_loc12_,_loc1_ + 4);
                                                   si32(li32(_loc2_ - 280),_loc1_);
                                                   ESP = _loc1_;
                                                   F___sfvwrite();
                                                   _loc1_ = int(_loc1_ + 16);
                                                   si32(0,_loc2_ - 268);
                                                   si32(0,_loc2_ - 272);
                                                   _loc13_ = _loc34_;
                                                   _loc18_ = _loc29_;
                                                   if(int(eax) == 0)
                                                   {
                                                   }
                                                }
                                             }
                                             §§goto(addr8158);
                                          }
                                       }
                                       else
                                       {
                                          _loc19_ = int(_loc18_ - _loc15_);
                                          _loc18_ = _loc13_;
                                          if(_loc19_ <= _loc13_)
                                          {
                                             _loc18_ = _loc19_;
                                          }
                                          _loc19_ = 0;
                                          if(_loc18_ >= 1)
                                          {
                                             _loc20_ = li32(_loc2_ - 272);
                                             si32(_loc15_,int(_loc14_ + (_loc20_ << 3)));
                                             _loc20_ = li32(_loc2_ - 272);
                                             _loc30_ = int(_loc14_ + (_loc20_ << 3));
                                             si32(_loc18_,_loc30_ | 4);
                                             _loc30_ = li32(_loc2_ - 268);
                                             _loc10_ = int(_loc30_ + _loc18_);
                                             si32(_loc10_,_loc2_ - 268);
                                             _loc20_ = int(_loc20_ + 1);
                                             si32(_loc20_,_loc2_ - 272);
                                             _loc19_ = _loc18_;
                                             if(_loc20_ >= 8)
                                             {
                                                if(_loc10_ == 0)
                                                {
                                                   si32(0,_loc2_ - 272);
                                                   _loc19_ = _loc18_;
                                                }
                                                else
                                                {
                                                   _loc1_ = int(_loc1_ - 16);
                                                   si32(_loc12_,_loc1_ + 4);
                                                   si32(li32(_loc2_ - 280),_loc1_);
                                                   ESP = _loc1_;
                                                   F___sfvwrite();
                                                   _loc1_ = int(_loc1_ + 16);
                                                   si32(0,_loc2_ - 268);
                                                   si32(0,_loc2_ - 272);
                                                   _loc19_ = _loc18_;
                                                   _loc18_ = _loc29_;
                                                   if(int(eax) == 0)
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                          _loc13_ = int(_loc13_ - _loc19_);
                                          while(true)
                                          {
                                             if(_loc13_ <= 0)
                                             {
                                                _loc13_ = li32(_loc2_ - 188);
                                                §§goto(addr8013);
                                             }
                                             else
                                             {
                                                _loc20_ = li32(_loc2_ - 272);
                                                si32(_zeroes,int(_loc14_ + (_loc20_ << 3)));
                                                _loc19_ = 16;
                                                if(_loc13_ <= _loc19_)
                                                {
                                                   _loc19_ = _loc13_;
                                                }
                                                _loc20_ = li32(_loc2_ - 272);
                                                _loc30_ = _loc20_ << 3;
                                                _loc30_ = int(_loc14_ + _loc30_);
                                                _loc30_ = _loc30_ | 4;
                                                si32(_loc19_,_loc30_);
                                                _loc30_ = li32(_loc2_ - 268);
                                                _loc18_ = int(_loc30_ + _loc19_);
                                                si32(_loc18_,_loc2_ - 268);
                                                _loc20_ = int(_loc20_ + 1);
                                                si32(_loc20_,_loc2_ - 272);
                                                if(_loc20_ >= 8)
                                                {
                                                   if(_loc18_ == 0)
                                                   {
                                                      si32(0,_loc2_ - 272);
                                                   }
                                                   else
                                                   {
                                                      _loc1_ = int(_loc1_ - 16);
                                                      si32(_loc12_,_loc1_ + 4);
                                                      si32(li32(_loc2_ - 280),_loc1_);
                                                      ESP = _loc1_;
                                                      F___sfvwrite();
                                                      _loc1_ = int(_loc1_ + 16);
                                                      si32(0,_loc2_ - 268);
                                                      si32(0,_loc2_ - 272);
                                                      _loc18_ = _loc29_;
                                                      if(int(eax) == 0)
                                                      {
                                                      }
                                                   }
                                                }
                                                _loc13_ = int(_loc13_ - _loc19_);
                                                continue;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    if(_loc34_ <= 1)
                                    {
                                       _loc20_ = _loc32_ & 1;
                                       if(_loc20_ == 0)
                                       {
                                          _loc20_ = li32(_loc2_ - 272);
                                          si32(_loc15_,int(_loc14_ + (_loc20_ << 3)));
                                          _loc20_ = li32(_loc2_ - 272);
                                          _loc30_ = int(_loc14_ + (_loc20_ << 3));
                                          si32(1,_loc30_ | 4);
                                          _loc30_ = li32(_loc2_ - 268);
                                          _loc34_ = int(_loc30_ + 1);
                                          si32(_loc34_,_loc2_ - 268);
                                          _loc15_ = int(_loc20_ + 1);
                                          si32(_loc15_,_loc2_ - 272);
                                          if(_loc15_ >= 8)
                                          {
                                             if(_loc34_ == 0)
                                             {
                                                _loc15_ = 0;
                                                si32(_loc15_,_loc2_ - 272);
                                             }
                                             else
                                             {
                                                _loc1_ = int(_loc1_ - 16);
                                                si32(_loc12_,_loc1_ + 4);
                                                si32(li32(_loc2_ - 280),_loc1_);
                                                ESP = _loc1_;
                                                F___sfvwrite();
                                                _loc1_ = int(_loc1_ + 16);
                                                _loc15_ = 0;
                                                si32(_loc15_,_loc2_ - 268);
                                                si32(_loc15_,_loc2_ - 272);
                                                _loc18_ = _loc29_;
                                                if(int(eax) == 0)
                                                {
                                                }
                                             }
                                          }
                                       }
                                       addr9109:
                                       _loc20_ = _loc15_ << 3;
                                       _loc20_ = int(_loc14_ + _loc20_);
                                       si32(_loc48_,_loc20_);
                                       _loc20_ = li32(_loc2_ - 272);
                                       _loc30_ = _loc20_ << 3;
                                       _loc30_ = int(_loc14_ + _loc30_);
                                       _loc30_ = _loc30_ | 4;
                                       si32(_loc3_,_loc30_);
                                       _loc30_ = li32(_loc2_ - 268);
                                       _loc34_ = int(_loc30_ + _loc3_);
                                       si32(_loc34_,_loc2_ - 268);
                                       _loc20_ = int(_loc20_ + 1);
                                       si32(_loc20_,_loc2_ - 272);
                                       if(_loc20_ >= 8)
                                       {
                                          if(_loc34_ == 0)
                                          {
                                             si32(0,_loc2_ - 272);
                                          }
                                          else
                                          {
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(_loc12_,_loc1_ + 4);
                                             si32(li32(_loc2_ - 280),_loc1_);
                                             ESP = _loc1_;
                                             F___sfvwrite();
                                             _loc1_ = int(_loc1_ + 16);
                                             si32(0,_loc2_ - 268);
                                             si32(0,_loc2_ - 272);
                                             _loc18_ = _loc29_;
                                             if(int(eax) == 0)
                                             {
                                             }
                                          }
                                       }
                                       §§goto(addr9226);
                                    }
                                    _loc20_ = li32(_loc2_ - 272);
                                    _loc20_ = _loc20_ << 3;
                                    _loc20_ = int(_loc14_ + _loc20_);
                                    si32(_loc15_,_loc20_);
                                    _loc20_ = li32(_loc2_ - 272);
                                    _loc30_ = _loc20_ << 3;
                                    _loc30_ = int(_loc14_ + _loc30_);
                                    _loc30_ = _loc30_ | 4;
                                    si32(1,_loc30_);
                                    _loc30_ = li32(_loc2_ - 268);
                                    _loc18_ = int(_loc30_ + 1);
                                    si32(_loc18_,_loc2_ - 268);
                                    _loc13_ = int(_loc20_ + 1);
                                    si32(_loc13_,_loc2_ - 272);
                                    if(_loc13_ >= 8)
                                    {
                                       if(_loc18_ == 0)
                                       {
                                          _loc13_ = 0;
                                          si32(_loc13_,_loc2_ - 272);
                                       }
                                       else
                                       {
                                          _loc1_ = int(_loc1_ - 16);
                                          si32(_loc12_,_loc1_ + 4);
                                          si32(li32(_loc2_ - 280),_loc1_);
                                          ESP = _loc1_;
                                          F___sfvwrite();
                                          _loc1_ = int(_loc1_ + 16);
                                          _loc13_ = 0;
                                          si32(_loc13_,_loc2_ - 268);
                                          si32(_loc13_,_loc2_ - 272);
                                          _loc18_ = _loc29_;
                                          if(int(eax) == 0)
                                          {
                                          }
                                       }
                                    }
                                    _loc20_ = _loc13_ << 3;
                                    _loc20_ = int(_loc14_ + _loc20_);
                                    si32(_loc8_,_loc20_);
                                    _loc20_ = li32(_loc2_ - 272);
                                    _loc30_ = _loc20_ << 3;
                                    _loc30_ = int(_loc14_ + _loc30_);
                                    _loc30_ = _loc30_ | 4;
                                    si32(_loc46_,_loc30_);
                                    _loc30_ = li32(_loc2_ - 268);
                                    _loc18_ = int(_loc30_ + _loc46_);
                                    si32(_loc18_,_loc2_ - 268);
                                    _loc13_ = int(_loc20_ + 1);
                                    si32(_loc13_,_loc2_ - 272);
                                    if(_loc13_ >= 8)
                                    {
                                       if(_loc18_ == 0)
                                       {
                                          _loc13_ = 0;
                                          si32(_loc13_,_loc2_ - 272);
                                       }
                                       else
                                       {
                                          _loc1_ = int(_loc1_ - 16);
                                          si32(_loc12_,_loc1_ + 4);
                                          si32(li32(_loc2_ - 280),_loc1_);
                                          ESP = _loc1_;
                                          F___sfvwrite();
                                          _loc1_ = int(_loc1_ + 16);
                                          _loc13_ = 0;
                                          si32(_loc13_,_loc2_ - 268);
                                          si32(_loc13_,_loc2_ - 272);
                                          _loc18_ = _loc29_;
                                          if(int(eax) == 0)
                                          {
                                          }
                                       }
                                    }
                                    _loc20_ = int(_loc15_ + 1);
                                    _loc30_ = _loc13_ << 3;
                                    _loc30_ = int(_loc14_ + _loc30_);
                                    si32(_loc20_,_loc30_);
                                    _loc20_ = li32(_loc2_ - 272);
                                    _loc30_ = _loc20_ << 3;
                                    _loc30_ = int(_loc14_ + _loc30_);
                                    _loc28_ = _loc30_ | 4;
                                    _loc30_ = int(_loc4_ + -1);
                                    si32(_loc30_,_loc28_);
                                    _loc28_ = li32(_loc2_ - 268);
                                    _loc18_ = int(_loc28_ + _loc30_);
                                    si32(_loc18_,_loc2_ - 268);
                                    _loc15_ = int(_loc20_ + 1);
                                    si32(_loc15_,_loc2_ - 272);
                                    if(_loc15_ >= 8)
                                    {
                                       if(_loc18_ == 0)
                                       {
                                          _loc15_ = 0;
                                          si32(_loc15_,_loc2_ - 272);
                                       }
                                       else
                                       {
                                          _loc1_ = int(_loc1_ - 16);
                                          si32(_loc12_,_loc1_ + 4);
                                          si32(li32(_loc2_ - 280),_loc1_);
                                          ESP = _loc1_;
                                          F___sfvwrite();
                                          _loc1_ = int(_loc1_ + 16);
                                          _loc15_ = 0;
                                          si32(_loc15_,_loc2_ - 268);
                                          si32(_loc15_,_loc2_ - 272);
                                          _loc18_ = _loc29_;
                                          if(int(eax) == 0)
                                          {
                                          }
                                       }
                                    }
                                    _loc34_ = int(_loc34_ - _loc4_);
                                    while(true)
                                    {
                                       if(_loc34_ <= 0)
                                       {
                                          §§goto(addr9109);
                                       }
                                       else
                                       {
                                          si32(_zeroes,int(_loc14_ + (_loc15_ << 3)));
                                          _loc13_ = 16;
                                          if(_loc34_ <= _loc13_)
                                          {
                                             _loc13_ = _loc34_;
                                          }
                                          _loc20_ = li32(_loc2_ - 272);
                                          _loc30_ = _loc20_ << 3;
                                          _loc30_ = int(_loc14_ + _loc30_);
                                          _loc30_ = _loc30_ | 4;
                                          si32(_loc13_,_loc30_);
                                          _loc30_ = li32(_loc2_ - 268);
                                          _loc18_ = int(_loc30_ + _loc13_);
                                          si32(_loc18_,_loc2_ - 268);
                                          _loc15_ = int(_loc20_ + 1);
                                          si32(_loc15_,_loc2_ - 272);
                                          if(_loc15_ >= 8)
                                          {
                                             if(_loc18_ == 0)
                                             {
                                                _loc15_ = 0;
                                                si32(_loc15_,_loc2_ - 272);
                                             }
                                             else
                                             {
                                                _loc1_ = int(_loc1_ - 16);
                                                si32(_loc12_,_loc1_ + 4);
                                                si32(li32(_loc2_ - 280),_loc1_);
                                                ESP = _loc1_;
                                                F___sfvwrite();
                                                _loc1_ = int(_loc1_ + 16);
                                                _loc15_ = 0;
                                                si32(_loc15_,_loc2_ - 268);
                                                si32(_loc15_,_loc2_ - 272);
                                                _loc18_ = _loc29_;
                                                if(int(eax) == 0)
                                                {
                                                }
                                             }
                                          }
                                          _loc34_ = int(_loc34_ - _loc13_);
                                          continue;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr9498);
                        }
                        else
                        {
                           if(_loc11_ <= 107)
                           {
                              if(_loc11_ <= 101)
                              {
                                 if(_loc11_ <= 98)
                                 {
                                    if(_loc11_ != 88)
                                    {
                                       if(_loc11_ == 97)
                                       {
                                          §§goto(addr2140);
                                       }
                                    }
                                    else
                                    {
                                       _loc27_ = int(_xdigs_upper_2E_4559);
                                       addr5076:
                                       _loc32_ = _loc37_ & 7200;
                                       if(_loc32_ != 0)
                                       {
                                          _loc20_ = _loc37_ & 4096;
                                          if(_loc20_ != 0)
                                          {
                                             _loc17_ = li32(_loc2_ - 320);
                                             if(_loc17_ != 0)
                                             {
                                                _loc23_ = int(_loc17_ + (_loc36_ << 3));
                                             }
                                             else
                                             {
                                                _loc23_ = _loc26_;
                                                _loc26_ = int(_loc26_ + 8);
                                             }
                                             _loc17_ = li32(_loc23_ + 4);
                                             _loc23_ = li32(_loc23_);
                                          }
                                          else
                                          {
                                             _loc20_ = _loc37_ & 1024;
                                             if(_loc20_ != 0)
                                             {
                                                _loc17_ = li32(_loc2_ - 320);
                                                if(_loc17_ != 0)
                                                {
                                                   _loc17_ = int(_loc17_ + (_loc36_ << 3));
                                                }
                                                else
                                                {
                                                   _loc17_ = _loc26_;
                                                   _loc26_ = int(_loc26_ + 4);
                                                }
                                                _loc23_ = li32(_loc17_);
                                                _loc17_ = 0;
                                             }
                                             else
                                             {
                                                _loc17_ = li32(_loc2_ - 320);
                                                if((_loc37_ & 2048) != 0)
                                                {
                                                   if(_loc17_ != 0)
                                                   {
                                                      _loc17_ = int(_loc17_ + (_loc36_ << 3));
                                                   }
                                                   else
                                                   {
                                                      _loc17_ = _loc26_;
                                                      _loc26_ = int(_loc26_ + 4);
                                                   }
                                                   _loc23_ = li32(_loc17_);
                                                   _loc17_ = _loc23_ >> 31;
                                                }
                                                else
                                                {
                                                   if(_loc17_ != 0)
                                                   {
                                                      _loc23_ = int(_loc17_ + (_loc36_ << 3));
                                                   }
                                                   else
                                                   {
                                                      _loc23_ = _loc26_;
                                                      _loc26_ = int(_loc26_ + 8);
                                                   }
                                                   _loc17_ = li32(_loc23_ + 4);
                                                   _loc23_ = li32(_loc23_);
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          _loc20_ = _loc37_ & 16;
                                          if(_loc20_ != 0)
                                          {
                                             _loc21_ = li32(_loc2_ - 320);
                                             if(_loc21_ != 0)
                                             {
                                                _loc21_ = int(_loc21_ + (_loc36_ << 3));
                                             }
                                             else
                                             {
                                                _loc21_ = _loc26_;
                                                _loc26_ = int(_loc26_ + 4);
                                             }
                                             _loc21_ = li32(_loc21_);
                                          }
                                          else
                                          {
                                             _loc20_ = _loc37_ & 64;
                                             if(_loc20_ != 0)
                                             {
                                                _loc21_ = li32(_loc2_ - 320);
                                                if(_loc21_ != 0)
                                                {
                                                   _loc21_ = int(_loc21_ + (_loc36_ << 3));
                                                }
                                                else
                                                {
                                                   _loc21_ = _loc26_;
                                                   _loc26_ = int(_loc26_ + 4);
                                                }
                                                _loc21_ = li16(_loc21_);
                                             }
                                             else
                                             {
                                                _loc21_ = li32(_loc2_ - 320);
                                                if((_loc37_ & 8192) != 0)
                                                {
                                                   if(_loc21_ != 0)
                                                   {
                                                      _loc21_ = int(_loc21_ + (_loc36_ << 3));
                                                   }
                                                   else
                                                   {
                                                      _loc21_ = _loc26_;
                                                      _loc26_ = int(_loc26_ + 4);
                                                   }
                                                   _loc21_ = li8(_loc21_);
                                                }
                                                else
                                                {
                                                   if(_loc21_ != 0)
                                                   {
                                                      _loc21_ = int(_loc21_ + (_loc36_ << 3));
                                                   }
                                                   else
                                                   {
                                                      _loc21_ = _loc26_;
                                                      _loc26_ = int(_loc26_ + 4);
                                                   }
                                                   _loc21_ = li32(_loc21_);
                                                }
                                             }
                                          }
                                       }
                                       _loc20_ = _loc37_ & 1;
                                       if(_loc20_ != 0)
                                       {
                                          _loc18_ = 1;
                                          _loc15_ = _loc18_;
                                          if(_loc21_ == 0)
                                          {
                                             _loc15_ = 0;
                                          }
                                          _loc20_ = _loc23_ | _loc17_;
                                          if(_loc20_ == 0)
                                          {
                                             _loc18_ = 0;
                                          }
                                          if(_loc32_ != 0)
                                          {
                                             _loc15_ = _loc18_;
                                          }
                                          _loc20_ = _loc15_ & 1;
                                          if(_loc20_ != 0)
                                          {
                                             si8(_loc11_,_loc2_ - 313);
                                          }
                                       }
                                       _loc37_ = _loc37_ & -513;
                                       _loc11_ = 16;
                                    }
                                 }
                                 else if(_loc11_ != 99)
                                 {
                                    if(_loc11_ != 100)
                                    {
                                       if(_loc11_ == 101)
                                       {
                                          §§goto(addr2445);
                                       }
                                    }
                                    else
                                    {
                                       break loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr1568);
                                 }
                                 §§goto(addr6256);
                              }
                              else if(_loc11_ <= 103)
                              {
                                 if(_loc11_ != 102)
                                 {
                                    if(_loc11_ == 103)
                                    {
                                       §§goto(addr2462);
                                    }
                                    §§goto(addr6256);
                                 }
                                 §§goto(addr2474);
                              }
                              else if(_loc11_ != 104)
                              {
                                 if(_loc11_ != 105)
                                 {
                                    if(_loc11_ == 106)
                                    {
                                       _loc37_ = _loc37_ | 4096;
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    break loop2;
                                 }
                              }
                              else
                              {
                                 _loc20_ = _loc37_ & 64;
                                 if(_loc20_ != 0)
                                 {
                                    _loc20_ = _loc37_ & -8257;
                                    _loc37_ = _loc20_ | 8192;
                                 }
                                 else
                                 {
                                    _loc37_ = _loc37_ | 64;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr6230);
                           }
                           else if(_loc11_ <= 114)
                           {
                              if(_loc11_ <= 110)
                              {
                                 if(_loc11_ != 108)
                                 {
                                    if(_loc11_ != 110)
                                    {
                                       §§goto(addr6230);
                                    }
                                    else
                                    {
                                       _loc20_ = _loc37_ & 32;
                                       if(_loc20_ != 0)
                                       {
                                          _loc31_ = li32(_loc2_ - 320);
                                          if(_loc31_ != 0)
                                          {
                                             _loc31_ = int(_loc31_ + (_loc36_ << 3));
                                          }
                                          else
                                          {
                                             _loc31_ = _loc26_;
                                             _loc26_ = int(_loc26_ + 4);
                                          }
                                          _loc30_ = li32(_loc31_);
                                          _loc20_ = _loc29_ >> 31;
                                          si32(_loc20_,_loc30_ + 4);
                                          si32(_loc29_,_loc30_);
                                          _loc36_ = int(_loc36_ + 1);
                                          _loc37_ = _loc29_;
                                       }
                                       else
                                       {
                                          _loc20_ = _loc37_ & 1024;
                                          if(_loc20_ != 0)
                                          {
                                             _loc31_ = li32(_loc2_ - 320);
                                             if(_loc31_ != 0)
                                             {
                                                _loc31_ = int(_loc31_ + (_loc36_ << 3));
                                             }
                                             else
                                             {
                                                _loc31_ = _loc26_;
                                                _loc26_ = int(_loc26_ + 4);
                                             }
                                             _loc20_ = li32(_loc31_);
                                             si32(_loc29_,_loc20_);
                                             _loc36_ = int(_loc36_ + 1);
                                             _loc37_ = _loc29_;
                                          }
                                          else
                                          {
                                             _loc20_ = _loc37_ & 2048;
                                             if(_loc20_ != 0)
                                             {
                                                _loc31_ = li32(_loc2_ - 320);
                                                if(_loc31_ != 0)
                                                {
                                                   _loc31_ = int(_loc31_ + (_loc36_ << 3));
                                                }
                                                else
                                                {
                                                   _loc31_ = _loc26_;
                                                   _loc26_ = int(_loc26_ + 4);
                                                }
                                                _loc20_ = li32(_loc31_);
                                                si32(_loc29_,_loc20_);
                                                _loc36_ = int(_loc36_ + 1);
                                                _loc37_ = _loc29_;
                                             }
                                             else
                                             {
                                                _loc20_ = _loc37_ & 4096;
                                                if(_loc20_ != 0)
                                                {
                                                   _loc31_ = li32(_loc2_ - 320);
                                                   if(_loc31_ != 0)
                                                   {
                                                      _loc31_ = int(_loc31_ + (_loc36_ << 3));
                                                   }
                                                   else
                                                   {
                                                      _loc31_ = _loc26_;
                                                      _loc26_ = int(_loc26_ + 4);
                                                   }
                                                   _loc30_ = li32(_loc31_);
                                                   _loc20_ = _loc29_ >> 31;
                                                   si32(_loc20_,_loc30_ + 4);
                                                   si32(_loc29_,_loc30_);
                                                   _loc36_ = int(_loc36_ + 1);
                                                   _loc37_ = _loc29_;
                                                }
                                                else
                                                {
                                                   _loc20_ = _loc37_ & 16;
                                                   if(_loc20_ != 0)
                                                   {
                                                      _loc31_ = li32(_loc2_ - 320);
                                                      if(_loc31_ != 0)
                                                      {
                                                         _loc31_ = int(_loc31_ + (_loc36_ << 3));
                                                      }
                                                      else
                                                      {
                                                         _loc31_ = _loc26_;
                                                         _loc26_ = int(_loc26_ + 4);
                                                      }
                                                      _loc20_ = li32(_loc31_);
                                                      si32(_loc29_,_loc20_);
                                                      _loc36_ = int(_loc36_ + 1);
                                                      _loc37_ = _loc29_;
                                                   }
                                                   else
                                                   {
                                                      _loc20_ = _loc37_ & 64;
                                                      if(_loc20_ != 0)
                                                      {
                                                         _loc31_ = li32(_loc2_ - 320);
                                                         if(_loc31_ != 0)
                                                         {
                                                            _loc31_ = int(_loc31_ + (_loc36_ << 3));
                                                         }
                                                         else
                                                         {
                                                            _loc31_ = _loc26_;
                                                            _loc26_ = int(_loc26_ + 4);
                                                         }
                                                         _loc20_ = li32(_loc31_);
                                                         si16(_loc29_,_loc20_);
                                                         _loc36_ = int(_loc36_ + 1);
                                                         _loc37_ = _loc29_;
                                                      }
                                                      else
                                                      {
                                                         _loc31_ = li32(_loc2_ - 320);
                                                         if((_loc37_ & 8192) != 0)
                                                         {
                                                            if(_loc31_ != 0)
                                                            {
                                                               _loc31_ = int(_loc31_ + (_loc36_ << 3));
                                                            }
                                                            else
                                                            {
                                                               _loc31_ = _loc26_;
                                                               _loc26_ = int(_loc26_ + 4);
                                                            }
                                                            _loc20_ = li32(_loc31_);
                                                            si8(_loc29_,_loc20_);
                                                            _loc36_ = int(_loc36_ + 1);
                                                            _loc37_ = _loc29_;
                                                         }
                                                         else
                                                         {
                                                            if(_loc31_ != 0)
                                                            {
                                                               _loc31_ = int(_loc31_ + (_loc36_ << 3));
                                                            }
                                                            else
                                                            {
                                                               _loc31_ = _loc26_;
                                                               _loc26_ = int(_loc26_ + 4);
                                                            }
                                                            _loc20_ = li32(_loc31_);
                                                            si32(_loc29_,_loc20_);
                                                            _loc36_ = int(_loc36_ + 1);
                                                            _loc37_ = _loc29_;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    _loc20_ = _loc37_ & 16;
                                    if(_loc20_ != 0)
                                    {
                                       _loc20_ = _loc37_ & -49;
                                       _loc37_ = _loc20_ | 32;
                                    }
                                    else
                                    {
                                       _loc37_ = _loc37_ | 16;
                                    }
                                    continue loop2;
                                 }
                              }
                              else if(_loc11_ != 111)
                              {
                                 if(_loc11_ != 112)
                                 {
                                    if(_loc11_ != 113)
                                    {
                                       §§goto(addr6230);
                                    }
                                    else
                                    {
                                       _loc37_ = _loc37_ | 32;
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    _loc27_ = li32(_loc2_ - 320);
                                    if(_loc27_ != 0)
                                    {
                                       _loc27_ = int(_loc27_ + (_loc36_ << 3));
                                    }
                                    else
                                    {
                                       _loc27_ = _loc26_;
                                       _loc26_ = int(_loc26_ + 4);
                                    }
                                    _loc23_ = li32(_loc27_);
                                    si8(120,_loc2_ - 313);
                                    _loc37_ = _loc37_ | 4096;
                                    _loc17_ = 0;
                                    _loc27_ = int(_xdigs_lower_2E_4558);
                                    _loc11_ = 16;
                                 }
                              }
                              else
                              {
                                 §§goto(addr3782);
                              }
                              §§goto(addr6256);
                           }
                           else
                           {
                              if(_loc11_ <= 116)
                              {
                                 if(_loc11_ != 115)
                                 {
                                    if(_loc11_ != 116)
                                    {
                                       §§goto(addr6230);
                                    }
                                    else
                                    {
                                       _loc37_ = _loc37_ | 2048;
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr4165);
                                 }
                              }
                              else if(_loc11_ != 117)
                              {
                                 if(_loc11_ != 120)
                                 {
                                    if(_loc11_ != 122)
                                    {
                                       §§goto(addr6230);
                                    }
                                    else
                                    {
                                       _loc37_ = _loc37_ | 1024;
                                       continue loop2;
                                    }
                                 }
                                 else
                                 {
                                    _loc27_ = int(_xdigs_lower_2E_4558);
                                    §§goto(addr5076);
                                 }
                              }
                              §§goto(addr6256);
                           }
                           §§goto(addr5444);
                        }
                        _loc20_ = _loc37_ & 7200;
                        if(_loc20_ != 0)
                        {
                           _loc20_ = _loc37_ & 4096;
                           if(_loc20_ != 0)
                           {
                              _loc17_ = li32(_loc2_ - 320);
                              if(_loc17_ != 0)
                              {
                                 _loc23_ = int(_loc17_ + (_loc36_ << 3));
                              }
                              else
                              {
                                 _loc23_ = _loc26_;
                                 _loc26_ = int(_loc26_ + 8);
                              }
                              _loc17_ = li32(_loc23_ + 4);
                              _loc23_ = li32(_loc23_);
                              _loc11_ = 10;
                           }
                           else
                           {
                              _loc20_ = _loc37_ & 1024;
                              if(_loc20_ != 0)
                              {
                                 _loc17_ = li32(_loc2_ - 320);
                                 if(_loc17_ != 0)
                                 {
                                    _loc17_ = int(_loc17_ + (_loc36_ << 3));
                                 }
                                 else
                                 {
                                    _loc17_ = _loc26_;
                                    _loc26_ = int(_loc26_ + 4);
                                 }
                                 _loc23_ = li32(_loc17_);
                                 _loc17_ = 0;
                                 _loc11_ = 10;
                              }
                              else
                              {
                                 _loc17_ = li32(_loc2_ - 320);
                                 if((_loc37_ & 2048) != 0)
                                 {
                                    if(_loc17_ != 0)
                                    {
                                       _loc17_ = int(_loc17_ + (_loc36_ << 3));
                                    }
                                    else
                                    {
                                       _loc17_ = _loc26_;
                                       _loc26_ = int(_loc26_ + 4);
                                    }
                                    _loc23_ = li32(_loc17_);
                                    _loc17_ = _loc23_ >> 31;
                                    _loc11_ = 10;
                                 }
                                 else
                                 {
                                    if(_loc17_ != 0)
                                    {
                                       _loc23_ = int(_loc17_ + (_loc36_ << 3));
                                    }
                                    else
                                    {
                                       _loc23_ = _loc26_;
                                       _loc26_ = int(_loc26_ + 8);
                                    }
                                    _loc17_ = li32(_loc23_ + 4);
                                    _loc23_ = li32(_loc23_);
                                    _loc11_ = 10;
                                 }
                              }
                           }
                        }
                        else
                        {
                           _loc20_ = _loc37_ & 16;
                           if(_loc20_ != 0)
                           {
                              _loc21_ = li32(_loc2_ - 320);
                              if(_loc21_ != 0)
                              {
                                 _loc21_ = int(_loc21_ + (_loc36_ << 3));
                              }
                              else
                              {
                                 _loc21_ = _loc26_;
                                 _loc26_ = int(_loc26_ + 4);
                              }
                              _loc21_ = li32(_loc21_);
                              _loc11_ = 10;
                           }
                           else
                           {
                              _loc20_ = _loc37_ & 64;
                              if(_loc20_ != 0)
                              {
                                 _loc21_ = li32(_loc2_ - 320);
                                 if(_loc21_ != 0)
                                 {
                                    _loc21_ = int(_loc21_ + (_loc36_ << 3));
                                 }
                                 else
                                 {
                                    _loc21_ = _loc26_;
                                    _loc26_ = int(_loc26_ + 4);
                                 }
                                 _loc21_ = li16(_loc21_);
                                 _loc11_ = 10;
                              }
                              else
                              {
                                 _loc21_ = li32(_loc2_ - 320);
                                 if((_loc37_ & 8192) != 0)
                                 {
                                    if(_loc21_ != 0)
                                    {
                                       _loc21_ = int(_loc21_ + (_loc36_ << 3));
                                    }
                                    else
                                    {
                                       _loc21_ = _loc26_;
                                       _loc26_ = int(_loc26_ + 4);
                                    }
                                    _loc21_ = li8(_loc21_);
                                    _loc11_ = 10;
                                 }
                                 else
                                 {
                                    if(_loc21_ != 0)
                                    {
                                       _loc21_ = int(_loc21_ + (_loc36_ << 3));
                                    }
                                    else
                                    {
                                       _loc21_ = _loc26_;
                                       _loc26_ = int(_loc26_ + 4);
                                    }
                                    _loc21_ = li32(_loc21_);
                                    _loc11_ = 10;
                                 }
                              }
                           }
                        }
                        §§goto(addr5444);
                     }
                     if(_loc11_ <= 38)
                     {
                        if(_loc11_ != 32)
                        {
                           if(_loc11_ != 35)
                           {
                              §§goto(addr6230);
                           }
                           else
                           {
                              _loc37_ = _loc37_ | 1;
                              continue loop2;
                           }
                        }
                        else
                        {
                           _loc20_ = li8(_loc2_ - 139);
                           if(_loc20_ == 0)
                           {
                              si8(32,_loc2_ - 139);
                           }
                           continue loop2;
                        }
                     }
                     else if(_loc11_ != 39)
                     {
                        if(_loc11_ != 42)
                        {
                           §§goto(addr6230);
                        }
                        else
                        {
                           _loc11_ = si8(li8(_loc40_));
                           _loc15_ = int(_loc11_ + -48);
                           _loc32_ = 0;
                           _loc31_ = _loc40_;
                           if(uint(_loc15_) < 10)
                           {
                              do
                              {
                                 _loc20_ = int(_loc32_ * 10);
                                 _loc32_ = int(_loc15_ + _loc20_);
                                 _loc20_ = int(_loc31_ + 1);
                                 _loc11_ = si8(li8(_loc31_ + 1));
                                 _loc15_ = int(_loc11_ + -48);
                                 _loc31_ = _loc20_;
                              }
                              while(uint(_loc15_) < 10);
                              
                           }
                           _loc20_ = _loc11_ & 255;
                           _loc15_ = li32(_loc2_ - 320);
                           if(_loc20_ == 36)
                           {
                              if(_loc15_ == 0)
                              {
                                 _loc20_ = int(_loc2_ - 384);
                                 si32(_loc20_,_loc2_ - 320);
                                 _loc1_ = int(_loc1_ - 16);
                                 _loc20_ = int(_loc2_ - 320);
                                 si32(_loc20_,_loc1_ + 8);
                                 si32(li32(_loc2_ - 388),_loc1_ + 4);
                                 si32(_loc24_,_loc1_);
                                 ESP = _loc1_;
                                 F___find_arguments();
                                 _loc18_ = -1;
                                 _loc1_ = int(_loc1_ + 16);
                                 _loc20_ = int(eax);
                                 if(_loc20_ == 0)
                                 {
                                    _loc15_ = li32(_loc2_ - 320);
                                    if(_loc15_ == 0)
                                    {
                                       _loc32_ = _loc26_;
                                       _loc26_ = int(_loc26_ + 4);
                                    }
                                    addr1023:
                                    _loc40_ = int(_loc31_ + 1);
                                 }
                              }
                              _loc20_ = _loc32_ << 3;
                              _loc32_ = int(_loc15_ + _loc20_);
                              §§goto(addr1023);
                           }
                           else
                           {
                              if(_loc15_ != 0)
                              {
                                 _loc32_ = int(_loc15_ + (_loc36_ << 3));
                              }
                              else
                              {
                                 _loc32_ = _loc26_;
                                 _loc26_ = int(_loc26_ + 4);
                              }
                              _loc36_ = int(_loc36_ + 1);
                           }
                           _loc31_ = li32(_loc32_);
                           if(_loc31_ <= -1)
                           {
                              _loc31_ = int(0 - _loc31_);
                              §§goto(addr1071);
                           }
                           else
                           {
                              continue loop2;
                           }
                        }
                     }
                     else
                     {
                        _loc37_ = _loc37_ | 512;
                        continue loop2;
                     }
                     §§goto(addr9498);
                  }
                  _loc37_ = _loc37_ | 128;
               }
               _loc20_ = _loc37_ & 7200;
               if(_loc20_ != 0)
               {
                  _loc20_ = _loc37_ & 4096;
                  if(_loc20_ != 0)
                  {
                     _loc17_ = li32(_loc2_ - 320);
                     if(_loc17_ != 0)
                     {
                        _loc23_ = int(_loc17_ + (_loc36_ << 3));
                     }
                     else
                     {
                        _loc23_ = _loc26_;
                        _loc26_ = int(_loc26_ + 8);
                     }
                     _loc17_ = li32(_loc23_ + 4);
                     _loc23_ = li32(_loc23_);
                  }
                  else
                  {
                     _loc20_ = _loc37_ & 1024;
                     if(_loc20_ != 0)
                     {
                        _loc17_ = li32(_loc2_ - 320);
                        if(_loc17_ != 0)
                        {
                           _loc17_ = int(_loc17_ + (_loc36_ << 3));
                        }
                        else
                        {
                           _loc17_ = _loc26_;
                           _loc26_ = int(_loc26_ + 4);
                        }
                        _loc23_ = li32(_loc17_);
                        _loc17_ = _loc23_ >> 31;
                     }
                     else
                     {
                        _loc17_ = li32(_loc2_ - 320);
                        if((_loc37_ & 2048) != 0)
                        {
                           if(_loc17_ != 0)
                           {
                              _loc17_ = int(_loc17_ + (_loc36_ << 3));
                           }
                           else
                           {
                              _loc17_ = _loc26_;
                              _loc26_ = int(_loc26_ + 4);
                           }
                           _loc23_ = li32(_loc17_);
                           _loc17_ = _loc23_ >> 31;
                        }
                        else
                        {
                           if(_loc17_ != 0)
                           {
                              _loc23_ = int(_loc17_ + (_loc36_ << 3));
                           }
                           else
                           {
                              _loc23_ = _loc26_;
                              _loc26_ = int(_loc26_ + 8);
                           }
                           _loc17_ = li32(_loc23_ + 4);
                           _loc23_ = li32(_loc23_);
                        }
                     }
                  }
                  _loc36_ = int(_loc36_ + 1);
                  _loc11_ = 10;
                  if(_loc17_ <= -1)
                  {
                     si8(45,_loc2_ - 139);
                     _loc32_ = 1;
                     if(_loc23_ == 0)
                     {
                        _loc32_ = 0;
                     }
                     _loc20_ = int(0 - _loc17_);
                     _loc17_ = int(_loc20_ - _loc32_);
                     _loc23_ = int(0 - _loc23_);
                     _loc11_ = 10;
                  }
               }
               else
               {
                  _loc20_ = _loc37_ & 16;
                  if(_loc20_ != 0)
                  {
                     _loc21_ = li32(_loc2_ - 320);
                     if(_loc21_ != 0)
                     {
                        _loc21_ = int(_loc21_ + (_loc36_ << 3));
                     }
                     else
                     {
                        _loc21_ = _loc26_;
                        _loc26_ = int(_loc26_ + 4);
                     }
                     _loc21_ = li32(_loc21_);
                  }
                  else
                  {
                     _loc20_ = _loc37_ & 64;
                     if(_loc20_ != 0)
                     {
                        _loc21_ = li32(_loc2_ - 320);
                        if(_loc21_ != 0)
                        {
                           _loc21_ = int(_loc21_ + (_loc36_ << 3));
                        }
                        else
                        {
                           _loc21_ = _loc26_;
                           _loc26_ = int(_loc26_ + 4);
                        }
                        _loc21_ = si16(li16(_loc21_));
                     }
                     else
                     {
                        _loc21_ = li32(_loc2_ - 320);
                        if((_loc37_ & 8192) != 0)
                        {
                           if(_loc21_ != 0)
                           {
                              _loc21_ = int(_loc21_ + (_loc36_ << 3));
                           }
                           else
                           {
                              _loc21_ = _loc26_;
                              _loc26_ = int(_loc26_ + 4);
                           }
                           _loc21_ = si8(li8(_loc21_));
                        }
                        else
                        {
                           if(_loc21_ != 0)
                           {
                              _loc21_ = int(_loc21_ + (_loc36_ << 3));
                           }
                           else
                           {
                              _loc21_ = _loc26_;
                              _loc26_ = int(_loc26_ + 4);
                           }
                           _loc21_ = li32(_loc21_);
                        }
                     }
                  }
                  _loc36_ = int(_loc36_ + 1);
                  _loc11_ = 10;
                  if(_loc21_ <= -1)
                  {
                     si8(45,_loc2_ - 139);
                     _loc21_ = int(0 - _loc21_);
                     _loc11_ = 10;
                  }
               }
               §§goto(addr5455);
            }
            break;
         }
         _loc20_ = li32(_loc2_ - 268);
         if(_loc20_ == 0)
         {
            si32(0,_loc2_ - 272);
            _loc18_ = _loc29_;
         }
         else
         {
            _loc1_ = int(_loc1_ - 16);
            si32(_loc12_,_loc1_ + 4);
            si32(li32(_loc2_ - 280),_loc1_);
            ESP = _loc1_;
            F___sfvwrite();
            _loc1_ = int(_loc1_ + 16);
            si32(0,_loc2_ - 268);
            si32(0,_loc2_ - 272);
            _loc18_ = _loc29_;
         }
         §§goto(addr9498);
      }
      _loc1_ = int(_loc1_ - 16);
      si32(_loc22_,_loc1_);
      ESP = _loc1_;
      F___swsetup();
      _loc18_ = -1;
      _loc1_ = int(_loc1_ + 16);
      _loc20_ = int(eax);
      if(_loc20_ == 0)
      {
         §§goto(addr248);
      }
      §§goto(addr9599);
   }
}
