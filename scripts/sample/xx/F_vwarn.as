package sample.xx
{
   import sample.xx_rr_2E_o_3A_0F4AC9AE_2D_3C6A_2D_4BAD_2D_9492_2D_610F0C9ACA2C.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_vwarn() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      ESP = _loc2_;
      F___error();
      _loc1_ = int(eax);
      _loc1_ = li32(_loc1_);
      _loc2_ = int(_loc2_ - 16);
      var _loc4_:* = li32(_loc3_ + 4);
      si32(_loc4_,_loc2_ + 8);
      _loc4_ = li32(_loc3_);
      si32(_loc4_,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_vwarnc();
      _loc2_ = int(_loc2_ + 16);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
