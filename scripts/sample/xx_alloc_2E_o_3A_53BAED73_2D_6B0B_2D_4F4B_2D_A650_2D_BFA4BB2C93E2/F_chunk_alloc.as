package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx.*;
   
   public function F_chunk_alloc() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:int = 0;
      var _loc6_:* = 0;
      var _loc11_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc12_:* = li8(_opt_mmap_2E_b);
      if(_loc12_ == 0)
      {
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_ + 4);
         si32(0,_loc2_);
         ESP = _loc2_;
         F_pages_map();
         _loc2_ = int(_loc2_ + 16);
         _loc11_ = int(eax);
         if(_loc11_ != 0)
         {
            _loc12_ = li32(_chunksize_mask);
            _loc10_ = _loc12_ & _loc11_;
            if(_loc10_ != 0)
            {
               _loc12_ = li32(_chunksize);
               _loc2_ = int(_loc2_ - 16);
               si32(int(_loc12_ - _loc10_),_loc2_ + 4);
               _loc12_ = int(_loc11_ + _loc1_);
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               F_pages_map();
               _loc2_ = int(_loc2_ + 16);
               _loc12_ = int(eax);
               if(_loc12_ == 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc1_,_loc2_ + 4);
                  si32(_loc11_,_loc2_);
                  ESP = _loc2_;
                  F_pages_unmap();
                  _loc2_ = int(_loc2_ + 16);
                  _loc12_ = li32(_chunksize);
                  _loc10_ = int(_loc12_ + _loc1_);
                  if(uint(_loc10_) > uint(_loc1_))
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc10_,_loc2_ + 4);
                     si32(0,_loc2_);
                     ESP = _loc2_;
                     F_pages_map();
                     _loc2_ = int(_loc2_ + 16);
                     _loc11_ = int(eax);
                     if(_loc11_ != 0)
                     {
                        _loc12_ = li32(_chunksize_mask);
                        _loc10_ = _loc12_ & _loc11_;
                        if(_loc10_ != 0)
                        {
                           _loc12_ = li32(_chunksize);
                           _loc2_ = int(_loc2_ - 16);
                           si32(int(_loc12_ - _loc10_),_loc2_ + 4);
                           si32(_loc11_,_loc2_);
                           ESP = _loc2_;
                           F_pages_unmap();
                           _loc2_ = int(_loc2_ + 16);
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc10_,_loc2_ + 4);
                           _loc12_ = int(li32(_chunksize) - _loc10_);
                           _loc11_ = int(_loc12_ + _loc11_);
                           _loc12_ = int(_loc11_ + _loc1_);
                           si32(_loc12_,_loc2_);
                           ESP = _loc2_;
                           F_pages_unmap();
                           _loc2_ = int(_loc2_ + 16);
                        }
                        else
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(li32(_chunksize),_loc2_ + 4);
                           _loc12_ = int(_loc11_ + _loc1_);
                           si32(_loc12_,_loc2_);
                           ESP = _loc2_;
                           F_pages_unmap();
                           _loc2_ = int(_loc2_ + 16);
                        }
                     }
                  }
               }
               else
               {
                  _loc12_ = li32(_chunksize);
                  _loc2_ = int(_loc2_ - 16);
                  si32(int(_loc12_ - _loc10_),_loc2_ + 4);
                  si32(_loc11_,_loc2_);
                  ESP = _loc2_;
                  F_pages_unmap();
                  _loc2_ = int(_loc2_ + 16);
                  _loc11_ = int(int(_loc11_ - _loc10_) + li32(_chunksize));
               }
               if(_loc11_ == 0)
               {
               }
            }
            addr950:
            eax = _loc11_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
      }
      _loc12_ = li8(_opt_dss_2E_b);
      if(_loc12_ == 0)
      {
         _loc10_ = li32(_loc3_ + 4);
         _loc11_ = 0;
         _loc8_ = int(_dss_chunks_szad);
         if(li32(___isthreaded) != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_dss_mtx,_loc2_);
            ESP = _loc2_;
            F__spinlock();
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = int(_dss_chunks_szad);
            _loc11_ = 0;
         }
         loop0:
         while(true)
         {
            _loc8_ = li32(_loc8_);
            _loc7_ = _dss_chunks_szad + 4;
            while(true)
            {
               _loc6_ = _loc11_;
               if(_loc8_ != _loc7_)
               {
                  _loc6_ = li32(_loc8_ + 20);
                  _loc5_ = 1;
                  _loc4_ = _loc5_;
                  if(uint(_loc6_) <= uint(_loc1_))
                  {
                     _loc4_ = 0;
                  }
                  if(uint(_loc6_) >= uint(_loc1_))
                  {
                     _loc5_ = 0;
                  }
                  _loc12_ = _loc4_ & 1;
                  var _loc9_:* = _loc5_ & 1;
                  _loc5_ = _loc9_ - _loc12_;
                  if(_loc6_ == _loc1_)
                  {
                     _loc5_ = -1;
                     if(li32(_loc8_ + 16) == 0)
                     {
                        _loc5_ = 0;
                     }
                  }
                  if(_loc5_ <= -1)
                  {
                     _loc11_ = _loc8_;
                     continue loop0;
                  }
                  _loc6_ = _loc8_;
                  if(_loc5_ >= 1)
                  {
                     _loc12_ = li32(_loc8_ + 4);
                     _loc8_ = _loc12_ & -2;
                     continue;
                  }
                  break;
               }
               break;
            }
            if(_loc6_ != 0)
            {
               _loc11_ = li32(_loc6_ + 16);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F_extent_tree_szad_remove();
               _loc2_ = int(_loc2_ + 16);
               _loc8_ = li32(_loc6_ + 20);
               if(_loc8_ == _loc1_)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc6_,_loc2_ + 4);
                  si32(_dss_chunks_ad,_loc2_);
                  ESP = _loc2_;
                  F_extent_tree_ad_remove();
                  _loc2_ = int(_loc2_ + 16);
                  _loc12_ = li32(___isthreaded);
                  if(_loc12_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_base_mtx,_loc2_);
                     ESP = _loc2_;
                     F__spinlock();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  _loc12_ = li32(_base_nodes);
                  si32(_loc12_,_loc6_);
                  si32(_loc6_,_base_nodes);
                  _loc12_ = li32(___isthreaded);
                  if(_loc12_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_base_mtx,_loc2_);
                     ESP = _loc2_;
                     F__spinunlock();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  addr686:
                  if(_loc10_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc1_,_loc2_ + 8);
                     si32(0,_loc2_ + 4);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     Fmemset();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  if(_loc11_ == 0)
                  {
                  }
                  §§goto(addr950);
               }
               else
               {
                  _loc12_ = li32(_loc6_ + 16);
                  _loc12_ = int(_loc12_ + _loc1_);
                  si32(_loc12_,_loc6_ + 16);
                  _loc12_ = int(_loc8_ - _loc1_);
                  si32(_loc12_,_loc6_ + 20);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc6_,_loc2_);
                  ESP = _loc2_;
                  F_extent_tree_szad_insert();
                  _loc2_ = int(_loc2_ + 16);
               }
               _loc12_ = li32(___isthreaded);
               if(_loc12_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_dss_mtx,_loc2_);
                  ESP = _loc2_;
                  F__spinunlock();
                  _loc2_ = int(_loc2_ + 16);
               }
               §§goto(addr686);
            }
            else
            {
               _loc12_ = li32(___isthreaded);
               if(_loc12_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_dss_mtx,_loc2_);
                  ESP = _loc2_;
                  F__spinunlock();
                  _loc2_ = int(_loc2_ + 16);
               }
            }
            if(_loc1_ >= 0)
            {
               _loc12_ = li32(___isthreaded);
               if(_loc12_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_dss_mtx,_loc2_);
                  ESP = _loc2_;
                  F__spinlock();
                  _loc2_ = int(_loc2_ + 16);
               }
               _loc12_ = li32(_dss_prev);
               if(_loc12_ != -1)
               {
                  while(true)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(0,_loc2_);
                     ESP = _loc2_;
                     F_sbrk();
                     _loc2_ = int(_loc2_ + 16);
                     _loc11_ = int(eax);
                     si32(_loc11_,_dss_max);
                     _loc12_ = li32(_chunksize_mask);
                     _loc12_ = _loc11_ & _loc12_;
                     _loc10_ = int(_loc1_ - _loc12_);
                     if(_loc12_ != 0)
                     {
                        _loc11_ = int(_loc10_ + _loc11_);
                        _loc10_ = int(_loc10_ + _loc1_);
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc10_,_loc2_);
                     ESP = _loc2_;
                     F_sbrk();
                     _loc2_ = int(_loc2_ + 16);
                     _loc8_ = int(eax);
                     si32(_loc8_,_dss_prev);
                     _loc12_ = li32(_dss_max);
                     if(_loc8_ == _loc12_)
                     {
                        _loc12_ = int(_loc8_ + _loc10_);
                        si32(_loc12_,_dss_max);
                        _loc12_ = li32(___isthreaded);
                        if(_loc12_ != 0)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(_dss_mtx,_loc2_);
                           ESP = _loc2_;
                           F__spinunlock();
                           _loc2_ = int(_loc2_ + 16);
                        }
                        if(_loc11_ == 0)
                        {
                           break;
                        }
                        §§goto(addr950);
                     }
                     else if(_loc8_ != -1)
                     {
                        continue;
                     }
                  }
               }
               _loc12_ = li32(___isthreaded);
               if(_loc12_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_dss_mtx,_loc2_);
                  ESP = _loc2_;
                  F__spinunlock();
                  _loc2_ = int(_loc2_ + 16);
               }
            }
         }
      }
      _loc11_ = 0;
      §§goto(addr950);
   }
}
