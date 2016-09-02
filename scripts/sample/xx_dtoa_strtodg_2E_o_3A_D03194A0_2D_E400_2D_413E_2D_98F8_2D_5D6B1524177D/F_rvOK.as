package sample.xx_dtoa_strtodg_2E_o_3A_D03194A0_2D_E400_2D_413E_2D_98F8_2D_5D6B1524177D
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import sample.xx.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   
   public function F_rvOK() : void
   {
      var _loc4_:* = 0;
      var _loc15_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc12_:* = 0;
      var _loc14_:* = 0;
      var _loc10_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:* = 0;
      var _loc5_:int = 0;
      var _loc16_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc2_ = int(_loc2_ - 16);
      _loc3_ = int(_loc4_ - 4);
      si32(_loc3_,_loc2_ + 12);
      _loc3_ = int(_loc4_ - 8);
      si32(_loc3_,_loc2_ + 8);
      var _loc11_:* = lf64(_loc4_);
      sf64(_loc11_,_loc2_);
      ESP = _loc2_;
      F___d2b_D2A();
      _loc2_ = int(_loc2_ + 16);
      _loc16_ = eax;
      _loc15_ = li32(_loc4_ + 8);
      _loc14_ = li32(_loc15_);
      _loc3_ = li32(_loc4_ - 4);
      _loc13_ = int(_loc3_ - _loc14_);
      si32(_loc13_,_loc4_ - 4);
      _loc3_ = li32(_loc4_ - 8);
      _loc3_ = int(_loc3_ + _loc13_);
      si32(_loc3_,_loc4_ - 8);
      _loc12_ = li32(_loc4_ + 28);
      _loc10_ = li32(_loc4_ + 20);
      _loc9_ = li32(_loc4_ + 16);
      _loc8_ = li32(_loc4_ + 12);
      if(_loc13_ <= 0)
      {
         _loc1_ = 0;
         if(_loc10_ != 0)
         {
         }
         addr781:
         _loc2_ = int(_loc2_ - 16);
         si32(_loc16_,_loc2_);
         ESP = _loc2_;
         F___Bfree_D2A();
         _loc2_ = int(_loc2_ + 16);
         eax = _loc1_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      if(_loc14_ == 53)
      {
         _loc1_ = 0;
         if(_loc10_ != 0)
         {
            _loc1_ = 0;
            if(li32(_loc15_ + 12) == 1)
            {
               _loc5_ = 0;
               _loc13_ = li32(_loc4_ - 4);
            }
         }
         §§goto(addr781);
      }
      else
      {
         _loc6_ = li32(_loc4_ + 24);
         _loc5_ = 0;
         if(_loc6_ != 1)
         {
            if(_loc6_ != 2)
            {
               _loc6_ = int(_loc13_ + -1);
               _loc5_ = 0;
               if(_loc6_ >= 0)
               {
                  if(_loc6_ == 0)
                  {
                     _loc1_ = 0;
                     if(_loc10_ != 0)
                     {
                        _loc5_ = 0;
                        if((li8(_loc16_ + 20) & 2) != 0)
                        {
                        }
                     }
                     §§goto(addr781);
                  }
                  else
                  {
                     var _loc7_:* = _loc6_ >> 5;
                     _loc7_ = int(_loc16_ + (_loc7_ << 2));
                     _loc7_ = li32(_loc7_ + 20);
                     _loc5_ = 0;
                     if((_loc7_ & 1 << (_loc6_ & 31)) != 0)
                     {
                     }
                  }
               }
            }
            _loc5_ = 1;
         }
      }
      if(_loc13_ >= 1)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc13_,_loc2_ + 4);
         si32(_loc16_,_loc2_);
         ESP = _loc2_;
         F___any_on_D2A();
         _loc2_ = int(_loc2_ + 16);
         _loc6_ = int(eax);
         _loc2_ = int(_loc2_ - 16);
         si32(li32(_loc4_ - 4),_loc2_ + 4);
         si32(_loc16_,_loc2_);
         ESP = _loc2_;
         F___rshift_D2A();
         _loc2_ = int(_loc2_ + 16);
         if(_loc5_ == 0)
         {
            _loc5_ = 0;
            if(_loc6_ != _loc5_)
            {
               _loc5_ = 16;
            }
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc16_,_loc2_);
            ESP = _loc2_;
            F___increment_D2A();
            _loc2_ = int(_loc2_ + 16);
            _loc16_ = eax;
            _loc2_ = int(_loc2_ - 16);
            si32(li32(int((li32(_loc16_ + 16) << 2) + _loc16_) + 16),_loc2_);
            _loc13_ = _loc14_ & 31;
            if(_loc13_ != 0)
            {
               _loc13_ = int(32 - _loc13_);
            }
            ESP = _loc2_;
            F___hi0bits_D2A();
            _loc5_ = 32;
            _loc2_ = int(_loc2_ + 16);
            _loc3_ = int(eax);
            if(_loc3_ != _loc13_)
            {
               if(_loc6_ == 0)
               {
                  _loc6_ = li32(_loc16_ + 20) & 1;
               }
               _loc2_ = int(_loc2_ - 16);
               si32(1,_loc2_ + 4);
               si32(_loc16_,_loc2_);
               ESP = _loc2_;
               F___rshift_D2A();
               _loc2_ = int(_loc2_ + 16);
               _loc3_ = li32(_loc4_ - 8);
               _loc3_ = int(_loc3_ + 1);
               si32(_loc3_,_loc4_ - 8);
               _loc5_ = 32;
            }
         }
      }
      addr507:
      _loc1_ = li32(_loc15_ + 4);
      _loc13_ = li32(_loc4_ - 8);
      if(_loc1_ > _loc13_)
      {
         si32(_loc1_,_loc4_ - 8);
         _loc13_ = int(_loc1_ - _loc13_);
         if(_loc13_ <= _loc14_)
         {
            if(li32(_loc15_ + 16) == 0)
            {
               _loc15_ = int(_loc13_ + -1);
               if(_loc15_ >= 1)
               {
                  if(_loc6_ == 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc15_,_loc2_ + 4);
                     si32(_loc16_,_loc2_);
                     ESP = _loc2_;
                     F___any_on_D2A();
                     _loc2_ = int(_loc2_ + 16);
                     _loc6_ = int(eax);
                  }
               }
               _loc3_ = _loc6_ | _loc10_;
               _loc1_ = 0;
               if(_loc3_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc13_,_loc2_ + 4);
                  si32(_loc16_,_loc2_);
                  ESP = _loc2_;
                  F___rshift_D2A();
                  _loc2_ = int(_loc2_ + 16);
                  si32(2,_loc12_);
                  _loc10_ = li32(int(_loc16_ + (_loc15_ >> 5 << 2)) + 20) & 1 << (_loc15_ & 31);
                  if(_loc10_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc16_,_loc2_);
                     ESP = _loc2_;
                     F___increment_D2A();
                     _loc5_ = 96;
                     _loc2_ = int(_loc2_ + 16);
                     _loc16_ = eax;
                  }
                  else if((_loc10_ | _loc6_) != 0)
                  {
                     _loc5_ = 80;
                  }
               }
            }
            §§goto(addr781);
         }
         _loc5_ = 0;
         si32(_loc5_,_loc16_ + 16);
         si32(80,_loc12_);
      }
      else
      {
         _loc10_ = li32(_loc15_ + 8);
         if(_loc10_ < _loc13_)
         {
            si32(int(_loc10_ + 1),_loc4_ - 8);
            si32(163,_loc12_);
            ESP = _loc2_;
            F___error();
            si32(34,int(eax));
            _loc5_ = 0;
            si32(_loc5_,_loc16_ + 16);
         }
      }
      _loc3_ = li32(_loc4_ - 8);
      si32(_loc3_,_loc8_);
      _loc2_ = int(_loc2_ - 16);
      si32(_loc16_,_loc2_ + 8);
      si32(_loc14_,_loc2_ + 4);
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      F___copybits_D2A();
      _loc2_ = int(_loc2_ + 16);
      _loc3_ = li32(_loc12_);
      _loc3_ = _loc3_ | _loc5_;
      si32(_loc3_,_loc12_);
      _loc1_ = 1;
      §§goto(addr781);
      _loc5_ = 0;
      _loc6_ = _loc5_;
      if(_loc13_ <= -1)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc16_,_loc2_);
         si32(int(0 - _loc13_),_loc2_ + 4);
         ESP = _loc2_;
         F___lshift_D2A();
         _loc5_ = 0;
         _loc2_ = int(_loc2_ + 16);
         _loc16_ = eax;
         _loc6_ = _loc5_;
      }
      §§goto(addr507);
   }
}
