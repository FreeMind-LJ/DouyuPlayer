package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.eax;
   
   public function F_d_expr_primary() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc5_:* = 0;
      var _loc13_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc12_:int = 0;
      var _loc8_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      _loc14_ = li32(_loc3_ + 12);
      _loc13_ = li8(_loc14_);
      _loc12_ = _loc14_ + 1;
      si32(_loc12_,_loc3_ + 12);
      _loc11_ = 0;
      if(_loc13_ == 76)
      {
         _loc13_ = li8(_loc12_);
         if(_loc13_ == 95)
         {
            _loc13_ = int(_loc14_ + 2);
            si32(_loc13_,_loc3_ + 12);
            _loc13_ = int(_loc14_ + 3);
            si32(_loc13_,_loc3_ + 12);
            _loc11_ = 0;
            if(li8(_loc14_ + 2) == 90)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(0,_loc2_ + 4);
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F_d_encoding();
               _loc2_ = int(_loc2_ + 16);
               _loc11_ = int(eax);
            }
            addr518:
            var _loc10_:* = li32(_loc3_ + 12);
            _loc13_ = li8(_loc10_);
            _loc10_ = int(_loc10_ + 1);
            si32(_loc10_,_loc3_ + 12);
            if(_loc13_ != 69)
            {
               _loc11_ = 0;
            }
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_d_type();
            _loc11_ = 0;
            _loc2_ = int(_loc2_ + 16);
            _loc14_ = int(eax);
            if(_loc14_ != 0)
            {
               _loc13_ = li32(_loc14_);
               if(_loc13_ == 33)
               {
                  _loc11_ = li32(_loc14_ + 4);
                  _loc13_ = li32(_loc11_ + 16);
                  if(_loc13_ != 0)
                  {
                     _loc10_ = li32(_loc3_ + 48);
                     _loc13_ = int(_loc10_ - li32(_loc11_ + 4));
                     si32(_loc13_,_loc3_ + 48);
                  }
               }
               _loc9_ = li32(_loc3_ + 12);
               _loc13_ = li8(_loc9_);
               _loc12_ = 49;
               if(_loc13_ == 110)
               {
                  _loc9_ = int(_loc9_ + 1);
                  si32(_loc9_,_loc3_ + 12);
                  _loc12_ = 50;
               }
               _loc8_ = int(_loc9_ + 1);
               _loc11_ = 0;
               _loc7_ = _loc11_;
               while(true)
               {
                  _loc13_ = int(_loc9_ + _loc7_);
                  _loc1_ = li8(_loc13_);
                  if(_loc1_ != 0)
                  {
                     if(_loc1_ == 69)
                     {
                        _loc5_ = li32(_loc3_ + 20);
                        _loc11_ = 0;
                        _loc8_ = _loc11_;
                        if(_loc5_ < li32(_loc3_ + 24))
                        {
                           _loc1_ = li32(_loc3_ + 16);
                           _loc13_ = int(_loc5_ + 1);
                           si32(_loc13_,_loc3_ + 20);
                           _loc6_ = _loc5_ * 12;
                           _loc5_ = int(_loc1_ + _loc6_);
                           _loc8_ = 0;
                           if(_loc5_ != 0)
                           {
                              if(_loc9_ != 0)
                              {
                                 if(_loc7_ != 0)
                                 {
                                    _loc13_ = int(_loc1_ + _loc6_);
                                    si32(0,_loc13_);
                                    si32(_loc9_,_loc13_ + 4);
                                    si32(_loc7_,_loc13_ + 8);
                                    _loc8_ = _loc5_;
                                 }
                              }
                           }
                        }
                        if(_loc12_ <= 33)
                        {
                           _loc7_ = int(_loc12_ + -1);
                           if(uint(_loc7_) <= 31)
                           {
                              _loc7_ = 1 << _loc7_;
                              _loc13_ = _loc7_ & -267387520;
                              if(_loc13_ == 0)
                              {
                                 _loc13_ = _loc7_ & 134218255;
                                 if(_loc13_ == 0)
                                 {
                                    _loc13_ = _loc7_ & 132120576;
                                    if(_loc13_ != 0)
                                    {
                                       addr450:
                                       _loc9_ = li32(_loc3_ + 20);
                                       _loc13_ = li32(_loc3_ + 24);
                                       _loc11_ = 0;
                                       if(_loc9_ < _loc13_)
                                       {
                                          _loc7_ = li32(_loc3_ + 16);
                                          _loc13_ = int(_loc9_ + 1);
                                          si32(_loc13_,_loc3_ + 20);
                                          _loc9_ = int(_loc9_ * 12);
                                          _loc1_ = int(_loc7_ + _loc9_);
                                          _loc11_ = 0;
                                          if(_loc1_ != 0)
                                          {
                                             _loc13_ = int(_loc7_ + _loc9_);
                                             si32(_loc12_,_loc13_);
                                             si32(_loc14_,_loc13_ + 4);
                                             si32(_loc8_,_loc13_ + 8);
                                             _loc11_ = _loc1_;
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr426:
                                    _loc11_ = 0;
                                    if(_loc14_ != 0)
                                    {
                                       if(_loc8_ != 0)
                                       {
                                          §§goto(addr450);
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 addr437:
                                 _loc11_ = 0;
                                 if(_loc14_ != 0)
                                 {
                                    §§goto(addr450);
                                 }
                              }
                           }
                        }
                        else if(_loc12_ <= 36)
                        {
                           if(_loc12_ != 34)
                           {
                              if(_loc12_ != 35)
                              {
                                 if(_loc12_ == 36)
                                 {
                                    _loc11_ = 0;
                                    if(_loc8_ != 0)
                                    {
                                    }
                                 }
                              }
                              §§goto(addr450);
                           }
                           else
                           {
                              §§goto(addr437);
                           }
                        }
                        else
                        {
                           _loc7_ = int(_loc12_ + -37);
                           if(uint(_loc7_) <= 13)
                           {
                              _loc7_ = 1 << _loc7_;
                              _loc13_ = _loc7_ & 16321;
                              if(_loc13_ == 0)
                              {
                                 _loc13_ = _loc7_ & 38;
                                 if(_loc13_ != 0)
                                 {
                                    §§goto(addr437);
                                 }
                              }
                              else
                              {
                                 §§goto(addr426);
                              }
                           }
                        }
                        §§goto(addr518);
                     }
                     else
                     {
                        _loc13_ = int(_loc8_ + _loc7_);
                        si32(_loc13_,_loc3_ + 12);
                        _loc7_ = int(_loc7_ + 1);
                        continue;
                     }
                  }
                  break;
               }
            }
         }
      }
      eax = _loc11_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
