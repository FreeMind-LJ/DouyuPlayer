package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_rintf_2D_pos_2E_o_3A_E212372B_2D_F3AA_2D_434B_2D_8C74_2D_BBBA74794BD6.*;
   
   public function F___find_warguments() : void
   {
      var _loc7_:* = 0;
      var _loc17_:* = 0;
      var _loc18_:* = 0;
      var _loc19_:* = 0;
      var _loc4_:int = 0;
      var _loc15_:* = 0;
      var _loc12_:* = 0;
      var _loc14_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc2_:int = 0;
      var _loc16_:* = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc3_:* = int(ESP);
      _loc7_ = _loc3_;
      _loc3_ = int(_loc3_ - 48);
      _loc4_ = _loc7_ - 48;
      _loc19_ = _loc4_ | 4;
      si32(_loc19_,_loc7_ - 48);
      si32(8,_loc7_ - 12);
      si32(0,_loc7_ - 8);
      si32(1,_loc7_ - 4);
      si32(0,_loc19_ + 24);
      si32(0,_loc19_ + 20);
      si32(0,_loc19_ + 16);
      si32(0,_loc19_ + 12);
      si32(0,_loc19_ + 8);
      si32(0,_loc19_ + 4);
      si32(0,_loc19_);
      si32(0,_loc7_ - 16);
      _loc18_ = li32(_loc7_ + 8);
      _loc17_ = li32(_loc7_ + 4);
      _loc16_ = li32(_loc7_);
      _loc15_ = 1;
      loop0:
      while(true)
      {
         _loc14_ = li32(_loc16_);
         if(_loc14_ != 0)
         {
            if(_loc14_ == 37)
            {
               _loc16_ = int(_loc16_ + 4);
               _loc13_ = 0;
               loop1:
               while(true)
               {
                  _loc12_ = int(_loc16_ + 4);
                  _loc14_ = li32(_loc16_);
                  while(true)
                  {
                     _loc16_ = _loc12_;
                     if(_loc14_ <= 87)
                     {
                        if(_loc14_ <= 64)
                        {
                           if(_loc14_ <= 42)
                           {
                              break;
                           }
                           addr6096:
                           _loc1_ = int(_loc14_ + -43);
                           if(uint(_loc1_) <= 14)
                           {
                              _loc8_ = 0;
                              _loc12_ = 1 << _loc1_;
                              var _loc9_:* = _loc12_ & 32704;
                              if(_loc9_ == 0)
                              {
                                 _loc9_ = _loc12_ & 37;
                                 if(_loc9_ == 0)
                                 {
                                    if(_loc1_ == 3)
                                    {
                                       _loc12_ = int(_loc16_ + 4);
                                       _loc14_ = li32(_loc16_);
                                       if(_loc14_ != 42)
                                       {
                                          _loc9_ = int(_loc14_ + -48);
                                          if(uint(_loc9_) <= 9)
                                          {
                                             _loc16_ = int(_loc16_ + 4);
                                             do
                                             {
                                                _loc12_ = int(_loc16_ + 4);
                                                _loc14_ = li32(_loc16_);
                                                _loc9_ = int(_loc14_ + -48);
                                                _loc16_ = _loc12_;
                                             }
                                             while(uint(_loc9_) < 10);
                                             
                                          }
                                          continue;
                                       }
                                       _loc1_ = li32(_loc12_);
                                       _loc11_ = int(_loc1_ + -48);
                                       _loc14_ = 0;
                                       _loc8_ = _loc12_;
                                       if(uint(_loc11_) <= 9)
                                       {
                                          do
                                          {
                                             _loc9_ = int(_loc14_ * 10);
                                             _loc14_ = int(_loc9_ + _loc11_);
                                             _loc8_ = int(_loc16_ + 4);
                                             _loc1_ = li32(_loc16_ + 8);
                                             _loc11_ = int(_loc1_ + -48);
                                             _loc16_ = _loc8_;
                                          }
                                          while(uint(_loc11_) < 10);
                                          
                                          _loc8_ = int(_loc8_ + 4);
                                       }
                                       if(_loc1_ == 36)
                                       {
                                          si32(_loc14_,_loc7_ - 4);
                                          _loc12_ = li32(_loc7_ - 12);
                                          if(_loc14_ >= _loc12_)
                                          {
                                             _loc16_ = _loc12_ << 1;
                                             _loc10_ = int(_loc14_ + 1);
                                             _loc11_ = _loc10_;
                                             if(_loc10_ <= _loc16_)
                                             {
                                                _loc11_ = _loc16_;
                                             }
                                             _loc14_ = _loc11_ << 2;
                                             _loc1_ = li32(_loc7_ - 48);
                                             if(_loc12_ == 8)
                                             {
                                                _loc3_ = int(_loc3_ - 16);
                                                si32(_loc14_,_loc3_);
                                                ESP = _loc3_;
                                                F_malloc();
                                                _loc14_ = -1;
                                                _loc3_ = int(_loc3_ + 16);
                                                _loc2_ = eax;
                                                if(_loc2_ != 0)
                                                {
                                                   _loc3_ = int(_loc3_ - 16);
                                                   si32(_loc2_,_loc3_ + 4);
                                                   si32(_loc1_,_loc3_);
                                                   _loc9_ = _loc12_ << 2;
                                                   si32(_loc9_,_loc3_ + 8);
                                                   ESP = _loc3_;
                                                   F_bcopy();
                                                   _loc3_ = int(_loc3_ + 16);
                                                   addr1187:
                                                   if(_loc12_ < _loc11_)
                                                   {
                                                      _loc3_ = int(_loc3_ - 16);
                                                      si32(0,_loc3_ + 4);
                                                      _loc9_ = int(_loc2_ + (_loc12_ << 2));
                                                      si32(_loc9_,_loc3_);
                                                      if(_loc16_ <= _loc10_)
                                                      {
                                                         _loc16_ = _loc10_;
                                                      }
                                                      _loc9_ = int(_loc16_ - _loc12_);
                                                      _loc9_ = _loc9_ << 2;
                                                      si32(_loc9_,_loc3_ + 8);
                                                      ESP = _loc3_;
                                                      Fmemset();
                                                      _loc3_ = int(_loc3_ + 16);
                                                   }
                                                   si32(_loc2_,_loc7_ - 48);
                                                   si32(_loc11_,_loc7_ - 12);
                                                   _loc14_ = li32(_loc7_ - 4);
                                                }
                                             }
                                             else
                                             {
                                                _loc3_ = int(_loc3_ - 16);
                                                si32(_loc14_,_loc3_ + 4);
                                                si32(_loc1_,_loc3_);
                                                ESP = _loc3_;
                                                F_realloc();
                                                _loc14_ = -1;
                                                _loc3_ = int(_loc3_ + 16);
                                                _loc2_ = eax;
                                                if(_loc2_ != 0)
                                                {
                                                   §§goto(addr1187);
                                                }
                                             }
                                          }
                                          _loc9_ = li32(_loc7_ - 8);
                                          if(_loc14_ > _loc9_)
                                          {
                                             si32(_loc14_,_loc7_ - 8);
                                          }
                                          var _loc5_:* = _loc14_ << 2;
                                          _loc9_ = li32(_loc7_ - 48);
                                          _loc9_ = int(_loc9_ + _loc5_);
                                          si32(2,_loc9_);
                                          si32(_loc15_,_loc7_ - 4);
                                          _loc16_ = int(_loc8_ + 4);
                                       }
                                       else
                                       {
                                          _loc8_ = li32(_loc7_ - 12);
                                          if(_loc15_ >= _loc8_)
                                          {
                                             _loc16_ = _loc8_ << 1;
                                             _loc15_ = int(_loc15_ + 1);
                                             _loc11_ = _loc15_;
                                             if(_loc15_ <= _loc16_)
                                             {
                                                _loc11_ = _loc16_;
                                             }
                                             _loc14_ = _loc11_ << 2;
                                             _loc1_ = li32(_loc7_ - 48);
                                             if(_loc8_ == 8)
                                             {
                                                _loc3_ = int(_loc3_ - 16);
                                                si32(_loc14_,_loc3_);
                                                ESP = _loc3_;
                                                F_malloc();
                                                _loc14_ = -1;
                                                _loc3_ = int(_loc3_ + 16);
                                                _loc10_ = int(eax);
                                                if(_loc10_ != 0)
                                                {
                                                   _loc3_ = int(_loc3_ - 16);
                                                   si32(_loc10_,_loc3_ + 4);
                                                   si32(_loc1_,_loc3_);
                                                   _loc9_ = _loc8_ << 2;
                                                   si32(_loc9_,_loc3_ + 8);
                                                   ESP = _loc3_;
                                                   F_bcopy();
                                                   _loc3_ = int(_loc3_ + 16);
                                                   addr1439:
                                                   if(_loc8_ < _loc11_)
                                                   {
                                                      _loc3_ = int(_loc3_ - 16);
                                                      si32(0,_loc3_ + 4);
                                                      _loc9_ = int(_loc10_ + (_loc8_ << 2));
                                                      si32(_loc9_,_loc3_);
                                                      if(_loc16_ <= _loc15_)
                                                      {
                                                         _loc16_ = _loc15_;
                                                      }
                                                      _loc9_ = int(_loc16_ - _loc8_);
                                                      _loc9_ = _loc9_ << 2;
                                                      si32(_loc9_,_loc3_ + 8);
                                                      ESP = _loc3_;
                                                      Fmemset();
                                                      _loc3_ = int(_loc3_ + 16);
                                                   }
                                                   si32(_loc10_,_loc7_ - 48);
                                                   si32(_loc11_,_loc7_ - 12);
                                                   _loc15_ = li32(_loc7_ - 4);
                                                }
                                             }
                                             else
                                             {
                                                _loc3_ = int(_loc3_ - 16);
                                                si32(_loc14_,_loc3_ + 4);
                                                si32(_loc1_,_loc3_);
                                                ESP = _loc3_;
                                                F_realloc();
                                                _loc14_ = -1;
                                                _loc3_ = int(_loc3_ + 16);
                                                _loc10_ = int(eax);
                                                if(_loc10_ != 0)
                                                {
                                                   §§goto(addr1439);
                                                }
                                             }
                                          }
                                          _loc9_ = li32(_loc7_ - 8);
                                          if(_loc15_ > _loc9_)
                                          {
                                             si32(_loc15_,_loc7_ - 8);
                                          }
                                          _loc5_ = _loc15_ << 2;
                                          _loc9_ = li32(_loc7_ - 48);
                                          _loc9_ = int(_loc9_ + _loc5_);
                                          si32(2,_loc9_);
                                          _loc15_ = int(_loc15_ + 1);
                                          si32(_loc15_,_loc7_ - 4);
                                          _loc16_ = _loc12_;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 else
                                 {
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 do
                                 {
                                    _loc9_ = int(_loc8_ * 10);
                                    _loc9_ = int(_loc14_ + _loc9_);
                                    _loc8_ = int(_loc9_ + -48);
                                    _loc12_ = int(_loc16_ + 4);
                                    _loc14_ = li32(_loc16_);
                                    _loc9_ = int(_loc14_ + -48);
                                    _loc16_ = _loc12_;
                                 }
                                 while(uint(_loc9_) < 10);
                                 
                                 if(_loc14_ == 36)
                                 {
                                    si32(_loc8_,_loc7_ - 4);
                                    _loc15_ = _loc8_;
                                    _loc16_ = _loc12_;
                                    continue loop1;
                                 }
                                 continue;
                              }
                           }
                           addr6096:
                           if(_loc14_ == 0)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        addr6132:
                        if(_loc14_ <= 70)
                        {
                           if(_loc14_ <= 67)
                           {
                              if(_loc14_ != 65)
                              {
                                 if(_loc14_ != 67)
                                 {
                                    §§goto(addr6096);
                                 }
                                 else
                                 {
                                    _loc13_ = _loc13_ | 16;
                                    addr1712:
                                    _loc9_ = _loc13_ & 16;
                                    _loc12_ = 2;
                                    if(_loc9_ != 0)
                                    {
                                       _loc12_ = 24;
                                    }
                                    _loc8_ = li32(_loc7_ - 12);
                                    if(_loc15_ >= _loc8_)
                                    {
                                       _loc13_ = _loc8_ << 1;
                                       _loc15_ = int(_loc15_ + 1);
                                       _loc11_ = _loc15_;
                                       if(_loc15_ <= _loc13_)
                                       {
                                          _loc11_ = _loc13_;
                                       }
                                       _loc14_ = _loc11_ << 2;
                                       _loc1_ = li32(_loc7_ - 48);
                                       if(_loc8_ == 8)
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc14_,_loc3_);
                                          ESP = _loc3_;
                                          F_malloc();
                                          _loc14_ = -1;
                                          _loc3_ = int(_loc3_ + 16);
                                          _loc10_ = int(eax);
                                          if(_loc10_ != 0)
                                          {
                                             _loc3_ = int(_loc3_ - 16);
                                             si32(_loc10_,_loc3_ + 4);
                                             si32(_loc1_,_loc3_);
                                             _loc9_ = _loc8_ << 2;
                                             si32(_loc9_,_loc3_ + 8);
                                             ESP = _loc3_;
                                             F_bcopy();
                                             _loc3_ = int(_loc3_ + 16);
                                             addr1859:
                                             if(_loc8_ < _loc11_)
                                             {
                                                _loc3_ = int(_loc3_ - 16);
                                                si32(0,_loc3_ + 4);
                                                _loc9_ = int(_loc10_ + (_loc8_ << 2));
                                                si32(_loc9_,_loc3_);
                                                if(_loc13_ <= _loc15_)
                                                {
                                                   _loc13_ = _loc15_;
                                                }
                                                _loc9_ = int(_loc13_ - _loc8_);
                                                _loc9_ = _loc9_ << 2;
                                                si32(_loc9_,_loc3_ + 8);
                                                ESP = _loc3_;
                                                Fmemset();
                                                _loc3_ = int(_loc3_ + 16);
                                             }
                                             si32(_loc10_,_loc7_ - 48);
                                             si32(_loc11_,_loc7_ - 12);
                                             _loc15_ = li32(_loc7_ - 4);
                                          }
                                       }
                                       else
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc14_,_loc3_ + 4);
                                          si32(_loc1_,_loc3_);
                                          ESP = _loc3_;
                                          F_realloc();
                                          _loc14_ = -1;
                                          _loc3_ = int(_loc3_ + 16);
                                          _loc10_ = int(eax);
                                          if(_loc10_ != 0)
                                          {
                                             §§goto(addr1859);
                                          }
                                       }
                                    }
                                    _loc9_ = li32(_loc7_ - 8);
                                    if(_loc15_ > _loc9_)
                                    {
                                       si32(_loc15_,_loc7_ - 8);
                                    }
                                    _loc9_ = _loc15_ << 2;
                                    _loc5_ = li32(_loc7_ - 48);
                                    _loc9_ = int(_loc5_ + _loc9_);
                                    si32(_loc12_,_loc9_);
                                    _loc15_ = int(_loc15_ + 1);
                                    si32(_loc15_,_loc7_ - 4);
                                    continue loop0;
                                 }
                              }
                           }
                           else if(_loc14_ != 68)
                           {
                              if(_loc14_ != 69)
                              {
                                 §§goto(addr6096);
                              }
                           }
                           else
                           {
                              _loc13_ = _loc13_ | 16;
                              break loop1;
                           }
                           addr2399:
                           _loc8_ = li32(_loc7_ - 12);
                           if(_loc15_ >= _loc8_)
                           {
                              _loc12_ = _loc8_ << 1;
                              _loc15_ = int(_loc15_ + 1);
                              _loc11_ = _loc15_;
                              if(_loc15_ <= _loc12_)
                              {
                                 _loc11_ = _loc12_;
                              }
                              _loc14_ = _loc11_ << 2;
                              _loc1_ = li32(_loc7_ - 48);
                              if(_loc8_ == 8)
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc14_,_loc3_);
                                 ESP = _loc3_;
                                 F_malloc();
                                 _loc14_ = -1;
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc10_ = int(eax);
                                 if(_loc10_ != 0)
                                 {
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_loc10_,_loc3_ + 4);
                                    si32(_loc1_,_loc3_);
                                    _loc9_ = _loc8_ << 2;
                                    si32(_loc9_,_loc3_ + 8);
                                    ESP = _loc3_;
                                    F_bcopy();
                                    _loc3_ = int(_loc3_ + 16);
                                    addr2534:
                                    if(_loc8_ < _loc11_)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(0,_loc3_ + 4);
                                       _loc9_ = int(_loc10_ + (_loc8_ << 2));
                                       si32(_loc9_,_loc3_);
                                       if(_loc12_ <= _loc15_)
                                       {
                                          _loc12_ = _loc15_;
                                       }
                                       _loc9_ = int(_loc12_ - _loc8_);
                                       _loc9_ = _loc9_ << 2;
                                       si32(_loc9_,_loc3_ + 8);
                                       ESP = _loc3_;
                                       Fmemset();
                                       _loc3_ = int(_loc3_ + 16);
                                    }
                                    si32(_loc10_,_loc7_ - 48);
                                    si32(_loc11_,_loc7_ - 12);
                                    _loc15_ = li32(_loc7_ - 4);
                                 }
                              }
                              else
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc14_,_loc3_ + 4);
                                 si32(_loc1_,_loc3_);
                                 ESP = _loc3_;
                                 F_realloc();
                                 _loc14_ = -1;
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc10_ = int(eax);
                                 if(_loc10_ != 0)
                                 {
                                    §§goto(addr2534);
                                 }
                              }
                           }
                           _loc9_ = li32(_loc7_ - 8);
                           if(_loc15_ > _loc9_)
                           {
                              si32(_loc15_,_loc7_ - 8);
                           }
                           _loc9_ = int(_loc13_ >>> 3);
                           _loc9_ = _loc9_ & 1;
                           _loc9_ = _loc9_ | 22;
                           _loc5_ = _loc15_ << 2;
                           var _loc6_:* = li32(_loc7_ - 48);
                           _loc5_ = int(_loc6_ + _loc5_);
                           si32(_loc9_,_loc5_);
                           _loc15_ = int(_loc15_ + 1);
                           si32(_loc15_,_loc7_ - 4);
                           continue loop0;
                        }
                        if(_loc14_ <= 78)
                        {
                           if(_loc14_ != 71)
                           {
                              if(_loc14_ != 76)
                              {
                                 §§goto(addr6096);
                              }
                              else
                              {
                                 _loc13_ = _loc13_ | 8;
                                 continue loop1;
                              }
                           }
                           else
                           {
                              §§goto(addr2399);
                           }
                        }
                        else if(_loc14_ != 79)
                        {
                           if(_loc14_ != 83)
                           {
                              if(_loc14_ != 85)
                              {
                                 §§goto(addr6096);
                              }
                              else
                              {
                                 _loc13_ = _loc13_ | 16;
                              }
                           }
                           else
                           {
                              _loc13_ = _loc13_ | 16;
                              addr5409:
                              _loc9_ = _loc13_ & 16;
                              _loc12_ = 20;
                              if(_loc9_ != 0)
                              {
                                 _loc12_ = 25;
                              }
                              _loc8_ = li32(_loc7_ - 12);
                              if(_loc15_ >= _loc8_)
                              {
                                 _loc13_ = _loc8_ << 1;
                                 _loc1_ = int(_loc15_ + 1);
                                 _loc15_ = _loc1_;
                                 if(_loc1_ <= _loc13_)
                                 {
                                    _loc15_ = _loc13_;
                                 }
                                 _loc14_ = _loc15_ << 2;
                                 _loc11_ = li32(_loc7_ - 48);
                                 if(_loc8_ == 8)
                                 {
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_loc14_,_loc3_);
                                    ESP = _loc3_;
                                    F_malloc();
                                    _loc14_ = -1;
                                    _loc3_ = int(_loc3_ + 16);
                                    _loc10_ = int(eax);
                                    if(_loc10_ != 0)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_loc10_,_loc3_ + 4);
                                       si32(_loc11_,_loc3_);
                                       _loc9_ = _loc8_ << 2;
                                       si32(_loc9_,_loc3_ + 8);
                                       ESP = _loc3_;
                                       F_bcopy();
                                       _loc3_ = int(_loc3_ + 16);
                                       addr5556:
                                       if(_loc8_ < _loc15_)
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(0,_loc3_ + 4);
                                          _loc9_ = int(_loc10_ + (_loc8_ << 2));
                                          si32(_loc9_,_loc3_);
                                          if(_loc13_ <= _loc1_)
                                          {
                                             _loc13_ = _loc1_;
                                          }
                                          _loc9_ = int(_loc13_ - _loc8_);
                                          _loc9_ = _loc9_ << 2;
                                          si32(_loc9_,_loc3_ + 8);
                                          ESP = _loc3_;
                                          Fmemset();
                                          _loc3_ = int(_loc3_ + 16);
                                       }
                                       si32(_loc10_,_loc7_ - 48);
                                       si32(_loc15_,_loc7_ - 12);
                                       _loc15_ = li32(_loc7_ - 4);
                                    }
                                 }
                                 else
                                 {
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_loc14_,_loc3_ + 4);
                                    si32(_loc11_,_loc3_);
                                    ESP = _loc3_;
                                    F_realloc();
                                    _loc14_ = -1;
                                    _loc3_ = int(_loc3_ + 16);
                                    _loc10_ = int(eax);
                                    if(_loc10_ != 0)
                                    {
                                       §§goto(addr5556);
                                    }
                                 }
                              }
                              _loc9_ = li32(_loc7_ - 8);
                              if(_loc15_ > _loc9_)
                              {
                                 si32(_loc15_,_loc7_ - 8);
                              }
                              _loc5_ = _loc15_ << 2;
                              _loc9_ = li32(_loc7_ - 48);
                              _loc9_ = int(_loc9_ + _loc5_);
                              si32(_loc12_,_loc9_);
                              _loc15_ = int(_loc15_ + 1);
                              si32(_loc15_,_loc7_ - 4);
                              continue loop0;
                           }
                        }
                        else
                        {
                           _loc13_ = _loc13_ | 16;
                           addr4734:
                           _loc8_ = li32(_loc7_ - 12);
                           if(_loc15_ >= _loc8_)
                           {
                              _loc12_ = _loc8_ << 1;
                              _loc1_ = int(_loc15_ + 1);
                              _loc15_ = _loc1_;
                              if(_loc1_ <= _loc12_)
                              {
                                 _loc15_ = _loc12_;
                              }
                              _loc14_ = _loc15_ << 2;
                              _loc11_ = li32(_loc7_ - 48);
                              if(_loc8_ == 8)
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc14_,_loc3_);
                                 ESP = _loc3_;
                                 F_malloc();
                                 _loc14_ = -1;
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc10_ = int(eax);
                                 if(_loc10_ != 0)
                                 {
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_loc10_,_loc3_ + 4);
                                    si32(_loc11_,_loc3_);
                                    _loc9_ = _loc8_ << 2;
                                    si32(_loc9_,_loc3_ + 8);
                                    ESP = _loc3_;
                                    F_bcopy();
                                    _loc3_ = int(_loc3_ + 16);
                                    addr4869:
                                    if(_loc8_ < _loc15_)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(0,_loc3_ + 4);
                                       _loc9_ = int(_loc10_ + (_loc8_ << 2));
                                       si32(_loc9_,_loc3_);
                                       if(_loc12_ <= _loc1_)
                                       {
                                          _loc12_ = _loc1_;
                                       }
                                       _loc9_ = int(_loc12_ - _loc8_);
                                       _loc9_ = _loc9_ << 2;
                                       si32(_loc9_,_loc3_ + 8);
                                       ESP = _loc3_;
                                       Fmemset();
                                       _loc3_ = int(_loc3_ + 16);
                                    }
                                    si32(_loc10_,_loc7_ - 48);
                                    si32(_loc15_,_loc7_ - 12);
                                    _loc15_ = li32(_loc7_ - 4);
                                 }
                              }
                              else
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc14_,_loc3_ + 4);
                                 si32(_loc11_,_loc3_);
                                 ESP = _loc3_;
                                 F_realloc();
                                 _loc14_ = -1;
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc10_ = int(eax);
                                 if(_loc10_ != 0)
                                 {
                                    §§goto(addr4869);
                                 }
                              }
                           }
                           _loc9_ = li32(_loc7_ - 8);
                           if(_loc15_ > _loc9_)
                           {
                              si32(_loc15_,_loc7_ - 8);
                           }
                           _loc9_ = _loc13_ & 4096;
                           if(_loc9_ != 0)
                           {
                              _loc5_ = li32(_loc7_ - 48);
                              si32(17,int(_loc5_ + (_loc15_ << 2)));
                              _loc15_ = int(_loc15_ + 1);
                              si32(_loc15_,_loc7_ - 4);
                           }
                           else
                           {
                              _loc9_ = _loc13_ & 1024;
                              if(_loc9_ != 0)
                              {
                                 _loc9_ = li32(_loc7_ - 48);
                                 si32(14,int(_loc9_ + (_loc15_ << 2)));
                                 _loc15_ = int(_loc15_ + 1);
                                 si32(_loc15_,_loc7_ - 4);
                              }
                              else
                              {
                                 _loc9_ = _loc13_ & 2048;
                                 if(_loc9_ != 0)
                                 {
                                    _loc9_ = li32(_loc7_ - 48);
                                    si32(14,int(_loc9_ + (_loc15_ << 2)));
                                    _loc15_ = int(_loc15_ + 1);
                                    si32(_loc15_,_loc7_ - 4);
                                 }
                                 else
                                 {
                                    _loc9_ = _loc13_ & 32;
                                    if(_loc9_ != 0)
                                    {
                                       _loc5_ = li32(_loc7_ - 48);
                                       si32(9,int(_loc5_ + (_loc15_ << 2)));
                                       _loc15_ = int(_loc15_ + 1);
                                       si32(_loc15_,_loc7_ - 4);
                                    }
                                    else
                                    {
                                       _loc14_ = li32(_loc7_ - 48);
                                       if((_loc13_ & 16) != 0)
                                       {
                                          si32(6,int(_loc14_ + (_loc15_ << 2)));
                                          _loc15_ = int(_loc15_ + 1);
                                          si32(_loc15_,_loc7_ - 4);
                                       }
                                       else
                                       {
                                          si32(3,int(_loc14_ + (_loc15_ << 2)));
                                          _loc15_ = int(_loc15_ + 1);
                                          si32(_loc15_,_loc7_ - 4);
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                        addr6132:
                        _loc17_ = li32(_loc7_ - 48);
                        if(_loc17_ != _loc19_)
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc17_,_loc3_);
                           ESP = _loc3_;
                           F_free();
                           _loc3_ = int(_loc3_ + 16);
                        }
                        _loc19_ = 1;
                        if(_loc14_ == 0)
                        {
                           _loc19_ = 1;
                           if(li32(_loc18_) != 0)
                           {
                              _loc19_ = 0;
                           }
                        }
                        eax = _loc19_;
                        _loc3_ = _loc7_;
                        ESP = _loc3_;
                        return;
                     }
                     if(_loc14_ <= 109)
                     {
                        if(_loc14_ <= 100)
                        {
                           if(_loc14_ <= 98)
                           {
                              if(_loc14_ != 88)
                              {
                                 if(_loc14_ == 97)
                                 {
                                    §§goto(addr2399);
                                 }
                              }
                           }
                           else if(_loc14_ != 99)
                           {
                              if(_loc14_ == 100)
                              {
                                 break loop1;
                              }
                           }
                           else
                           {
                              §§goto(addr1712);
                           }
                           §§goto(addr6132);
                        }
                        else if(_loc14_ <= 104)
                        {
                           _loc9_ = int(_loc14_ + -101);
                           if(uint(_loc9_) >= 3)
                           {
                              if(_loc14_ == 104)
                              {
                                 _loc9_ = _loc13_ & 64;
                                 if(_loc9_ != 0)
                                 {
                                    _loc9_ = _loc13_ & -8257;
                                    _loc13_ = _loc9_ | 8192;
                                 }
                                 else
                                 {
                                    _loc13_ = _loc13_ | 64;
                                 }
                                 continue loop1;
                              }
                           }
                           else
                           {
                              §§goto(addr2399);
                           }
                        }
                        else if(_loc14_ != 105)
                        {
                           if(_loc14_ != 106)
                           {
                              if(_loc14_ == 108)
                              {
                                 _loc9_ = _loc13_ & 16;
                                 if(_loc9_ != 0)
                                 {
                                    _loc9_ = _loc13_ & -49;
                                    _loc13_ = _loc9_ | 32;
                                 }
                                 else
                                 {
                                    _loc13_ = _loc13_ | 16;
                                 }
                                 continue loop1;
                              }
                           }
                           else
                           {
                              _loc13_ = _loc13_ | 4096;
                              continue loop1;
                           }
                        }
                        else
                        {
                           break loop1;
                        }
                        §§goto(addr6096);
                     }
                     else
                     {
                        if(_loc14_ <= 114)
                        {
                           if(_loc14_ <= 111)
                           {
                              if(_loc14_ != 110)
                              {
                                 if(_loc14_ != 111)
                                 {
                                    §§goto(addr6096);
                                 }
                                 else
                                 {
                                    §§goto(addr4734);
                                 }
                              }
                              else
                              {
                                 _loc9_ = _loc13_ & 4096;
                                 if(_loc9_ != 0)
                                 {
                                    _loc13_ = li32(_loc7_ - 12);
                                    if(_loc15_ >= _loc13_)
                                    {
                                       _loc12_ = _loc13_ << 1;
                                       _loc8_ = int(_loc15_ + 1);
                                       _loc1_ = _loc8_;
                                       if(_loc8_ <= _loc12_)
                                       {
                                          _loc1_ = _loc12_;
                                       }
                                       _loc14_ = _loc1_ << 2;
                                       _loc15_ = li32(_loc7_ - 48);
                                       if(_loc13_ == 8)
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc14_,_loc3_);
                                          ESP = _loc3_;
                                          F_malloc();
                                          _loc14_ = -1;
                                          _loc3_ = int(_loc3_ + 16);
                                          _loc11_ = int(eax);
                                          if(_loc11_ != 0)
                                          {
                                             _loc3_ = int(_loc3_ - 16);
                                             si32(_loc11_,_loc3_ + 4);
                                             si32(_loc15_,_loc3_);
                                             _loc9_ = _loc13_ << 2;
                                             si32(_loc9_,_loc3_ + 8);
                                             ESP = _loc3_;
                                             F_bcopy();
                                             _loc3_ = int(_loc3_ + 16);
                                             addr2807:
                                             if(_loc13_ < _loc1_)
                                             {
                                                _loc3_ = int(_loc3_ - 16);
                                                si32(0,_loc3_ + 4);
                                                _loc9_ = int(_loc11_ + (_loc13_ << 2));
                                                si32(_loc9_,_loc3_);
                                                if(_loc12_ <= _loc8_)
                                                {
                                                   _loc12_ = _loc8_;
                                                }
                                                _loc9_ = int(_loc12_ - _loc13_);
                                                _loc9_ = _loc9_ << 2;
                                                si32(_loc9_,_loc3_ + 8);
                                                ESP = _loc3_;
                                                Fmemset();
                                                _loc3_ = int(_loc3_ + 16);
                                             }
                                             si32(_loc11_,_loc7_ - 48);
                                             si32(_loc1_,_loc7_ - 12);
                                             _loc15_ = li32(_loc7_ - 4);
                                          }
                                       }
                                       else
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc14_,_loc3_ + 4);
                                          si32(_loc15_,_loc3_);
                                          ESP = _loc3_;
                                          F_realloc();
                                          _loc14_ = -1;
                                          _loc3_ = int(_loc3_ + 16);
                                          _loc11_ = int(eax);
                                          if(_loc11_ != 0)
                                          {
                                             §§goto(addr2807);
                                          }
                                       }
                                    }
                                    _loc9_ = li32(_loc7_ - 8);
                                    if(_loc15_ > _loc9_)
                                    {
                                       si32(_loc15_,_loc7_ - 8);
                                    }
                                    _loc9_ = _loc15_ << 2;
                                    _loc5_ = li32(_loc7_ - 48);
                                    _loc9_ = int(_loc5_ + _loc9_);
                                    si32(18,_loc9_);
                                    _loc15_ = int(_loc15_ + 1);
                                    si32(_loc15_,_loc7_ - 4);
                                 }
                                 else
                                 {
                                    _loc9_ = _loc13_ & 2048;
                                    if(_loc9_ != 0)
                                    {
                                       _loc13_ = li32(_loc7_ - 12);
                                       if(_loc15_ >= _loc13_)
                                       {
                                          _loc12_ = _loc13_ << 1;
                                          _loc15_ = int(_loc15_ + 1);
                                          _loc1_ = _loc15_;
                                          if(_loc15_ <= _loc12_)
                                          {
                                             _loc1_ = _loc12_;
                                          }
                                          _loc14_ = _loc1_ << 2;
                                          _loc8_ = li32(_loc7_ - 48);
                                          if(_loc13_ == 8)
                                          {
                                             _loc3_ = int(_loc3_ - 16);
                                             si32(_loc14_,_loc3_);
                                             ESP = _loc3_;
                                             F_malloc();
                                             _loc14_ = -1;
                                             _loc3_ = int(_loc3_ + 16);
                                             _loc11_ = int(eax);
                                             if(_loc11_ != 0)
                                             {
                                                _loc3_ = int(_loc3_ - 16);
                                                si32(_loc11_,_loc3_ + 4);
                                                si32(_loc8_,_loc3_);
                                                _loc9_ = _loc13_ << 2;
                                                si32(_loc9_,_loc3_ + 8);
                                                ESP = _loc3_;
                                                F_bcopy();
                                                _loc3_ = int(_loc3_ + 16);
                                                addr3067:
                                                if(_loc13_ < _loc1_)
                                                {
                                                   _loc3_ = int(_loc3_ - 16);
                                                   si32(0,_loc3_ + 4);
                                                   _loc9_ = int(_loc11_ + (_loc13_ << 2));
                                                   si32(_loc9_,_loc3_);
                                                   if(_loc12_ <= _loc15_)
                                                   {
                                                      _loc12_ = _loc15_;
                                                   }
                                                   _loc9_ = int(_loc12_ - _loc13_);
                                                   _loc9_ = _loc9_ << 2;
                                                   si32(_loc9_,_loc3_ + 8);
                                                   ESP = _loc3_;
                                                   Fmemset();
                                                   _loc3_ = int(_loc3_ + 16);
                                                }
                                                si32(_loc11_,_loc7_ - 48);
                                                si32(_loc1_,_loc7_ - 12);
                                                _loc15_ = li32(_loc7_ - 4);
                                             }
                                          }
                                          else
                                          {
                                             _loc3_ = int(_loc3_ - 16);
                                             si32(_loc14_,_loc3_ + 4);
                                             si32(_loc8_,_loc3_);
                                             ESP = _loc3_;
                                             F_realloc();
                                             _loc14_ = -1;
                                             _loc3_ = int(_loc3_ + 16);
                                             _loc11_ = int(eax);
                                             if(_loc11_ != 0)
                                             {
                                                §§goto(addr3067);
                                             }
                                          }
                                       }
                                       _loc9_ = li32(_loc7_ - 8);
                                       if(_loc15_ > _loc9_)
                                       {
                                          si32(_loc15_,_loc7_ - 8);
                                       }
                                       _loc5_ = _loc15_ << 2;
                                       _loc9_ = li32(_loc7_ - 48);
                                       _loc9_ = int(_loc9_ + _loc5_);
                                       si32(12,_loc9_);
                                       _loc15_ = int(_loc15_ + 1);
                                       si32(_loc15_,_loc7_ - 4);
                                    }
                                    else
                                    {
                                       _loc9_ = _loc13_ & 1024;
                                       if(_loc9_ != 0)
                                       {
                                          _loc13_ = li32(_loc7_ - 12);
                                          if(_loc15_ >= _loc13_)
                                          {
                                             _loc12_ = _loc13_ << 1;
                                             _loc15_ = int(_loc15_ + 1);
                                             _loc1_ = _loc15_;
                                             if(_loc15_ <= _loc12_)
                                             {
                                                _loc1_ = _loc12_;
                                             }
                                             _loc14_ = _loc1_ << 2;
                                             _loc8_ = li32(_loc7_ - 48);
                                             if(_loc13_ == 8)
                                             {
                                                _loc3_ = int(_loc3_ - 16);
                                                si32(_loc14_,_loc3_);
                                                ESP = _loc3_;
                                                F_malloc();
                                                _loc14_ = -1;
                                                _loc3_ = int(_loc3_ + 16);
                                                _loc11_ = int(eax);
                                                if(_loc11_ != 0)
                                                {
                                                   _loc3_ = int(_loc3_ - 16);
                                                   si32(_loc11_,_loc3_ + 4);
                                                   si32(_loc8_,_loc3_);
                                                   _loc9_ = _loc13_ << 2;
                                                   si32(_loc9_,_loc3_ + 8);
                                                   ESP = _loc3_;
                                                   F_bcopy();
                                                   _loc3_ = int(_loc3_ + 16);
                                                   addr3327:
                                                   if(_loc13_ < _loc1_)
                                                   {
                                                      _loc3_ = int(_loc3_ - 16);
                                                      si32(0,_loc3_ + 4);
                                                      _loc9_ = int(_loc11_ + (_loc13_ << 2));
                                                      si32(_loc9_,_loc3_);
                                                      if(_loc12_ <= _loc15_)
                                                      {
                                                         _loc12_ = _loc15_;
                                                      }
                                                      _loc9_ = int(_loc12_ - _loc13_);
                                                      _loc9_ = _loc9_ << 2;
                                                      si32(_loc9_,_loc3_ + 8);
                                                      ESP = _loc3_;
                                                      Fmemset();
                                                      _loc3_ = int(_loc3_ + 16);
                                                   }
                                                   si32(_loc11_,_loc7_ - 48);
                                                   si32(_loc1_,_loc7_ - 12);
                                                   _loc15_ = li32(_loc7_ - 4);
                                                }
                                             }
                                             else
                                             {
                                                _loc3_ = int(_loc3_ - 16);
                                                si32(_loc14_,_loc3_ + 4);
                                                si32(_loc8_,_loc3_);
                                                ESP = _loc3_;
                                                F_realloc();
                                                _loc14_ = -1;
                                                _loc3_ = int(_loc3_ + 16);
                                                _loc11_ = int(eax);
                                                if(_loc11_ != 0)
                                                {
                                                   §§goto(addr3327);
                                                }
                                             }
                                          }
                                          _loc9_ = li32(_loc7_ - 8);
                                          if(_loc15_ > _loc9_)
                                          {
                                             si32(_loc15_,_loc7_ - 8);
                                          }
                                          _loc5_ = _loc15_ << 2;
                                          _loc9_ = li32(_loc7_ - 48);
                                          _loc9_ = int(_loc9_ + _loc5_);
                                          si32(15,_loc9_);
                                          _loc15_ = int(_loc15_ + 1);
                                          si32(_loc15_,_loc7_ - 4);
                                       }
                                       else
                                       {
                                          _loc9_ = _loc13_ & 32;
                                          if(_loc9_ != 0)
                                          {
                                             _loc13_ = li32(_loc7_ - 12);
                                             if(_loc15_ >= _loc13_)
                                             {
                                                _loc12_ = _loc13_ << 1;
                                                _loc15_ = int(_loc15_ + 1);
                                                _loc1_ = _loc15_;
                                                if(_loc15_ <= _loc12_)
                                                {
                                                   _loc1_ = _loc12_;
                                                }
                                                _loc14_ = _loc1_ << 2;
                                                _loc8_ = li32(_loc7_ - 48);
                                                if(_loc13_ == 8)
                                                {
                                                   _loc3_ = int(_loc3_ - 16);
                                                   si32(_loc14_,_loc3_);
                                                   ESP = _loc3_;
                                                   F_malloc();
                                                   _loc14_ = -1;
                                                   _loc3_ = int(_loc3_ + 16);
                                                   _loc11_ = int(eax);
                                                   if(_loc11_ != 0)
                                                   {
                                                      _loc3_ = int(_loc3_ - 16);
                                                      si32(_loc11_,_loc3_ + 4);
                                                      si32(_loc8_,_loc3_);
                                                      _loc9_ = _loc13_ << 2;
                                                      si32(_loc9_,_loc3_ + 8);
                                                      ESP = _loc3_;
                                                      F_bcopy();
                                                      _loc3_ = int(_loc3_ + 16);
                                                      addr3587:
                                                      if(_loc13_ < _loc1_)
                                                      {
                                                         _loc3_ = int(_loc3_ - 16);
                                                         si32(0,_loc3_ + 4);
                                                         _loc9_ = int(_loc11_ + (_loc13_ << 2));
                                                         si32(_loc9_,_loc3_);
                                                         if(_loc12_ <= _loc15_)
                                                         {
                                                            _loc12_ = _loc15_;
                                                         }
                                                         _loc9_ = int(_loc12_ - _loc13_);
                                                         _loc9_ = _loc9_ << 2;
                                                         si32(_loc9_,_loc3_ + 8);
                                                         ESP = _loc3_;
                                                         Fmemset();
                                                         _loc3_ = int(_loc3_ + 16);
                                                      }
                                                      si32(_loc11_,_loc7_ - 48);
                                                      si32(_loc1_,_loc7_ - 12);
                                                      _loc15_ = li32(_loc7_ - 4);
                                                   }
                                                }
                                                else
                                                {
                                                   _loc3_ = int(_loc3_ - 16);
                                                   si32(_loc14_,_loc3_ + 4);
                                                   si32(_loc8_,_loc3_);
                                                   ESP = _loc3_;
                                                   F_realloc();
                                                   _loc14_ = -1;
                                                   _loc3_ = int(_loc3_ + 16);
                                                   _loc11_ = int(eax);
                                                   if(_loc11_ != 0)
                                                   {
                                                      §§goto(addr3587);
                                                   }
                                                }
                                             }
                                             _loc9_ = li32(_loc7_ - 8);
                                             if(_loc15_ > _loc9_)
                                             {
                                                si32(_loc15_,_loc7_ - 8);
                                             }
                                             _loc5_ = _loc15_ << 2;
                                             _loc9_ = li32(_loc7_ - 48);
                                             _loc9_ = int(_loc9_ + _loc5_);
                                             si32(10,_loc9_);
                                             _loc15_ = int(_loc15_ + 1);
                                             si32(_loc15_,_loc7_ - 4);
                                          }
                                          else
                                          {
                                             _loc9_ = _loc13_ & 16;
                                             if(_loc9_ != 0)
                                             {
                                                _loc13_ = li32(_loc7_ - 12);
                                                if(_loc15_ >= _loc13_)
                                                {
                                                   _loc12_ = _loc13_ << 1;
                                                   _loc8_ = int(_loc15_ + 1);
                                                   _loc1_ = _loc8_;
                                                   if(_loc8_ <= _loc12_)
                                                   {
                                                      _loc1_ = _loc12_;
                                                   }
                                                   _loc14_ = _loc1_ << 2;
                                                   _loc15_ = li32(_loc7_ - 48);
                                                   if(_loc13_ == 8)
                                                   {
                                                      _loc3_ = int(_loc3_ - 16);
                                                      si32(_loc14_,_loc3_);
                                                      ESP = _loc3_;
                                                      F_malloc();
                                                      _loc14_ = -1;
                                                      _loc3_ = int(_loc3_ + 16);
                                                      _loc11_ = int(eax);
                                                      if(_loc11_ != 0)
                                                      {
                                                         _loc3_ = int(_loc3_ - 16);
                                                         si32(_loc11_,_loc3_ + 4);
                                                         si32(_loc15_,_loc3_);
                                                         _loc9_ = _loc13_ << 2;
                                                         si32(_loc9_,_loc3_ + 8);
                                                         ESP = _loc3_;
                                                         F_bcopy();
                                                         _loc3_ = int(_loc3_ + 16);
                                                         addr3847:
                                                         if(_loc13_ < _loc1_)
                                                         {
                                                            _loc3_ = int(_loc3_ - 16);
                                                            si32(0,_loc3_ + 4);
                                                            _loc9_ = int(_loc11_ + (_loc13_ << 2));
                                                            si32(_loc9_,_loc3_);
                                                            if(_loc12_ <= _loc8_)
                                                            {
                                                               _loc12_ = _loc8_;
                                                            }
                                                            _loc9_ = int(_loc12_ - _loc13_);
                                                            _loc9_ = _loc9_ << 2;
                                                            si32(_loc9_,_loc3_ + 8);
                                                            ESP = _loc3_;
                                                            Fmemset();
                                                            _loc3_ = int(_loc3_ + 16);
                                                         }
                                                         si32(_loc11_,_loc7_ - 48);
                                                         si32(_loc1_,_loc7_ - 12);
                                                         _loc15_ = li32(_loc7_ - 4);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc3_ = int(_loc3_ - 16);
                                                      si32(_loc14_,_loc3_ + 4);
                                                      si32(_loc15_,_loc3_);
                                                      ESP = _loc3_;
                                                      F_realloc();
                                                      _loc14_ = -1;
                                                      _loc3_ = int(_loc3_ + 16);
                                                      _loc11_ = int(eax);
                                                      if(_loc11_ != 0)
                                                      {
                                                         §§goto(addr3847);
                                                      }
                                                   }
                                                }
                                                _loc9_ = li32(_loc7_ - 8);
                                                if(_loc15_ > _loc9_)
                                                {
                                                   si32(_loc15_,_loc7_ - 8);
                                                }
                                                _loc5_ = _loc15_ << 2;
                                                _loc9_ = li32(_loc7_ - 48);
                                                _loc9_ = int(_loc9_ + _loc5_);
                                                si32(7,_loc9_);
                                                _loc15_ = int(_loc15_ + 1);
                                                si32(_loc15_,_loc7_ - 4);
                                             }
                                             else
                                             {
                                                _loc9_ = _loc13_ & 64;
                                                if(_loc9_ != 0)
                                                {
                                                   _loc12_ = li32(_loc7_ - 12);
                                                   if(_loc15_ >= _loc12_)
                                                   {
                                                      _loc13_ = _loc12_ << 1;
                                                      _loc8_ = int(_loc15_ + 1);
                                                      _loc1_ = _loc8_;
                                                      if(_loc8_ <= _loc13_)
                                                      {
                                                         _loc1_ = _loc13_;
                                                      }
                                                      _loc14_ = _loc1_ << 2;
                                                      _loc15_ = li32(_loc7_ - 48);
                                                      if(_loc12_ == 8)
                                                      {
                                                         _loc3_ = int(_loc3_ - 16);
                                                         si32(_loc14_,_loc3_);
                                                         ESP = _loc3_;
                                                         F_malloc();
                                                         _loc14_ = -1;
                                                         _loc3_ = int(_loc3_ + 16);
                                                         _loc11_ = int(eax);
                                                         if(_loc11_ != 0)
                                                         {
                                                            _loc3_ = int(_loc3_ - 16);
                                                            si32(_loc11_,_loc3_ + 4);
                                                            si32(_loc15_,_loc3_);
                                                            _loc9_ = _loc12_ << 2;
                                                            si32(_loc9_,_loc3_ + 8);
                                                            ESP = _loc3_;
                                                            F_bcopy();
                                                            _loc3_ = int(_loc3_ + 16);
                                                            addr4107:
                                                            if(_loc12_ < _loc1_)
                                                            {
                                                               _loc3_ = int(_loc3_ - 16);
                                                               si32(0,_loc3_ + 4);
                                                               _loc9_ = int(_loc11_ + (_loc12_ << 2));
                                                               si32(_loc9_,_loc3_);
                                                               if(_loc13_ <= _loc8_)
                                                               {
                                                                  _loc13_ = _loc8_;
                                                               }
                                                               _loc9_ = int(_loc13_ - _loc12_);
                                                               _loc9_ = _loc9_ << 2;
                                                               si32(_loc9_,_loc3_ + 8);
                                                               ESP = _loc3_;
                                                               Fmemset();
                                                               _loc3_ = int(_loc3_ + 16);
                                                            }
                                                            si32(_loc11_,_loc7_ - 48);
                                                            si32(_loc1_,_loc7_ - 12);
                                                            _loc15_ = li32(_loc7_ - 4);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc3_ = int(_loc3_ - 16);
                                                         si32(_loc14_,_loc3_ + 4);
                                                         si32(_loc15_,_loc3_);
                                                         ESP = _loc3_;
                                                         F_realloc();
                                                         _loc14_ = -1;
                                                         _loc3_ = int(_loc3_ + 16);
                                                         _loc11_ = int(eax);
                                                         if(_loc11_ != 0)
                                                         {
                                                            §§goto(addr4107);
                                                         }
                                                      }
                                                   }
                                                   _loc9_ = li32(_loc7_ - 8);
                                                   if(_loc15_ > _loc9_)
                                                   {
                                                      si32(_loc15_,_loc7_ - 8);
                                                   }
                                                   _loc9_ = _loc15_ << 2;
                                                   _loc5_ = li32(_loc7_ - 48);
                                                   _loc9_ = int(_loc5_ + _loc9_);
                                                   si32(1,_loc9_);
                                                   _loc15_ = int(_loc15_ + 1);
                                                   si32(_loc15_,_loc7_ - 4);
                                                }
                                                else
                                                {
                                                   _loc13_ = li32(_loc7_ - 12);
                                                   if((_loc13_ & 8192) != 0)
                                                   {
                                                      if(_loc15_ >= _loc13_)
                                                      {
                                                         _loc12_ = _loc13_ << 1;
                                                         _loc15_ = int(_loc15_ + 1);
                                                         _loc1_ = _loc15_;
                                                         if(_loc15_ <= _loc12_)
                                                         {
                                                            _loc1_ = _loc12_;
                                                         }
                                                         _loc14_ = _loc1_ << 2;
                                                         _loc8_ = li32(_loc7_ - 48);
                                                         if(_loc13_ == 8)
                                                         {
                                                            _loc3_ = int(_loc3_ - 16);
                                                            si32(_loc14_,_loc3_);
                                                            ESP = _loc3_;
                                                            F_malloc();
                                                            _loc14_ = -1;
                                                            _loc3_ = int(_loc3_ + 16);
                                                            _loc11_ = int(eax);
                                                            if(_loc11_ != 0)
                                                            {
                                                               _loc3_ = int(_loc3_ - 16);
                                                               si32(_loc11_,_loc3_ + 4);
                                                               si32(_loc8_,_loc3_);
                                                               _loc9_ = _loc13_ << 2;
                                                               si32(_loc9_,_loc3_ + 8);
                                                               ESP = _loc3_;
                                                               F_bcopy();
                                                               _loc3_ = int(_loc3_ + 16);
                                                               addr4365:
                                                               if(_loc13_ < _loc1_)
                                                               {
                                                                  _loc3_ = int(_loc3_ - 16);
                                                                  si32(0,_loc3_ + 4);
                                                                  _loc9_ = int(_loc11_ + (_loc13_ << 2));
                                                                  si32(_loc9_,_loc3_);
                                                                  if(_loc12_ <= _loc15_)
                                                                  {
                                                                     _loc12_ = _loc15_;
                                                                  }
                                                                  _loc9_ = int(_loc12_ - _loc13_);
                                                                  _loc9_ = _loc9_ << 2;
                                                                  si32(_loc9_,_loc3_ + 8);
                                                                  ESP = _loc3_;
                                                                  Fmemset();
                                                                  _loc3_ = int(_loc3_ + 16);
                                                               }
                                                               si32(_loc11_,_loc7_ - 48);
                                                               si32(_loc1_,_loc7_ - 12);
                                                               _loc15_ = li32(_loc7_ - 4);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc3_ = int(_loc3_ - 16);
                                                            si32(_loc14_,_loc3_ + 4);
                                                            si32(_loc8_,_loc3_);
                                                            ESP = _loc3_;
                                                            F_realloc();
                                                            _loc14_ = -1;
                                                            _loc3_ = int(_loc3_ + 16);
                                                            _loc11_ = int(eax);
                                                            if(_loc11_ != 0)
                                                            {
                                                               §§goto(addr4365);
                                                            }
                                                         }
                                                      }
                                                      _loc9_ = li32(_loc7_ - 8);
                                                      if(_loc15_ > _loc9_)
                                                      {
                                                         si32(_loc15_,_loc7_ - 8);
                                                      }
                                                      _loc9_ = _loc15_ << 2;
                                                      _loc5_ = li32(_loc7_ - 48);
                                                      _loc9_ = int(_loc5_ + _loc9_);
                                                      si32(21,_loc9_);
                                                      _loc15_ = int(_loc15_ + 1);
                                                      si32(_loc15_,_loc7_ - 4);
                                                   }
                                                   else
                                                   {
                                                      if(_loc15_ >= _loc13_)
                                                      {
                                                         _loc12_ = _loc13_ << 1;
                                                         _loc15_ = int(_loc15_ + 1);
                                                         _loc1_ = _loc15_;
                                                         if(_loc15_ <= _loc12_)
                                                         {
                                                            _loc1_ = _loc12_;
                                                         }
                                                         _loc14_ = _loc1_ << 2;
                                                         _loc8_ = li32(_loc7_ - 48);
                                                         if(_loc13_ == 8)
                                                         {
                                                            _loc3_ = int(_loc3_ - 16);
                                                            si32(_loc14_,_loc3_);
                                                            ESP = _loc3_;
                                                            F_malloc();
                                                            _loc14_ = -1;
                                                            _loc3_ = int(_loc3_ + 16);
                                                            _loc11_ = int(eax);
                                                            if(_loc11_ != 0)
                                                            {
                                                               _loc3_ = int(_loc3_ - 16);
                                                               si32(_loc11_,_loc3_ + 4);
                                                               si32(_loc8_,_loc3_);
                                                               _loc9_ = _loc13_ << 2;
                                                               si32(_loc9_,_loc3_ + 8);
                                                               ESP = _loc3_;
                                                               F_bcopy();
                                                               _loc3_ = int(_loc3_ + 16);
                                                               addr4612:
                                                               if(_loc13_ < _loc1_)
                                                               {
                                                                  _loc3_ = int(_loc3_ - 16);
                                                                  si32(0,_loc3_ + 4);
                                                                  _loc9_ = int(_loc11_ + (_loc13_ << 2));
                                                                  si32(_loc9_,_loc3_);
                                                                  if(_loc12_ <= _loc15_)
                                                                  {
                                                                     _loc12_ = _loc15_;
                                                                  }
                                                                  _loc9_ = int(_loc12_ - _loc13_);
                                                                  _loc9_ = _loc9_ << 2;
                                                                  si32(_loc9_,_loc3_ + 8);
                                                                  ESP = _loc3_;
                                                                  Fmemset();
                                                                  _loc3_ = int(_loc3_ + 16);
                                                               }
                                                               si32(_loc11_,_loc7_ - 48);
                                                               si32(_loc1_,_loc7_ - 12);
                                                               _loc15_ = li32(_loc7_ - 4);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc3_ = int(_loc3_ - 16);
                                                            si32(_loc14_,_loc3_ + 4);
                                                            si32(_loc8_,_loc3_);
                                                            ESP = _loc3_;
                                                            F_realloc();
                                                            _loc14_ = -1;
                                                            _loc3_ = int(_loc3_ + 16);
                                                            _loc11_ = int(eax);
                                                            if(_loc11_ != 0)
                                                            {
                                                               §§goto(addr4612);
                                                            }
                                                         }
                                                      }
                                                      _loc9_ = li32(_loc7_ - 8);
                                                      if(_loc15_ > _loc9_)
                                                      {
                                                         si32(_loc15_,_loc7_ - 8);
                                                      }
                                                      _loc9_ = _loc15_ << 2;
                                                      _loc5_ = li32(_loc7_ - 48);
                                                      _loc9_ = int(_loc5_ + _loc9_);
                                                      si32(4,_loc9_);
                                                      _loc15_ = int(_loc15_ + 1);
                                                      si32(_loc15_,_loc7_ - 4);
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
                           else if(_loc14_ != 112)
                           {
                              if(_loc14_ != 113)
                              {
                                 §§goto(addr6096);
                              }
                              else
                              {
                                 _loc13_ = _loc13_ | 32;
                                 continue loop1;
                              }
                           }
                           else
                           {
                              _loc12_ = li32(_loc7_ - 12);
                              if(_loc15_ >= _loc12_)
                              {
                                 _loc13_ = _loc12_ << 1;
                                 _loc1_ = int(_loc15_ + 1);
                                 _loc8_ = _loc1_;
                                 if(_loc1_ <= _loc13_)
                                 {
                                    _loc8_ = _loc13_;
                                 }
                                 _loc14_ = _loc8_ << 2;
                                 _loc15_ = li32(_loc7_ - 48);
                                 if(_loc12_ == 8)
                                 {
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_loc14_,_loc3_);
                                    ESP = _loc3_;
                                    F_malloc();
                                    _loc14_ = -1;
                                    _loc3_ = int(_loc3_ + 16);
                                    _loc11_ = int(eax);
                                    if(_loc11_ != 0)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_loc11_,_loc3_ + 4);
                                       si32(_loc15_,_loc3_);
                                       _loc9_ = _loc12_ << 2;
                                       si32(_loc9_,_loc3_ + 8);
                                       ESP = _loc3_;
                                       F_bcopy();
                                       _loc3_ = int(_loc3_ + 16);
                                       addr5287:
                                       if(_loc12_ < _loc8_)
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(0,_loc3_ + 4);
                                          _loc9_ = int(_loc11_ + (_loc12_ << 2));
                                          si32(_loc9_,_loc3_);
                                          if(_loc13_ <= _loc1_)
                                          {
                                             _loc13_ = _loc1_;
                                          }
                                          _loc9_ = int(_loc13_ - _loc12_);
                                          _loc9_ = _loc9_ << 2;
                                          si32(_loc9_,_loc3_ + 8);
                                          ESP = _loc3_;
                                          Fmemset();
                                          _loc3_ = int(_loc3_ + 16);
                                       }
                                       si32(_loc11_,_loc7_ - 48);
                                       si32(_loc8_,_loc7_ - 12);
                                       _loc15_ = li32(_loc7_ - 4);
                                    }
                                 }
                                 else
                                 {
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_loc14_,_loc3_ + 4);
                                    si32(_loc15_,_loc3_);
                                    ESP = _loc3_;
                                    F_realloc();
                                    _loc14_ = -1;
                                    _loc3_ = int(_loc3_ + 16);
                                    _loc11_ = int(eax);
                                    if(_loc11_ != 0)
                                    {
                                       §§goto(addr5287);
                                    }
                                 }
                              }
                              _loc9_ = li32(_loc7_ - 8);
                              if(_loc15_ > _loc9_)
                              {
                                 si32(_loc15_,_loc7_ - 8);
                              }
                              _loc5_ = _loc15_ << 2;
                              _loc9_ = li32(_loc7_ - 48);
                              _loc9_ = int(_loc9_ + _loc5_);
                              si32(19,_loc9_);
                              _loc15_ = int(_loc15_ + 1);
                              si32(_loc15_,_loc7_ - 4);
                              continue loop0;
                           }
                        }
                        else if(_loc14_ <= 116)
                        {
                           if(_loc14_ != 115)
                           {
                              if(_loc14_ != 116)
                              {
                                 §§goto(addr6096);
                              }
                              else
                              {
                                 _loc13_ = _loc13_ | 2048;
                                 continue loop1;
                              }
                           }
                           else
                           {
                              §§goto(addr5409);
                           }
                        }
                        else if(_loc14_ != 117)
                        {
                           if(_loc14_ != 120)
                           {
                              if(_loc14_ != 122)
                              {
                                 §§goto(addr6096);
                              }
                              else
                              {
                                 _loc13_ = _loc13_ | 1024;
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr6132);
                     }
                     _loc8_ = li32(_loc7_ - 12);
                     if(_loc15_ >= _loc8_)
                     {
                        _loc12_ = _loc8_ << 1;
                        _loc11_ = int(_loc15_ + 1);
                        _loc15_ = _loc11_;
                        if(_loc11_ <= _loc12_)
                        {
                           _loc15_ = _loc12_;
                        }
                        _loc14_ = _loc15_ << 2;
                        _loc1_ = li32(_loc7_ - 48);
                        if(_loc8_ == 8)
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc14_,_loc3_);
                           ESP = _loc3_;
                           F_malloc();
                           _loc14_ = -1;
                           _loc3_ = int(_loc3_ + 16);
                           _loc10_ = int(eax);
                           if(_loc10_ != 0)
                           {
                              _loc3_ = int(_loc3_ - 16);
                              si32(_loc10_,_loc3_ + 4);
                              si32(_loc1_,_loc3_);
                              _loc9_ = _loc8_ << 2;
                              si32(_loc9_,_loc3_ + 8);
                              ESP = _loc3_;
                              F_bcopy();
                              _loc3_ = int(_loc3_ + 16);
                              addr5813:
                              if(_loc8_ < _loc15_)
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(0,_loc3_ + 4);
                                 _loc9_ = int(_loc10_ + (_loc8_ << 2));
                                 si32(_loc9_,_loc3_);
                                 if(_loc12_ <= _loc11_)
                                 {
                                    _loc12_ = _loc11_;
                                 }
                                 _loc9_ = int(_loc12_ - _loc8_);
                                 _loc9_ = _loc9_ << 2;
                                 si32(_loc9_,_loc3_ + 8);
                                 ESP = _loc3_;
                                 Fmemset();
                                 _loc3_ = int(_loc3_ + 16);
                              }
                              si32(_loc10_,_loc7_ - 48);
                              si32(_loc15_,_loc7_ - 12);
                              _loc15_ = li32(_loc7_ - 4);
                           }
                        }
                        else
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc14_,_loc3_ + 4);
                           si32(_loc1_,_loc3_);
                           ESP = _loc3_;
                           F_realloc();
                           _loc14_ = -1;
                           _loc3_ = int(_loc3_ + 16);
                           _loc10_ = int(eax);
                           if(_loc10_ != 0)
                           {
                              §§goto(addr5813);
                           }
                        }
                        §§goto(addr6132);
                     }
                     _loc9_ = li32(_loc7_ - 8);
                     if(_loc15_ > _loc9_)
                     {
                        si32(_loc15_,_loc7_ - 8);
                     }
                     _loc9_ = _loc13_ & 4096;
                     if(_loc9_ != 0)
                     {
                        _loc5_ = li32(_loc7_ - 48);
                        si32(17,int(_loc5_ + (_loc15_ << 2)));
                        _loc15_ = int(_loc15_ + 1);
                        si32(_loc15_,_loc7_ - 4);
                     }
                     else
                     {
                        _loc9_ = _loc13_ & 1024;
                        if(_loc9_ != 0)
                        {
                           _loc5_ = li32(_loc7_ - 48);
                           si32(14,int(_loc5_ + (_loc15_ << 2)));
                           _loc15_ = int(_loc15_ + 1);
                           si32(_loc15_,_loc7_ - 4);
                        }
                        else
                        {
                           _loc9_ = _loc13_ & 2048;
                           if(_loc9_ != 0)
                           {
                              _loc9_ = li32(_loc7_ - 48);
                              si32(14,int(_loc9_ + (_loc15_ << 2)));
                              _loc15_ = int(_loc15_ + 1);
                              si32(_loc15_,_loc7_ - 4);
                           }
                           else
                           {
                              _loc9_ = _loc13_ & 32;
                              if(_loc9_ != 0)
                              {
                                 _loc9_ = li32(_loc7_ - 48);
                                 si32(9,int(_loc9_ + (_loc15_ << 2)));
                                 _loc15_ = int(_loc15_ + 1);
                                 si32(_loc15_,_loc7_ - 4);
                              }
                              else
                              {
                                 _loc14_ = li32(_loc7_ - 48);
                                 if((_loc13_ & 16) != 0)
                                 {
                                    si32(6,int(_loc14_ + (_loc15_ << 2)));
                                    _loc15_ = int(_loc15_ + 1);
                                    si32(_loc15_,_loc7_ - 4);
                                 }
                                 else
                                 {
                                    si32(3,int(_loc14_ + (_loc15_ << 2)));
                                    _loc15_ = int(_loc15_ + 1);
                                    si32(_loc15_,_loc7_ - 4);
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
                  if(_loc14_ <= 38)
                  {
                     if(_loc14_ != 32)
                     {
                        if(_loc14_ == 35)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        continue;
                     }
                  }
                  else if(_loc14_ != 39)
                  {
                     if(_loc14_ == 42)
                     {
                        _loc1_ = li32(_loc16_);
                        _loc8_ = int(_loc1_ + -48);
                        _loc14_ = 0;
                        _loc12_ = _loc16_;
                        if(uint(_loc8_) <= 9)
                        {
                           do
                           {
                              _loc9_ = int(_loc14_ * 10);
                              _loc14_ = int(_loc9_ + _loc8_);
                              _loc9_ = int(_loc12_ + 4);
                              _loc1_ = li32(_loc12_ + 4);
                              _loc8_ = int(_loc1_ + -48);
                              _loc12_ = _loc9_;
                           }
                           while(uint(_loc8_) < 10);
                           
                        }
                        if(_loc1_ == 36)
                        {
                           si32(_loc14_,_loc7_ - 4);
                           _loc8_ = li32(_loc7_ - 12);
                           if(_loc14_ >= _loc8_)
                           {
                              _loc16_ = _loc8_ << 1;
                              _loc1_ = int(_loc14_ + 1);
                              _loc10_ = _loc1_;
                              if(_loc1_ <= _loc16_)
                              {
                                 _loc10_ = _loc16_;
                              }
                              _loc14_ = _loc10_ << 2;
                              _loc11_ = li32(_loc7_ - 48);
                              if(_loc8_ == 8)
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc14_,_loc3_);
                                 ESP = _loc3_;
                                 F_malloc();
                                 _loc14_ = -1;
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc2_ = eax;
                                 if(_loc2_ != 0)
                                 {
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_loc2_,_loc3_ + 4);
                                    si32(_loc11_,_loc3_);
                                    _loc9_ = _loc8_ << 2;
                                    si32(_loc9_,_loc3_ + 8);
                                    ESP = _loc3_;
                                    F_bcopy();
                                    _loc3_ = int(_loc3_ + 16);
                                    addr590:
                                    if(_loc8_ < _loc10_)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(0,_loc3_ + 4);
                                       _loc9_ = int(_loc2_ + (_loc8_ << 2));
                                       si32(_loc9_,_loc3_);
                                       if(_loc16_ <= _loc1_)
                                       {
                                          _loc16_ = _loc1_;
                                       }
                                       _loc9_ = int(_loc16_ - _loc8_);
                                       _loc9_ = _loc9_ << 2;
                                       si32(_loc9_,_loc3_ + 8);
                                       ESP = _loc3_;
                                       Fmemset();
                                       _loc3_ = int(_loc3_ + 16);
                                    }
                                    si32(_loc2_,_loc7_ - 48);
                                    si32(_loc10_,_loc7_ - 12);
                                    _loc14_ = li32(_loc7_ - 4);
                                 }
                              }
                              else
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc14_,_loc3_ + 4);
                                 si32(_loc11_,_loc3_);
                                 ESP = _loc3_;
                                 F_realloc();
                                 _loc14_ = -1;
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc2_ = eax;
                                 if(_loc2_ != 0)
                                 {
                                    §§goto(addr590);
                                 }
                              }
                           }
                           _loc9_ = li32(_loc7_ - 8);
                           if(_loc14_ > _loc9_)
                           {
                              si32(_loc14_,_loc7_ - 8);
                           }
                           _loc9_ = _loc14_ << 2;
                           _loc5_ = li32(_loc7_ - 48);
                           _loc9_ = int(_loc5_ + _loc9_);
                           si32(2,_loc9_);
                           si32(_loc15_,_loc7_ - 4);
                           _loc16_ = int(_loc12_ + 4);
                        }
                        else
                        {
                           _loc12_ = li32(_loc7_ - 12);
                           if(_loc15_ >= _loc12_)
                           {
                              _loc8_ = _loc12_ << 1;
                              _loc15_ = int(_loc15_ + 1);
                              _loc11_ = _loc15_;
                              if(_loc15_ <= _loc8_)
                              {
                                 _loc11_ = _loc8_;
                              }
                              _loc14_ = _loc11_ << 2;
                              _loc1_ = li32(_loc7_ - 48);
                              if(_loc12_ == 8)
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc14_,_loc3_);
                                 ESP = _loc3_;
                                 F_malloc();
                                 _loc14_ = -1;
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc10_ = int(eax);
                                 if(_loc10_ != 0)
                                 {
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_loc10_,_loc3_ + 4);
                                    si32(_loc1_,_loc3_);
                                    _loc9_ = _loc12_ << 2;
                                    si32(_loc9_,_loc3_ + 8);
                                    ESP = _loc3_;
                                    F_bcopy();
                                    _loc3_ = int(_loc3_ + 16);
                                    addr842:
                                    if(_loc12_ < _loc11_)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(0,_loc3_ + 4);
                                       _loc9_ = int(_loc10_ + (_loc12_ << 2));
                                       si32(_loc9_,_loc3_);
                                       if(_loc8_ <= _loc15_)
                                       {
                                          _loc8_ = _loc15_;
                                       }
                                       _loc9_ = int(_loc8_ - _loc12_);
                                       _loc9_ = _loc9_ << 2;
                                       si32(_loc9_,_loc3_ + 8);
                                       ESP = _loc3_;
                                       Fmemset();
                                       _loc3_ = int(_loc3_ + 16);
                                    }
                                    si32(_loc10_,_loc7_ - 48);
                                    si32(_loc11_,_loc7_ - 12);
                                    _loc15_ = li32(_loc7_ - 4);
                                 }
                              }
                              else
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc14_,_loc3_ + 4);
                                 si32(_loc1_,_loc3_);
                                 ESP = _loc3_;
                                 F_realloc();
                                 _loc14_ = -1;
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc10_ = int(eax);
                                 if(_loc10_ != 0)
                                 {
                                    §§goto(addr842);
                                 }
                              }
                           }
                           _loc9_ = li32(_loc7_ - 8);
                           if(_loc15_ > _loc9_)
                           {
                              si32(_loc15_,_loc7_ - 8);
                           }
                           _loc9_ = _loc15_ << 2;
                           _loc5_ = li32(_loc7_ - 48);
                           _loc9_ = int(_loc5_ + _loc9_);
                           si32(2,_loc9_);
                           _loc15_ = int(_loc15_ + 1);
                           si32(_loc15_,_loc7_ - 4);
                        }
                        continue;
                        §§goto(addr6132);
                     }
                  }
                  else
                  {
                     continue;
                  }
                  §§goto(addr6096);
               }
               _loc8_ = li32(_loc7_ - 12);
               if(_loc15_ >= _loc8_)
               {
                  _loc12_ = _loc8_ << 1;
                  _loc15_ = int(_loc15_ + 1);
                  _loc11_ = _loc15_;
                  if(_loc15_ <= _loc12_)
                  {
                     _loc11_ = _loc12_;
                  }
                  _loc14_ = _loc11_ << 2;
                  _loc1_ = li32(_loc7_ - 48);
                  if(_loc8_ == 8)
                  {
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc14_,_loc3_);
                     ESP = _loc3_;
                     F_malloc();
                     _loc14_ = -1;
                     _loc3_ = int(_loc3_ + 16);
                     _loc10_ = int(eax);
                     if(_loc10_ != 0)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(_loc10_,_loc3_ + 4);
                        si32(_loc1_,_loc3_);
                        _loc9_ = _loc8_ << 2;
                        si32(_loc9_,_loc3_ + 8);
                        ESP = _loc3_;
                        F_bcopy();
                        _loc3_ = int(_loc3_ + 16);
                        addr2116:
                        if(_loc8_ < _loc11_)
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(0,_loc3_ + 4);
                           _loc9_ = int(_loc10_ + (_loc8_ << 2));
                           si32(_loc9_,_loc3_);
                           if(_loc12_ <= _loc15_)
                           {
                              _loc12_ = _loc15_;
                           }
                           _loc9_ = int(_loc12_ - _loc8_);
                           _loc9_ = _loc9_ << 2;
                           si32(_loc9_,_loc3_ + 8);
                           ESP = _loc3_;
                           Fmemset();
                           _loc3_ = int(_loc3_ + 16);
                        }
                        si32(_loc10_,_loc7_ - 48);
                        si32(_loc11_,_loc7_ - 12);
                        _loc15_ = li32(_loc7_ - 4);
                     }
                  }
                  else
                  {
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc14_,_loc3_ + 4);
                     si32(_loc1_,_loc3_);
                     ESP = _loc3_;
                     F_realloc();
                     _loc14_ = -1;
                     _loc3_ = int(_loc3_ + 16);
                     _loc10_ = int(eax);
                     if(_loc10_ != 0)
                     {
                        §§goto(addr2116);
                     }
                  }
                  §§goto(addr6132);
               }
               _loc9_ = li32(_loc7_ - 8);
               if(_loc15_ > _loc9_)
               {
                  si32(_loc15_,_loc7_ - 8);
               }
               _loc9_ = _loc13_ & 4096;
               if(_loc9_ != 0)
               {
                  _loc9_ = li32(_loc7_ - 48);
                  si32(16,int(_loc9_ + (_loc15_ << 2)));
                  _loc15_ = int(_loc15_ + 1);
                  si32(_loc15_,_loc7_ - 4);
               }
               else
               {
                  _loc9_ = _loc13_ & 1024;
                  if(_loc9_ != 0)
                  {
                     _loc5_ = li32(_loc7_ - 48);
                     si32(13,int(_loc5_ + (_loc15_ << 2)));
                     _loc15_ = int(_loc15_ + 1);
                     si32(_loc15_,_loc7_ - 4);
                  }
                  else
                  {
                     _loc9_ = _loc13_ & 2048;
                     if(_loc9_ != 0)
                     {
                        _loc9_ = li32(_loc7_ - 48);
                        si32(11,int(_loc9_ + (_loc15_ << 2)));
                        _loc15_ = int(_loc15_ + 1);
                        si32(_loc15_,_loc7_ - 4);
                     }
                     else
                     {
                        _loc9_ = _loc13_ & 32;
                        if(_loc9_ != 0)
                        {
                           _loc5_ = li32(_loc7_ - 48);
                           si32(8,int(_loc5_ + (_loc15_ << 2)));
                           _loc15_ = int(_loc15_ + 1);
                           si32(_loc15_,_loc7_ - 4);
                        }
                        else
                        {
                           _loc14_ = li32(_loc7_ - 48);
                           if((_loc13_ & 16) != 0)
                           {
                              si32(5,int(_loc14_ + (_loc15_ << 2)));
                              _loc15_ = int(_loc15_ + 1);
                              si32(_loc15_,_loc7_ - 4);
                           }
                           else
                           {
                              si32(2,int(_loc14_ + (_loc15_ << 2)));
                              _loc15_ = int(_loc15_ + 1);
                              si32(_loc15_,_loc7_ - 4);
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               _loc16_ = int(_loc16_ + 4);
            }
            continue;
         }
         break;
      }
      _loc3_ = int(_loc3_ - 16);
      si32(_loc18_,_loc3_ + 8);
      si32(_loc17_,_loc3_ + 4);
      si32(_loc4_,_loc3_);
      ESP = _loc3_;
      F_build_arg_table();
      _loc3_ = int(_loc3_ + 16);
      _loc14_ = 0;
      §§goto(addr6132);
   }
}
