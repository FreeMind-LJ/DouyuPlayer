package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_chunk_dealloc() : void
   {
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 4);
      _loc14_ = li32(_loc4_);
      var _loc13_:* = li8(_opt_dss_2E_b);
      if(_loc13_ == 0)
      {
         _loc13_ = li32(___isthreaded);
         if(_loc13_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_dss_mtx,_loc2_);
            ESP = _loc2_;
            F__spinlock();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc13_ = li32(_dss_base);
         if(uint(_loc13_) <= uint(_loc14_))
         {
            _loc13_ = li32(_dss_max);
            if(uint(_loc13_) > uint(_loc14_))
            {
               _loc12_ = int(_loc14_ + _loc3_);
               _loc11_ = 0;
               _loc10_ = int(_dss_chunks_ad);
               loop0:
               while(true)
               {
                  _loc9_ = li32(_loc10_);
                  while(true)
                  {
                     _loc13_ = int(_dss_chunks_ad + 4);
                     _loc10_ = _loc11_;
                     if(_loc9_ != _loc13_)
                     {
                        _loc10_ = li32(_loc9_ + 16);
                        _loc8_ = 1;
                        _loc7_ = _loc8_;
                        if(uint(_loc12_) >= uint(_loc10_))
                        {
                           _loc7_ = 0;
                        }
                        if(uint(_loc12_) <= uint(_loc10_))
                        {
                           _loc8_ = 0;
                        }
                        var _loc1_:* = _loc7_ & 1;
                        _loc13_ = _loc8_ & 1;
                        _loc8_ = int(_loc13_ - _loc1_);
                        if(_loc8_ <= -1)
                        {
                           _loc10_ = int(_loc9_ + 8);
                           _loc11_ = _loc9_;
                           continue loop0;
                        }
                        _loc10_ = _loc9_;
                        if(_loc8_ >= 1)
                        {
                           _loc13_ = li32(_loc9_ + 12);
                           _loc9_ = _loc13_ & -2;
                           continue;
                        }
                        break;
                     }
                     break;
                  }
                  if(_loc10_ != 0)
                  {
                     _loc13_ = li32(_loc10_ + 16);
                     if(_loc13_ == _loc12_)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc10_,_loc2_);
                        ESP = _loc2_;
                        F_extent_tree_szad_remove();
                        _loc2_ = int(_loc2_ + 16);
                        si32(_loc14_,_loc10_ + 16);
                        _loc13_ = li32(_loc10_ + 20);
                        _loc13_ = int(_loc13_ + _loc3_);
                        si32(_loc13_,_loc10_ + 20);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc10_,_loc2_);
                        ESP = _loc2_;
                        F_extent_tree_szad_insert();
                        _loc2_ = int(_loc2_ + 16);
                        addr490:
                        _loc12_ = li32(_loc10_ + 8);
                        _loc11_ = int(_dss_chunks_ad + 4);
                        if(_loc12_ != _loc11_)
                        {
                           while(true)
                           {
                              _loc9_ = _loc12_;
                              _loc13_ = li32(_loc9_ + 12);
                              _loc12_ = _loc13_ & -2;
                              if(_loc12_ != _loc11_)
                              {
                                 continue;
                              }
                           }
                        }
                        else
                        {
                           _loc12_ = li32(_loc10_ + 16);
                           _loc8_ = li32(_dss_chunks_ad);
                           _loc9_ = _loc11_;
                           while(true)
                           {
                              _loc5_ = li32(_loc8_ + 16);
                              _loc7_ = 1;
                              _loc6_ = _loc7_;
                              if(uint(_loc12_) >= uint(_loc5_))
                              {
                                 _loc6_ = 0;
                              }
                              if(uint(_loc12_) <= uint(_loc5_))
                              {
                                 _loc7_ = 0;
                              }
                              _loc13_ = _loc6_ & 1;
                              _loc1_ = _loc7_ & 1;
                              _loc7_ = int(_loc1_ - _loc13_);
                              if(_loc7_ <= -1)
                              {
                                 do
                                 {
                                    _loc8_ = li32(_loc8_ + 8);
                                    _loc7_ = li32(_loc8_ + 16);
                                    _loc5_ = 1;
                                    _loc6_ = _loc5_;
                                    if(uint(_loc12_) >= uint(_loc7_))
                                    {
                                       _loc6_ = 0;
                                    }
                                    if(uint(_loc12_) <= uint(_loc7_))
                                    {
                                       _loc5_ = 0;
                                    }
                                    _loc1_ = _loc6_ & 1;
                                    _loc13_ = _loc5_ & 1;
                                    _loc7_ = int(_loc13_ - _loc1_);
                                 }
                                 while(_loc7_ < 0);
                                 
                              }
                              if(_loc7_ >= 1)
                              {
                                 _loc13_ = li32(_loc8_ + 12);
                                 _loc9_ = _loc8_;
                                 _loc8_ = _loc13_ & -2;
                                 continue;
                              }
                              break;
                           }
                        }
                        _loc12_ = 0;
                        if(_loc9_ != _loc11_)
                        {
                           _loc12_ = _loc9_;
                        }
                        if(_loc12_ != 0)
                        {
                           _loc13_ = li32(_loc12_ + 16);
                           _loc13_ = int(_loc13_ + li32(_loc12_ + 20));
                           if(_loc13_ == _loc14_)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc12_,_loc2_);
                              ESP = _loc2_;
                              F_extent_tree_szad_remove();
                              _loc2_ = int(_loc2_ + 16);
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc12_,_loc2_ + 4);
                              si32(_dss_chunks_ad,_loc2_);
                              ESP = _loc2_;
                              F_extent_tree_ad_remove();
                              _loc2_ = int(_loc2_ + 16);
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc10_,_loc2_);
                              ESP = _loc2_;
                              F_extent_tree_szad_remove();
                              _loc2_ = int(_loc2_ + 16);
                              _loc13_ = li32(_loc12_ + 16);
                              si32(_loc13_,_loc10_ + 16);
                              _loc13_ = int(li32(_loc12_ + 20) + li32(_loc10_ + 20));
                              si32(_loc13_,_loc10_ + 20);
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc10_,_loc2_);
                              ESP = _loc2_;
                              F_extent_tree_szad_insert();
                              _loc2_ = int(_loc2_ + 16);
                              _loc13_ = li32(___isthreaded);
                              if(_loc13_ != 0)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_base_mtx,_loc2_);
                                 ESP = _loc2_;
                                 F__spinlock();
                                 _loc2_ = int(_loc2_ + 16);
                              }
                              _loc13_ = li32(_base_nodes);
                              si32(_loc13_,_loc12_);
                              si32(_loc12_,_base_nodes);
                              _loc13_ = li32(___isthreaded);
                              if(_loc13_ != 0)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_base_mtx,_loc2_);
                                 ESP = _loc2_;
                                 F__spinunlock();
                                 _loc2_ = int(_loc2_ + 16);
                              }
                           }
                        }
                        _loc9_ = 0;
                        _loc11_ = 1;
                        if(_loc10_ != 0)
                        {
                           _loc3_ = li32(_loc10_ + 20);
                           _loc14_ = li32(_loc10_ + 16);
                           _loc11_ = 0;
                           _loc9_ = _loc10_;
                        }
                     }
                     addr861:
                     _loc2_ = int(_loc2_ - 16);
                     si32(0,_loc2_);
                     ESP = _loc2_;
                     F_sbrk();
                     _loc2_ = int(_loc2_ + 16);
                     _loc1_ = int(eax);
                     si32(_loc1_,_dss_max);
                     _loc13_ = int(_loc14_ + _loc3_);
                     if(_loc13_ == _loc1_)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        _loc13_ = int(0 - _loc3_);
                        si32(_loc13_,_loc2_);
                        ESP = _loc2_;
                        F_sbrk();
                        _loc2_ = int(_loc2_ + 16);
                        _loc10_ = int(eax);
                        si32(_loc10_,_dss_prev);
                        if(_loc10_ == li32(_dss_max))
                        {
                           _loc13_ = int(_loc10_ - _loc3_);
                           si32(_loc13_,_dss_max);
                           if(_loc11_ == 0)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc9_,_loc2_);
                              ESP = _loc2_;
                              F_extent_tree_szad_remove();
                              _loc2_ = int(_loc2_ + 16);
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc9_,_loc2_ + 4);
                              si32(_dss_chunks_ad,_loc2_);
                              ESP = _loc2_;
                              F_extent_tree_ad_remove();
                              _loc2_ = int(_loc2_ + 16);
                              _loc13_ = li32(___isthreaded);
                              if(_loc13_ != 0)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_base_mtx,_loc2_);
                                 ESP = _loc2_;
                                 F__spinlock();
                                 _loc2_ = int(_loc2_ + 16);
                              }
                              _loc13_ = li32(_base_nodes);
                              si32(_loc13_,_loc9_);
                              si32(_loc9_,_base_nodes);
                              _loc13_ = li32(___isthreaded);
                              if(_loc13_ != 0)
                              {
                                 _loc2_ = int(_loc2_ - 16);
                                 si32(_base_mtx,_loc2_);
                                 ESP = _loc2_;
                                 F__spinunlock();
                                 _loc2_ = int(_loc2_ + 16);
                              }
                           }
                           _loc13_ = li32(___isthreaded);
                           if(_loc13_ != 0)
                           {
                              _loc2_ = int(_loc2_ - 16);
                              si32(_dss_mtx,_loc2_);
                              ESP = _loc2_;
                              F__spinunlock();
                              _loc2_ = int(_loc2_ + 16);
                           }
                        }
                     }
                     _loc13_ = li32(___isthreaded);
                     if(_loc13_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_dss_mtx,_loc2_);
                        ESP = _loc2_;
                        F__spinunlock();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(5,_loc2_ + 8);
                     si32(_loc3_,_loc2_ + 4);
                     si32(_loc14_,_loc2_);
                     ESP = _loc2_;
                     F_madvise();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  _loc13_ = li32(___isthreaded);
                  if(_loc13_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_dss_mtx,_loc2_);
                     ESP = _loc2_;
                     F__spinunlock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc13_ = li32(___isthreaded);
                     if(_loc13_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_base_mtx,_loc2_);
                        ESP = _loc2_;
                        F__spinlock();
                        _loc2_ = int(_loc2_ + 16);
                     }
                  }
                  _loc10_ = li32(_base_nodes);
                  if(_loc10_ != 0)
                  {
                     _loc13_ = li32(_loc10_);
                     si32(_loc13_,_base_nodes);
                     _loc13_ = li32(___isthreaded);
                     if(_loc13_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_base_mtx,_loc2_);
                        ESP = _loc2_;
                        F__spinunlock();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     addr436:
                     si32(_loc14_,_loc10_ + 16);
                     si32(_loc3_,_loc10_ + 20);
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc10_,_loc2_ + 4);
                     si32(_dss_chunks_ad,_loc2_);
                     ESP = _loc2_;
                     F_extent_tree_ad_insert();
                     _loc2_ = int(_loc2_ + 16);
                     _loc2_ = int(_loc2_ - 16);
                     si32(_loc10_,_loc2_);
                     ESP = _loc2_;
                     F_extent_tree_szad_insert();
                     _loc2_ = int(_loc2_ + 16);
                     §§goto(addr490);
                  }
                  else
                  {
                     _loc13_ = li32(___isthreaded);
                     if(_loc13_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_base_mtx,_loc2_);
                        ESP = _loc2_;
                        F__spinunlock();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     _loc2_ = int(_loc2_ - 16);
                     si32(24,_loc2_);
                     ESP = _loc2_;
                     F_base_alloc();
                     _loc2_ = int(_loc2_ + 16);
                     _loc10_ = int(eax);
                  }
                  _loc13_ = li32(___isthreaded);
                  if(_loc13_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_dss_mtx,_loc2_);
                     ESP = _loc2_;
                     F__spinlock();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  _loc9_ = 0;
                  _loc11_ = 1;
                  if(_loc10_ != 0)
                  {
                     §§goto(addr436);
                  }
                  §§goto(addr861);
               }
            }
         }
         _loc13_ = li32(___isthreaded);
         if(_loc13_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_dss_mtx,_loc2_);
            ESP = _loc2_;
            F__spinunlock();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc13_ = li8(_opt_mmap_2E_b);
         if(_loc13_ == 0)
         {
            addr1177:
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_ + 4);
            si32(_loc14_,_loc2_);
            ESP = _loc2_;
            F_pages_unmap();
            _loc2_ = int(_loc2_ + 16);
         }
      }
      else
      {
         _loc13_ = li8(_opt_mmap_2E_b);
         if(_loc13_ == 0)
         {
            §§goto(addr1177);
         }
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
