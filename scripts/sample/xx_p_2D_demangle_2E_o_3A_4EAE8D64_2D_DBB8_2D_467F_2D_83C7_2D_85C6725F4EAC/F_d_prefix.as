package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import sample.xx.ESP;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.eax;
   
   public function F_d_prefix() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:int = 0;
      var _loc10_:* = 0;
      var _loc14_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      _loc14_ = 0;
      while(true)
      {
         _loc13_ = _loc14_;
         _loc12_ = li32(_loc3_ + 12);
         _loc11_ = li8(_loc12_);
         _loc10_ = 0;
         if(_loc11_ != 0)
         {
            var _loc9_:* = int(_loc11_ + -48);
            _loc9_ = _loc9_ & 255;
            if(uint(_loc9_) >= 10)
            {
               _loc9_ = int(_loc11_ + -97);
               _loc9_ = _loc9_ & 255;
               if(uint(_loc9_) >= 26)
               {
                  _loc9_ = _loc11_ << 24;
                  _loc9_ = _loc9_ >> 24;
                  if(_loc9_ <= 75)
                  {
                     _loc9_ = int(_loc11_ + -67);
                     _loc9_ = _loc9_ & 255;
                     if(uint(_loc9_) >= 2)
                     {
                        _loc10_ = _loc13_;
                        if(_loc11_ != 69)
                        {
                           if(_loc11_ != 73)
                           {
                              addr606:
                              _loc10_ = 0;
                              break;
                           }
                           _loc10_ = 0;
                           if(_loc13_ != 0)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc3_,_loc2_);
                              ESP = _loc2_;
                              F_d_template_args();
                              _loc8_ = 4;
                              _loc2_ = int(_loc2_ + 16);
                              _loc14_ = int(eax);
                              addr462:
                              _loc10_ = _loc14_;
                              _loc14_ = 0;
                              if(_loc10_ != 0)
                              {
                                 _loc12_ = li32(_loc3_ + 20);
                                 _loc14_ = 0;
                                 if(_loc12_ < li32(_loc3_ + 24))
                                 {
                                    _loc7_ = li32(_loc3_ + 16);
                                    _loc9_ = int(_loc12_ + 1);
                                    si32(_loc9_,_loc3_ + 20);
                                    _loc6_ = _loc12_ * 12;
                                    _loc12_ = int(_loc7_ + _loc6_);
                                    _loc14_ = 0;
                                    if(_loc12_ != 0)
                                    {
                                       _loc9_ = int(_loc7_ + _loc6_);
                                       si32(_loc8_,_loc9_);
                                       si32(_loc13_,_loc9_ + 4);
                                       si32(_loc10_,_loc9_ + 8);
                                       _loc14_ = _loc12_;
                                    }
                                 }
                              }
                           }
                           break;
                        }
                        break;
                     }
                     addr537:
                     if(_loc11_ != 83)
                     {
                        _loc9_ = li32(_loc3_ + 12);
                        _loc9_ = li8(_loc9_);
                        if(_loc9_ != 69)
                        {
                           _loc10_ = 0;
                           if(_loc14_ != 0)
                           {
                              _loc11_ = li32(_loc3_ + 32);
                              _loc10_ = 0;
                              if(_loc11_ < li32(_loc3_ + 36))
                              {
                                 _loc9_ = li32(_loc3_ + 28);
                                 si32(_loc14_,int(_loc9_ + (_loc11_ << 2)));
                                 _loc9_ = li32(_loc3_ + 32);
                                 _loc9_ = int(_loc9_ + 1);
                                 si32(_loc9_,_loc3_ + 32);
                                 continue;
                              }
                              break;
                           }
                           break;
                        }
                     }
                     continue;
                  }
                  if(_loc11_ != 84)
                  {
                     if(_loc11_ != 83)
                     {
                        if(_loc11_ != 76)
                        {
                           §§goto(addr606);
                        }
                     }
                     else
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(1,_loc2_ + 4);
                        si32(_loc3_,_loc2_);
                        ESP = _loc2_;
                        F_d_substitution();
                        _loc2_ = int(_loc2_ + 16);
                        _loc14_ = int(eax);
                     }
                  }
                  else
                  {
                     _loc7_ = int(_loc12_ + 1);
                     si32(_loc7_,_loc3_ + 12);
                     _loc10_ = li8(_loc12_ + 1);
                     _loc14_ = 0;
                     if(_loc10_ != 110)
                     {
                        _loc8_ = _loc14_;
                        if(_loc10_ == 95)
                        {
                           _loc9_ = int(_loc12_ + 2);
                           si32(_loc9_,_loc3_ + 12);
                           _loc7_ = 0;
                           addr378:
                           _loc9_ = li32(_loc3_ + 40);
                           _loc9_ = int(_loc9_ + 1);
                           si32(_loc9_,_loc3_ + 40);
                           _loc8_ = li32(_loc3_ + 20);
                           _loc9_ = li32(_loc3_ + 24);
                           _loc14_ = 0;
                           if(_loc8_ < _loc9_)
                           {
                              _loc10_ = li32(_loc3_ + 16);
                              _loc9_ = int(_loc8_ + 1);
                              si32(_loc9_,_loc3_ + 20);
                              _loc8_ = int(_loc8_ * 12);
                              _loc12_ = int(_loc10_ + _loc8_);
                              _loc14_ = 0;
                              if(_loc12_ != 0)
                              {
                                 _loc9_ = int(_loc10_ + _loc8_);
                                 si32(5,_loc9_);
                                 si32(_loc7_,_loc9_ + 4);
                                 _loc14_ = _loc12_;
                              }
                           }
                        }
                     }
                     else
                     {
                        _loc7_ = int(_loc12_ + 2);
                        si32(_loc7_,_loc3_ + 12);
                        _loc10_ = li8(_loc12_ + 2);
                        _loc8_ = 1;
                     }
                     _loc9_ = int(_loc10_ + -48);
                     _loc9_ = _loc9_ & 255;
                     _loc12_ = _loc14_;
                     if(uint(_loc9_) <= 9)
                     {
                        do
                        {
                           _loc9_ = int(_loc7_ + 1);
                           si32(_loc9_,_loc3_ + 12);
                           var _loc1_:* = int(_loc12_ * 10);
                           var _loc5_:* = _loc10_ << 24;
                           _loc5_ = _loc5_ >> 24;
                           _loc1_ = int(_loc1_ + _loc5_);
                           _loc12_ = int(_loc1_ + -48);
                           _loc10_ = li8(_loc7_ + 1);
                           _loc1_ = int(_loc10_ + -48);
                           _loc1_ = _loc1_ & 255;
                           _loc7_ = _loc9_;
                        }
                        while(uint(_loc1_) < 10);
                        
                     }
                     if(_loc8_ != _loc14_)
                     {
                        _loc12_ = int(0 - _loc12_);
                     }
                     if(_loc12_ >= 0)
                     {
                        _loc9_ = int(_loc7_ + 1);
                        si32(_loc9_,_loc3_ + 12);
                        _loc14_ = 0;
                        if((_loc10_ & 255) == 95)
                        {
                           _loc7_ = int(_loc12_ + 1);
                           §§goto(addr378);
                        }
                     }
                  }
                  addr456:
                  _loc8_ = 1;
                  if(_loc13_ != 0)
                  {
                     §§goto(addr462);
                  }
                  §§goto(addr537);
               }
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_d_unqualified_name();
            _loc2_ = int(_loc2_ + 16);
            _loc14_ = int(eax);
            §§goto(addr456);
         }
         break;
      }
      eax = _loc10_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
