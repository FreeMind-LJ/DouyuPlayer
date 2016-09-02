package sample.xx_p_2D_demangle_2E_o_3A_4EAE8D64_2D_DBB8_2D_467F_2D_83C7_2D_85C6725F4EAC
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si8;
   
   public function F_d_demangle() : void
   {
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 96);
      _loc1_ = li32(_loc3_ + 4);
      si32(0,_loc1_);
      _loc2_ = int(_loc2_ - 16);
      _loc12_ = li32(_loc3_);
      si32(_loc12_,_loc2_);
      ESP = _loc2_;
      F_strlen();
      _loc2_ = int(_loc2_ + 16);
      _loc11_ = int(eax);
      var _loc10_:* = li8(_loc12_);
      if(_loc10_ == 95)
      {
         _loc9_ = 1;
         if(li8(_loc12_ + 1) != 90)
         {
         }
         addr313:
         si32(_loc12_,_loc3_ - 88);
         var _loc6_:* = int(_loc12_ + _loc11_);
         _loc8_ = int(_loc3_ - 88);
         _loc10_ = _loc8_ | 4;
         si32(_loc6_,_loc10_);
         si32(17,_loc3_ - 80);
         si32(_loc12_,_loc3_ - 76);
         _loc10_ = _loc11_ << 1;
         si32(_loc10_,_loc3_ - 64);
         si32(0,_loc3_ - 68);
         si32(_loc11_,_loc3_ - 52);
         si32(0,_loc3_ - 56);
         si32(0,_loc3_ - 48);
         si32(0,_loc3_ - 44);
         si32(0,_loc3_ - 40);
         _loc12_ = _loc2_;
         _loc10_ = li32(_loc3_ - 64);
         _loc10_ = int(_loc10_ * 12);
         _loc10_ = int(_loc10_ + 15);
         _loc6_ = _loc10_ & -16;
         _loc10_ = _loc2_;
         _loc10_ = int(_loc10_ - _loc6_);
         _loc10_ = _loc10_ & -16;
         _loc2_ = _loc10_;
         _loc6_ = li32(_loc3_ - 52);
         _loc6_ = _loc6_ << 2;
         _loc6_ = int(_loc6_ + 15);
         var _loc5_:* = _loc6_ & -16;
         _loc6_ = _loc2_;
         _loc6_ = int(_loc6_ - _loc5_);
         _loc6_ = _loc6_ & -16;
         _loc2_ = _loc6_;
         si32(_loc10_,_loc3_ - 72);
         si32(_loc6_,_loc3_ - 60);
         if(_loc9_ == 1)
         {
            _loc7_ = li32(_loc3_ - 76);
            _loc10_ = int(_loc7_ + 1);
            si32(_loc10_,_loc3_ - 76);
            _loc9_ = 0;
            if(li8(_loc7_) == 95)
            {
               _loc10_ = int(_loc7_ + 2);
               si32(_loc10_,_loc3_ - 76);
               _loc9_ = 0;
               if(li8(_loc7_ + 1) == 90)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(1,_loc2_ + 4);
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F_d_encoding();
                  _loc2_ = int(_loc2_ + 16);
                  _loc9_ = int(eax);
               }
            }
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_d_type();
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = int(eax);
         }
         _loc10_ = li32(_loc3_ - 76);
         _loc10_ = li8(_loc10_);
         _loc8_ = 0;
         if(_loc10_ != _loc8_)
         {
            _loc9_ = _loc8_;
         }
         if(_loc9_ != 0)
         {
            _loc10_ = li32(_loc3_ - 40);
            _loc6_ = li32(_loc3_ - 48);
            si32(17,_loc3_ - 32);
            _loc6_ = int(int(_loc10_ + _loc11_) + int(_loc6_ * 10)) >> 31;
            _loc6_ = int(_loc6_ >>> 29);
            _loc6_ = int(int(int(_loc10_ + _loc11_) + int(_loc6_ * 10)) + _loc6_);
            _loc10_ = int(int(int(_loc10_ + _loc11_) + int(_loc6_ * 10)) + (_loc6_ >> 3));
            _loc10_ = int(_loc10_ + 1);
            si32(_loc10_,_loc3_ - 20);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_malloc();
            _loc4_ = int(_loc3_ - 32);
            _loc11_ = _loc4_ | 4;
            _loc2_ = int(_loc2_ + 16);
            _loc10_ = int(eax);
            si32(_loc10_,_loc11_);
            _loc8_ = 0;
            _loc7_ = 1;
            if(_loc10_ != 0)
            {
               _loc8_ = 0;
               si32(_loc8_,_loc3_ - 24);
               si32(_loc8_,_loc3_ - 16);
               si32(_loc8_,_loc3_ - 12);
               si32(_loc8_,_loc3_ - 8);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc9_,_loc2_ + 4);
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F_d_print_comp();
               _loc2_ = int(_loc2_ + 16);
               _loc9_ = li32(_loc11_);
               if(_loc9_ != 0)
               {
                  _loc7_ = li32(_loc3_ - 20);
                  _loc4_ = li32(_loc3_ - 24);
                  if(uint(_loc4_) < uint(_loc7_))
                  {
                     si8(_loc8_,int(_loc9_ + _loc4_));
                     addr859:
                     _loc10_ = int(_loc4_ + 1);
                     si32(_loc10_,_loc3_ - 24);
                     _loc11_ = li32(_loc11_);
                     if(_loc11_ != 0)
                     {
                        _loc7_ = li32(_loc3_ - 20);
                        _loc8_ = _loc11_;
                     }
                  }
                  else
                  {
                     _loc4_ = int(_loc4_ + 1);
                     while(true)
                     {
                        if(uint(_loc7_) >= uint(_loc4_))
                        {
                           if(_loc9_ != 0)
                           {
                              si8(_loc8_,int(_loc9_ + li32(_loc3_ - 24)));
                              _loc4_ = li32(_loc3_ - 24);
                              §§goto(addr859);
                           }
                           break;
                        }
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc9_,_loc2_);
                        _loc7_ = _loc7_ << 1;
                        si32(_loc7_,_loc2_ + 4);
                        ESP = _loc2_;
                        F_realloc();
                        _loc2_ = int(_loc2_ + 16);
                        _loc9_ = int(eax);
                        if(_loc9_ == 0)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(li32(_loc11_),_loc2_);
                           ESP = _loc2_;
                           F_free();
                           _loc2_ = int(_loc2_ + 16);
                           si32(_loc8_,_loc11_);
                           si32(1,_loc3_ - 8);
                           break;
                        }
                        si32(_loc9_,_loc11_);
                        si32(_loc7_,_loc3_ - 20);
                     }
                  }
               }
               _loc7_ = li32(_loc3_ - 8);
            }
            si32(_loc7_,_loc1_);
         }
         _loc2_ = _loc12_;
         addr898:
         eax = _loc8_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc2_ = int(_loc2_ - 16);
      si32(8,_loc2_ + 8);
      si32(L__2E_str16,_loc2_ + 4);
      si32(_loc12_,_loc2_);
      ESP = _loc2_;
      F_strncmp();
      _loc2_ = int(_loc2_ + 16);
      _loc10_ = int(eax);
      _loc9_ = 0;
      if(_loc10_ == 0)
      {
         _loc8_ = li8(_loc12_ + 8);
         if(_loc8_ != 36)
         {
            if(_loc8_ != 46)
            {
               _loc9_ = 0;
               if(_loc8_ == 95)
               {
               }
            }
         }
         _loc7_ = li8(_loc12_ + 9);
         if(_loc7_ != 68)
         {
            _loc9_ = 0;
            if(_loc7_ == 73)
            {
            }
         }
         _loc10_ = li8(_loc12_ + 10);
         _loc9_ = 0;
         if(_loc10_ == 95)
         {
            _loc2_ = int(_loc2_ - 16);
            _loc10_ = int(_loc11_ + 29);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_malloc();
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = int(eax);
            if(_loc8_ == 0)
            {
               si32(1,_loc1_);
               _loc8_ = 0;
            }
            else
            {
               if(_loc7_ == 73)
               {
                  si16(32,_loc8_ + 28);
                  si32(1869881444,_loc8_ + 24);
                  si32(1702454635,_loc8_ + 20);
                  si32(544436847,_loc8_ + 16);
                  si32(1952675186,_loc8_ + 12);
                  si32(1953721967,_loc8_ + 8);
                  si32(1663069281,_loc8_ + 4);
                  si32(1651469415,_loc8_);
               }
               else
               {
                  si8(0,_loc8_ + 28);
                  si32(544175136,_loc8_ + 24);
                  si32(1684371813,_loc8_ + 20);
                  si32(1797288818,_loc8_ + 16);
                  si32(1869898613,_loc8_ + 12);
                  si32(1920234341,_loc8_ + 8);
                  si32(1679846497,_loc8_ + 4);
                  si32(1651469415,_loc8_);
               }
               _loc2_ = int(_loc2_ - 16);
               si32(_loc8_,_loc2_);
               _loc10_ = int(_loc12_ + 11);
               si32(_loc10_,_loc2_ + 4);
               ESP = _loc2_;
               F_strcat();
               _loc2_ = int(_loc2_ + 16);
            }
         }
         §§goto(addr898);
      }
      §§goto(addr313);
   }
}
