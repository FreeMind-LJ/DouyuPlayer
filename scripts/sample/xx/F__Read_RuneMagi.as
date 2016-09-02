package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_une_2E_o_3A_831FC367_2D_7689_2D_4F9D_2D_9F04_2D_995C218CF217.*;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.si32;
   
   public function F__Read_RuneMagi() : void
   {
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc19_:* = 0;
      var _loc16_:* = 0;
      var _loc15_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc18_:* = 0;
      var _loc3_:* = int(ESP);
      _loc8_ = _loc3_;
      _loc3_ = int(_loc3_ - 96);
      _loc4_ = li32(_loc8_);
      var _loc20_:* = li32(___isthreaded);
      if(_loc20_ == 0)
      {
         _loc19_ = si16(li16(_loc4_ + 14));
      }
      else
      {
         _loc3_ = int(_loc3_ - 16);
         si32(_loc4_,_loc3_);
         ESP = _loc3_;
         F_fileno();
         _loc3_ = int(_loc3_ + 16);
         _loc19_ = int(eax);
      }
      _loc3_ = int(_loc3_ - 16);
      _loc20_ = int(_loc8_ - 96);
      si32(_loc20_,_loc3_ + 4);
      si32(_loc19_,_loc3_);
      ESP = _loc3_;
      F__fstat();
      _loc18_ = 0;
      _loc3_ = int(_loc3_ + 16);
      _loc20_ = int(eax);
      if(_loc20_ >= 0)
      {
         _loc19_ = li32(_loc8_ - 48);
         if(uint(_loc19_) <= 3127)
         {
            ESP = _loc3_;
            F___error();
            si32(79,int(eax));
            _loc18_ = 0;
         }
         else
         {
            _loc3_ = int(_loc3_ - 16);
            si32(_loc19_,_loc3_);
            ESP = _loc3_;
            F_malloc();
            _loc18_ = 0;
            _loc3_ = int(_loc3_ + 16);
            _loc19_ = int(eax);
            if(_loc19_ != 0)
            {
               ESP = _loc3_;
               F___error();
               _loc18_ = 0;
               si32(_loc18_,int(eax));
               _loc3_ = int(_loc3_ - 16);
               si32(_loc4_,_loc3_);
               ESP = _loc3_;
               F_rewind();
               _loc3_ = int(_loc3_ + 16);
               ESP = _loc3_;
               F___error();
               _loc20_ = int(eax);
               _loc20_ = li32(_loc20_);
               if(_loc20_ != 0)
               {
                  ESP = _loc3_;
                  F___error();
                  _loc20_ = int(eax);
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc19_,_loc3_);
                  ESP = _loc3_;
                  F_free();
                  _loc3_ = int(_loc3_ + 16);
                  ESP = _loc3_;
                  F___error();
                  si32(li32(_loc20_),int(eax));
               }
               else
               {
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc4_,_loc3_ + 12);
                  si32(1,_loc3_ + 8);
                  si32(li32(_loc8_ - 48),_loc3_ + 4);
                  si32(_loc19_,_loc3_);
                  ESP = _loc3_;
                  F_fread();
                  _loc3_ = int(_loc3_ + 16);
                  _loc20_ = int(eax);
                  if(_loc20_ != 1)
                  {
                     ESP = _loc3_;
                     F___error();
                     _loc20_ = int(eax);
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc19_,_loc3_);
                     ESP = _loc3_;
                     F_free();
                     _loc3_ = int(_loc3_ + 16);
                     ESP = _loc3_;
                     F___error();
                     si32(li32(_loc20_),int(eax));
                     _loc18_ = 0;
                  }
                  else
                  {
                     _loc4_ = li32(_loc8_ - 48);
                     _loc3_ = int(_loc3_ - 16);
                     si32(8,_loc3_ + 8);
                     si32(L__2E_str,_loc3_ + 4);
                     si32(_loc19_,_loc3_);
                     ESP = _loc3_;
                     F_memcmp();
                     _loc3_ = int(_loc3_ + 16);
                     _loc20_ = int(eax);
                     if(_loc20_ != 0)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(_loc19_,_loc3_);
                        ESP = _loc3_;
                        F_free();
                        _loc3_ = int(_loc3_ + 16);
                        ESP = _loc3_;
                        F___error();
                        si32(79,int(eax));
                        _loc18_ = 0;
                     }
                     else
                     {
                        _loc16_ = int(_loc19_ + _loc4_);
                        _loc15_ = int(_loc19_ + 3128);
                        var _loc17_:* = li32(_loc19_ + 3124);
                        var _loc14_:* = int(_loc17_ >>> 8);
                        _loc14_ = _loc14_ & 65280;
                        _loc17_ = _loc17_ << 8;
                        _loc17_ = _loc17_ << 24 | _loc17_ & 16711680;
                        _loc20_ = _loc17_ | (_loc14_ | int(_loc17_ >>> 24));
                        si32(_loc20_,_loc19_ + 3124);
                        _loc17_ = li32(_loc19_ + 3112);
                        _loc14_ = int(_loc17_ >>> 8);
                        _loc14_ = _loc14_ & 65280;
                        _loc17_ = _loc17_ << 8;
                        _loc17_ = _loc17_ << 24 | _loc17_ & 16711680;
                        _loc20_ = _loc17_ | (_loc14_ | int(_loc17_ >>> 24));
                        si32(_loc20_,_loc19_ + 3112);
                        _loc20_ = li32(_loc19_ + 3116);
                        _loc14_ = int(_loc20_ >>> 8);
                        _loc14_ = _loc14_ & 65280;
                        _loc20_ = _loc20_ << 8;
                        _loc20_ = _loc20_ << 24 | _loc20_ & 16711680;
                        _loc20_ = _loc20_ | (_loc14_ | int(_loc20_ >>> 24));
                        si32(_loc20_,_loc19_ + 3116);
                        _loc17_ = li32(_loc19_ + 3120);
                        _loc14_ = int(_loc17_ >>> 8);
                        _loc14_ = _loc14_ & 65280;
                        _loc17_ = _loc17_ << 8;
                        _loc17_ = _loc17_ << 24 | _loc17_ & 16711680;
                        _loc20_ = _loc17_ | (_loc14_ | int(_loc17_ >>> 24));
                        si32(_loc20_,_loc19_ + 3120);
                        _loc4_ = -522;
                        do
                        {
                           _loc20_ = _loc4_ << 2;
                           _loc20_ = int(_loc19_ - _loc20_);
                           _loc17_ = li32(_loc20_ - 2048);
                           _loc14_ = int(_loc17_ >>> 24);
                           var _loc13_:* = int(_loc17_ >>> 8);
                           _loc13_ = _loc13_ & 65280;
                           _loc14_ = _loc13_ | _loc14_;
                           _loc13_ = _loc17_ << 24;
                           _loc17_ = _loc17_ << 8;
                           _loc17_ = _loc17_ & 16711680;
                           _loc17_ = _loc13_ | _loc17_;
                           _loc17_ = _loc17_ | _loc14_;
                           si32(_loc17_,_loc20_ - 2048);
                           _loc17_ = li32(_loc20_ - 1024);
                           _loc14_ = int(_loc17_ >>> 24);
                           _loc13_ = int(_loc17_ >>> 8);
                           _loc13_ = _loc13_ & 65280;
                           _loc14_ = _loc13_ | _loc14_;
                           _loc13_ = _loc17_ << 24;
                           _loc17_ = _loc17_ << 8;
                           _loc17_ = _loc17_ & 16711680;
                           _loc17_ = _loc13_ | _loc17_;
                           _loc17_ = _loc17_ | _loc14_;
                           si32(_loc17_,_loc20_ - 1024);
                           _loc17_ = li32(_loc20_);
                           _loc14_ = int(_loc17_ >>> 24);
                           _loc13_ = int(_loc17_ >>> 8);
                           _loc13_ = _loc13_ & 65280;
                           _loc14_ = _loc13_ | _loc14_;
                           _loc13_ = _loc17_ << 24;
                           _loc17_ = _loc17_ << 8;
                           _loc17_ = _loc17_ & 16711680;
                           _loc17_ = _loc13_ | _loc17_;
                           _loc17_ = _loc17_ | _loc14_;
                           si32(_loc17_,_loc20_);
                           _loc4_ = int(_loc4_ + -1);
                        }
                        while(_loc4_ != -778);
                        
                        _loc1_ = li32(_loc19_ + 3112);
                        _loc4_ = int(_loc1_ * 12);
                        _loc20_ = int(_loc15_ + _loc4_);
                        if(uint(_loc20_) > uint(_loc16_))
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc19_,_loc3_);
                           ESP = _loc3_;
                           F_free();
                           _loc3_ = int(_loc3_ + 16);
                           ESP = _loc3_;
                           F___error();
                           si32(79,int(eax));
                           _loc18_ = 0;
                        }
                        else
                        {
                           _loc9_ = li32(_loc19_ + 3116);
                           _loc10_ = int(_loc9_ + _loc1_);
                           _loc20_ = int(_loc15_ + int(_loc10_ * 12));
                           if(uint(_loc20_) > uint(_loc16_))
                           {
                              _loc3_ = int(_loc3_ - 16);
                              si32(_loc19_,_loc3_);
                              ESP = _loc3_;
                              F_free();
                              _loc3_ = int(_loc3_ + 16);
                              ESP = _loc3_;
                              F___error();
                              si32(79,int(eax));
                              _loc18_ = 0;
                           }
                           else
                           {
                              _loc20_ = li32(_loc19_ + 3120);
                              _loc20_ = int(_loc20_ + _loc10_);
                              _loc11_ = int(_loc15_ + int(_loc20_ * 12));
                              _loc12_ = 0;
                              _loc18_ = _loc12_;
                              if(uint(_loc11_) > uint(_loc16_))
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc19_,_loc3_);
                                 ESP = _loc3_;
                                 F_free();
                                 _loc3_ = int(_loc3_ + 16);
                                 ESP = _loc3_;
                                 F___error();
                                 si32(79,int(eax));
                                 _loc18_ = 0;
                              }
                              else
                              {
                                 while(true)
                                 {
                                    _loc7_ = _loc11_;
                                    if(_loc1_ <= _loc12_)
                                    {
                                       _loc20_ = li32(_loc19_ + 3116);
                                       if(_loc20_ >= 1)
                                       {
                                          _loc12_ = int(_loc19_ + _loc4_);
                                          _loc11_ = 0;
                                          do
                                          {
                                             _loc20_ = int(_loc11_ * 3);
                                             _loc20_ = _loc20_ << 2;
                                             _loc20_ = int(_loc12_ + _loc20_);
                                             _loc14_ = li32(_loc20_ + 3128);
                                             _loc17_ = int(_loc14_ >>> 24);
                                             _loc13_ = int(_loc14_ >>> 8);
                                             _loc13_ = _loc13_ & 65280;
                                             _loc17_ = _loc13_ | _loc17_;
                                             _loc13_ = _loc14_ << 24;
                                             _loc14_ = _loc14_ << 8;
                                             _loc14_ = _loc14_ & 16711680;
                                             _loc14_ = _loc13_ | _loc14_;
                                             _loc17_ = _loc14_ | _loc17_;
                                             si32(_loc17_,_loc20_ + 3128);
                                             _loc17_ = li32(_loc20_ + 3132);
                                             _loc14_ = int(_loc17_ >>> 24);
                                             _loc13_ = int(_loc17_ >>> 8);
                                             _loc13_ = _loc13_ & 65280;
                                             _loc14_ = _loc13_ | _loc14_;
                                             _loc13_ = _loc17_ << 24;
                                             _loc17_ = _loc17_ << 8;
                                             _loc17_ = _loc17_ & 16711680;
                                             _loc17_ = _loc13_ | _loc17_;
                                             _loc17_ = _loc17_ | _loc14_;
                                             si32(_loc17_,_loc20_ + 3132);
                                             _loc17_ = li32(_loc20_ + 3136);
                                             _loc14_ = int(_loc17_ >>> 24);
                                             _loc13_ = int(_loc17_ >>> 8);
                                             _loc13_ = _loc13_ & 65280;
                                             _loc14_ = _loc13_ | _loc14_;
                                             _loc13_ = _loc17_ << 24;
                                             _loc17_ = _loc17_ << 8;
                                             _loc17_ = _loc17_ & 16711680;
                                             _loc17_ = _loc13_ | _loc17_;
                                             _loc17_ = _loc17_ | _loc14_;
                                             si32(_loc17_,_loc20_ + 3136);
                                             _loc11_ = int(_loc11_ + 1);
                                             _loc20_ = li32(_loc19_ + 3116);
                                          }
                                          while(_loc20_ > _loc11_);
                                          
                                       }
                                       _loc12_ = li32(_loc19_ + 3120);
                                       if(_loc12_ >= 1)
                                       {
                                          _loc20_ = int(_loc4_ + int(_loc9_ * 12));
                                          _loc20_ = int(_loc20_ + _loc19_);
                                          _loc1_ = int(_loc20_ + 3136);
                                          _loc11_ = 0;
                                          do
                                          {
                                             _loc20_ = int(_loc11_ * 3);
                                             _loc20_ = _loc20_ << 2;
                                             _loc20_ = int(_loc1_ + _loc20_);
                                             _loc14_ = li32(_loc20_ - 8);
                                             _loc17_ = int(_loc14_ >>> 24);
                                             _loc13_ = int(_loc14_ >>> 8);
                                             _loc13_ = _loc13_ & 65280;
                                             _loc17_ = _loc13_ | _loc17_;
                                             _loc13_ = _loc14_ << 24;
                                             _loc14_ = _loc14_ << 8;
                                             _loc14_ = _loc14_ & 16711680;
                                             _loc14_ = _loc13_ | _loc14_;
                                             _loc17_ = _loc14_ | _loc17_;
                                             si32(_loc17_,_loc20_ - 8);
                                             _loc14_ = li32(_loc20_ - 4);
                                             _loc17_ = int(_loc14_ >>> 24);
                                             _loc13_ = int(_loc14_ >>> 8);
                                             _loc13_ = _loc13_ & 65280;
                                             _loc17_ = _loc13_ | _loc17_;
                                             _loc13_ = _loc14_ << 24;
                                             _loc14_ = _loc14_ << 8;
                                             _loc14_ = _loc14_ & 16711680;
                                             _loc14_ = _loc13_ | _loc14_;
                                             _loc17_ = _loc14_ | _loc17_;
                                             si32(_loc17_,_loc20_ - 4);
                                             _loc14_ = li32(_loc20_);
                                             _loc17_ = int(_loc14_ >>> 24);
                                             _loc13_ = int(_loc14_ >>> 8);
                                             _loc13_ = _loc13_ & 65280;
                                             _loc17_ = _loc13_ | _loc17_;
                                             _loc13_ = _loc14_ << 24;
                                             _loc14_ = _loc14_ << 8;
                                             _loc14_ = _loc14_ & 16711680;
                                             _loc14_ = _loc13_ | _loc14_;
                                             _loc17_ = _loc14_ | _loc17_;
                                             si32(_loc17_,_loc20_);
                                             _loc11_ = int(_loc11_ + 1);
                                             _loc12_ = li32(_loc19_ + 3120);
                                          }
                                          while(_loc12_ > _loc11_);
                                          
                                       }
                                       _loc11_ = li32(_loc19_ + 3124);
                                       _loc20_ = int(_loc7_ + _loc11_);
                                       if(uint(_loc20_) > uint(_loc16_))
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc19_,_loc3_);
                                          ESP = _loc3_;
                                          F_free();
                                          _loc3_ = int(_loc3_ + 16);
                                          ESP = _loc3_;
                                          F___error();
                                          si32(79,int(eax));
                                          _loc18_ = 0;
                                          break;
                                       }
                                       _loc7_ = li32(_loc19_ + 3112);
                                       _loc1_ = li32(_loc19_ + 3116);
                                       _loc20_ = int(int(_loc7_ + _loc12_) + _loc1_);
                                       _loc20_ = _loc20_ << 2;
                                       _loc20_ = int(_loc20_ + _loc18_);
                                       _loc20_ = int(_loc11_ + (_loc20_ << 2));
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(int(_loc20_ + 3156),_loc3_);
                                       ESP = _loc3_;
                                       F_malloc();
                                       _loc3_ = int(_loc3_ + 16);
                                       _loc18_ = int(eax);
                                       if(_loc18_ == 0)
                                       {
                                          ESP = _loc3_;
                                          F___error();
                                          _loc20_ = int(eax);
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc19_,_loc3_);
                                          ESP = _loc3_;
                                          F_free();
                                          _loc3_ = int(_loc3_ + 16);
                                          ESP = _loc3_;
                                          F___error();
                                          si32(li32(_loc20_),int(eax));
                                          _loc18_ = 0;
                                          break;
                                       }
                                       si32(1768382797,_loc18_ + 4);
                                       si32(1701737810,_loc18_);
                                       _loc20_ = li32(_loc19_ + 36);
                                       si32(_loc20_,_loc18_ + 36);
                                       _loc20_ = li32(_loc19_ + 32);
                                       si32(_loc20_,_loc18_ + 32);
                                       _loc20_ = li32(_loc19_ + 28);
                                       si32(_loc20_,_loc18_ + 28);
                                       _loc20_ = li32(_loc19_ + 24);
                                       si32(_loc20_,_loc18_ + 24);
                                       _loc20_ = li32(_loc19_ + 20);
                                       si32(_loc20_,_loc18_ + 20);
                                       _loc20_ = li32(_loc19_ + 16);
                                       si32(_loc20_,_loc18_ + 16);
                                       _loc20_ = li32(_loc19_ + 12);
                                       si32(_loc20_,_loc18_ + 12);
                                       _loc20_ = li32(_loc19_ + 8);
                                       si32(_loc20_,_loc18_ + 8);
                                       si32(0,_loc18_ + 48);
                                       si32(_loc11_,_loc18_ + 3152);
                                       si32(_loc7_,_loc18_ + 3124);
                                       si32(_loc1_,_loc18_ + 3132);
                                       si32(_loc12_,_loc18_ + 3140);
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(1024,_loc3_ + 8);
                                       _loc20_ = int(_loc19_ + 40);
                                       si32(_loc20_,_loc3_ + 4);
                                       _loc20_ = int(_loc18_ + 52);
                                       si32(_loc20_,_loc3_);
                                       ESP = _loc3_;
                                       Fmemcpy();
                                       _loc3_ = int(_loc3_ + 16);
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(1024,_loc3_ + 8);
                                       _loc20_ = int(_loc19_ + 1064);
                                       si32(_loc20_,_loc3_ + 4);
                                       _loc20_ = int(_loc18_ + 1076);
                                       si32(_loc20_,_loc3_);
                                       ESP = _loc3_;
                                       Fmemcpy();
                                       _loc3_ = int(_loc3_ + 16);
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(1024,_loc3_ + 8);
                                       _loc20_ = int(_loc19_ + 2088);
                                       si32(_loc20_,_loc3_ + 4);
                                       _loc20_ = int(_loc18_ + 2100);
                                       si32(_loc20_,_loc3_);
                                       ESP = _loc3_;
                                       Fmemcpy();
                                       _loc3_ = int(_loc3_ + 16);
                                       _loc20_ = int(_loc18_ + 3156);
                                       si32(_loc20_,_loc18_ + 3128);
                                       _loc16_ = int(_loc20_ + (_loc7_ << 4));
                                       si32(_loc16_,_loc18_ + 3136);
                                       _loc17_ = int(_loc1_ + _loc7_);
                                       _loc14_ = int(_loc20_ + (_loc17_ << 4));
                                       si32(_loc14_,_loc18_ + 3144);
                                       _loc17_ = int(_loc17_ + _loc12_);
                                       _loc20_ = int(_loc20_ + (_loc17_ << 4));
                                       si32(_loc20_,_loc18_ + 3148);
                                       _loc20_ = int(_loc12_ + _loc10_);
                                       _loc15_ = int(_loc15_ + int(_loc20_ * 12));
                                       if(_loc7_ >= 1)
                                       {
                                          _loc16_ = 0;
                                          do
                                          {
                                             _loc10_ = _loc15_;
                                             _loc20_ = _loc16_ << 4;
                                             _loc20_ = int(_loc18_ + _loc20_);
                                             _loc17_ = int(_loc16_ * 3);
                                             _loc17_ = _loc17_ << 2;
                                             _loc17_ = int(_loc19_ + _loc17_);
                                             _loc11_ = li32(_loc17_ + 3128);
                                             si32(_loc11_,_loc20_ + 3156);
                                             _loc15_ = li32(_loc17_ + 3132);
                                             si32(_loc15_,_loc20_ + 3160);
                                             _loc17_ = li32(_loc17_ + 3136);
                                             si32(_loc17_,_loc20_ + 3164);
                                             _loc7_ = _loc16_ << 2;
                                             _loc16_ = int(_loc16_ + 1);
                                             if(_loc17_ == 0)
                                             {
                                                _loc12_ = int(_loc18_ + (_loc7_ << 2));
                                                _loc7_ = li32(_loc18_ + 3148);
                                                si32(_loc7_,_loc12_ + 3168);
                                                _loc11_ = int(_loc15_ - _loc11_);
                                                _loc14_ = int(_loc11_ + 1);
                                                _loc17_ = _loc14_ << 2;
                                                _loc20_ = int(_loc7_ + _loc17_);
                                                si32(_loc20_,_loc18_ + 3148);
                                                _loc15_ = int(_loc10_ + _loc17_);
                                                if(_loc14_ >= 1)
                                                {
                                                   while(true)
                                                   {
                                                      _loc17_ = _loc11_ << 2;
                                                      _loc20_ = int(_loc7_ + _loc17_);
                                                      _loc17_ = int(_loc10_ + _loc17_);
                                                      _loc17_ = li32(_loc17_);
                                                      si32(_loc17_,_loc20_);
                                                      if(_loc11_ != 0)
                                                      {
                                                         _loc7_ = li32(_loc12_ + 3168);
                                                         _loc11_ = int(_loc11_ + -1);
                                                         continue;
                                                      }
                                                      break;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                si32(0,int(_loc18_ + (_loc7_ << 2)) + 3168);
                                                _loc15_ = _loc10_;
                                             }
                                             _loc20_ = li32(_loc18_ + 3124);
                                          }
                                          while(_loc20_ > _loc16_);
                                          
                                          _loc1_ = li32(_loc18_ + 3132);
                                          _loc16_ = li32(_loc18_ + 3136);
                                       }
                                       if(_loc1_ >= 1)
                                       {
                                          _loc20_ = int(_loc4_ + _loc19_);
                                          _loc10_ = int(_loc20_ + 3136);
                                          _loc7_ = 0;
                                          do
                                          {
                                             _loc20_ = _loc7_ << 4;
                                             _loc20_ = int(_loc16_ + _loc20_);
                                             _loc17_ = int(_loc7_ * 3);
                                             _loc17_ = _loc17_ << 2;
                                             _loc17_ = int(_loc10_ + _loc17_);
                                             _loc14_ = li32(_loc17_ - 8);
                                             si32(_loc14_,_loc20_);
                                             _loc14_ = li32(_loc17_ - 4);
                                             si32(_loc14_,_loc20_ + 4);
                                             _loc17_ = li32(_loc17_);
                                             si32(_loc17_,_loc20_ + 8);
                                             _loc7_ = int(_loc7_ + 1);
                                             _loc20_ = li32(_loc18_ + 3132);
                                          }
                                          while(_loc20_ > _loc7_);
                                          
                                       }
                                       _loc20_ = li32(_loc18_ + 3140);
                                       if(_loc20_ >= 1)
                                       {
                                          _loc10_ = li32(_loc18_ + 3144);
                                          _loc20_ = int(_loc4_ + int(_loc9_ * 12));
                                          _loc20_ = int(_loc20_ + _loc19_);
                                          _loc9_ = int(_loc20_ + 3136);
                                          _loc4_ = 0;
                                          do
                                          {
                                             _loc20_ = _loc4_ << 4;
                                             _loc20_ = int(_loc10_ + _loc20_);
                                             _loc17_ = int(_loc4_ * 3);
                                             _loc17_ = _loc17_ << 2;
                                             _loc17_ = int(_loc9_ + _loc17_);
                                             _loc14_ = li32(_loc17_ - 8);
                                             si32(_loc14_,_loc20_);
                                             _loc14_ = li32(_loc17_ - 4);
                                             si32(_loc14_,_loc20_ + 4);
                                             _loc17_ = li32(_loc17_);
                                             si32(_loc17_,_loc20_ + 8);
                                             _loc4_ = int(_loc4_ + 1);
                                             _loc20_ = li32(_loc18_ + 3140);
                                          }
                                          while(_loc20_ > _loc4_);
                                          
                                       }
                                       _loc17_ = li32(_loc18_ + 3148);
                                       _loc20_ = li32(_loc18_ + 3152);
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_loc20_,_loc3_ + 8);
                                       si32(_loc15_,_loc3_ + 4);
                                       si32(_loc17_,_loc3_);
                                       ESP = _loc3_;
                                       Fmemcpy();
                                       _loc3_ = int(_loc3_ + 16);
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_loc19_,_loc3_);
                                       ESP = _loc3_;
                                       F_free();
                                       _loc3_ = int(_loc3_ + 16);
                                       _loc20_ = li32(_loc18_ + 3152);
                                       if(_loc20_ == 0)
                                       {
                                          si32(0,_loc18_ + 3148);
                                       }
                                       _loc20_ = li32(_loc18_ + 3124);
                                       if(_loc20_ == 0)
                                       {
                                          si32(0,_loc18_ + 3128);
                                       }
                                       _loc20_ = li32(_loc18_ + 3132);
                                       if(_loc20_ == 0)
                                       {
                                          si32(0,_loc18_ + 3136);
                                       }
                                       _loc20_ = li32(_loc18_ + 3140);
                                       if(_loc20_ == 0)
                                       {
                                          si32(0,_loc18_ + 3144);
                                          break;
                                       }
                                       break;
                                    }
                                    _loc20_ = int(_loc12_ * 3);
                                    _loc17_ = int(_loc19_ + (_loc20_ << 2));
                                    _loc13_ = li32(_loc17_ + 3128);
                                    _loc13_ = _loc13_ << 8;
                                    _loc13_ = _loc13_ << 24 | _loc13_ & 16711680;
                                    _loc5_ = _loc13_ | (int(_loc13_ >>> 8) & 65280 | int(_loc13_ >>> 24));
                                    si32(_loc5_,_loc17_ + 3128);
                                    _loc17_ = int(_loc19_ + (_loc20_ << 2));
                                    _loc14_ = li32(_loc17_ + 3132);
                                    _loc14_ = _loc14_ << 8;
                                    _loc14_ = _loc14_ << 24 | _loc14_ & 16711680;
                                    _loc6_ = _loc14_ | (int(_loc14_ >>> 8) & 65280 | int(_loc14_ >>> 24));
                                    si32(_loc6_,_loc17_ + 3132);
                                    _loc20_ = int(_loc19_ + (_loc20_ << 2));
                                    _loc17_ = li32(_loc20_ + 3136);
                                    _loc13_ = int(_loc17_ >>> 8);
                                    _loc13_ = _loc13_ & 65280;
                                    _loc13_ = _loc17_ << 24 | _loc17_ << 8 & 16711680;
                                    _loc14_ = _loc13_ | (_loc13_ | int(_loc17_ >>> 24));
                                    si32(_loc14_,_loc20_ + 3136);
                                    _loc11_ = _loc7_;
                                    if(_loc17_ == 0)
                                    {
                                       _loc20_ = int(_loc6_ - _loc5_);
                                       _loc1_ = int(_loc20_ + 1);
                                       _loc11_ = int(_loc7_ + (_loc1_ << 2));
                                       if(uint(_loc11_) <= uint(_loc16_))
                                       {
                                          _loc18_ = int(_loc1_ + _loc18_);
                                          if(_loc1_ >= 1)
                                          {
                                             _loc1_ = int(_loc5_ - _loc6_);
                                             do
                                             {
                                                _loc20_ = _loc1_;
                                                _loc17_ = _loc20_ << 2;
                                                _loc17_ = int(_loc7_ - _loc17_);
                                                _loc13_ = li32(_loc17_);
                                                _loc14_ = int(_loc13_ >>> 24);
                                                var _loc2_:* = int(_loc13_ >>> 8);
                                                _loc2_ = _loc2_ & 65280;
                                                _loc14_ = _loc2_ | _loc14_;
                                                _loc2_ = _loc13_ << 24;
                                                _loc13_ = _loc13_ << 8;
                                                _loc13_ = _loc13_ & 16711680;
                                                _loc13_ = _loc2_ | _loc13_;
                                                _loc14_ = _loc13_ | _loc14_;
                                                si32(_loc14_,_loc17_);
                                                _loc1_ = int(_loc20_ + 1);
                                             }
                                             while(_loc20_ != 0);
                                             
                                          }
                                       }
                                       else
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc19_,_loc3_);
                                          ESP = _loc3_;
                                          F_free();
                                          _loc3_ = int(_loc3_ + 16);
                                          ESP = _loc3_;
                                          F___error();
                                          si32(79,int(eax));
                                          _loc18_ = 0;
                                          break;
                                       }
                                    }
                                    _loc1_ = li32(_loc19_ + 3112);
                                    _loc12_ = int(_loc12_ + 1);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      eax = _loc18_;
      _loc3_ = _loc8_;
      ESP = _loc3_;
   }
}
