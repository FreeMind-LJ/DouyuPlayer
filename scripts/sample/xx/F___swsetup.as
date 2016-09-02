package sample.xx
{
   import sample.xx_setup_2E_o_3A_D3056811_2D_78DA_2D_47F0_2D_82F3_2D_626A54A323E0.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si16;
   
   public function F___swsetup() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___sdidinit);
      if(_loc1_ == 0)
      {
         ESP = _loc2_;
         F___sinit();
      }
      _loc6_ = li32(_loc3_);
      _loc5_ = li16(_loc6_ + 12);
      _loc1_ = _loc5_ & 8;
      if(_loc1_ == 0)
      {
         if((_loc5_ & 16) == 0)
         {
            ESP = _loc2_;
            F___error();
            si32(9,int(eax));
            si16(li16(_loc6_ + 12) | 64,_loc6_ + 12);
            _loc4_ = -1;
         }
         else
         {
            if((_loc5_ & 4) != 0)
            {
               _loc4_ = li32(_loc6_ + 48);
               if(_loc4_ != 0)
               {
                  if(_loc4_ != int(_loc6_ + 64))
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc4_,_loc2_);
                     ESP = _loc2_;
                     F_free();
                     _loc2_ = int(_loc2_ + 16);
                     _loc5_ = li16(_loc6_ + 12);
                  }
                  si32(0,_loc6_ + 48);
               }
               _loc5_ = _loc5_ & 65499;
               si16(_loc5_,_loc6_ + 12);
               si32(0,_loc6_ + 4);
               _loc1_ = li32(_loc6_ + 16);
               si32(_loc1_,_loc6_);
            }
            _loc5_ = _loc5_ | 8;
            si16(_loc5_,_loc6_ + 12);
         }
         addr251:
         eax = _loc4_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc1_ = li32(_loc6_ + 16);
      if(_loc1_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F___smakebuf();
         _loc2_ = int(_loc2_ + 16);
         _loc5_ = li16(_loc6_ + 12);
      }
      _loc1_ = _loc5_ & 1;
      if(_loc1_ != 0)
      {
         _loc4_ = 0;
         si32(_loc4_,_loc6_ + 8);
         si32(int(0 - li32(_loc6_ + 20)),_loc6_ + 24);
      }
      else
      {
         _loc4_ = 0;
         _loc5_ = _loc4_;
         if((_loc5_ & 2) == 0)
         {
            _loc5_ = li32(_loc6_ + 20);
         }
         si32(_loc5_,_loc6_ + 8);
      }
      §§goto(addr251);
   }
}
