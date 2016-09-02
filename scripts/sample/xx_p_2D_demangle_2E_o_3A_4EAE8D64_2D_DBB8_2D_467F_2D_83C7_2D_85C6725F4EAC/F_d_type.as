package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.eax;
   
   public function F_d_type() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 12);
      _loc11_ = li8(_loc12_);
      if(_loc11_ != 75)
      {
         if(_loc11_ != 86)
         {
            if(_loc11_ != 114)
            {
               var _loc8_:* = _loc11_ << 24;
               _loc10_ = _loc8_ >> 24;
               _loc9_ = 0;
               if(_loc10_ <= 82)
               {
                  if(_loc10_ <= 70)
                  {
                     if(_loc10_ <= 66)
                     {
                        _loc8_ = int(_loc10_ + -48);
                        if(uint(_loc8_) >= 10)
                        {
                           if(_loc10_ == 65)
                           {
                              _loc7_ = int(_loc12_ + 1);
                              si32(_loc7_,_loc1_ + 12);
                              _loc10_ = 0;
                              if(_loc11_ == 65)
                              {
                                 _loc10_ = li8(_loc7_);
                                 _loc9_ = 0;
                                 if(_loc10_ != 95)
                                 {
                                    _loc8_ = int(_loc10_ + -48);
                                    _loc8_ = _loc8_ & 255;
                                    if(uint(_loc8_) <= 9)
                                    {
                                       _loc10_ = int(_loc12_ + 2);
                                       _loc11_ = 0;
                                       do
                                       {
                                          _loc8_ = int(_loc10_ + _loc11_);
                                          si32(_loc8_,_loc1_ + 12);
                                          _loc8_ = li8(_loc8_);
                                          _loc8_ = int(_loc8_ + -48);
                                          _loc8_ = _loc8_ & 255;
                                          _loc11_ = int(_loc11_ + 1);
                                       }
                                       while(uint(_loc8_) < 10);
                                       
                                       _loc9_ = li32(_loc1_ + 20);
                                       _loc10_ = 0;
                                       if(_loc9_ < li32(_loc1_ + 24))
                                       {
                                          var _loc6_:* = int(_loc9_ + 1);
                                          si32(_loc6_,_loc1_ + 20);
                                          _loc9_ = int(li32(_loc1_ + 16) + int(_loc9_ * 12));
                                          _loc10_ = 0;
                                          if(_loc9_ != 0)
                                          {
                                             if(_loc7_ != 0)
                                             {
                                                if(_loc11_ != 0)
                                                {
                                                   _loc8_ = int(_loc12_ + _loc11_);
                                                   _loc8_ = int(_loc8_ + 1);
                                                   _loc10_ = 0;
                                                   si32(_loc10_,_loc9_);
                                                   si32(_loc7_,_loc9_ + 4);
                                                   si32(int(_loc8_ - _loc7_),_loc9_ + 8);
                                                   if(_loc9_ != 0)
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc1_,_loc2_);
                                       ESP = _loc2_;
                                       F_d_expression();
                                       _loc10_ = 0;
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc9_ = int(eax);
                                       if(_loc9_ != 0)
                                       {
                                       }
                                    }
                                 }
                                 _loc6_ = li32(_loc1_ + 12);
                                 _loc8_ = li8(_loc6_);
                                 _loc6_ = int(_loc6_ + 1);
                                 si32(_loc6_,_loc1_ + 12);
                                 _loc10_ = 0;
                                 if(_loc8_ == 95)
                                 {
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc1_,_loc2_);
                                    ESP = _loc2_;
                                    F_d_type();
                                    _loc10_ = 0;
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc7_ = int(eax);
                                    if(_loc7_ != 0)
                                    {
                                       _loc11_ = li32(_loc1_ + 20);
                                       _loc10_ = 0;
                                       if(_loc11_ < li32(_loc1_ + 24))
                                       {
                                          _loc12_ = li32(_loc1_ + 16);
                                          _loc8_ = int(_loc11_ + 1);
                                          si32(_loc8_,_loc1_ + 20);
                                          _loc5_ = _loc11_ * 12;
                                          _loc11_ = int(_loc12_ + _loc5_);
                                          _loc10_ = 0;
                                          if(_loc11_ != 0)
                                          {
                                             _loc8_ = int(_loc12_ + _loc5_);
                                             si32(36,_loc8_);
                                             si32(_loc9_,_loc8_ + 4);
                                             si32(_loc7_,_loc8_ + 8);
                                             _loc10_ = _loc11_;
                                          }
                                       }
                                    }
                                 }
                              }
                              si32(_loc10_,_loc3_ - 8);
                           }
                        }
                     }
                     else if(_loc10_ != 67)
                     {
                        if(_loc10_ == 70)
                        {
                           _loc9_ = int(_loc12_ + 1);
                           si32(_loc9_,_loc1_ + 12);
                           _loc10_ = 0;
                           if(_loc11_ == 70)
                           {
                              _loc8_ = li8(_loc9_);
                              if(_loc8_ == 89)
                              {
                                 _loc8_ = int(_loc12_ + 2);
                                 si32(_loc8_,_loc1_ + 12);
                              }
                              _loc2_ = int(_loc2_ - 16);
                              si32(1,_loc2_ + 4);
                              si32(_loc1_,_loc2_);
                              ESP = _loc2_;
                              F_d_bare_function_type();
                              _loc2_ = int(_loc2_ + 16);
                              _loc10_ = int(eax);
                              _loc6_ = li32(_loc1_ + 12);
                              _loc8_ = li8(_loc6_);
                              _loc6_ = int(_loc6_ + 1);
                              si32(_loc6_,_loc1_ + 12);
                              if(_loc8_ != 69)
                              {
                                 _loc10_ = 0;
                              }
                           }
                           si32(_loc10_,_loc3_ - 8);
                        }
                     }
                     else
                     {
                        _loc8_ = int(_loc12_ + 1);
                        si32(_loc8_,_loc1_ + 12);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_d_type();
                        _loc10_ = 0;
                        _loc2_ = int(_loc2_ + 16);
                        _loc9_ = int(eax);
                        if(_loc9_ != 0)
                        {
                           _loc7_ = li32(_loc1_ + 20);
                           _loc10_ = 0;
                           if(_loc7_ < li32(_loc1_ + 24))
                           {
                              _loc12_ = li32(_loc1_ + 16);
                              _loc8_ = int(_loc7_ + 1);
                              si32(_loc8_,_loc1_ + 20);
                              _loc11_ = int(_loc7_ * 12);
                              _loc7_ = int(_loc12_ + _loc11_);
                              _loc10_ = 0;
                              if(_loc7_ != 0)
                              {
                                 _loc8_ = int(_loc12_ + _loc11_);
                                 si32(31,_loc8_);
                                 si32(_loc9_,_loc8_ + 4);
                                 si32(0,_loc8_ + 8);
                                 _loc10_ = _loc7_;
                              }
                           }
                        }
                        si32(_loc10_,_loc3_ - 8);
                     }
                     addr2775:
                     _loc9_ = 0;
                     if(_loc10_ != 0)
                     {
                        addr2781:
                        _loc12_ = li32(_loc1_ + 32);
                        _loc8_ = li32(_loc1_ + 36);
                        _loc9_ = 0;
                        if(_loc12_ < _loc8_)
                        {
                           _loc8_ = li32(_loc1_ + 28);
                           si32(_loc10_,int(_loc8_ + (_loc12_ << 2)));
                           _loc8_ = li32(_loc1_ + 32);
                           _loc8_ = int(_loc8_ + 1);
                           si32(_loc8_,_loc1_ + 32);
                           _loc9_ = li32(_loc3_ - 8);
                        }
                     }
                  }
                  else
                  {
                     if(_loc10_ <= 77)
                     {
                        if(_loc10_ != 71)
                        {
                           if(_loc10_ == 77)
                           {
                              _loc8_ = int(_loc12_ + 1);
                              si32(_loc8_,_loc1_ + 12);
                              _loc10_ = 0;
                              if(_loc11_ == 77)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc1_,_loc2_);
                                 ESP = _loc2_;
                                 F_d_type();
                                 _loc12_ = int(_loc3_ - 4);
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc9_ = int(eax);
                                 _loc10_ = 0;
                                 while(true)
                                 {
                                    _loc11_ = li32(_loc1_ + 12);
                                    _loc7_ = li8(_loc11_);
                                    if(_loc7_ != 75)
                                    {
                                       if(_loc7_ != 86)
                                       {
                                          if(_loc7_ != 114)
                                          {
                                             if(_loc12_ != 0)
                                             {
                                                _loc2_ = int(_loc2_ - 16);
                                                si32(_loc1_,_loc2_);
                                                ESP = _loc2_;
                                                F_d_type();
                                                _loc2_ = int(_loc2_ + 16);
                                                _loc10_ = int(eax);
                                                si32(_loc10_,_loc12_);
                                                _loc8_ = int(_loc3_ - 4);
                                                if(_loc8_ != _loc12_)
                                                {
                                                   _loc8_ = li32(_loc10_);
                                                   if(_loc8_ != 35)
                                                   {
                                                      _loc10_ = 0;
                                                      _loc12_ = li32(_loc3_ - 4);
                                                      if(_loc12_ != 0)
                                                      {
                                                         _loc7_ = li32(_loc1_ + 32);
                                                         _loc10_ = 0;
                                                         if(_loc7_ < li32(_loc1_ + 36))
                                                         {
                                                            _loc6_ = li32(_loc1_ + 28);
                                                            si32(_loc12_,int(_loc6_ + (_loc7_ << 2)));
                                                            _loc8_ = li32(_loc1_ + 32);
                                                            _loc8_ = int(_loc8_ + 1);
                                                            si32(_loc8_,_loc1_ + 32);
                                                         }
                                                      }
                                                   }
                                                }
                                                _loc10_ = 0;
                                                if(_loc9_ != 0)
                                                {
                                                   _loc12_ = li32(_loc3_ - 4);
                                                   if(_loc12_ != 0)
                                                   {
                                                      _loc11_ = li32(_loc1_ + 20);
                                                      _loc10_ = 0;
                                                      if(_loc11_ < li32(_loc1_ + 24))
                                                      {
                                                         _loc7_ = li32(_loc1_ + 16);
                                                         _loc8_ = int(_loc11_ + 1);
                                                         si32(_loc8_,_loc1_ + 20);
                                                         _loc11_ = int(_loc11_ * 12);
                                                         _loc5_ = _loc7_ + _loc11_;
                                                         _loc10_ = 0;
                                                         if(_loc5_ != 0)
                                                         {
                                                            _loc8_ = int(_loc7_ + _loc11_);
                                                            si32(37,_loc8_);
                                                            si32(_loc9_,_loc8_ + 4);
                                                            si32(_loc12_,_loc8_ + 8);
                                                            _loc10_ = _loc5_;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    _loc8_ = int(_loc11_ + 1);
                                    si32(_loc8_,_loc1_ + 12);
                                    if(_loc7_ != 86)
                                    {
                                       if(_loc7_ == 114)
                                       {
                                          _loc8_ = li32(_loc1_ + 48);
                                          _loc8_ = int(_loc8_ + 9);
                                          si32(_loc8_,_loc1_ + 48);
                                          _loc7_ = 25;
                                       }
                                       else
                                       {
                                          _loc8_ = li32(_loc1_ + 48);
                                          _loc8_ = int(_loc8_ + 6);
                                          si32(_loc8_,_loc1_ + 48);
                                          _loc7_ = 27;
                                       }
                                    }
                                    else
                                    {
                                       _loc8_ = li32(_loc1_ + 48);
                                       _loc8_ = int(_loc8_ + 9);
                                       si32(_loc8_,_loc1_ + 48);
                                       _loc7_ = 26;
                                    }
                                    _loc11_ = li32(_loc1_ + 20);
                                    _loc8_ = li32(_loc1_ + 24);
                                    if(_loc11_ < _loc8_)
                                    {
                                       _loc6_ = int(_loc11_ + 1);
                                       si32(_loc6_,_loc1_ + 20);
                                       _loc11_ = int(li32(_loc1_ + 16) + int(_loc11_ * 12));
                                       if(_loc11_ == 0)
                                       {
                                          break;
                                       }
                                       si32(_loc7_,_loc11_);
                                       si32(_loc10_,_loc11_ + 4);
                                       si32(_loc10_,_loc11_ + 8);
                                       si32(_loc11_,_loc12_);
                                       _loc12_ = int(_loc11_ + 4);
                                       continue;
                                    }
                                    break;
                                 }
                                 _loc10_ = 0;
                                 si32(_loc10_,_loc12_);
                              }
                              si32(_loc10_,_loc3_ - 8);
                           }
                        }
                        else
                        {
                           _loc8_ = int(_loc12_ + 1);
                           si32(_loc8_,_loc1_ + 12);
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_d_type();
                           _loc10_ = 0;
                           _loc2_ = int(_loc2_ + 16);
                           _loc12_ = int(eax);
                           if(_loc12_ != 0)
                           {
                              _loc7_ = li32(_loc1_ + 20);
                              _loc10_ = 0;
                              if(_loc7_ < li32(_loc1_ + 24))
                              {
                                 _loc9_ = li32(_loc1_ + 16);
                                 _loc8_ = int(_loc7_ + 1);
                                 si32(_loc8_,_loc1_ + 20);
                                 _loc11_ = int(_loc7_ * 12);
                                 _loc7_ = int(_loc9_ + _loc11_);
                                 _loc10_ = 0;
                                 if(_loc7_ != 0)
                                 {
                                    _loc8_ = int(_loc9_ + _loc11_);
                                    si32(32,_loc8_);
                                    si32(_loc12_,_loc8_ + 4);
                                    si32(0,_loc8_ + 8);
                                    _loc10_ = _loc7_;
                                 }
                              }
                           }
                           si32(_loc10_,_loc3_ - 8);
                        }
                     }
                     else if(_loc10_ != 78)
                     {
                        if(_loc10_ != 80)
                        {
                           if(_loc10_ == 82)
                           {
                              _loc8_ = int(_loc12_ + 1);
                              si32(_loc8_,_loc1_ + 12);
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc1_,_loc2_);
                              ESP = _loc2_;
                              F_d_type();
                              _loc10_ = 0;
                              _loc2_ = int(_loc2_ + 16);
                              _loc9_ = int(eax);
                              if(_loc9_ != 0)
                              {
                                 _loc7_ = li32(_loc1_ + 20);
                                 _loc10_ = 0;
                                 if(_loc7_ < li32(_loc1_ + 24))
                                 {
                                    _loc12_ = li32(_loc1_ + 16);
                                    _loc8_ = int(_loc7_ + 1);
                                    si32(_loc8_,_loc1_ + 20);
                                    _loc11_ = int(_loc7_ * 12);
                                    _loc7_ = int(_loc12_ + _loc11_);
                                    _loc10_ = 0;
                                    if(_loc7_ != 0)
                                    {
                                       _loc8_ = int(_loc12_ + _loc11_);
                                       si32(30,_loc8_);
                                       si32(_loc9_,_loc8_ + 4);
                                       si32(0,_loc8_ + 8);
                                       _loc10_ = _loc7_;
                                    }
                                 }
                              }
                              si32(_loc10_,_loc3_ - 8);
                           }
                        }
                        else
                        {
                           _loc8_ = int(_loc12_ + 1);
                           si32(_loc8_,_loc1_ + 12);
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_d_type();
                           _loc10_ = 0;
                           _loc2_ = int(_loc2_ + 16);
                           _loc9_ = int(eax);
                           if(_loc9_ != 0)
                           {
                              _loc7_ = li32(_loc1_ + 20);
                              _loc10_ = 0;
                              if(_loc7_ < li32(_loc1_ + 24))
                              {
                                 _loc12_ = li32(_loc1_ + 16);
                                 _loc8_ = int(_loc7_ + 1);
                                 si32(_loc8_,_loc1_ + 20);
                                 _loc7_ = int(_loc7_ * 12);
                                 _loc11_ = int(_loc12_ + _loc7_);
                                 _loc10_ = 0;
                                 if(_loc11_ != 0)
                                 {
                                    _loc8_ = int(_loc12_ + _loc7_);
                                    si32(29,_loc8_);
                                    si32(_loc9_,_loc8_ + 4);
                                    si32(0,_loc8_ + 8);
                                    _loc10_ = _loc11_;
                                 }
                              }
                           }
                           si32(_loc10_,_loc3_ - 8);
                        }
                     }
                     §§goto(addr2775);
                  }
                  addr777:
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F_d_name();
                  _loc2_ = int(_loc2_ + 16);
                  _loc10_ = int(eax);
                  si32(_loc10_,_loc3_ - 8);
                  §§goto(addr2775);
               }
               else if(_loc10_ <= 96)
               {
                  if(_loc10_ <= 84)
                  {
                     if(_loc10_ != 83)
                     {
                        if(_loc10_ == 84)
                        {
                           _loc9_ = int(_loc12_ + 1);
                           si32(_loc9_,_loc1_ + 12);
                           _loc10_ = 0;
                           if(_loc11_ == 84)
                           {
                              _loc7_ = li8(_loc9_);
                              _loc10_ = 0;
                              if(_loc7_ != 110)
                              {
                                 _loc11_ = _loc10_;
                                 if(_loc7_ == 95)
                                 {
                                    _loc9_ = int(_loc12_ + 2);
                                    si32(_loc9_,_loc1_ + 12);
                                    _loc12_ = 0;
                                    addr1691:
                                    _loc8_ = li32(_loc1_ + 40);
                                    _loc8_ = int(_loc8_ + 1);
                                    si32(_loc8_,_loc1_ + 40);
                                    _loc11_ = li32(_loc1_ + 20);
                                    _loc8_ = li32(_loc1_ + 24);
                                    _loc10_ = 0;
                                    if(_loc11_ < _loc8_)
                                    {
                                       _loc7_ = li32(_loc1_ + 16);
                                       _loc8_ = int(_loc11_ + 1);
                                       si32(_loc8_,_loc1_ + 20);
                                       _loc5_ = _loc11_ * 12;
                                       _loc11_ = int(_loc7_ + _loc5_);
                                       _loc10_ = 0;
                                       if(_loc11_ != 0)
                                       {
                                          _loc8_ = int(_loc7_ + _loc5_);
                                          si32(5,_loc8_);
                                          si32(_loc12_,_loc8_ + 4);
                                          _loc9_ = li32(_loc1_ + 12);
                                          _loc10_ = _loc11_;
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 _loc9_ = int(_loc12_ + 2);
                                 si32(_loc9_,_loc1_ + 12);
                                 _loc7_ = li8(_loc12_ + 2);
                                 _loc11_ = 1;
                              }
                              _loc8_ = int(_loc7_ + -48);
                              _loc8_ = _loc8_ & 255;
                              _loc12_ = _loc10_;
                              if(uint(_loc8_) <= 9)
                              {
                                 do
                                 {
                                    _loc8_ = int(_loc9_ + 1);
                                    si32(_loc8_,_loc1_ + 12);
                                    _loc6_ = int(_loc12_ * 10);
                                    var _loc4_:* = _loc7_ << 24;
                                    _loc4_ = _loc4_ >> 24;
                                    _loc6_ = int(_loc6_ + _loc4_);
                                    _loc12_ = int(_loc6_ + -48);
                                    _loc7_ = li8(_loc9_ + 1);
                                    _loc6_ = int(_loc7_ + -48);
                                    _loc6_ = _loc6_ & 255;
                                    _loc9_ = _loc8_;
                                 }
                                 while(uint(_loc6_) < 10);
                                 
                              }
                              if(_loc11_ != _loc10_)
                              {
                                 _loc12_ = int(0 - _loc12_);
                              }
                              if(_loc12_ >= 0)
                              {
                                 _loc9_ = int(_loc9_ + 1);
                                 si32(_loc9_,_loc1_ + 12);
                                 _loc12_ = int(_loc12_ + 1);
                                 _loc10_ = 0;
                                 if((_loc7_ & 255) == 95)
                                 {
                                    §§goto(addr1691);
                                 }
                              }
                           }
                           si32(_loc10_,_loc3_ - 8);
                           _loc8_ = li8(_loc9_);
                           if(_loc8_ == 73)
                           {
                              _loc9_ = 0;
                              if(_loc10_ != 0)
                              {
                                 _loc12_ = li32(_loc1_ + 32);
                                 _loc9_ = 0;
                                 if(_loc12_ < li32(_loc1_ + 36))
                                 {
                                    _loc6_ = li32(_loc1_ + 28);
                                    si32(_loc10_,int(_loc6_ + (_loc12_ << 2)));
                                    _loc8_ = li32(_loc1_ + 32);
                                    _loc8_ = int(_loc8_ + 1);
                                    si32(_loc8_,_loc1_ + 32);
                                    _loc9_ = li32(_loc3_ - 8);
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_loc1_,_loc2_);
                                    ESP = _loc2_;
                                    F_d_template_args();
                                    _loc10_ = 0;
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc12_ = int(eax);
                                    if(_loc9_ != 0)
                                    {
                                       if(_loc12_ != 0)
                                       {
                                          _loc11_ = li32(_loc1_ + 20);
                                          _loc10_ = 0;
                                          if(_loc11_ < li32(_loc1_ + 24))
                                          {
                                             _loc7_ = li32(_loc1_ + 16);
                                             _loc8_ = int(_loc11_ + 1);
                                             si32(_loc8_,_loc1_ + 20);
                                             _loc5_ = _loc11_ * 12;
                                             _loc11_ = int(_loc7_ + _loc5_);
                                             _loc10_ = 0;
                                             if(_loc11_ != 0)
                                             {
                                                _loc8_ = int(_loc7_ + _loc5_);
                                                si32(4,_loc8_);
                                                si32(_loc9_,_loc8_ + 4);
                                                si32(_loc12_,_loc8_ + 8);
                                                _loc10_ = _loc11_;
                                             }
                                          }
                                       }
                                    }
                                    si32(_loc10_,_loc3_ - 8);
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        _loc10_ = li8(_loc12_ + 1);
                        _loc8_ = int(_loc10_ + -48);
                        _loc8_ = _loc8_ & 255;
                        if(uint(_loc8_) >= 10)
                        {
                           _loc8_ = _loc10_ & 255;
                           if(_loc8_ != 95)
                           {
                              _loc8_ = int(_loc10_ + -65);
                              _loc8_ = _loc8_ & 255;
                              if(uint(_loc8_) > 25)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc1_,_loc2_);
                                 ESP = _loc2_;
                                 F_d_name();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc10_ = int(eax);
                                 si32(_loc10_,_loc3_ - 8);
                                 _loc9_ = 0;
                                 if(_loc10_ != 0)
                                 {
                                    _loc9_ = _loc10_;
                                    if(li32(_loc10_) != 21)
                                    {
                                       §§goto(addr2781);
                                    }
                                 }
                              }
                           }
                        }
                        _loc2_ = int(_loc2_ - 16);
                        _loc10_ = 0;
                        si32(_loc10_,_loc2_ + 4);
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_d_substitution();
                        _loc2_ = int(_loc2_ + 16);
                        _loc9_ = int(eax);
                        si32(_loc9_,_loc3_ - 8);
                        _loc8_ = li32(_loc1_ + 12);
                        _loc8_ = li8(_loc8_);
                        if(_loc8_ == 73)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_d_template_args();
                           _loc2_ = int(_loc2_ + 16);
                           _loc12_ = int(eax);
                           if(_loc9_ != 0)
                           {
                              if(_loc12_ != 0)
                              {
                                 _loc11_ = li32(_loc1_ + 20);
                                 _loc10_ = 0;
                                 if(_loc11_ < li32(_loc1_ + 24))
                                 {
                                    _loc7_ = li32(_loc1_ + 16);
                                    _loc8_ = int(_loc11_ + 1);
                                    si32(_loc8_,_loc1_ + 20);
                                    _loc5_ = _loc11_ * 12;
                                    _loc11_ = int(_loc7_ + _loc5_);
                                    _loc10_ = 0;
                                    if(_loc11_ != 0)
                                    {
                                       _loc8_ = int(_loc7_ + _loc5_);
                                       si32(4,_loc8_);
                                       si32(_loc9_,_loc8_ + 4);
                                       si32(_loc12_,_loc8_ + 8);
                                       _loc10_ = _loc11_;
                                    }
                                 }
                              }
                           }
                           si32(_loc10_,_loc3_ - 8);
                        }
                     }
                  }
                  else if(_loc10_ != 85)
                  {
                     if(_loc10_ == 90)
                     {
                        §§goto(addr777);
                     }
                  }
                  else
                  {
                     _loc8_ = int(_loc12_ + 1);
                     si32(_loc8_,_loc1_ + 12);
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_d_source_name();
                     _loc2_ = int(_loc2_ + 16);
                     _loc8_ = int(eax);
                     si32(_loc8_,_loc3_ - 8);
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_d_type();
                     _loc10_ = 0;
                     _loc2_ = int(_loc2_ + 16);
                     _loc9_ = int(eax);
                     if(_loc9_ != 0)
                     {
                        _loc12_ = li32(_loc3_ - 8);
                        if(_loc12_ != 0)
                        {
                           _loc11_ = li32(_loc1_ + 20);
                           _loc10_ = 0;
                           if(_loc11_ < li32(_loc1_ + 24))
                           {
                              _loc7_ = li32(_loc1_ + 16);
                              _loc8_ = int(_loc11_ + 1);
                              si32(_loc8_,_loc1_ + 20);
                              _loc11_ = int(_loc11_ * 12);
                              _loc5_ = _loc7_ + _loc11_;
                              _loc10_ = 0;
                              if(_loc5_ != 0)
                              {
                                 _loc8_ = int(_loc7_ + _loc11_);
                                 si32(28,_loc8_);
                                 si32(_loc9_,_loc8_ + 4);
                                 si32(_loc12_,_loc8_ + 8);
                                 _loc10_ = _loc5_;
                              }
                           }
                        }
                     }
                     si32(_loc10_,_loc3_ - 8);
                  }
                  §§goto(addr2775);
               }
               else
               {
                  _loc7_ = int(_loc10_ + -97);
                  if(uint(_loc7_) <= 25)
                  {
                     _loc8_ = 1 << _loc7_;
                     _loc8_ = _loc8_ & 65829887;
                     if(_loc8_ == 0)
                     {
                        if(_loc7_ == 20)
                        {
                           _loc8_ = int(_loc12_ + 1);
                           si32(_loc8_,_loc1_ + 12);
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_d_source_name();
                           _loc10_ = 0;
                           _loc2_ = int(_loc2_ + 16);
                           _loc12_ = int(eax);
                           if(_loc12_ != 0)
                           {
                              _loc7_ = li32(_loc1_ + 20);
                              _loc10_ = 0;
                              if(_loc7_ < li32(_loc1_ + 24))
                              {
                                 _loc9_ = li32(_loc1_ + 16);
                                 _loc8_ = int(_loc7_ + 1);
                                 si32(_loc8_,_loc1_ + 20);
                                 _loc11_ = int(_loc7_ * 12);
                                 _loc7_ = int(_loc9_ + _loc11_);
                                 _loc10_ = 0;
                                 if(_loc7_ != 0)
                                 {
                                    _loc8_ = int(_loc9_ + _loc11_);
                                    si32(34,_loc8_);
                                    si32(_loc12_,_loc8_ + 4);
                                    si32(0,_loc8_ + 8);
                                    _loc10_ = _loc7_;
                                 }
                              }
                           }
                           si32(_loc10_,_loc3_ - 8);
                           §§goto(addr2775);
                        }
                     }
                     else
                     {
                        _loc8_ = int(_loc10_ * 20);
                        _loc8_ = int(_loc8_ + _cplus_demangle_builtin_types);
                        _loc10_ = int(_loc8_ + -1940);
                        _loc9_ = 0;
                        if(_loc10_ != 0)
                        {
                           _loc11_ = li32(_loc1_ + 20);
                           _loc9_ = 0;
                           if(_loc11_ < li32(_loc1_ + 24))
                           {
                              _loc7_ = li32(_loc1_ + 16);
                              _loc8_ = int(_loc11_ + 1);
                              si32(_loc8_,_loc1_ + 20);
                              _loc11_ = int(_loc11_ * 12);
                              _loc5_ = _loc7_ + _loc11_;
                              _loc9_ = 0;
                              if(_loc5_ != 0)
                              {
                                 _loc8_ = int(_loc7_ + _loc11_);
                                 si32(33,_loc8_);
                                 si32(_loc10_,_loc8_ + 4);
                                 _loc12_ = li32(_loc1_ + 12);
                                 _loc9_ = _loc5_;
                              }
                           }
                        }
                        si32(_loc9_,_loc3_ - 8);
                        _loc8_ = li32(_loc1_ + 48);
                        _loc6_ = li32(_loc9_ + 4);
                        _loc6_ = li32(_loc6_ + 4);
                        _loc8_ = int(_loc6_ + _loc8_);
                        si32(_loc8_,_loc1_ + 48);
                        _loc8_ = int(_loc12_ + 1);
                        si32(_loc8_,_loc1_ + 12);
                     }
                  }
               }
            }
            addr2833:
            eax = _loc9_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
      }
      _loc10_ = int(_loc3_ - 8);
      _loc9_ = 0;
      while(true)
      {
         _loc7_ = _loc11_ & 255;
         if(_loc7_ != 75)
         {
            if(_loc7_ != 86)
            {
               if(_loc7_ != 114)
               {
                  if(_loc10_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_d_type();
                     _loc2_ = int(_loc2_ + 16);
                     _loc8_ = int(eax);
                     si32(_loc8_,_loc10_);
                     _loc9_ = 0;
                     _loc12_ = li32(_loc3_ - 8);
                     if(_loc12_ != 0)
                     {
                        _loc10_ = li32(_loc1_ + 32);
                        _loc9_ = 0;
                        if(_loc10_ < li32(_loc1_ + 36))
                        {
                           _loc6_ = li32(_loc1_ + 28);
                           si32(_loc12_,int(_loc6_ + (_loc10_ << 2)));
                           _loc8_ = li32(_loc1_ + 32);
                           _loc8_ = int(_loc8_ + 1);
                           si32(_loc8_,_loc1_ + 32);
                           _loc9_ = li32(_loc3_ - 8);
                        }
                     }
                  }
                  §§goto(addr2833);
               }
            }
         }
         _loc8_ = int(_loc12_ + 1);
         si32(_loc8_,_loc1_ + 12);
         if(_loc7_ != 86)
         {
            if(_loc7_ == 114)
            {
               _loc8_ = li32(_loc1_ + 48);
               _loc8_ = int(_loc8_ + 9);
               si32(_loc8_,_loc1_ + 48);
               _loc12_ = 22;
            }
            else
            {
               _loc8_ = li32(_loc1_ + 48);
               _loc8_ = int(_loc8_ + 6);
               si32(_loc8_,_loc1_ + 48);
               _loc12_ = 24;
            }
         }
         else
         {
            _loc8_ = li32(_loc1_ + 48);
            _loc8_ = int(_loc8_ + 9);
            si32(_loc8_,_loc1_ + 48);
            _loc12_ = 23;
         }
         _loc7_ = li32(_loc1_ + 20);
         _loc8_ = li32(_loc1_ + 24);
         if(_loc7_ < _loc8_)
         {
            _loc6_ = int(_loc7_ + 1);
            si32(_loc6_,_loc1_ + 20);
            _loc7_ = int(li32(_loc1_ + 16) + int(_loc7_ * 12));
            if(_loc7_ == 0)
            {
               break;
            }
            si32(_loc12_,_loc7_);
            si32(_loc9_,_loc7_ + 4);
            si32(_loc9_,_loc7_ + 8);
            si32(_loc7_,_loc10_);
            _loc10_ = int(_loc7_ + 4);
            _loc12_ = li32(_loc1_ + 12);
            _loc11_ = li8(_loc12_);
            continue;
         }
         break;
      }
      _loc9_ = 0;
      si32(_loc9_,_loc10_);
      §§goto(addr2833);
   }
}
