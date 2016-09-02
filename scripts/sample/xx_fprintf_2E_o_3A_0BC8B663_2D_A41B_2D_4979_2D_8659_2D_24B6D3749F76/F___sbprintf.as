package sample.xx_fprintf_2E_o_3A_0BC8B663_2D_A41B_2D_4979_2D_8659_2D_24B6D3749F76
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li16;
   import sample.xx.*;
   import avm2.intrinsics.memory.li8;
   
   public function F___sbprintf() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 1264);
      _loc2_ = int(_loc2_ - 16);
      si32(232,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      _loc1_ = _loc3_ - 232;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ = int(_loc2_ + 16);
      si16(-1,_loc3_ - 218);
      _loc8_ = li32(_loc3_);
      _loc7_ = li16(_loc8_ + 12);
      _loc6_ = _loc7_ & 8;
      _loc5_ = li32(_loc3_ + 8);
      _loc4_ = li32(_loc3_ + 4);
      if(_loc6_ != 0)
      {
         _loc6_ = li32(_loc8_ + 16);
         if(_loc6_ == 0)
         {
            _loc6_ = _loc7_ & 512;
            if(_loc6_ == 0)
            {
            }
         }
         addr143:
         _loc6_ = _loc7_ & 65533;
         si16(_loc6_,_loc3_ - 220);
         _loc6_ = li16(_loc8_ + 14);
         si16(_loc6_,_loc3_ - 218);
         _loc6_ = li32(_loc8_ + 28);
         si32(_loc6_,_loc3_ - 204);
         _loc6_ = li32(_loc8_ + 44);
         si32(_loc6_,_loc3_ - 188);
         _loc6_ = li32(_loc8_ + 100);
         si32(_loc6_,_loc3_ - 132);
         _loc2_ = int(_loc2_ - 16);
         si32(128,_loc2_ + 8);
         _loc6_ = int(_loc8_ + 104);
         si32(_loc6_,_loc2_ + 4);
         _loc6_ = int(_loc1_ + 104);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ = int(_loc2_ + 16);
         _loc6_ = int(_loc3_ - 1256);
         si32(_loc6_,_loc3_ - 232);
         si32(_loc6_,_loc3_ - 216);
         si32(1024,_loc3_ - 224);
         si32(1024,_loc3_ - 212);
         si32(0,_loc3_ - 208);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc5_,_loc2_ + 8);
         si32(_loc4_,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F___vfprintf();
         _loc2_ = int(_loc2_ + 16);
         _loc7_ = int(eax);
         if(_loc7_ >= 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F___fflush();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = int(eax);
            if(_loc6_ != 0)
            {
               _loc7_ = -1;
            }
         }
         _loc6_ = li8(_loc3_ - 220);
         _loc6_ = _loc6_ & 64;
         addr354:
         if(_loc6_ != 0)
         {
            _loc6_ = li16(_loc8_ + 12);
            _loc6_ = _loc6_ | 64;
            si16(_loc6_,_loc8_ + 12);
         }
         eax = _loc7_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F___swsetup();
      _loc7_ = -1;
      _loc2_ = int(_loc2_ + 16);
      _loc6_ = int(eax);
      if(_loc6_ == 0)
      {
         _loc7_ = li16(_loc8_ + 12);
         §§goto(addr143);
      }
      §§goto(addr354);
   }
}
