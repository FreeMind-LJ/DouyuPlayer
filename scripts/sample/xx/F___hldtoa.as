package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import sample.xx_hldtoa_2E_o_3A_46F0C49D_2D_2AAE_2D_4F01_2D_8608_2D_CDDE23655047.*;
   
   public function F___hldtoa() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 32);
      _loc1_ = li32(_loc3_ + 24);
      si32(_loc1_,_loc2_ + 24);
      _loc1_ = li32(_loc3_ + 20);
      si32(_loc1_,_loc2_ + 20);
      _loc1_ = li32(_loc3_ + 16);
      si32(_loc1_,_loc2_ + 16);
      _loc1_ = li32(_loc3_ + 12);
      si32(_loc1_,_loc2_ + 12);
      _loc1_ = li32(_loc3_ + 8);
      si32(_loc1_,_loc2_ + 8);
      var _loc4_:* = lf64(_loc3_);
      sf64(_loc4_,_loc2_);
      ESP = _loc2_;
      F___hdtoa();
      _loc2_ = int(_loc2_ + 32);
      _loc1_ = int(eax);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
