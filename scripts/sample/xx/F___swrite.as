package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tdio_2E_o_3A_66A14D5B_2D_6B97_2D_4D20_2D_8A3C_2D_E15E93A91578.*;
   
   public function F___swrite() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc1_ = si16(li16(_loc1_ + 14));
      _loc2_ = int(_loc2_ - 16);
      var _loc4_:* = li32(_loc3_ + 8);
      si32(_loc4_,_loc2_ + 8);
      _loc4_ = li32(_loc3_ + 4);
      si32(_loc4_,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__write();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = int(eax);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
