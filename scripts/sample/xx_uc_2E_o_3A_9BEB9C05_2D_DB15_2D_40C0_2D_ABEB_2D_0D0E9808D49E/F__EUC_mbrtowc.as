package sample.xx_uc_2E_o_3A_9BEB9C05_2D_DB15_2D_40C0_2D_ABEB_2D_0D0E9808D49E
{
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   
   public function F__EUC_mbrtowc() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc15_:* = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 12);
      _loc15_ = li32(_loc3_ + 8);
      if(_loc15_ >= 0)
      {
         if(_loc15_ <= li32(___mb_cur_max))
         {
            _loc13_ = li32(_loc3_ + 4);
            if(uint(_loc13_) < 4)
            {
               _loc11_ = li32(_loc4_ + 4);
               _loc10_ = 1;
               if(_loc11_ != 0)
               {
                  _loc10_ = li32(_loc4_ + 8);
               }
               _loc9_ = 0;
               if(_loc11_ != 0)
               {
                  _loc9_ = li32(_loc4_);
               }
               _loc8_ = int(L__2E_str);
               if(_loc11_ != 0)
               {
                  _loc8_ = _loc11_;
               }
               _loc12_ = -2;
               if(_loc10_ != 0)
               {
                  if(_loc15_ == 0)
                  {
                     var _loc14_:* = li32(__CurrentRuneLocale);
                     _loc12_ = li32(_loc14_ + 3148);
                     _loc1_ = si8(li8(_loc8_));
                     _loc13_ = 0;
                     if((_loc1_ & 128) != 0)
                     {
                        _loc11_ = _loc1_ & 255;
                        _loc13_ = 2;
                        if(_loc11_ != 142)
                        {
                           _loc13_ = 1;
                           if(_loc11_ == 143)
                           {
                              _loc13_ = 3;
                           }
                           addr248:
                           _loc11_ = int(_loc11_ + 1);
                           _loc1_ = _loc1_ & 255;
                        }
                        _loc14_ = _loc13_ << 2;
                        _loc14_ = int(_loc12_ + _loc14_);
                        _loc14_ = li32(_loc14_);
                        _loc12_ = int(_loc14_ + -1);
                        _loc10_ = int(_loc10_ + -1);
                        if(_loc10_ == 0)
                        {
                           si32(_loc13_,_loc3_ + 4);
                           si32(_loc12_,_loc3_ + 8);
                           si32(0,_loc3_);
                           _loc12_ = -2;
                        }
                        else
                        {
                           _loc1_ = li8(_loc8_ + 1);
                           _loc11_ = int(_loc8_ + 1);
                           if(_loc1_ == 0)
                           {
                              ESP = _loc2_;
                              F___error();
                              si32(86,int(eax));
                              _loc12_ = -1;
                           }
                           else
                           {
                              §§goto(addr248);
                           }
                        }
                     }
                     _loc14_ = _loc13_ << 2;
                     _loc14_ = int(_loc12_ + _loc14_);
                     _loc12_ = li32(_loc14_);
                     _loc11_ = _loc8_;
                     §§goto(addr248);
                  }
                  else
                  {
                     _loc1_ = li32(_loc3_);
                     _loc12_ = _loc15_;
                     _loc11_ = _loc8_;
                  }
                  _loc5_ = 1;
                  if(_loc15_ != 0)
                  {
                     _loc5_ = 0;
                  }
                  if(uint(_loc10_) > uint(_loc12_))
                  {
                     _loc10_ = _loc12_;
                  }
                  _loc5_ = _loc5_ & 1;
                  while(true)
                  {
                     if(uint(_loc5_) >= uint(_loc10_))
                     {
                        if(_loc5_ < _loc12_)
                        {
                           si32(_loc13_,_loc3_ + 4);
                           _loc14_ = int(_loc12_ - _loc5_);
                           si32(_loc14_,_loc3_ + 8);
                           si32(_loc1_,_loc3_);
                           _loc12_ = -2;
                           break;
                        }
                        _loc14_ = li32(__CurrentRuneLocale);
                        _loc14_ = li32(_loc14_ + 3148);
                        var _loc6_:* = li32(_loc14_ + 32);
                        _loc14_ = int(_loc14_ + (_loc13_ << 2));
                        _loc13_ = _loc1_ & (_loc6_ ^ -1) | li32(_loc14_ + 16);
                        if(_loc9_ != 0)
                        {
                           si32(_loc13_,_loc9_);
                        }
                        _loc12_ = 0;
                        si32(_loc12_,_loc3_ + 8);
                        if(_loc13_ != 0)
                        {
                           _loc12_ = int(_loc11_ - _loc8_);
                           break;
                        }
                        break;
                     }
                     _loc15_ = li8(_loc11_);
                     if(_loc15_ == 0)
                     {
                        ESP = _loc2_;
                        F___error();
                        si32(86,int(eax));
                        _loc12_ = -1;
                        break;
                     }
                     _loc1_ = _loc15_ | _loc1_ << 8;
                     _loc5_ = int(_loc5_ + 1);
                     _loc11_ = int(_loc11_ + 1);
                  }
               }
            }
            addr419:
            eax = _loc12_;
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
      }
      ESP = _loc2_;
      F___error();
      _loc14_ = int(eax);
      si32(22,_loc14_);
      _loc12_ = -1;
      §§goto(addr419);
   }
}
