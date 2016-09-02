package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_dmisc_2E_o_3A_3A1AE1C3_2D_4926_2D_4D3E_2D_9205_2D_26C127AFFDD0.*;
   
   public function F___freedtoa() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc4_ = li32(_loc1_ - 4);
      si32(_loc4_,_loc1_);
      _loc4_ = 1 << _loc4_;
      si32(_loc4_,_loc1_ + 4);
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = int(_loc1_ + -4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F___Bfree_D2A();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
