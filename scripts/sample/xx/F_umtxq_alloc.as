package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387.*;
   import avm2.intrinsics.memory.si8;
   
   public function F_umtxq_alloc() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      si32(258,_loc2_ + 8);
      si32(-1,_loc2_ + 4);
      si32(48,_loc2_);
      ESP = _loc2_;
      F_kmalloc();
      _loc2_ = int(_loc2_ + 16);
      _loc1_ = eax;
      si8(-1,_loc1_ + 44);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
