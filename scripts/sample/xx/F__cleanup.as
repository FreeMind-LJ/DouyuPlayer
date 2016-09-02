package sample.xx
{
   import sample.xx_indfp_2E_o_3A_98F2A02C_2D_FDD7_2D_4924_2D_9D30_2D_44B96552CC01.*;
   import avm2.intrinsics.memory.si32;
   
   public function F__cleanup() : void
   {
      var _loc2_:* = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc1_ = int(_loc1_ - 16);
      si32(___sflush,_loc1_);
      ESP = _loc1_;
      F__fwalk();
      _loc1_ = int(_loc1_ + 16);
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
