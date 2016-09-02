package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_trtol_2E_o_3A_6D39D7FE_2D_C588_2D_4815_2D_BD5B_2D_48DEA93710BE.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F_strtol() : void
   {
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc16_:int = 0;
      var _loc15_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      _loc16_ = _loc3_ + 1;
      _loc15_ = int(_loc3_ + 2);
      _loc14_ = li32(__CurrentRuneLocale);
      _loc13_ = li32(___mb_sb_limit);
      _loc12_ = li32(_loc4_ + 8);
      _loc11_ = li32(_loc4_ + 4);
      while(true)
      {
         _loc10_ = _loc16_;
         _loc9_ = _loc15_;
         _loc1_ = li8(_loc9_ - 2);
         if(_loc13_ > _loc1_)
         {
            var _loc5_:* = int(_loc14_ + (_loc1_ << 2));
            _loc5_ = li8(_loc5_ + 53);
            _loc16_ = _loc10_ + 1;
            _loc15_ = int(_loc9_ + 1);
            if((_loc5_ & 64) == 0)
            {
               break;
            }
            continue;
         }
         break;
      }
      if(_loc1_ != 43)
      {
         _loc16_ = 0;
         if(_loc1_ == 45)
         {
            _loc1_ = li8(_loc10_);
            _loc16_ = 1;
            _loc10_ = _loc9_;
         }
      }
      else
      {
         _loc1_ = li8(_loc10_);
         _loc16_ = 0;
         _loc10_ = _loc9_;
      }
      _loc5_ = _loc12_ | 16;
      if(_loc5_ == 16)
      {
         _loc15_ = _loc1_ & 255;
         if(_loc15_ == 48)
         {
            _loc5_ = li8(_loc10_);
            _loc5_ = _loc5_ | 32;
            _loc5_ = _loc5_ & 255;
            if(_loc5_ == 120)
            {
               _loc9_ = li8(_loc10_ + 1);
               _loc5_ = int(_loc9_ + -48);
               _loc5_ = _loc5_ & 255;
               if(uint(_loc5_) >= 10)
               {
                  _loc5_ = int(_loc9_ + -65);
                  _loc5_ = _loc5_ & 255;
                  if(uint(_loc5_) >= 6)
                  {
                     _loc5_ = int(_loc9_ + -97);
                     _loc5_ = _loc5_ & 255;
                     if(uint(_loc5_) <= 5)
                     {
                     }
                     addr419:
                     ESP = _loc2_;
                     F___error();
                     _loc5_ = int(eax);
                     si32(22,_loc5_);
                     addr447:
                     _loc8_ = 0;
                     if(_loc11_ != 0)
                     {
                        if(_loc8_ != 0)
                        {
                           _loc3_ = int(_loc10_ + -1);
                        }
                        si32(_loc3_,_loc11_);
                     }
                     eax = _loc15_;
                     _loc2_ = _loc4_;
                     ESP = _loc2_;
                     return;
                  }
               }
               _loc10_ = int(_loc10_ + 2);
               _loc12_ = 16;
               _loc1_ = _loc9_;
               addr249:
               _loc9_ = 2147483647;
               _loc15_ = 0;
               if(_loc16_ != _loc15_)
               {
                  _loc9_ = -2147483648;
               }
               _loc14_ = int(uint(_loc9_) / uint(_loc12_));
               _loc13_ = int(uint(_loc9_) % uint(_loc12_));
               _loc6_ = _loc15_;
               while(true)
               {
                  _loc7_ = _loc10_;
                  _loc8_ = _loc6_;
                  _loc10_ = int(_loc1_ + -48);
                  _loc5_ = _loc10_ & 255;
                  if(uint(_loc5_) >= 10)
                  {
                     _loc5_ = int(_loc1_ + -65);
                     _loc5_ = _loc5_ & 255;
                     if(uint(_loc5_) <= 25)
                     {
                        _loc10_ = int(_loc1_ + -55);
                     }
                     else
                     {
                        _loc5_ = int(_loc1_ + -97);
                        _loc5_ = _loc5_ & 255;
                        if(uint(_loc5_) <= 25)
                        {
                           _loc10_ = int(_loc1_ + -87);
                        }
                        break;
                     }
                  }
                  _loc5_ = _loc10_ << 24;
                  _loc1_ = _loc5_ >> 24;
                  if(_loc1_ < _loc12_)
                  {
                     _loc6_ = -1;
                     if(_loc8_ >= 0)
                     {
                        if(uint(_loc15_) <= uint(_loc14_))
                        {
                           if(_loc15_ == _loc14_)
                           {
                              _loc6_ = -1;
                              if(_loc1_ <= _loc13_)
                              {
                              }
                              continue;
                           }
                           _loc5_ = int(_loc15_ * _loc12_);
                           _loc15_ = int(_loc1_ + _loc5_);
                           _loc6_ = 1;
                           continue;
                        }
                        continue;
                     }
                     continue;
                  }
                  break;
               }
               if(_loc8_ <= -1)
               {
                  ESP = _loc2_;
                  F___error();
                  si32(34,int(eax));
                  _loc15_ = _loc9_;
                  _loc10_ = _loc7_;
               }
               else
               {
                  _loc10_ = _loc7_;
                  if(_loc8_ == 0)
                  {
                     §§goto(addr419);
                  }
                  else
                  {
                     if(_loc16_ != 0)
                     {
                        _loc15_ = int(0 - _loc15_);
                     }
                     _loc10_ = _loc7_;
                  }
               }
               §§goto(addr447);
            }
         }
         if(_loc12_ == 0)
         {
            _loc12_ = 8;
            if(_loc15_ != 48)
            {
               _loc12_ = 10;
            }
         }
      }
      _loc5_ = int(_loc12_ + -2);
      _loc15_ = 0;
      if(uint(_loc5_) <= 34)
      {
         §§goto(addr249);
      }
      §§goto(addr419);
   }
}
