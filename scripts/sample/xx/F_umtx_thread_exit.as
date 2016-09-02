package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_ern_umtx_2E_o_3A_11C72270_2D_A3AB_2D_4798_2D_8F10_2D_4F543D95D387.*;
   import avm2.intrinsics.memory.si8;
   
   public function F_umtx_thread_exit() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc5_ = li32(_loc1_ + 4);
      if(_loc5_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_umtx_lock,_loc2_);
         ESP = _loc2_;
         F_kmtx_lock();
         _loc2_ = int(_loc2_ + 16);
         si8(-1,_loc5_ + 44);
         var _loc4_:* = li32(_loc1_ + 8);
         _loc4_ = _loc4_ & -513;
         si32(_loc4_,_loc1_ + 8);
         _loc2_ = int(_loc2_ - 16);
         si32(_umtx_lock,_loc2_);
         ESP = _loc2_;
         F_kmtx_unlock();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
