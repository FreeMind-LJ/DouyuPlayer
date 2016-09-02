package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.eax;
   
   public function F_d_name() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 12);
      _loc11_ = si8(li8(_loc12_));
      if(_loc11_ <= 82)
      {
         if(_loc11_ != 76)
         {
            if(_loc11_ != 78)
            {
               addr1353:
               _loc2_ = int(_loc2_ - 16);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_d_unqualified_name();
               _loc2_ = int(_loc2_ + 16);
               _loc12_ = int(eax);
               var _loc9_:* = li32(_loc1_ + 12);
               _loc9_ = li8(_loc9_);
               _loc11_ = _loc12_;
               if(_loc9_ == 73)
               {
                  _loc11_ = 0;
                  if(_loc12_ != 0)
                  {
                     _loc10_ = li32(_loc1_ + 32);
                     _loc11_ = 0;
                     if(_loc10_ < li32(_loc1_ + 36))
                     {
                        var _loc7_:* = li32(_loc1_ + 28);
                        si32(_loc12_,int(_loc7_ + (_loc10_ << 2)));
                        _loc9_ = li32(_loc1_ + 32);
                        _loc9_ = int(_loc9_ + 1);
                        si32(_loc9_,_loc1_ + 32);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_d_template_args();
                        _loc11_ = 0;
                        _loc2_ = int(_loc2_ + 16);
                        _loc8_ = int(eax);
                        if(_loc12_ != 0)
                        {
                           if(_loc8_ != 0)
                           {
                              _loc6_ = li32(_loc1_ + 20);
                              _loc11_ = 0;
                              if(_loc6_ < li32(_loc1_ + 24))
                              {
                                 _loc10_ = li32(_loc1_ + 16);
                                 _loc9_ = int(_loc6_ + 1);
                                 si32(_loc9_,_loc1_ + 20);
                                 _loc6_ = int(_loc6_ * 12);
                                 _loc1_ = int(_loc10_ + _loc6_);
                                 _loc11_ = 0;
                                 if(_loc1_ != 0)
                                 {
                                    _loc9_ = int(_loc10_ + _loc6_);
                                    si32(4,_loc9_);
                                    si32(_loc12_,_loc9_ + 4);
                                    si32(_loc8_,_loc9_ + 8);
                                    _loc11_ = _loc1_;
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
               _loc10_ = int(_loc12_ + 1);
               si32(_loc10_,_loc1_ + 12);
               _loc11_ = 0;
               if((_loc11_ & 255) == 78)
               {
                  _loc12_ = int(_loc3_ - 4);
                  _loc11_ = 0;
                  while(true)
                  {
                     _loc8_ = li8(_loc10_);
                     if(_loc8_ != 75)
                     {
                        if(_loc8_ != 86)
                        {
                           if(_loc8_ != 114)
                           {
                              if(_loc12_ != 0)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_loc1_,_loc2_);
                                 ESP = _loc2_;
                                 F_d_prefix();
                                 _loc2_ = int(_loc2_ + 16);
                                 _loc9_ = int(eax);
                                 si32(_loc9_,_loc12_);
                                 _loc11_ = 0;
                                 if(_loc9_ != 0)
                                 {
                                    _loc7_ = li32(_loc1_ + 12);
                                    _loc7_ = int(_loc7_ + 1);
                                    si32(_loc7_,_loc1_ + 12);
                                    _loc11_ = 0;
                                    if(li8(_loc7_) == 69)
                                    {
                                       _loc11_ = li32(_loc3_ - 4);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     _loc9_ = int(_loc10_ + 1);
                     si32(_loc9_,_loc1_ + 12);
                     if(_loc8_ != 86)
                     {
                        if(_loc8_ == 114)
                        {
                           _loc9_ = li32(_loc1_ + 48);
                           _loc9_ = int(_loc9_ + 9);
                           si32(_loc9_,_loc1_ + 48);
                           _loc10_ = 25;
                        }
                        else
                        {
                           _loc9_ = li32(_loc1_ + 48);
                           _loc9_ = int(_loc9_ + 6);
                           si32(_loc9_,_loc1_ + 48);
                           _loc10_ = 27;
                        }
                     }
                     else
                     {
                        _loc9_ = li32(_loc1_ + 48);
                        _loc9_ = int(_loc9_ + 9);
                        si32(_loc9_,_loc1_ + 48);
                        _loc10_ = 26;
                     }
                     _loc8_ = li32(_loc1_ + 20);
                     _loc9_ = li32(_loc1_ + 24);
                     if(_loc8_ < _loc9_)
                     {
                        _loc7_ = int(_loc8_ + 1);
                        si32(_loc7_,_loc1_ + 20);
                        _loc8_ = int(li32(_loc1_ + 16) + int(_loc8_ * 12));
                        if(_loc8_ == 0)
                        {
                           break;
                        }
                        si32(_loc10_,_loc8_);
                        si32(_loc11_,_loc8_ + 4);
                        si32(_loc11_,_loc8_ + 8);
                        si32(_loc8_,_loc12_);
                        _loc12_ = int(_loc8_ + 4);
                        _loc10_ = li32(_loc1_ + 12);
                        continue;
                     }
                     break;
                  }
                  _loc11_ = 0;
                  si32(_loc11_,_loc12_);
               }
            }
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_d_unqualified_name();
            _loc2_ = int(_loc2_ + 16);
            _loc11_ = int(eax);
         }
      }
      else if(_loc11_ != 83)
      {
         if(_loc11_ != 90)
         {
            §§goto(addr1353);
         }
         else
         {
            _loc9_ = int(_loc12_ + 1);
            si32(_loc9_,_loc1_ + 12);
            _loc11_ = 0;
            if((_loc11_ & 255) == 90)
            {
               _loc2_ = int(_loc2_ - 16);
               _loc11_ = 0;
               si32(_loc11_,_loc2_ + 4);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_d_encoding();
               _loc2_ = int(_loc2_ + 16);
               _loc12_ = int(eax);
               _loc6_ = li32(_loc1_ + 12);
               _loc10_ = int(_loc6_ + 1);
               si32(_loc10_,_loc1_ + 12);
               if(li8(_loc6_) == 69)
               {
                  _loc9_ = li8(_loc10_);
                  if(_loc9_ == 115)
                  {
                     _loc9_ = int(_loc6_ + 2);
                     si32(_loc9_,_loc1_ + 12);
                     _loc9_ = li8(_loc6_ + 2);
                     if(_loc9_ == 95)
                     {
                        _loc5_ = int(_loc6_ + 3);
                        si32(_loc5_,_loc1_ + 12);
                        _loc10_ = li8(_loc6_ + 3);
                        _loc11_ = 0;
                        _loc8_ = _loc11_;
                        if(_loc10_ == 110)
                        {
                           _loc5_ = int(_loc6_ + 4);
                           si32(_loc5_,_loc1_ + 12);
                           _loc10_ = li8(_loc6_ + 4);
                           _loc8_ = 1;
                        }
                        _loc9_ = int(_loc10_ + -48);
                        _loc9_ = _loc9_ & 255;
                        _loc6_ = _loc11_;
                        if(uint(_loc9_) <= 9)
                        {
                           _loc5_ = int(_loc5_ + 1);
                           _loc6_ = 0;
                           do
                           {
                              si32(_loc5_,_loc1_ + 12);
                              _loc9_ = int(_loc6_ * 10);
                              _loc7_ = _loc10_ << 24;
                              _loc7_ = _loc7_ >> 24;
                              _loc9_ = int(_loc9_ + _loc7_);
                              _loc6_ = int(_loc9_ + -48);
                              _loc9_ = int(_loc5_ + 1);
                              _loc10_ = li8(_loc5_);
                              _loc7_ = int(_loc10_ + -48);
                              _loc7_ = _loc7_ & 255;
                              _loc5_ = _loc9_;
                           }
                           while(uint(_loc7_) < 10);
                           
                        }
                        if(_loc8_ != _loc11_)
                        {
                           _loc6_ = int(0 - _loc6_);
                        }
                        if(_loc6_ >= 0)
                        {
                        }
                     }
                     _loc10_ = li32(_loc1_ + 20);
                     _loc9_ = li32(_loc1_ + 24);
                     _loc11_ = 0;
                     if(_loc10_ < _loc9_)
                     {
                        _loc7_ = int(_loc10_ + 1);
                        si32(_loc7_,_loc1_ + 20);
                        _loc10_ = int(li32(_loc1_ + 16) + int(_loc10_ * 12));
                        _loc11_ = 0;
                        if(_loc10_ != 0)
                        {
                           _loc11_ = 0;
                           si32(_loc11_,_loc10_);
                           si32(L__2E_str135,_loc10_ + 4);
                           si32(14,_loc10_ + 8);
                           if(_loc12_ != 0)
                           {
                              _loc6_ = li32(_loc1_ + 20);
                              _loc11_ = 0;
                              if(_loc6_ < li32(_loc1_ + 24))
                              {
                                 _loc8_ = li32(_loc1_ + 16);
                                 _loc9_ = int(_loc6_ + 1);
                                 si32(_loc9_,_loc1_ + 20);
                                 _loc1_ = int(_loc6_ * 12);
                                 _loc6_ = int(_loc8_ + _loc1_);
                                 _loc11_ = 0;
                                 if(_loc6_ != 0)
                                 {
                                    _loc9_ = int(_loc8_ + _loc1_);
                                    si32(2,_loc9_);
                                    si32(_loc12_,_loc9_ + 4);
                                    si32(_loc10_,_loc9_ + 8);
                                    _loc11_ = _loc6_;
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
                     F_d_name();
                     _loc2_ = int(_loc2_ + 16);
                     _loc10_ = int(eax);
                     _loc5_ = li32(_loc1_ + 12);
                     _loc9_ = li8(_loc5_);
                     if(_loc9_ == 95)
                     {
                        _loc4_ = int(_loc5_ + 1);
                        si32(_loc4_,_loc1_ + 12);
                        _loc6_ = li8(_loc5_ + 1);
                        _loc11_ = 0;
                        _loc8_ = _loc11_;
                        if(_loc6_ == 110)
                        {
                           _loc4_ = int(_loc5_ + 2);
                           si32(_loc4_,_loc1_ + 12);
                           _loc6_ = li8(_loc5_ + 2);
                           _loc8_ = 1;
                        }
                        _loc9_ = int(_loc6_ + -48);
                        _loc9_ = _loc9_ & 255;
                        _loc5_ = _loc11_;
                        if(uint(_loc9_) <= 9)
                        {
                           _loc4_ = int(_loc4_ + 1);
                           _loc5_ = 0;
                           do
                           {
                              si32(_loc4_,_loc1_ + 12);
                              _loc9_ = int(_loc5_ * 10);
                              _loc7_ = _loc6_ << 24;
                              _loc7_ = _loc7_ >> 24;
                              _loc9_ = int(_loc9_ + _loc7_);
                              _loc5_ = int(_loc9_ + -48);
                              _loc9_ = int(_loc4_ + 1);
                              _loc6_ = li8(_loc4_);
                              _loc7_ = int(_loc6_ + -48);
                              _loc7_ = _loc7_ & 255;
                              _loc4_ = _loc9_;
                           }
                           while(uint(_loc7_) < 10);
                           
                        }
                        if(_loc8_ != _loc11_)
                        {
                           _loc5_ = int(0 - _loc5_);
                        }
                        if(_loc5_ >= 0)
                        {
                        }
                     }
                     _loc11_ = 0;
                     if(_loc12_ != 0)
                     {
                        if(_loc10_ != 0)
                        {
                           _loc6_ = li32(_loc1_ + 20);
                           _loc11_ = 0;
                           if(_loc6_ < li32(_loc1_ + 24))
                           {
                              _loc8_ = li32(_loc1_ + 16);
                              _loc9_ = int(_loc6_ + 1);
                              si32(_loc9_,_loc1_ + 20);
                              _loc6_ = int(_loc6_ * 12);
                              _loc1_ = int(_loc8_ + _loc6_);
                              _loc11_ = 0;
                              if(_loc1_ != 0)
                              {
                                 _loc9_ = int(_loc8_ + _loc6_);
                                 si32(2,_loc9_);
                                 si32(_loc12_,_loc9_ + 4);
                                 si32(_loc10_,_loc9_ + 8);
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
      else
      {
         _loc9_ = li8(_loc12_ + 1);
         if(_loc9_ != 116)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_d_substitution();
            _loc10_ = 1;
            _loc2_ = int(_loc2_ + 16);
            _loc12_ = int(eax);
         }
         else
         {
            _loc9_ = int(_loc12_ + 2);
            si32(_loc9_,_loc1_ + 12);
            _loc8_ = li32(_loc1_ + 20);
            _loc10_ = 0;
            _loc11_ = _loc10_;
            if(_loc8_ < li32(_loc1_ + 24))
            {
               _loc12_ = li32(_loc1_ + 16);
               _loc9_ = int(_loc8_ + 1);
               si32(_loc9_,_loc1_ + 20);
               _loc6_ = int(_loc8_ * 12);
               _loc8_ = int(_loc12_ + _loc6_);
               _loc11_ = 0;
               if(_loc8_ != 0)
               {
                  _loc9_ = int(_loc12_ + _loc6_);
                  si32(0,_loc9_);
                  si32(L__2E_str,_loc9_ + 4);
                  si32(3,_loc9_ + 8);
                  _loc11_ = _loc8_;
               }
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_d_unqualified_name();
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = int(eax);
            _loc12_ = _loc10_;
            if(_loc11_ != 0)
            {
               _loc12_ = _loc10_;
               if(_loc8_ != 0)
               {
                  _loc5_ = li32(_loc1_ + 20);
                  _loc12_ = 0;
                  if(_loc5_ < li32(_loc1_ + 24))
                  {
                     _loc6_ = li32(_loc1_ + 16);
                     _loc9_ = int(_loc5_ + 1);
                     si32(_loc9_,_loc1_ + 20);
                     _loc5_ = int(_loc5_ * 12);
                     _loc4_ = int(_loc6_ + _loc5_);
                     _loc12_ = 0;
                     if(_loc4_ != 0)
                     {
                        _loc9_ = int(_loc6_ + _loc5_);
                        si32(1,_loc9_);
                        si32(_loc11_,_loc9_ + 4);
                        si32(_loc8_,_loc9_ + 8);
                        _loc12_ = _loc4_;
                     }
                  }
               }
            }
            _loc9_ = li32(_loc1_ + 48);
            _loc9_ = int(_loc9_ + 3);
            si32(_loc9_,_loc1_ + 48);
         }
         _loc9_ = li32(_loc1_ + 12);
         _loc9_ = li8(_loc9_);
         _loc11_ = _loc12_;
         if(_loc9_ == 73)
         {
            _loc8_ = 1;
            if(_loc12_ != 0)
            {
               _loc8_ = 0;
            }
            if(_loc10_ == 0)
            {
               _loc11_ = 0;
               if(_loc12_ != 0)
               {
                  _loc10_ = li32(_loc1_ + 32);
                  _loc11_ = 0;
                  if(_loc10_ < li32(_loc1_ + 36))
                  {
                     _loc9_ = li32(_loc1_ + 28);
                     si32(_loc12_,int(_loc9_ + (_loc10_ << 2)));
                     _loc9_ = li32(_loc1_ + 32);
                     _loc9_ = int(_loc9_ + 1);
                     si32(_loc9_,_loc1_ + 32);
                     _loc8_ = 0;
                  }
               }
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_d_template_args();
            _loc11_ = 0;
            _loc2_ = int(_loc2_ + 16);
            _loc10_ = int(eax);
            if(_loc8_ == 0)
            {
               if(_loc10_ != 0)
               {
                  _loc6_ = li32(_loc1_ + 20);
                  _loc11_ = 0;
                  if(_loc6_ < li32(_loc1_ + 24))
                  {
                     _loc8_ = li32(_loc1_ + 16);
                     _loc9_ = int(_loc6_ + 1);
                     si32(_loc9_,_loc1_ + 20);
                     _loc6_ = int(_loc6_ * 12);
                     _loc1_ = int(_loc8_ + _loc6_);
                     _loc11_ = 0;
                     if(_loc1_ != 0)
                     {
                        _loc9_ = int(_loc8_ + _loc6_);
                        si32(4,_loc9_);
                        si32(_loc12_,_loc9_ + 4);
                        si32(_loc10_,_loc9_ + 8);
                        _loc11_ = _loc1_;
                     }
                  }
               }
            }
         }
      }
      eax = _loc11_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
