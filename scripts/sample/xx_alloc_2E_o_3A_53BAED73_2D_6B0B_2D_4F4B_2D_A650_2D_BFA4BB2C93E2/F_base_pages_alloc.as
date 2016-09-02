package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F_base_pages_alloc() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc8_:* = li8(_opt_mmap_2E_b);
      if(_loc8_ == 0)
      {
         if(_loc1_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            _loc7_ = 0;
            si32(_loc7_,_loc2_);
            _loc8_ = int(_loc1_ + 4095);
            _loc6_ = _loc8_ & -4096;
            si32(_loc6_,_loc2_ + 4);
            ESP = _loc2_;
            F_pages_map();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = int(eax);
            si32(_loc5_,_base_pages);
            if(_loc5_ != 0)
            {
               si32(_loc5_,_base_next_addr);
               _loc8_ = int(_loc5_ + _loc6_);
               si32(_loc8_,_base_past_addr);
            }
            addr317:
            eax = _loc7_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
      }
      _loc7_ = 1;
      _loc8_ = li8(_opt_dss_2E_b);
      if(_loc8_ == 0)
      {
         _loc8_ = li32(___isthreaded);
         if(_loc8_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_dss_mtx,_loc2_);
            ESP = _loc2_;
            F__spinlock();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc8_ = li32(_dss_prev);
         if(_loc8_ != -1)
         {
            var _loc4_:* = li32(_chunksize_mask);
            _loc7_ = int(_loc4_ + _loc1_) & (_loc4_ ^ -1);
            while(true)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(0,_loc2_);
               ESP = _loc2_;
               F_sbrk();
               _loc2_ = int(_loc2_ + 16);
               _loc4_ = int(eax);
               si32(_loc4_,_dss_max);
               _loc8_ = li32(_chunksize_mask);
               _loc4_ = _loc8_ & _loc4_;
               _loc8_ = li32(_chunksize);
               _loc6_ = int(_loc8_ - _loc4_);
               _loc5_ = _loc7_;
               if(uint(_loc6_) >= uint(_loc1_))
               {
                  _loc5_ = 0;
               }
               _loc6_ = int(_loc5_ + _loc6_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F_sbrk();
               _loc2_ = int(_loc2_ + 16);
               _loc5_ = int(eax);
               si32(_loc5_,_dss_prev);
               _loc8_ = li32(_dss_max);
               if(_loc5_ == _loc8_)
               {
                  _loc8_ = int(_loc6_ + _loc5_);
                  si32(_loc8_,_dss_max);
                  si32(_loc5_,_base_pages);
                  si32(_loc5_,_base_next_addr);
                  si32(_loc8_,_base_past_addr);
                  _loc7_ = 0;
                  _loc8_ = li32(___isthreaded);
                  if(_loc8_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_dss_mtx,_loc2_);
                     ESP = _loc2_;
                     F__spinunlock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc7_ = 0;
                     break;
                  }
                  break;
               }
               if(_loc5_ != -1)
               {
                  continue;
               }
            }
         }
         _loc7_ = 1;
         _loc8_ = li32(___isthreaded);
         if(_loc8_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_dss_mtx,_loc2_);
            ESP = _loc2_;
            F__spinunlock();
            _loc2_ = int(_loc2_ + 16);
            _loc7_ = 1;
         }
      }
      §§goto(addr317);
   }
}
