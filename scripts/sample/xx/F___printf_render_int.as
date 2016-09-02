package sample.xx
{
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li32;
   import sample.xx_printf_int_2E_o_3A_BDE1DD69_2D_0338_2D_4D73_2D_B0D2_2D_0C755E66E87E.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   
   public function F___printf_render_int() : void
   {
      var _loc10_:* = 0;
      var _loc15_:* = 0;
      var _loc22_:* = 0;
      var _loc16_:* = 0;
      var _loc17_:int = 0;
      var _loc6_:* = 0;
      var _loc20_:* = 0;
      var _loc1_:* = 0;
      var _loc18_:* = 0;
      var _loc3_:int = 0;
      var _loc21_:* = 0;
      var _loc19_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:int = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = int(ESP);
      _loc10_ = _loc5_;
      _loc5_ = int(_loc5_ - 80);
      _loc6_ = 0;
      si8(_loc6_,_loc10_ - 65);
      _loc22_ = li32(_loc10_ + 4);
      _loc21_ = li32(_loc22_ + 44);
      _loc20_ = _loc6_;
      _loc19_ = _loc6_;
      if(_loc21_ != 0)
      {
         ESP = _loc5_;
         F_localeconv();
         _loc21_ = int(eax);
         _loc21_ = li32(_loc21_ + 4);
         _loc20_ = li8(_loc21_);
         ESP = _loc5_;
         F_localeconv();
         _loc21_ = int(eax);
         _loc19_ = li32(_loc21_ + 8);
         _loc6_ = 1;
      }
      _loc18_ = int(_loc10_ - 64);
      _loc17_ = _loc18_ + 63;
      _loc16_ = li32(_loc10_ + 8);
      _loc15_ = li32(_loc10_);
      _loc1_ = li32(_loc22_ + 8);
      if(_loc1_ <= 104)
      {
         if(_loc1_ <= 87)
         {
            if(_loc1_ != 79)
            {
               if(_loc1_ != 85)
               {
                  addr215:
                  _loc21_ = li32(___stderrp);
                  _loc5_ = int(_loc5_ - 16);
                  si32(_loc1_,_loc5_ + 8);
                  si32(L__2E_str3,_loc5_ + 4);
                  si32(_loc21_,_loc5_);
                  ESP = _loc5_;
                  F_fprintf();
                  _loc5_ = int(_loc5_ + 16);
                  _loc5_ = int(_loc5_ - 16);
                  si32(L__2E_str4,_loc5_ + 12);
                  si32(310,_loc5_ + 8);
                  si32(L__2E_str,_loc5_ + 4);
                  si32(___func___2E_2938,_loc5_);
                  ESP = _loc5_;
                  F___assert();
                  addr282:
                  _loc5_ = int(_loc5_ + 16);
                  _loc1_ = li32(_loc16_);
                  _loc21_ = li32(_loc22_ + 40);
                  si8(_loc21_,_loc10_ - 65);
                  _loc16_ = 0;
                  _loc11_ = 10;
                  _loc12_ = ___lowercase_hex;
               }
               addr303:
               _loc21_ = li32(_loc22_ + 12);
               if(_loc21_ == 0)
               {
                  _loc21_ = li32(_loc22_ + 60);
                  if(_loc21_ == 0)
                  {
                     _loc21_ = li32(_loc22_ + 64);
                     if(_loc21_ == 0)
                     {
                        _loc21_ = li32(_loc22_ + 72);
                        if(_loc21_ == 0)
                        {
                           _loc21_ = li32(_loc22_ + 68);
                           if(_loc21_ == 0)
                           {
                              _loc21_ = li32(_loc22_ + 24);
                              if(_loc21_ != 0)
                              {
                                 _loc1_ = li32(_loc1_);
                                 _loc13_ = 1;
                                 if(_loc1_ <= -1)
                                 {
                                    _loc13_ = 0;
                                 }
                                 _loc21_ = _loc16_ | _loc13_;
                                 if(_loc21_ == 0)
                                 {
                                    si8(45,_loc10_ - 65);
                                    _loc1_ = int(0 - _loc1_);
                                    _loc13_ = 0;
                                 }
                                 else
                                 {
                                    _loc13_ = 0;
                                 }
                              }
                              else
                              {
                                 _loc21_ = li32(_loc22_ + 20);
                                 if(_loc21_ != 0)
                                 {
                                    _loc1_ = li32(_loc1_);
                                    if(_loc16_ == 0)
                                    {
                                       _loc21_ = _loc1_ << 16;
                                       _loc16_ = _loc21_ >> 16;
                                       if(_loc16_ <= -1)
                                       {
                                          si8(45,_loc10_ - 65);
                                          _loc1_ = int(0 - _loc16_);
                                          _loc13_ = _loc1_ >> 31;
                                          addr586:
                                          addr1365:
                                          if(_loc13_ != 0)
                                          {
                                             if(_loc11_ != 16)
                                             {
                                                if(_loc11_ != 10)
                                                {
                                                   if(_loc11_ == 8)
                                                   {
                                                      _loc16_ = int(_loc18_ + 63);
                                                      _loc19_ = _loc1_;
                                                      _loc20_ = _loc13_;
                                                      while(true)
                                                      {
                                                         _loc21_ = _loc19_ & 7;
                                                         _loc21_ = _loc21_ | 48;
                                                         si8(_loc21_,_loc16_ - 1);
                                                         var _loc2_:int = _loc19_ >>> 3;
                                                         _loc21_ = _loc20_ << 29;
                                                         _loc19_ = _loc2_ | _loc21_;
                                                         _loc20_ = int(_loc20_ >>> 3);
                                                         _loc21_ = _loc19_ | _loc20_;
                                                         _loc16_ = int(_loc16_ + -1);
                                                         if(_loc21_ != 0)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      ESP = _loc5_;
                                                      F_abort();
                                                   }
                                                }
                                                else
                                                {
                                                   _loc8_ = _loc17_;
                                                   _loc7_ = _loc1_;
                                                   _loc14_ = _loc13_;
                                                   _loc12_ = 0;
                                                   if(_loc13_ <= -1)
                                                   {
                                                      _loc5_ = int(_loc5_ - 16);
                                                      si32(0,_loc5_ + 12);
                                                      si32(10,_loc5_ + 8);
                                                      si32(_loc1_,_loc5_);
                                                      si32(_loc13_,_loc5_ + 4);
                                                      ESP = _loc5_;
                                                      F___udivdi3();
                                                      _loc5_ = int(_loc5_ + 16);
                                                      _loc7_ = int(eax);
                                                      _loc14_ = int(edx);
                                                      _loc5_ = int(_loc5_ - 16);
                                                      si32(0,_loc5_ + 12);
                                                      si32(10,_loc5_ + 8);
                                                      si32(_loc13_,_loc5_ + 4);
                                                      si32(_loc1_,_loc5_);
                                                      ESP = _loc5_;
                                                      F___umoddi3();
                                                      _loc5_ = int(_loc5_ + 16);
                                                      _loc21_ = int(eax);
                                                      _loc21_ = _loc21_ | 48;
                                                      si8(_loc21_,_loc10_ - 2);
                                                      _loc8_ = int(_loc18_ + 62);
                                                      _loc12_ = 1;
                                                   }
                                                   do
                                                   {
                                                      _loc5_ = int(_loc5_ - 16);
                                                      si32(0,_loc5_ + 12);
                                                      si32(10,_loc5_ + 8);
                                                      si32(_loc7_,_loc5_);
                                                      si32(_loc14_,_loc5_ + 4);
                                                      ESP = _loc5_;
                                                      F___moddi3();
                                                      _loc5_ = int(_loc5_ + 16);
                                                      _loc21_ = int(eax);
                                                      _loc21_ = int(_loc21_ + 48);
                                                      si8(_loc21_,_loc8_ - 1);
                                                      _loc12_ = _loc12_ + 1;
                                                      _loc16_ = int(_loc8_ + -1);
                                                      if(_loc6_ != 0)
                                                      {
                                                         _loc4_ = li8(_loc19_);
                                                         if(_loc4_ != 127)
                                                         {
                                                            _loc21_ = _loc4_ << 24;
                                                            _loc21_ = _loc21_ >> 24;
                                                            if(_loc21_ == _loc12_)
                                                            {
                                                               _loc4_ = 1;
                                                               _loc9_ = _loc4_;
                                                               if(uint(_loc7_) >= 10)
                                                               {
                                                                  _loc9_ = 0;
                                                               }
                                                               if(_loc14_ >= 0)
                                                               {
                                                                  _loc4_ = 0;
                                                               }
                                                               if(_loc14_ != 0)
                                                               {
                                                                  _loc9_ = _loc4_;
                                                               }
                                                               if(_loc9_ == 0)
                                                               {
                                                                  si8(_loc20_,_loc8_ - 2);
                                                                  _loc16_ = int(_loc8_ + -2);
                                                                  _loc12_ = 0;
                                                                  if(li8(_loc19_ + 1) != 0)
                                                                  {
                                                                     _loc19_ = int(_loc19_ + 1);
                                                                     _loc12_ = 0;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      _loc5_ = int(_loc5_ - 16);
                                                      si32(10,_loc5_ + 8);
                                                      si32(0,_loc5_ + 12);
                                                      si32(_loc7_,_loc5_);
                                                      _loc3_ = _loc7_ + 9;
                                                      _loc8_ = 1;
                                                      _loc4_ = _loc8_;
                                                      if(uint(_loc3_) <= 18)
                                                      {
                                                         _loc4_ = 0;
                                                      }
                                                      _loc9_ = _loc8_;
                                                      if(uint(_loc3_) >= uint(_loc7_))
                                                      {
                                                         _loc9_ = 0;
                                                      }
                                                      _loc7_ = _loc8_;
                                                      if(uint(_loc3_) >= 9)
                                                      {
                                                         _loc7_ = _loc9_;
                                                      }
                                                      si32(_loc14_,_loc5_ + 4);
                                                      _loc14_ = int(_loc14_ + _loc7_);
                                                      if(_loc14_ == 0)
                                                      {
                                                         _loc8_ = 0;
                                                      }
                                                      if(_loc14_ != 0)
                                                      {
                                                         _loc4_ = _loc8_;
                                                      }
                                                      ESP = _loc5_;
                                                      F___divdi3();
                                                      _loc5_ = int(_loc5_ + 16);
                                                      _loc7_ = int(eax);
                                                      _loc14_ = int(edx);
                                                      _loc8_ = _loc16_;
                                                   }
                                                   while(_loc4_ != 0);
                                                   
                                                }
                                             }
                                             else
                                             {
                                                _loc16_ = int(_loc18_ + 63);
                                                _loc19_ = _loc1_;
                                                _loc20_ = _loc13_;
                                                while(true)
                                                {
                                                   _loc21_ = _loc19_ & 15;
                                                   _loc21_ = int(_loc12_ + _loc21_);
                                                   _loc21_ = li8(_loc21_);
                                                   si8(_loc21_,_loc16_ - 1);
                                                   _loc2_ = _loc19_ >>> 4;
                                                   _loc21_ = _loc20_ << 28;
                                                   _loc19_ = _loc2_ | _loc21_;
                                                   _loc20_ = int(_loc20_ >>> 4);
                                                   _loc21_ = _loc19_ | _loc20_;
                                                   _loc16_ = int(_loc16_ + -1);
                                                   if(_loc21_ != 0)
                                                   {
                                                      continue;
                                                   }
                                                   break;
                                                }
                                             }
                                          }
                                          _loc21_ = _loc1_ | _loc13_;
                                          if(_loc21_ == 0)
                                          {
                                             _loc20_ = 0;
                                             _loc19_ = _loc20_;
                                             if(li32(_loc22_) == 0)
                                             {
                                                _loc21_ = li32(_loc22_ + 28);
                                                if(_loc21_ != 0)
                                                {
                                                   _loc20_ = 0;
                                                   _loc19_ = _loc20_;
                                                   if(_loc11_ != 8)
                                                   {
                                                   }
                                                }
                                                _loc20_ = 0;
                                                _loc16_ = _loc17_;
                                                _loc19_ = _loc20_;
                                             }
                                          }
                                          else
                                          {
                                             _loc20_ = 0;
                                             _loc19_ = _loc20_;
                                             if(li32(_loc22_ + 28) != 0)
                                             {
                                                if(_loc11_ != 16)
                                                {
                                                   _loc20_ = 0;
                                                   _loc19_ = _loc20_;
                                                   if(_loc11_ == 8)
                                                   {
                                                      si8(48,_loc16_ - 1);
                                                      _loc16_ = int(_loc16_ + -1);
                                                      _loc20_ = 0;
                                                      _loc19_ = _loc20_;
                                                   }
                                                }
                                                else
                                                {
                                                   _loc19_ = int(L__2E_str5);
                                                   if(li32(_loc22_ + 8) != 120)
                                                   {
                                                      _loc19_ = int(L__2E_str6);
                                                   }
                                                   _loc20_ = 2;
                                                }
                                             }
                                          }
                                          _loc11_ = 1;
                                          _loc21_ = li8(_loc10_ - 65);
                                          if(_loc21_ == 0)
                                          {
                                             _loc11_ = 0;
                                          }
                                          _loc21_ = _loc11_ & 1;
                                          _loc2_ = _loc20_ + _loc17_;
                                          _loc2_ = _loc2_ - _loc16_;
                                          _loc20_ = int(_loc2_ + _loc21_);
                                          _loc21_ = int(_loc17_ - _loc16_);
                                          _loc11_ = li32(_loc22_);
                                          if(_loc11_ > _loc21_)
                                          {
                                             _loc21_ = int(_loc16_ - _loc17_);
                                             _loc11_ = int(_loc21_ + _loc11_);
                                             addr1569:
                                             _loc20_ = int(_loc11_ + _loc20_);
                                             _loc18_ = int(_loc10_ - 64);
                                             if(_loc11_ >= 1)
                                             {
                                                if(uint(_loc18_) < uint(_loc16_))
                                                {
                                                   _loc18_ = int(_loc10_ - 64);
                                                   _loc13_ = int(_loc18_ - _loc16_);
                                                   _loc1_ = int(0 - _loc11_);
                                                   _loc6_ = _loc1_;
                                                   if(uint(_loc13_) >= uint(_loc1_))
                                                   {
                                                      _loc6_ = _loc13_;
                                                   }
                                                   if(uint(_loc13_) <= uint(_loc1_))
                                                   {
                                                      _loc13_ = _loc1_;
                                                   }
                                                   _loc11_ = int(_loc6_ + _loc11_);
                                                   _loc13_ = int(0 - _loc13_);
                                                   _loc1_ = int(_loc16_ + -1);
                                                   do
                                                   {
                                                      si8(48,_loc1_);
                                                      _loc1_ = int(_loc1_ + -1);
                                                      _loc13_ = int(_loc13_ + -1);
                                                   }
                                                   while(_loc13_ != 0);
                                                   
                                                   _loc16_ = int(_loc16_ + _loc6_);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             if(_loc11_ == -1)
                                             {
                                                _loc21_ = li32(_loc22_ + 56);
                                                if(_loc21_ == 48)
                                                {
                                                   _loc11_ = li32(_loc22_ + 4);
                                                   _loc21_ = _loc20_ << 24;
                                                   _loc6_ = _loc21_ >> 24;
                                                   if(_loc11_ > _loc6_)
                                                   {
                                                      _loc11_ = int(_loc11_ - _loc6_);
                                                      _loc21_ = li32(_loc22_ + 36);
                                                      if(_loc21_ != 0)
                                                      {
                                                         _loc11_ = 0;
                                                      }
                                                      §§goto(addr1569);
                                                   }
                                                }
                                             }
                                             _loc11_ = 0;
                                          }
                                          _loc21_ = _loc20_ << 24;
                                          _loc6_ = _loc21_ >> 24;
                                          if(_loc6_ <= 63)
                                          {
                                             _loc11_ = li8(_loc10_ - 65);
                                             if(_loc11_ != 0)
                                             {
                                                si8(_loc11_,_loc16_ - 1);
                                                _loc16_ = int(_loc16_ + -1);
                                             }
                                             else if(_loc19_ != 0)
                                             {
                                                _loc21_ = li8(_loc19_ + 1);
                                                si8(_loc21_,_loc16_ - 1);
                                                _loc21_ = li8(_loc19_);
                                                si8(_loc21_,_loc16_ - 2);
                                                _loc16_ = int(_loc16_ + -2);
                                             }
                                             _loc21_ = int(_loc17_ - _loc16_);
                                             _loc19_ = li32(_loc22_ + 4);
                                             _loc20_ = 0;
                                             if(_loc19_ > _loc21_)
                                             {
                                                _loc20_ = 0;
                                                if(li32(_loc22_ + 36) == 0)
                                                {
                                                   _loc21_ = int(_loc19_ - _loc17_);
                                                   _loc11_ = int(_loc21_ + _loc16_);
                                                   _loc21_ = _loc11_ << 24;
                                                   _loc21_ = _loc21_ >> 24;
                                                   if(_loc21_ >= 1)
                                                   {
                                                      if(uint(_loc18_) < uint(_loc16_))
                                                      {
                                                         _loc21_ = int(_loc10_ - 64);
                                                         _loc18_ = int(_loc21_ - _loc16_);
                                                         _loc21_ = int(_loc16_ + _loc19_);
                                                         _loc21_ = int(_loc21_ + -1);
                                                         _loc19_ = int(_loc21_ - _loc17_);
                                                         _loc21_ = _loc19_ ^ -1;
                                                         _loc11_ = _loc21_ | -256;
                                                         if(uint(_loc18_) <= uint(_loc11_))
                                                         {
                                                            _loc18_ = _loc11_;
                                                         }
                                                         _loc21_ = _loc18_ ^ -1;
                                                         _loc11_ = int(_loc19_ - _loc21_);
                                                         _loc19_ = int(0 - _loc18_);
                                                         _loc20_ = int(_loc16_ + -1);
                                                         do
                                                         {
                                                            si8(32,_loc20_);
                                                            _loc20_ = int(_loc20_ + -1);
                                                            _loc19_ = int(_loc19_ + -1);
                                                         }
                                                         while(_loc19_ != 0);
                                                         
                                                         _loc16_ = int(_loc16_ + _loc18_);
                                                      }
                                                   }
                                                   _loc21_ = _loc11_ & 255;
                                                   _loc20_ = 0;
                                                   if(_loc21_ != 0)
                                                   {
                                                      _loc5_ = int(_loc5_ - 16);
                                                      si32(0,_loc5_ + 8);
                                                      si32(_loc15_,_loc5_);
                                                      _loc21_ = _loc11_ << 24;
                                                      _loc21_ = _loc21_ >> 24;
                                                      si32(_loc21_,_loc5_ + 4);
                                                      ESP = _loc5_;
                                                      F___printf_pad();
                                                      _loc5_ = int(_loc5_ + 16);
                                                      _loc20_ = int(eax);
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc20_ = 0;
                                             if(li32(_loc22_ + 36) == 0)
                                             {
                                                _loc18_ = li32(_loc22_ + 4);
                                                _loc20_ = 0;
                                                if(_loc18_ > _loc6_)
                                                {
                                                   _loc5_ = int(_loc5_ - 16);
                                                   si32(0,_loc5_ + 8);
                                                   si32(_loc15_,_loc5_);
                                                   _loc21_ = int(_loc18_ - _loc6_);
                                                   si32(_loc21_,_loc5_ + 4);
                                                   ESP = _loc5_;
                                                   F___printf_pad();
                                                   _loc5_ = int(_loc5_ + 16);
                                                   _loc20_ = int(eax);
                                                }
                                             }
                                             _loc21_ = li8(_loc10_ - 65);
                                             if(_loc21_ != 0)
                                             {
                                                _loc5_ = int(_loc5_ - 16);
                                                si32(1,_loc5_ + 8);
                                                _loc21_ = int(_loc10_ - 65);
                                                si32(_loc21_,_loc5_ + 4);
                                                si32(_loc15_,_loc5_);
                                                ESP = _loc5_;
                                                F___printf_puts();
                                                _loc5_ = int(_loc5_ + 16);
                                                _loc21_ = int(eax);
                                                _loc20_ = int(_loc21_ + _loc20_);
                                             }
                                             else if(_loc19_ != 0)
                                             {
                                                _loc5_ = int(_loc5_ - 16);
                                                si32(2,_loc5_ + 8);
                                                si32(_loc19_,_loc5_ + 4);
                                                si32(_loc15_,_loc5_);
                                                ESP = _loc5_;
                                                F___printf_puts();
                                                _loc5_ = int(_loc5_ + 16);
                                                _loc21_ = int(eax);
                                                _loc20_ = int(_loc21_ + _loc20_);
                                             }
                                             if(_loc11_ >= 1)
                                             {
                                                _loc5_ = int(_loc5_ - 16);
                                                si32(1,_loc5_ + 8);
                                                si32(_loc11_,_loc5_ + 4);
                                                si32(_loc15_,_loc5_);
                                                ESP = _loc5_;
                                                F___printf_pad();
                                                _loc5_ = int(_loc5_ + 16);
                                                _loc21_ = int(eax);
                                                _loc20_ = int(_loc21_ + _loc20_);
                                             }
                                          }
                                          _loc5_ = int(_loc5_ - 16);
                                          si32(_loc15_,_loc5_);
                                          si32(_loc16_,_loc5_ + 4);
                                          _loc21_ = int(_loc17_ - _loc16_);
                                          si32(_loc21_,_loc5_ + 8);
                                          ESP = _loc5_;
                                          F___printf_puts();
                                          _loc5_ = int(_loc5_ + 16);
                                          _loc21_ = int(eax);
                                          _loc17_ = _loc21_ + _loc20_;
                                          _loc18_ = li32(_loc22_ + 4);
                                          if(_loc18_ > _loc17_)
                                          {
                                             _loc21_ = li32(_loc22_ + 36);
                                             if(_loc21_ != 0)
                                             {
                                                _loc5_ = int(_loc5_ - 16);
                                                si32(0,_loc5_ + 8);
                                                si32(_loc15_,_loc5_);
                                                _loc21_ = int(_loc18_ - _loc17_);
                                                si32(_loc21_,_loc5_ + 4);
                                                ESP = _loc5_;
                                                F___printf_pad();
                                                _loc5_ = int(_loc5_ + 16);
                                                _loc21_ = int(eax);
                                                _loc17_ = _loc21_ + _loc17_;
                                             }
                                          }
                                          _loc5_ = int(_loc5_ - 16);
                                          si32(_loc15_,_loc5_);
                                          ESP = _loc5_;
                                          F___printf_flush();
                                          _loc5_ = int(_loc5_ + 16);
                                          eax = _loc17_;
                                          _loc5_ = _loc10_;
                                          ESP = _loc5_;
                                          return;
                                       }
                                    }
                                    _loc1_ = _loc1_ & 65535;
                                    _loc13_ = 0;
                                 }
                                 else
                                 {
                                    _loc1_ = li32(_loc1_);
                                    _loc21_ = li32(_loc22_ + 16);
                                    if(_loc21_ != 0)
                                    {
                                       if(_loc16_ == 0)
                                       {
                                          _loc21_ = _loc1_ << 24;
                                          _loc16_ = _loc21_ >> 24;
                                          if(_loc16_ <= -1)
                                          {
                                             si8(45,_loc10_ - 65);
                                             _loc1_ = int(0 - _loc16_);
                                             _loc13_ = _loc1_ >> 31;
                                             §§goto(addr586);
                                          }
                                       }
                                       _loc1_ = _loc1_ & 255;
                                       _loc13_ = 0;
                                    }
                                    else
                                    {
                                       _loc13_ = 1;
                                       if(_loc1_ <= -1)
                                       {
                                          _loc13_ = 0;
                                       }
                                       _loc21_ = _loc16_ | _loc13_;
                                       if(_loc21_ == 0)
                                       {
                                          si8(45,_loc10_ - 65);
                                          _loc1_ = int(0 - _loc1_);
                                          _loc13_ = 0;
                                       }
                                       else
                                       {
                                          _loc13_ = 0;
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc11_ != 16)
                           {
                              if(_loc11_ != 10)
                              {
                                 if(_loc11_ == 8)
                                 {
                                    _loc21_ = int(_loc10_ - 64);
                                    _loc16_ = int(_loc21_ + 63);
                                    _loc19_ = _loc1_;
                                    while(true)
                                    {
                                       _loc21_ = _loc19_ & 7;
                                       _loc21_ = _loc21_ | 48;
                                       si8(_loc21_,_loc16_ - 1);
                                       _loc16_ = int(_loc16_ + -1);
                                       _loc19_ = int(_loc19_ >>> 3);
                                       if(_loc19_ != 0)
                                       {
                                          continue;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc5_ = int(_loc5_ - 16);
                                    si32(L__2E_str2,_loc5_ + 12);
                                    si32(157,_loc5_ + 8);
                                    si32(L__2E_str,_loc5_ + 4);
                                    si32(___func___2E_2805,_loc5_);
                                    ESP = _loc5_;
                                    F___assert();
                                    _loc5_ = int(_loc5_ + 16);
                                    _loc16_ = _loc17_;
                                 }
                              }
                              else if(uint(_loc1_) <= 9)
                              {
                                 _loc21_ = int(_loc1_ + 48);
                                 si8(_loc21_,_loc10_ - 2);
                                 _loc21_ = int(_loc10_ - 64);
                                 _loc16_ = int(_loc21_ + 62);
                              }
                              else
                              {
                                 _loc12_ = 0;
                                 _loc16_ = _loc17_;
                                 _loc4_ = _loc1_;
                                 if(_loc1_ <= -1)
                                 {
                                    _loc21_ = int(uint(_loc1_) % 10);
                                    _loc21_ = _loc21_ | 48;
                                    si8(_loc21_,_loc10_ - 2);
                                    _loc4_ = int(uint(_loc1_) / 10);
                                    _loc21_ = int(_loc10_ - 64);
                                    _loc16_ = int(_loc21_ + 62);
                                    _loc12_ = 1;
                                 }
                                 do
                                 {
                                    _loc14_ = _loc16_;
                                    _loc7_ = _loc4_;
                                    _loc21_ = int(_loc7_ % 10);
                                    _loc21_ = int(_loc21_ + 48);
                                    si8(_loc21_,_loc14_ - 1);
                                    _loc12_ = _loc12_ + 1;
                                    _loc16_ = int(_loc14_ + -1);
                                    if(_loc6_ != 0)
                                    {
                                       _loc4_ = si8(li8(_loc19_));
                                       if(_loc4_ == _loc12_)
                                       {
                                          _loc21_ = _loc4_ & 255;
                                          if(_loc21_ != 127)
                                          {
                                             if(_loc7_ >= 10)
                                             {
                                                si8(_loc20_,_loc14_ - 2);
                                                _loc16_ = int(_loc14_ + -2);
                                                _loc12_ = 0;
                                                if(li8(_loc19_ + 1) != 0)
                                                {
                                                   _loc19_ = int(_loc19_ + 1);
                                                   _loc12_ = 0;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    _loc4_ = int(_loc7_ / 10);
                                    _loc21_ = int(_loc7_ + 9);
                                 }
                                 while(uint(_loc21_) > 18);
                                 
                              }
                           }
                           else
                           {
                              _loc21_ = int(_loc10_ - 64);
                              _loc16_ = int(_loc21_ + 63);
                              _loc19_ = _loc1_;
                              while(true)
                              {
                                 _loc21_ = _loc19_ & 15;
                                 _loc21_ = int(_loc12_ + _loc21_);
                                 _loc21_ = li8(_loc21_);
                                 si8(_loc21_,_loc16_ - 1);
                                 _loc16_ = int(_loc16_ + -1);
                                 _loc19_ = int(_loc19_ >>> 4);
                                 if(_loc19_ != 0)
                                 {
                                    continue;
                                 }
                              }
                           }
                           §§goto(addr1365);
                        }
                     }
                  }
               }
               _loc13_ = li32(_loc1_ + 4);
               _loc14_ = 1;
               if(_loc13_ <= -1)
               {
                  _loc14_ = 0;
               }
               _loc21_ = _loc16_ | _loc14_;
               _loc1_ = li32(_loc1_);
               if(_loc21_ == 0)
               {
                  si8(45,_loc10_ - 65);
                  _loc16_ = 1;
                  if(_loc1_ == 0)
                  {
                     _loc16_ = 0;
                  }
                  _loc21_ = int(0 - _loc13_);
                  _loc13_ = int(_loc21_ - _loc16_);
                  _loc1_ = int(0 - _loc1_);
               }
               §§goto(addr586);
            }
            else
            {
               addr202:
               _loc11_ = 8;
               _loc12_ = ___lowercase_hex;
            }
         }
         else
         {
            if(_loc1_ != 88)
            {
               if(_loc1_ != 100)
               {
                  §§goto(addr215);
               }
               §§goto(addr282);
            }
            else
            {
               _loc11_ = 16;
               _loc12_ = ___uppercase_hex;
            }
            §§goto(addr303);
         }
         addr208:
         _loc1_ = li32(_loc16_);
         _loc16_ = 1;
         §§goto(addr303);
      }
      else
      {
         if(_loc1_ <= 116)
         {
            if(_loc1_ != 105)
            {
               if(_loc1_ != 111)
               {
                  §§goto(addr215);
               }
               else
               {
                  §§goto(addr202);
               }
               §§goto(addr303);
            }
            §§goto(addr282);
         }
         else if(_loc1_ != 117)
         {
            _loc11_ = 16;
            _loc12_ = ___lowercase_hex;
            if(_loc1_ != 120)
            {
               §§goto(addr215);
            }
            §§goto(addr303);
         }
         §§goto(addr208);
      }
      _loc11_ = 10;
      _loc12_ = ___lowercase_hex;
      §§goto(addr208);
   }
}
