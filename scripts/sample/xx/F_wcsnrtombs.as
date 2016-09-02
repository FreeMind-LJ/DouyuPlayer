package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import sample.xx_csnrtombs_2E_o_3A_47293EC0_2D_9D60_2D_4E41_2D_B0E2_2D_60D15E5E5257.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_wcsnrtombs() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = int(_mbs_2E_2135);
      _loc6_ = li32(_loc3_ + 16);
      if(_loc6_ != 0)
      {
         _loc1_ = _loc6_;
      }
      var _loc5_:* = li32(___wcsnrtombs);
      _loc2_ = int(_loc2_ - 32);
      si32(_loc1_,_loc2_ + 16);
      var _loc4_:* = li32(_loc3_ + 12);
      si32(_loc4_,_loc2_ + 12);
      _loc4_ = li32(_loc3_ + 8);
      si32(_loc4_,_loc2_ + 8);
      _loc4_ = li32(_loc3_ + 4);
      si32(_loc4_,_loc2_ + 4);
      _loc4_ = li32(_loc3_);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc5_]();
      _loc2_ = int(_loc2_ + 32);
      _loc5_ = int(eax);
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
