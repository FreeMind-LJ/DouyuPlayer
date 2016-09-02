package sample.xx
{
   import sample.xx_efill_2E_o_3A_356DC6BA_2D_6F46_2D_4358_2D_BDF9_2D_E4599AF05218.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.si16;
   
   public function F___srefill() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___sdidinit);
      if(_loc1_ == 0)
      {
         ESP = _loc2_;
         F___sinit();
      }
      _loc8_ = li32(_loc3_);
      _loc1_ = li32(_loc8_ + 100);
      if(_loc1_ == 0)
      {
         si32(-1,_loc8_ + 100);
      }
      si32(0,_loc8_ + 4);
      _loc7_ = li16(_loc8_ + 12);
      _loc1_ = _loc7_ & 32;
      _loc6_ = -1;
      if(_loc1_ == 0)
      {
         if((_loc7_ & 4) == 0)
         {
            if((_loc7_ & 16) == 0)
            {
               ESP = _loc2_;
               F___error();
               si32(9,int(eax));
               si16(li16(_loc8_ + 12) | 64,_loc8_ + 12);
               _loc6_ = -1;
            }
            else
            {
               if((_loc7_ & 8) != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F___sflush();
                  _loc6_ = -1;
                  _loc2_ = int(_loc2_ + 16);
                  if(int(eax) == 0)
                  {
                     _loc7_ = li16(_loc8_ + 12) & -9;
                     si16(_loc7_,_loc8_ + 12);
                     si32(0,_loc8_ + 8);
                     si32(0,_loc8_ + 24);
                  }
               }
               _loc1_ = _loc7_ | 4;
               si16(_loc1_,_loc8_ + 12);
            }
         }
         else
         {
            _loc6_ = li32(_loc8_ + 48);
            if(_loc6_ != 0)
            {
               if(_loc6_ != int(_loc8_ + 64))
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc6_,_loc2_);
                  ESP = _loc2_;
                  F_free();
                  _loc2_ = int(_loc2_ + 16);
               }
               si32(0,_loc8_ + 48);
               _loc1_ = li32(_loc8_ + 60);
               si32(_loc1_,_loc8_ + 4);
               if(_loc1_ != 0)
               {
                  si32(li32(_loc8_ + 56),_loc8_);
                  _loc6_ = 0;
               }
            }
         }
         _loc1_ = li32(_loc8_ + 16);
         if(_loc1_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F___smakebuf();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc6_ = li16(_loc8_ + 12);
         _loc1_ = _loc6_ & 3;
         if(_loc1_ != 0)
         {
            si16(_loc6_ | 32768,_loc8_ + 12);
            _loc2_ = int(_loc2_ - 16);
            si32(_lflush,_loc2_);
            ESP = _loc2_;
            F__fwalk();
            _loc2_ = int(_loc2_ + 16);
            var _loc5_:* = li16(_loc8_ + 12) & 32767;
            si16(_loc5_,_loc8_ + 12);
            if((li16(_loc8_ + 12) & 9) == 9)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F___sflush();
               _loc2_ = int(_loc2_ + 16);
            }
         }
         _loc1_ = li32(_loc8_ + 16);
         si32(_loc1_,_loc8_);
         _loc5_ = li32(_loc8_ + 20);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc5_,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F__sread();
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = int(eax);
         si32(_loc7_,_loc8_ + 4);
         _loc1_ = li16(_loc8_ + 12);
         _loc4_ = _loc1_ & -8193;
         si16(_loc4_,_loc8_ + 12);
         _loc6_ = 0;
         if(_loc7_ <= 0)
         {
            if(_loc7_ == 0)
            {
               si16(_loc4_ | 32,_loc8_ + 12);
               _loc6_ = -1;
            }
            else
            {
               si32(0,_loc8_ + 4);
               si16(_loc4_ | 64,_loc8_ + 12);
               _loc6_ = -1;
            }
         }
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
