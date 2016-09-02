package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_is_2E_o_3A_FD7E00CC_2D_B6E4_2D_4AF8_2D_B05A_2D_BCAD2881D922.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.si32;
   
   public function F_vis() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc9_ = _loc1_ & 255;
      _loc8_ = li32(_loc3_ + 8);
      _loc7_ = _loc8_ & 128;
      _loc6_ = li32(_loc3_);
      if(_loc7_ != 0)
      {
         _loc7_ = li32(___mb_sb_limit);
         if(_loc7_ > _loc9_)
         {
            _loc7_ = li32(__CurrentRuneLocale);
            _loc7_ = int(_loc7_ + (_loc9_ << 2));
            _loc7_ = li8(_loc7_ + 53);
            _loc7_ = _loc7_ & 5;
            if(_loc7_ == 0)
            {
            }
         }
         if(_loc9_ <= 38)
         {
            if(_loc9_ != 33)
            {
               if(_loc9_ != 36)
               {
                  addr105:
                  si8(37,_loc6_);
                  _loc2_ = int(_loc2_ - 16);
                  si32(4,_loc2_ + 4);
                  _loc7_ = int(_loc6_ + 1);
                  si32(_loc7_,_loc2_);
                  si32(_loc9_,_loc2_ + 12);
                  _loc8_ = int(L__2E_str);
                  if(uint(_loc9_) >= 16)
                  {
                     _loc8_ = int(L__2E_str1);
                  }
                  si32(_loc8_,_loc2_ + 8);
                  ESP = _loc2_;
                  F_snprintf();
                  _loc2_ = int(_loc2_ + 16);
                  _loc1_ = int(_loc6_ + 3);
               }
               addr771:
               addr775:
               si8(0,_loc1_);
               eax = _loc1_;
               _loc2_ = _loc3_;
               ESP = _loc2_;
               return;
            }
         }
         else
         {
            _loc7_ = int(_loc9_ + -39);
            if(uint(_loc7_) >= 8)
            {
               if(_loc9_ != 95)
               {
                  §§goto(addr105);
               }
               §§goto(addr771);
            }
         }
      }
      _loc4_ = li32(_loc3_ + 12);
      _loc7_ = _loc8_ & 256;
      if(_loc7_ != 0)
      {
         if(_loc9_ <= 62)
         {
            if(_loc9_ != 35)
            {
               if(_loc9_ != 42)
               {
               }
            }
         }
         else if(_loc9_ != 63)
         {
            if(_loc9_ != 91)
            {
            }
         }
         addr324:
         _loc7_ = _loc8_ & 2;
         if(_loc7_ != 0)
         {
            if(_loc9_ <= 9)
            {
               if(_loc9_ <= 7)
               {
                  if(_loc9_ != 0)
                  {
                     if(_loc9_ == 7)
                     {
                        si8(92,_loc6_);
                        si8(97,_loc6_ + 1);
                        _loc1_ = int(_loc6_ + 2);
                     }
                  }
                  else
                  {
                     si8(92,_loc6_);
                     si8(48,_loc6_ + 1);
                     _loc1_ = int(_loc6_ + 2);
                     _loc7_ = int(_loc4_ + -48);
                     _loc7_ = _loc7_ & 255;
                     if(uint(_loc7_) <= 7)
                     {
                        si8(48,_loc6_ + 2);
                        si8(48,_loc6_ + 3);
                        _loc1_ = int(_loc6_ + 4);
                     }
                  }
               }
               else if(_loc9_ != 8)
               {
                  if(_loc9_ == 9)
                  {
                     si8(92,_loc6_);
                     si8(116,_loc6_ + 1);
                     _loc1_ = int(_loc6_ + 2);
                  }
               }
               else
               {
                  si8(92,_loc6_);
                  si8(98,_loc6_ + 1);
                  _loc1_ = int(_loc6_ + 2);
               }
            }
            else if(_loc9_ <= 11)
            {
               if(_loc9_ != 10)
               {
                  if(_loc9_ == 11)
                  {
                     si8(92,_loc6_);
                     si8(118,_loc6_ + 1);
                     _loc1_ = int(_loc6_ + 2);
                  }
               }
               else
               {
                  si8(92,_loc6_);
                  si8(110,_loc6_ + 1);
                  _loc1_ = int(_loc6_ + 2);
               }
            }
            else if(_loc9_ != 12)
            {
               if(_loc9_ != 13)
               {
                  if(_loc9_ == 32)
                  {
                     si8(92,_loc6_);
                     si8(115,_loc6_ + 1);
                     _loc1_ = int(_loc6_ + 2);
                  }
               }
               else
               {
                  si8(92,_loc6_);
                  si8(114,_loc6_ + 1);
                  _loc1_ = int(_loc6_ + 2);
               }
            }
            else
            {
               si8(92,_loc6_);
               si8(102,_loc6_ + 1);
               _loc1_ = int(_loc6_ + 2);
            }
            §§goto(addr771);
         }
         _loc4_ = _loc1_ & 127;
         if(_loc4_ != 32)
         {
            _loc7_ = li32(___mb_sb_limit);
            if(_loc7_ > _loc9_)
            {
               _loc7_ = li32(__CurrentRuneLocale);
               _loc7_ = int(_loc7_ + (_loc9_ << 2));
               _loc7_ = li8(_loc7_ + 53);
               _loc7_ = _loc7_ & 8;
               if(_loc7_ == 0)
               {
               }
            }
            _loc7_ = _loc8_ & 1;
            if(_loc7_ == 0)
            {
               _loc7_ = _loc8_ & 64;
               if(_loc7_ == 0)
               {
                  si8(92,_loc6_);
                  _loc6_ = int(_loc6_ + 1);
               }
               _loc7_ = _loc1_ & 128;
               if(_loc7_ != 0)
               {
                  si8(77,_loc6_);
                  _loc6_ = int(_loc6_ + 1);
                  _loc9_ = _loc4_;
               }
               _loc7_ = li32(___mb_sb_limit);
               if(_loc7_ > _loc9_)
               {
                  var _loc5_:* = li32(__CurrentRuneLocale);
                  _loc7_ = int(_loc5_ + (_loc9_ << 2));
                  _loc7_ = li8(_loc7_ + 53);
                  _loc7_ = _loc7_ & 2;
                  if(_loc7_ != 0)
                  {
                     si8(94,_loc6_);
                     if(_loc9_ == 127)
                     {
                        si8(63,_loc6_ + 1);
                        _loc1_ = int(_loc6_ + 2);
                     }
                     else
                     {
                        _loc7_ = int(_loc9_ + 64);
                        si8(_loc7_,_loc6_ + 1);
                        _loc1_ = int(_loc6_ + 2);
                     }
                  }
               }
               si8(45,_loc6_);
               si8(_loc9_,_loc6_ + 1);
               _loc1_ = int(_loc6_ + 2);
            }
            §§goto(addr771);
         }
         si8(92,_loc6_);
         _loc7_ = _loc1_ & 255;
         _loc5_ = int(_loc7_ >>> 6);
         _loc5_ = _loc5_ | 48;
         si8(_loc5_,_loc6_ + 1);
         _loc7_ = int(_loc7_ >>> 3);
         _loc7_ = _loc7_ & 7;
         _loc7_ = _loc7_ | 48;
         si8(_loc7_,_loc6_ + 2);
         _loc7_ = _loc1_ & 7;
         _loc7_ = _loc7_ | 48;
         si8(_loc7_,_loc6_ + 3);
         _loc1_ = int(_loc6_ + 4);
         §§goto(addr771);
      }
      _loc7_ = li32(___mb_sb_limit);
      if(_loc7_ > _loc9_)
      {
         _loc5_ = li32(__CurrentRuneLocale);
         _loc7_ = int(_loc5_ + (_loc9_ << 2));
         _loc7_ = li8(_loc7_ + 53);
         _loc7_ = _loc7_ & 8;
         if(_loc7_ == 0)
         {
         }
         addr288:
         si8(_loc1_,_loc6_);
         _loc1_ = int(_loc6_ + 1);
         if(_loc9_ == 92)
         {
            _loc7_ = _loc8_ & 64;
            if(_loc7_ == 0)
            {
               si8(92,_loc6_ + 1);
               _loc1_ = int(_loc6_ + 2);
            }
         }
         si8(0,_loc1_);
         §§goto(addr775);
      }
      _loc7_ = _loc8_ & 4;
      if(_loc7_ == 0)
      {
         if(_loc9_ != 32)
         {
         }
         §§goto(addr288);
      }
      _loc7_ = _loc8_ & 8;
      if(_loc7_ == 0)
      {
         if(_loc9_ != 9)
         {
         }
         §§goto(addr288);
      }
      _loc7_ = _loc8_ & 16;
      if(_loc7_ == 0)
      {
         if(_loc9_ != 10)
         {
         }
         §§goto(addr288);
      }
      _loc7_ = _loc8_ & 32;
      if(_loc7_ != 0)
      {
         _loc7_ = int(_loc9_ + -7);
         if(uint(_loc7_) >= 2)
         {
            if(_loc9_ == 13)
            {
            }
            §§goto(addr775);
         }
         §§goto(addr288);
      }
      §§goto(addr324);
   }
}
