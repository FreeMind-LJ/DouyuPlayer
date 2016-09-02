package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2.*;
   
   public function F_free() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_loc3_);
      var _loc5_:* = li8(_opt_utrace_2E_b);
      if(_loc5_ == 1)
      {
         si32(_loc1_,_loc3_ - 16);
         _loc5_ = int(_loc3_ - 16);
         si32(0,_loc5_ | 4);
         si32(0,_loc3_ - 8);
         _loc2_ = int(_loc2_ - 16);
         si32(12,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F_utrace();
         _loc2_ = int(_loc2_ + 16);
      }
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_idalloc();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
