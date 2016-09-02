package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_dtoa_misc_2E_o_3A_CAC42ED2_2D_032E_2D_4175_2D_B9DB_2D_C2338140AFF7.*;
   
   public function F___Bfree_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      if(_loc1_ != 0)
      {
         _loc6_ = li32(_loc1_ + 4);
         if(_loc6_ >= 10)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_free();
            _loc2_ = int(_loc2_ + 16);
         }
         else
         {
            var _loc5_:* = li32(___isthreaded);
            if(_loc5_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(___gdtoa_locks,_loc2_);
               ESP = _loc2_;
               F__pthread_mutex_lock();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = li32(_loc1_ + 4);
            }
            _loc5_ = _loc6_ << 2;
            _loc5_ = int(_freelist + _loc5_);
            var _loc4_:* = li32(_loc5_);
            si32(_loc4_,_loc1_);
            si32(_loc1_,_loc5_);
            _loc5_ = li32(___isthreaded);
            if(_loc5_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(___gdtoa_locks,_loc2_);
               ESP = _loc2_;
               F__pthread_mutex_unlock();
               _loc2_ = int(_loc2_ + 16);
            }
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
