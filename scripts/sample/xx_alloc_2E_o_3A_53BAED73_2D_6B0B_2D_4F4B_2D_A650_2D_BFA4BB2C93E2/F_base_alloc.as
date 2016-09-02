package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import sample.xx.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F_base_alloc() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_base_mtx,_loc2_);
         ESP = _loc2_;
         F__spinlock();
         _loc2_ = int(_loc2_ + 16);
      }
      _loc1_ = li32(_loc3_);
      _loc1_ = int(_loc1_ + 63);
      _loc6_ = _loc1_ & -64;
      _loc5_ = li32(_base_next_addr);
      _loc1_ = int(_loc5_ + _loc6_);
      var _loc4_:* = li32(_base_past_addr);
      if(uint(_loc1_) > uint(_loc4_))
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F_base_pages_alloc();
         _loc2_ = int(_loc2_ + 16);
         if(int(eax) == 0)
         {
            _loc5_ = li32(_base_next_addr);
         }
         else
         {
            _loc5_ = 0;
            if(li32(___isthreaded) != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_base_mtx,_loc2_);
               ESP = _loc2_;
               F__spinunlock();
               _loc2_ = int(_loc2_ + 16);
               _loc5_ = 0;
            }
         }
         addr166:
         eax = _loc5_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc1_ = int(_loc5_ + _loc6_);
      si32(_loc1_,_base_next_addr);
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_base_mtx,_loc2_);
         ESP = _loc2_;
         F__spinunlock();
         _loc2_ = int(_loc2_ + 16);
      }
      §§goto(addr166);
   }
}
