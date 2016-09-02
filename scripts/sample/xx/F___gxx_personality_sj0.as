package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_h_personality_2E_o_3A_246EC6CE_2D_7C5E_2D_4C25_2D_9319_2D_758033CD1562.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   
   public function F___gxx_personality_sj0() : void
   {
      var _loc2_:* = 0;
      var _loc7_:int = 0;
      var _loc26_:* = 0;
      var _loc59_:* = 0;
      var _loc18_:* = 0;
      var _loc20_:* = 0;
      var _loc22_:* = 0;
      var _loc14_:* = 0;
      var _loc52_:* = 0;
      var _loc49_:* = 0;
      var _loc46_:int = 0;
      var _loc47_:int = 0;
      var _loc16_:* = 0;
      var _loc25_:* = 0;
      var _loc27_:* = 0;
      var _loc29_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:* = 0;
      var _loc13_:* = 0;
      var _loc65_:* = 0;
      var _loc41_:* = 0;
      var _loc32_:int = 0;
      var _loc30_:int = 0;
      var _loc56_:* = 0;
      var _loc48_:* = 0;
      var _loc19_:* = 0;
      var _loc15_:* = 0;
      var _loc68_:* = 0;
      var _loc67_:* = 0;
      var _loc60_:* = 0;
      var _loc21_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc63_:* = 0;
      var _loc43_:* = 0;
      var _loc39_:* = 0;
      var _loc37_:* = 0;
      var _loc35_:* = 0;
      var _loc58_:int = 0;
      var _loc40_:int = 0;
      var _loc36_:* = 0;
      var _loc38_:* = 0;
      var _loc42_:int = 0;
      var _loc50_:int = 0;
      var _loc34_:* = 0;
      var _loc17_:int = 0;
      var _loc23_:int = 0;
      var _loc33_:int = 0;
      var _loc31_:* = 0;
      var _loc10_:int = 0;
      var _loc57_:int = 0;
      var _loc51_:int = 0;
      var _loc55_:* = 0;
      var _loc66_:int = 0;
      var _loc11_:int = 0;
      var _loc12_:int = 0;
      var _loc53_:* = 0;
      var _loc64_:int = 0;
      var _loc3_:* = 0;
      var _loc45_:* = 0;
      var _loc62_:* = 0;
      var _loc61_:* = 0;
      var _loc54_:* = 0;
      var _loc44_:* = 0;
      var _loc28_:int = 0;
      var _loc24_:int = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc7_)
         {
            _loc2_ = _loc1_;
            _loc1_ = int(_loc1_ - 96);
            si32(L_LSDA_0,_loc2_ - 28);
            si32(___gxx_personality_sj0,_loc2_ - 32);
            _loc15_ = _loc2_;
            si32(_loc15_,_loc2_ - 24);
            _loc15_ = _loc1_;
            si32(_loc15_,_loc2_ - 16);
            _loc32_ = _loc2_ - 56;
            _loc30_ = _loc32_ + 32;
            _loc28_ = 0;
            eax = setjmp(_loc30_,1,_loc1_);
         }
         else if(int(_loc7_) - 1)
         {
            throw "bad longjmp";
         }
         _loc15_ = int(eax);
         if(_loc15_ == 0)
         {
            _loc26_ = li32(_loc2_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc32_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            _loc24_ = 3;
            if(_loc26_ == 1)
            {
               _loc22_ = li32(_loc2_ + 16);
               _loc20_ = li32(_loc2_ + 12);
               _loc18_ = li32(_loc2_ + 8);
               _loc14_ = li32(_loc2_ + 20);
               _loc59_ = li32(_loc2_ + 4);
               if(_loc59_ == 6)
               {
                  _loc60_ = _loc18_ ^ 1126902528;
                  _loc15_ = _loc20_ ^ 1196315971;
                  _loc15_ = _loc60_ | _loc15_;
                  if(_loc15_ == 0)
                  {
                     _loc61_ = li32(_loc22_ - 12);
                     _loc62_ = 1;
                     if(_loc61_ != _loc28_)
                     {
                        _loc62_ = 3;
                     }
                     _loc52_ = li32(_loc22_ - 16);
                     _loc54_ = li32(_loc22_ - 24);
                     addr1607:
                     _loc15_ = _loc59_ & 8;
                     if(_loc15_ == 0)
                     {
                        _loc60_ = _loc18_ ^ 1126902528;
                        _loc15_ = _loc20_ ^ 1196315971;
                        _loc15_ = _loc60_ | _loc15_;
                        if(_loc15_ != 0)
                        {
                        }
                        addr1663:
                        if(_loc62_ == 1)
                        {
                           _loc15_ = _loc32_ | 4;
                           si32(-1,_loc15_);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc22_,_loc1_);
                           ESP = _loc1_;
                           F___cxa_call_terminate();
                           _loc1_ = int(_loc1_ + 16);
                        }
                        addr1881:
                        if(_loc54_ <= -1)
                        {
                           _loc43_ = _loc32_ | 4;
                           si32(-1,_loc43_);
                           _loc1_ = int(_loc1_ - 16);
                           _loc15_ = int(_loc2_ - 96);
                           si32(_loc15_,_loc1_ + 8);
                           si32(_loc52_,_loc1_ + 4);
                           si32(_loc14_,_loc1_);
                           ESP = _loc1_;
                           F__ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info();
                           _loc1_ = int(_loc1_ + 16);
                           _loc41_ = li8(_loc2_ - 76);
                           if(_loc41_ != 255)
                           {
                              _loc39_ = _loc41_ & 112;
                              _loc28_ = 0;
                              if(_loc39_ <= 47)
                              {
                                 if(_loc39_ != 0)
                                 {
                                    if(_loc39_ != 16)
                                    {
                                       if(_loc39_ != 32)
                                       {
                                          addr1865:
                                          si32(-1,_loc43_);
                                          ESP = _loc1_;
                                          F_abort();
                                       }
                                       else
                                       {
                                          si32(-1,_loc43_);
                                          _loc1_ = int(_loc1_ - 16);
                                          si32(_loc14_,_loc1_);
                                          ESP = _loc1_;
                                          F__Unwind_GetTextRelBase();
                                          _loc1_ = int(_loc1_ + 16);
                                          _loc28_ = eax;
                                       }
                                    }
                                 }
                              }
                              else if(_loc39_ != 48)
                              {
                                 if(_loc39_ != 64)
                                 {
                                    if(_loc39_ != 80)
                                    {
                                       §§goto(addr1865);
                                    }
                                 }
                                 else
                                 {
                                    si32(-1,_loc43_);
                                    _loc1_ = int(_loc1_ - 16);
                                    si32(_loc14_,_loc1_);
                                    ESP = _loc1_;
                                    F__Unwind_GetRegionStart();
                                    _loc1_ = int(_loc1_ + 16);
                                    _loc28_ = eax;
                                 }
                              }
                              else
                              {
                                 si32(-1,_loc43_);
                                 _loc1_ = int(_loc1_ - 16);
                                 si32(_loc14_,_loc1_);
                                 ESP = _loc1_;
                                 F__Unwind_GetDataRelBase();
                                 _loc1_ = int(_loc1_ + 16);
                                 _loc28_ = eax;
                              }
                           }
                           si32(_loc28_,_loc22_ - 12);
                        }
                        _loc37_ = _loc32_ | 4;
                        si32(-1,_loc37_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc22_,_loc1_ + 8);
                        si32(0,_loc1_ + 4);
                        si32(_loc14_,_loc1_);
                        ESP = _loc1_;
                        F__Unwind_SetGR();
                        _loc1_ = int(_loc1_ + 16);
                        si32(-1,_loc37_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc54_,_loc1_ + 8);
                        si32(1,_loc1_ + 4);
                        si32(_loc14_,_loc1_);
                        ESP = _loc1_;
                        F__Unwind_SetGR();
                        _loc1_ = int(_loc1_ + 16);
                        si32(-1,_loc37_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc61_,_loc1_ + 4);
                        si32(_loc14_,_loc1_);
                        ESP = _loc1_;
                        F__Unwind_SetIP();
                        _loc1_ = int(_loc1_ + 16);
                        _loc24_ = 7;
                     }
                     if(_loc62_ == 1)
                     {
                        ESP = _loc1_;
                        F__ZSt9terminatev();
                     }
                     if(_loc54_ <= -1)
                     {
                        _loc15_ = _loc32_ | 4;
                        si32(1,_loc15_);
                        ESP = _loc1_;
                        F__ZSt10unexpectedv();
                        §§goto(addr1663);
                     }
                     §§goto(addr1881);
                  }
               }
               _loc56_ = _loc32_ | 4;
               si32(-1,_loc56_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc14_,_loc1_);
               ESP = _loc1_;
               F__Unwind_GetLanguageSpecificData();
               _loc24_ = 8;
               _loc1_ = int(_loc1_ + 16);
               _loc52_ = int(eax);
               if(_loc52_ != 0)
               {
                  si32(-1,_loc56_);
                  _loc1_ = int(_loc1_ - 16);
                  _loc15_ = int(_loc2_ - 96);
                  si32(_loc15_,_loc1_ + 8);
                  si32(_loc52_,_loc1_ + 4);
                  si32(_loc14_,_loc1_);
                  ESP = _loc1_;
                  F__ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info();
                  _loc58_ = 0;
                  _loc1_ = int(_loc1_ + 16);
                  _loc50_ = eax;
                  _loc49_ = li8(_loc2_ - 76);
                  if(_loc49_ != 255)
                  {
                     _loc48_ = _loc49_ & 112;
                     _loc58_ = 0;
                     if(_loc48_ <= 47)
                     {
                        if(_loc48_ != 0)
                        {
                           if(_loc48_ != 16)
                           {
                              if(_loc48_ != 32)
                              {
                                 addr505:
                                 si32(-1,_loc56_);
                                 ESP = _loc1_;
                                 F_abort();
                              }
                              else
                              {
                                 si32(-1,_loc56_);
                                 _loc1_ = int(_loc1_ - 16);
                                 si32(_loc14_,_loc1_);
                                 ESP = _loc1_;
                                 F__Unwind_GetTextRelBase();
                                 _loc1_ = int(_loc1_ + 16);
                                 _loc58_ = eax;
                              }
                           }
                        }
                     }
                     else if(_loc48_ != 48)
                     {
                        if(_loc48_ != 64)
                        {
                           if(_loc48_ != 80)
                           {
                              §§goto(addr505);
                           }
                        }
                        else
                        {
                           si32(-1,_loc56_);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc14_,_loc1_);
                           ESP = _loc1_;
                           F__Unwind_GetRegionStart();
                           _loc1_ = int(_loc1_ + 16);
                           _loc58_ = eax;
                        }
                     }
                     else
                     {
                        si32(-1,_loc56_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc14_,_loc1_);
                        ESP = _loc1_;
                        F__Unwind_GetDataRelBase();
                        _loc1_ = int(_loc1_ + 16);
                        _loc58_ = eax;
                     }
                  }
                  si32(_loc58_,_loc2_ - 88);
                  si32(-1,_loc56_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc14_,_loc1_);
                  ESP = _loc1_;
                  F__Unwind_GetIP();
                  _loc1_ = int(_loc1_ + 16);
                  _loc46_ = eax;
                  _loc47_ = _loc46_ + -1;
                  _loc24_ = 8;
                  if(_loc47_ >= 0)
                  {
                     _loc44_ = int(_loc22_ + 32);
                     _loc45_ = 0;
                     _loc62_ = 1;
                     _loc61_ = _loc45_;
                     _loc54_ = _loc45_;
                     if(_loc47_ != 0)
                     {
                        _loc40_ = _loc46_ + -1;
                        do
                        {
                           _loc42_ = 0;
                           _loc36_ = _loc42_;
                           _loc38_ = _loc42_;
                           do
                           {
                              _loc15_ = si8(li8(_loc50_));
                              _loc60_ = _loc15_ & 127;
                              _loc60_ = _loc60_ << _loc36_;
                              _loc38_ = _loc60_ | _loc38_;
                              _loc36_ = int(_loc36_ + 7);
                              _loc50_ = _loc50_ + 1;
                              _loc34_ = _loc42_;
                           }
                           while(_loc15_ < 0);
                           
                           do
                           {
                              _loc15_ = si8(li8(_loc50_));
                              _loc60_ = _loc15_ & 127;
                              _loc60_ = _loc60_ << _loc42_;
                              _loc34_ = _loc60_ | _loc34_;
                              _loc42_ = _loc42_ + 7;
                              _loc50_ = _loc50_ + 1;
                           }
                           while(_loc15_ < 0);
                           
                           _loc40_ = _loc40_ + -1;
                        }
                        while(_loc40_ != 0);
                        
                        _loc17_ = 0;
                        if(_loc34_ != 0)
                        {
                           _loc15_ = li32(_loc2_ - 80);
                           _loc15_ = int(_loc34_ + _loc15_);
                           _loc17_ = _loc15_ + -1;
                        }
                        _loc61_ = int(_loc38_ + 1);
                        _loc24_ = 8;
                        if(_loc61_ != 0)
                        {
                           _loc45_ = 0;
                           _loc62_ = 2;
                           _loc54_ = _loc45_;
                           if(_loc17_ != 0)
                           {
                              _loc15_ = _loc59_ & 8;
                              _loc16_ = 0;
                              if(_loc15_ == 0)
                              {
                                 _loc15_ = _loc18_ ^ 1126902528;
                                 _loc60_ = _loc20_ ^ 1196315971;
                                 _loc15_ = _loc15_ | _loc60_;
                                 _loc16_ = 0;
                                 if(_loc15_ == 0)
                                 {
                                    _loc16_ = li32(_loc22_ - 48);
                                 }
                              }
                              _loc21_ = _loc49_ & 7;
                              _loc19_ = _loc49_ & 7;
                              _loc45_ = _loc17_;
                              _loc25_ = 0;
                              while(true)
                              {
                                 _loc23_ = 0;
                                 _loc29_ = _loc45_;
                                 _loc54_ = 0;
                                 do
                                 {
                                    _loc15_ = si8(li8(_loc29_));
                                    _loc60_ = _loc15_ & 127;
                                    _loc60_ = _loc60_ << _loc23_;
                                    _loc54_ = _loc60_ | _loc54_;
                                    _loc23_ = _loc23_ + 7;
                                    _loc29_ = int(_loc29_ + 1);
                                    _loc27_ = _loc15_ & 255;
                                 }
                                 while(_loc15_ < 0);
                                 
                                 if(uint(_loc23_) <= 31)
                                 {
                                    _loc15_ = _loc27_ & 64;
                                    if(_loc15_ != 0)
                                    {
                                       _loc15_ = -1 << _loc23_;
                                       _loc54_ = _loc54_ | _loc15_;
                                    }
                                 }
                                 _loc33_ = 0;
                                 _loc31_ = _loc29_;
                                 _loc5_ = _loc33_;
                                 do
                                 {
                                    _loc15_ = si8(li8(_loc31_));
                                    _loc60_ = _loc15_ & 127;
                                    _loc60_ = _loc60_ << _loc33_;
                                    _loc5_ = _loc60_ | _loc5_;
                                    _loc33_ = _loc33_ + 7;
                                    _loc31_ = int(_loc31_ + 1);
                                    _loc4_ = _loc15_ & 255;
                                 }
                                 while(_loc15_ < 0);
                                 
                                 if(uint(_loc33_) <= 31)
                                 {
                                    _loc15_ = _loc4_ & 64;
                                    if(_loc15_ != 0)
                                    {
                                       _loc15_ = -1 << _loc33_;
                                       _loc5_ = _loc5_ | _loc15_;
                                    }
                                 }
                                 _loc3_ = 1;
                                 if(_loc54_ != 0)
                                 {
                                    if(_loc54_ >= 1)
                                    {
                                       _loc10_ = 0;
                                       if(_loc49_ != 255)
                                       {
                                          _loc10_ = 4;
                                          if(_loc21_ <= 2)
                                          {
                                             if(_loc21_ != 0)
                                             {
                                                if(_loc21_ != 2)
                                                {
                                                   addr921:
                                                   si32(-1,_loc56_);
                                                   ESP = _loc1_;
                                                   F_abort();
                                                }
                                                else
                                                {
                                                   _loc10_ = 2;
                                                }
                                             }
                                          }
                                          else if(_loc21_ != 3)
                                          {
                                             if(_loc21_ != 4)
                                             {
                                                §§goto(addr921);
                                             }
                                             else
                                             {
                                                _loc10_ = 8;
                                             }
                                          }
                                       }
                                       _loc15_ = li32(_loc2_ - 84);
                                       si32(-1,_loc56_);
                                       _loc1_ = int(_loc1_ - 16);
                                       _loc60_ = int(_loc2_ - 72);
                                       si32(_loc60_,_loc1_ + 12);
                                       _loc60_ = int(0 - _loc54_);
                                       _loc60_ = int(_loc10_ * _loc60_);
                                       _loc15_ = int(_loc15_ + _loc60_);
                                       si32(_loc15_,_loc1_ + 8);
                                       si32(_loc58_,_loc1_ + 4);
                                       si32(_loc49_,_loc1_);
                                       ESP = _loc1_;
                                       F__ZL28read_encoded_value_with_basehjPKhPj();
                                       _loc1_ = int(_loc1_ + 16);
                                       _loc62_ = 3;
                                       _loc9_ = li32(_loc2_ - 72);
                                       if(_loc9_ != 0)
                                       {
                                          _loc3_ = _loc25_;
                                          if(_loc16_ != 0)
                                          {
                                             si32(_loc44_,_loc2_ - 68);
                                             _loc15_ = li32(_loc16_);
                                             _loc8_ = li32(_loc15_ + 8);
                                             si32(-1,_loc56_);
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(_loc16_,_loc1_);
                                             ESP = _loc1_;
                                             ptr2fun[_loc8_]();
                                             _loc1_ = int(_loc1_ + 16);
                                             _loc15_ = int(eax);
                                             if(_loc15_ != 0)
                                             {
                                                _loc15_ = li32(_loc2_ - 68);
                                                _loc15_ = li32(_loc15_);
                                                si32(_loc15_,_loc2_ - 68);
                                             }
                                             _loc15_ = li32(_loc9_);
                                             _loc6_ = li32(_loc15_ + 16);
                                             si32(-1,_loc56_);
                                             _loc1_ = int(_loc1_ - 16);
                                             si32(1,_loc1_ + 12);
                                             _loc15_ = int(_loc2_ - 68);
                                             si32(_loc15_,_loc1_ + 8);
                                             si32(_loc16_,_loc1_ + 4);
                                             si32(_loc9_,_loc1_);
                                             ESP = _loc1_;
                                             ptr2fun[_loc6_]();
                                             _loc1_ = int(_loc1_ + 16);
                                             _loc15_ = int(eax);
                                             _loc3_ = _loc25_;
                                             if(_loc15_ != 0)
                                             {
                                                _loc62_ = 3;
                                                _loc44_ = li32(_loc2_ - 68);
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       _loc13_ = li32(_loc2_ - 84);
                                       if(_loc16_ == 0)
                                       {
                                          _loc15_ = int(_loc13_ - _loc54_);
                                          _loc12_ = _loc15_ + -1;
                                          _loc11_ = 0;
                                          _loc53_ = _loc11_;
                                          do
                                          {
                                             _loc15_ = si8(li8(_loc12_));
                                             _loc60_ = _loc15_ & 127;
                                             _loc60_ = _loc60_ << _loc11_;
                                             _loc53_ = _loc60_ | _loc53_;
                                             _loc11_ = _loc11_ + 7;
                                             _loc12_ = _loc12_ + 1;
                                          }
                                          while(_loc15_ < 0);
                                          
                                          _loc64_ = 1;
                                          if(_loc53_ != 0)
                                          {
                                             _loc64_ = 0;
                                          }
                                          _loc15_ = _loc64_ & 1;
                                          _loc62_ = 3;
                                          _loc3_ = _loc25_;
                                          if(_loc15_ == 0)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          _loc15_ = _loc54_ ^ -1;
                                          _loc51_ = _loc13_ + _loc15_;
                                          _loc57_ = 0;
                                          _loc55_ = _loc57_;
                                          while(true)
                                          {
                                             _loc15_ = si8(li8(_loc51_));
                                             _loc60_ = _loc15_ & 127;
                                             _loc60_ = _loc60_ << _loc57_;
                                             _loc55_ = _loc60_ | _loc55_;
                                             _loc57_ = _loc57_ + 7;
                                             _loc51_ = _loc51_ + 1;
                                             if(_loc15_ >= 0)
                                             {
                                                _loc62_ = 3;
                                                if(_loc55_ != 0)
                                                {
                                                   _loc66_ = 0;
                                                   if(_loc49_ != 255)
                                                   {
                                                      _loc66_ = 4;
                                                      if(_loc19_ <= 2)
                                                      {
                                                         if(_loc19_ != 0)
                                                         {
                                                            if(_loc19_ != 2)
                                                            {
                                                               addr1257:
                                                               si32(-1,_loc56_);
                                                               ESP = _loc1_;
                                                               F_abort();
                                                            }
                                                            else
                                                            {
                                                               _loc66_ = 2;
                                                            }
                                                         }
                                                      }
                                                      else if(_loc19_ != 3)
                                                      {
                                                         if(_loc19_ != 4)
                                                         {
                                                            §§goto(addr1257);
                                                         }
                                                         else
                                                         {
                                                            _loc66_ = 8;
                                                         }
                                                      }
                                                   }
                                                   si32(-1,_loc56_);
                                                   _loc1_ = int(_loc1_ - 16);
                                                   _loc15_ = int(_loc2_ - 64);
                                                   si32(_loc15_,_loc1_ + 12);
                                                   _loc15_ = int(0 - _loc55_);
                                                   _loc15_ = int(_loc66_ * _loc15_);
                                                   _loc15_ = int(_loc13_ + _loc15_);
                                                   si32(_loc15_,_loc1_ + 8);
                                                   si32(_loc58_,_loc1_ + 4);
                                                   si32(_loc49_,_loc1_);
                                                   ESP = _loc1_;
                                                   F__ZL28read_encoded_value_with_basehjPKhPj();
                                                   _loc1_ = int(_loc1_ + 16);
                                                   _loc65_ = li32(_loc2_ - 64);
                                                   si32(_loc44_,_loc2_ - 60);
                                                   _loc15_ = li32(_loc16_);
                                                   _loc68_ = li32(_loc15_ + 8);
                                                   si32(-1,_loc56_);
                                                   _loc1_ = int(_loc1_ - 16);
                                                   si32(_loc16_,_loc1_);
                                                   ESP = _loc1_;
                                                   ptr2fun[_loc68_]();
                                                   _loc1_ = int(_loc1_ + 16);
                                                   _loc15_ = int(eax);
                                                   if(_loc15_ != 0)
                                                   {
                                                      _loc15_ = li32(_loc2_ - 60);
                                                      _loc15_ = li32(_loc15_);
                                                      si32(_loc15_,_loc2_ - 60);
                                                   }
                                                   _loc15_ = li32(_loc65_);
                                                   _loc67_ = li32(_loc15_ + 16);
                                                   si32(-1,_loc56_);
                                                   _loc1_ = int(_loc1_ - 16);
                                                   si32(1,_loc1_ + 12);
                                                   _loc15_ = int(_loc2_ - 60);
                                                   si32(_loc15_,_loc1_ + 8);
                                                   si32(_loc16_,_loc1_ + 4);
                                                   si32(_loc65_,_loc1_);
                                                   ESP = _loc1_;
                                                   ptr2fun[_loc67_]();
                                                   _loc57_ = 0;
                                                   _loc1_ = int(_loc1_ + 16);
                                                   _loc15_ = int(eax);
                                                   _loc55_ = _loc57_;
                                                   _loc3_ = _loc25_;
                                                   if(_loc15_ == 0)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                break;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(_loc5_ != 0)
                                 {
                                    _loc45_ = int(_loc29_ + _loc5_);
                                    _loc25_ = _loc3_;
                                    continue;
                                 }
                                 break;
                              }
                              _loc63_ = _loc3_ & 255;
                              _loc54_ = 0;
                              _loc62_ = _loc54_;
                              if(_loc63_ != _loc54_)
                              {
                                 _loc62_ = 2;
                              }
                              _loc24_ = 8;
                              if(_loc63_ != 0)
                              {
                              }
                           }
                        }
                     }
                     _loc15_ = _loc59_ & 1;
                     if(_loc15_ != 0)
                     {
                        _loc24_ = 8;
                        if(_loc62_ != 2)
                        {
                           _loc24_ = 6;
                        }
                        if(_loc62_ != 2)
                        {
                           _loc60_ = _loc18_ ^ 1126902528;
                           _loc15_ = _loc20_ ^ 1196315971;
                           _loc15_ = _loc60_ | _loc15_;
                           if(_loc15_ == 0)
                           {
                              si32(_loc54_,_loc22_ - 24);
                              si32(_loc45_,_loc22_ - 20);
                              si32(_loc52_,_loc22_ - 16);
                              si32(_loc44_,_loc22_ - 8);
                              si32(_loc61_,_loc22_ - 12);
                              _loc24_ = 6;
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr1607);
                     }
                  }
               }
            }
            _loc1_ = int(_loc1_ - 16);
            si32(_loc32_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Unregister();
            _loc1_ = int(_loc1_ + 16);
            eax = _loc24_;
            _loc1_ = _loc2_;
            ESP = _loc1_;
            return;
         }
         while(true)
         {
            _loc15_ = _loc32_ | 4;
            _loc15_ = li32(_loc15_);
            if(_loc15_ != 0)
            {
               break;
            }
            _loc15_ = li32(_loc2_ - 48);
            _loc35_ = li32(_loc2_ - 44);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc15_,_loc1_);
            ESP = _loc1_;
            F___cxa_begin_catch();
            _loc1_ = int(_loc1_ + 16);
            ESP = _loc1_;
            F__ZSt9terminatev();
         }
         while(true)
         {
         }
      }
   }
}
