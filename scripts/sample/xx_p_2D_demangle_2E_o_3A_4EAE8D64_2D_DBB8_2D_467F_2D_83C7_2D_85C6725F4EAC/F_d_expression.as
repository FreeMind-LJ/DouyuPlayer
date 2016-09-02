package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F_d_expression() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc4_:int = 0;
      var _loc12_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 12);
      _loc11_ = li8(_loc12_);
      if(_loc11_ != 115)
      {
         if(_loc11_ != 84)
         {
            if(_loc11_ == 76)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_d_expr_primary();
               _loc2_ = int(_loc2_ + 16);
               _loc11_ = int(eax);
            }
         }
         else
         {
            _loc10_ = int(_loc12_ + 1);
            si32(_loc10_,_loc1_ + 12);
            _loc9_ = li8(_loc12_ + 1);
            _loc11_ = 0;
            if(_loc9_ != 110)
            {
               _loc8_ = _loc11_;
               if(_loc9_ == 95)
               {
                  var _loc7_:* = int(_loc12_ + 2);
                  si32(_loc7_,_loc1_ + 12);
                  _loc8_ = 0;
                  addr236:
                  _loc7_ = li32(_loc1_ + 40);
                  _loc7_ = int(_loc7_ + 1);
                  si32(_loc7_,_loc1_ + 40);
                  _loc10_ = li32(_loc1_ + 20);
                  _loc7_ = li32(_loc1_ + 24);
                  _loc11_ = 0;
                  if(_loc10_ < _loc7_)
                  {
                     _loc9_ = li32(_loc1_ + 16);
                     _loc7_ = int(_loc10_ + 1);
                     si32(_loc7_,_loc1_ + 20);
                     _loc1_ = int(_loc10_ * 12);
                     _loc10_ = int(_loc9_ + _loc1_);
                     _loc11_ = 0;
                     if(_loc10_ != 0)
                     {
                        _loc7_ = int(_loc9_ + _loc1_);
                        si32(5,_loc7_);
                        si32(_loc8_,_loc7_ + 4);
                        _loc11_ = _loc10_;
                     }
                  }
               }
            }
            else
            {
               _loc10_ = int(_loc12_ + 2);
               si32(_loc10_,_loc1_ + 12);
               _loc9_ = li8(_loc12_ + 2);
               _loc8_ = 1;
            }
            _loc7_ = int(_loc9_ + -48);
            _loc7_ = _loc7_ & 255;
            _loc12_ = _loc11_;
            if(uint(_loc7_) <= 9)
            {
               do
               {
                  _loc7_ = int(_loc10_ + 1);
                  si32(_loc7_,_loc1_ + 12);
                  var _loc6_:* = int(_loc12_ * 10);
                  var _loc5_:* = _loc9_ << 24;
                  _loc5_ = _loc5_ >> 24;
                  _loc6_ = int(_loc6_ + _loc5_);
                  _loc12_ = int(_loc6_ + -48);
                  _loc9_ = li8(_loc10_ + 1);
                  _loc6_ = int(_loc9_ + -48);
                  _loc6_ = _loc6_ & 255;
                  _loc10_ = _loc7_;
               }
               while(uint(_loc6_) < 10);
               
            }
            if(_loc8_ != _loc11_)
            {
               _loc12_ = int(0 - _loc12_);
            }
            if(_loc12_ >= 0)
            {
               _loc7_ = int(_loc10_ + 1);
               si32(_loc7_,_loc1_ + 12);
               _loc8_ = int(_loc12_ + 1);
               _loc11_ = 0;
               if((_loc9_ & 255) == 95)
               {
                  §§goto(addr236);
               }
            }
         }
         addr1431:
         eax = _loc11_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc7_ = li8(_loc12_ + 1);
      if(_loc7_ == 114)
      {
         _loc7_ = int(_loc12_ + 2);
         si32(_loc7_,_loc1_ + 12);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_d_type();
         _loc2_ = int(_loc2_ + 16);
         _loc9_ = int(eax);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_d_unqualified_name();
         _loc2_ = int(_loc2_ + 16);
         _loc8_ = int(eax);
         _loc7_ = li32(_loc1_ + 12);
         _loc7_ = li8(_loc7_);
         if(_loc7_ != 73)
         {
            _loc11_ = 0;
            if(_loc9_ != 0)
            {
               if(_loc8_ != 0)
               {
                  _loc12_ = li32(_loc1_ + 20);
                  _loc11_ = 0;
                  if(_loc12_ < li32(_loc1_ + 24))
                  {
                     _loc10_ = li32(_loc1_ + 16);
                     _loc7_ = int(_loc12_ + 1);
                     si32(_loc7_,_loc1_ + 20);
                     _loc12_ = int(_loc12_ * 12);
                     _loc1_ = int(_loc10_ + _loc12_);
                     _loc11_ = 0;
                     if(_loc1_ != 0)
                     {
                        _loc7_ = int(_loc10_ + _loc12_);
                        si32(1,_loc7_);
                        si32(_loc9_,_loc7_ + 4);
                        si32(_loc8_,_loc7_ + 8);
                        _loc11_ = _loc1_;
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
            F_d_template_args();
            _loc11_ = 0;
            _loc2_ = int(_loc2_ + 16);
            _loc12_ = int(eax);
            if(_loc8_ != 0)
            {
               if(_loc12_ != 0)
               {
                  _loc10_ = li32(_loc1_ + 20);
                  _loc11_ = 0;
                  if(_loc10_ < li32(_loc1_ + 24))
                  {
                     _loc6_ = int(_loc10_ + 1);
                     si32(_loc6_,_loc1_ + 20);
                     _loc10_ = int(li32(_loc1_ + 16) + int(_loc10_ * 12));
                     _loc11_ = 0;
                     if(_loc10_ != 0)
                     {
                        si32(4,_loc10_);
                        si32(_loc8_,_loc10_ + 4);
                        si32(_loc12_,_loc10_ + 8);
                        _loc11_ = 0;
                        if(_loc9_ != 0)
                        {
                           _loc12_ = li32(_loc1_ + 20);
                           _loc11_ = 0;
                           if(_loc12_ < li32(_loc1_ + 24))
                           {
                              _loc8_ = li32(_loc1_ + 16);
                              _loc7_ = int(_loc12_ + 1);
                              si32(_loc7_,_loc1_ + 20);
                              _loc12_ = int(_loc12_ * 12);
                              _loc1_ = int(_loc8_ + _loc12_);
                              _loc11_ = 0;
                              if(_loc1_ != 0)
                              {
                                 _loc7_ = int(_loc8_ + _loc12_);
                                 si32(1,_loc7_);
                                 si32(_loc9_,_loc7_ + 4);
                                 si32(_loc10_,_loc7_ + 8);
                                 _loc11_ = _loc1_;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      §§goto(addr1431);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_d_operator_name();
      _loc11_ = 0;
      _loc2_ = int(_loc2_ + 16);
      _loc9_ = int(eax);
      if(_loc9_ != 0)
      {
         _loc8_ = li32(_loc9_);
         if(_loc8_ == 40)
         {
            _loc6_ = li32(_loc9_ + 4);
            _loc7_ = int(li32(_loc1_ + 48) + li32(_loc6_ + 8));
            _loc7_ = int(_loc7_ + -2);
            si32(_loc7_,_loc1_ + 48);
            _loc8_ = li32(_loc9_);
            if(_loc8_ == 40)
            {
               _loc7_ = li32(_loc9_ + 4);
               _loc2_ = int(_loc2_ - 16);
               si32(L__2E_str18,_loc2_ + 4);
               si32(li32(_loc7_),_loc2_);
               ESP = _loc2_;
               F_strcmp();
               _loc2_ = int(_loc2_ + 16);
               _loc7_ = int(eax);
               if(_loc7_ == 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F_d_type();
                  _loc11_ = 0;
                  _loc2_ = int(_loc2_ + 16);
                  _loc8_ = int(eax);
                  if(_loc9_ != 0)
                  {
                     if(_loc8_ != 0)
                     {
                        _loc12_ = li32(_loc1_ + 20);
                        _loc11_ = 0;
                        if(_loc12_ < li32(_loc1_ + 24))
                        {
                           _loc10_ = li32(_loc1_ + 16);
                           _loc7_ = int(_loc12_ + 1);
                           si32(_loc7_,_loc1_ + 20);
                           _loc12_ = int(_loc12_ * 12);
                           _loc1_ = int(_loc10_ + _loc12_);
                           _loc11_ = 0;
                           if(_loc1_ != 0)
                           {
                              _loc7_ = int(_loc10_ + _loc12_);
                              si32(43,_loc7_);
                              si32(_loc9_,_loc7_ + 4);
                              si32(_loc8_,_loc7_ + 8);
                              _loc11_ = _loc1_;
                           }
                        }
                     }
                  }
               }
               else
               {
                  addr848:
                  _loc7_ = li32(_loc9_ + 4);
                  addr866:
                  _loc11_ = int(_loc7_ + 12);
                  _loc8_ = li32(_loc11_);
                  if(_loc8_ != 3)
                  {
                     if(_loc8_ != 2)
                     {
                        _loc11_ = 0;
                        if(_loc8_ == 1)
                        {
                        }
                     }
                     else
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_d_expression();
                        _loc2_ = int(_loc2_ + 16);
                        _loc10_ = int(eax);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_d_expression();
                        _loc11_ = 0;
                        _loc2_ = int(_loc2_ + 16);
                        _loc12_ = int(eax);
                        if(_loc10_ != 0)
                        {
                           if(_loc12_ != 0)
                           {
                              _loc8_ = li32(_loc1_ + 20);
                              _loc11_ = 0;
                              if(_loc8_ < li32(_loc1_ + 24))
                              {
                                 _loc6_ = int(_loc8_ + 1);
                                 si32(_loc6_,_loc1_ + 20);
                                 _loc8_ = int(li32(_loc1_ + 16) + int(_loc8_ * 12));
                                 _loc11_ = 0;
                                 if(_loc8_ != 0)
                                 {
                                    si32(45,_loc8_);
                                    si32(_loc10_,_loc8_ + 4);
                                    si32(_loc12_,_loc8_ + 8);
                                    _loc11_ = 0;
                                    if(_loc9_ != 0)
                                    {
                                       _loc12_ = li32(_loc1_ + 20);
                                       _loc11_ = 0;
                                       if(_loc12_ < li32(_loc1_ + 24))
                                       {
                                          _loc10_ = li32(_loc1_ + 16);
                                          _loc7_ = int(_loc12_ + 1);
                                          si32(_loc7_,_loc1_ + 20);
                                          _loc1_ = int(_loc12_ * 12);
                                          _loc12_ = int(_loc10_ + _loc1_);
                                          _loc11_ = 0;
                                          if(_loc12_ != 0)
                                          {
                                             _loc7_ = int(_loc10_ + _loc1_);
                                             si32(44,_loc7_);
                                             si32(_loc9_,_loc7_ + 4);
                                             si32(_loc8_,_loc7_ + 8);
                                             _loc11_ = _loc12_;
                                          }
                                       }
                                    }
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
                     _loc2_ = int(_loc2_ + 16);
                     _loc10_ = int(eax);
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_d_expression();
                     _loc2_ = int(_loc2_ + 16);
                     _loc4_ = eax;
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_d_expression();
                     _loc11_ = 0;
                     _loc2_ = int(_loc2_ + 16);
                     _loc8_ = int(eax);
                     if(_loc4_ != 0)
                     {
                        if(_loc8_ != 0)
                        {
                           _loc12_ = li32(_loc1_ + 20);
                           _loc11_ = 0;
                           if(_loc12_ < li32(_loc1_ + 24))
                           {
                              _loc6_ = int(_loc12_ + 1);
                              si32(_loc6_,_loc1_ + 20);
                              _loc12_ = int(li32(_loc1_ + 16) + int(_loc12_ * 12));
                              _loc11_ = 0;
                              if(_loc12_ != 0)
                              {
                                 si32(48,_loc12_);
                                 si32(_loc4_,_loc12_ + 4);
                                 si32(_loc8_,_loc12_ + 8);
                                 _loc11_ = 0;
                                 if(_loc10_ != 0)
                                 {
                                    _loc8_ = li32(_loc1_ + 20);
                                    _loc11_ = 0;
                                    if(_loc8_ < li32(_loc1_ + 24))
                                    {
                                       _loc6_ = int(_loc8_ + 1);
                                       si32(_loc6_,_loc1_ + 20);
                                       _loc8_ = int(li32(_loc1_ + 16) + int(_loc8_ * 12));
                                       _loc11_ = 0;
                                       if(_loc8_ != 0)
                                       {
                                          si32(47,_loc8_);
                                          si32(_loc10_,_loc8_ + 4);
                                          si32(_loc12_,_loc8_ + 8);
                                          _loc11_ = 0;
                                          if(_loc9_ != 0)
                                          {
                                             _loc12_ = li32(_loc1_ + 20);
                                             _loc11_ = 0;
                                             if(_loc12_ < li32(_loc1_ + 24))
                                             {
                                                _loc10_ = li32(_loc1_ + 16);
                                                _loc7_ = int(_loc12_ + 1);
                                                si32(_loc7_,_loc1_ + 20);
                                                _loc12_ = int(_loc12_ * 12);
                                                _loc1_ = int(_loc10_ + _loc12_);
                                                _loc11_ = 0;
                                                if(_loc1_ != 0)
                                                {
                                                   _loc7_ = int(_loc10_ + _loc12_);
                                                   si32(46,_loc7_);
                                                   si32(_loc9_,_loc7_ + 4);
                                                   si32(_loc8_,_loc7_ + 8);
                                                   _loc11_ = _loc1_;
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
                  }
               }
            }
            addr883:
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_d_expression();
            _loc11_ = 0;
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = int(eax);
            if(_loc9_ != 0)
            {
               if(_loc8_ != 0)
               {
                  _loc12_ = li32(_loc1_ + 20);
                  _loc11_ = 0;
                  if(_loc12_ < li32(_loc1_ + 24))
                  {
                     _loc10_ = li32(_loc1_ + 16);
                     _loc7_ = int(_loc12_ + 1);
                     si32(_loc7_,_loc1_ + 20);
                     _loc12_ = int(_loc12_ * 12);
                     _loc1_ = int(_loc10_ + _loc12_);
                     _loc11_ = 0;
                     if(_loc1_ != 0)
                     {
                        _loc7_ = int(_loc10_ + _loc12_);
                        si32(43,_loc7_);
                        si32(_loc9_,_loc7_ + 4);
                        si32(_loc8_,_loc7_ + 8);
                        _loc11_ = _loc1_;
                     }
                  }
               }
            }
         }
         if(_loc8_ != 42)
         {
            if(_loc8_ != 41)
            {
               _loc11_ = 0;
               if(_loc8_ == 40)
               {
                  §§goto(addr848);
               }
            }
            else
            {
               _loc11_ = int(_loc9_ + 4);
            }
            §§goto(addr866);
         }
         §§goto(addr883);
      }
      §§goto(addr1431);
   }
}
