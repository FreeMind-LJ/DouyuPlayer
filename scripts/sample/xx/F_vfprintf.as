package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_fprintf_2E_o_3A_0BC8B663_2D_A41B_2D_4979_2D_8659_2D_24B6D3749F76.*;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.sxi16;
   
   public function F_vfprintf() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc6_:* = li32(___isthreaded);
      if(_loc6_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__flockfile();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc5_ = li32(_loc3_ + 8);
      _loc4_ = li32(_loc3_ + 4);
      _loc6_ = li16(_loc1_ + 12);
      _loc6_ = _loc6_ & 26;
      if(_loc6_ == 10)
      {
         _loc6_ = si16(li16(_loc1_ + 14));
         if(_loc6_ >= 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_ + 8);
            si32(_loc4_,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F___sbprintf();
            _loc2_ = int(_loc2_ + 16);
            _loc4_ = int(eax);
         }
         addr146:
         _loc6_ = li32(___isthreaded);
         if(_loc6_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__funlockfile();
            _loc2_ = int(_loc2_ + 16);
         }
         eax = _loc4_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc2_ = int(_loc2_ - 16);
      si32(_loc5_,_loc2_ + 8);
      si32(_loc4_,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F___vfprintf();
      _loc2_ = int(_loc2_ + 16);
      _loc4_ = int(eax);
      §§goto(addr146);
   }
}
