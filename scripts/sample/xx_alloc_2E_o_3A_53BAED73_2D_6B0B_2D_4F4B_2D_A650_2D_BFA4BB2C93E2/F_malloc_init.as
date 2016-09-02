package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import avm2.intrinsics.memory.li8;
   import sample.xx.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   
   public function F_malloc_init() : void
   {
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ = int(_loc2_ - 1072);
      _loc3_ = 0;
      var _loc13_:* = li8(_malloc_initialized_2E_b);
      if(_loc13_ == 0)
      {
         _loc13_ = li32(___isthreaded);
         if(_loc13_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_init_lock,_loc2_);
            ESP = _loc2_;
            F__spinlock();
            _loc2_ = int(_loc2_ + 16);
            _loc13_ = li8(_malloc_initialized_2E_b);
            if(_loc13_ == 1)
            {
               _loc3_ = 0;
               _loc13_ = li32(___isthreaded);
               if(_loc13_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_init_lock,_loc2_);
                  ESP = _loc2_;
                  F__spinunlock();
                  _loc2_ = int(_loc2_ + 16);
                  _loc3_ = 0;
               }
            }
         }
         si32(6,_loc4_ - 1036);
         si32(3,_loc4_ - 1032);
         si32(4,_loc4_ - 1040);
         _loc2_ = int(_loc2_ - 32);
         si32(0,_loc2_ + 20);
         si32(0,_loc2_ + 16);
         _loc13_ = int(_loc4_ - 1040);
         si32(_loc13_,_loc2_ + 12);
         si32(_ncpus,_loc2_ + 8);
         si32(2,_loc2_ + 4);
         _loc13_ = int(_loc4_ - 1036);
         si32(_loc13_,_loc2_);
         ESP = _loc2_;
         F_sysctl();
         _loc2_ = int(_loc2_ + 32);
         _loc13_ = int(eax);
         if(_loc13_ == -1)
         {
            si32(1,_ncpus);
         }
         _loc2_ = int(_loc2_ - 16);
         si32(2,_loc2_ + 4);
         _loc12_ = int(_loc4_ - 1048);
         si32(_loc12_,_loc2_);
         ESP = _loc2_;
         F_getpagesizes();
         _loc2_ = int(_loc2_ + 16);
         _loc11_ = int(eax);
         if(_loc11_ >= 1)
         {
            _loc3_ = li32(_opt_chunk_2pow);
            do
            {
               _loc10_ = li32(_loc12_);
               if(uint(_loc10_) <= 4194304)
               {
                  _loc13_ = 1 << _loc3_;
                  if(uint(_loc13_) < uint(_loc10_))
                  {
                     do
                     {
                        _loc3_ = int(_loc3_ + 1);
                        _loc13_ = 1 << _loc3_;
                     }
                     while(uint(_loc13_) < uint(_loc10_));
                     
                  }
               }
               _loc12_ = int(_loc12_ + 4);
               _loc11_ = int(_loc11_ + -1);
            }
            while(_loc11_ != 0);
            
            si32(_loc3_,_opt_chunk_2pow);
         }
         _loc3_ = 0;
         do
         {
            if(_loc3_ != 2)
            {
               if(_loc3_ != 1)
               {
                  if(_loc3_ == 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(1024,_loc2_ + 8);
                     _loc12_ = int(_loc4_ - 1025);
                     si32(_loc12_,_loc2_ + 4);
                     si32(L__2E_str41,_loc2_);
                     ESP = _loc2_;
                     F_readlink();
                     _loc2_ = int(_loc2_ + 16);
                     _loc10_ = int(eax);
                     if(_loc10_ != -1)
                     {
                        si8(0,int(_loc12_ + _loc10_));
                     }
                     else
                     {
                        si8(0,_loc4_ - 1025);
                        _loc12_ = int(_loc4_ - 1025);
                     }
                  }
               }
               else
               {
                  ESP = _loc2_;
                  F_issetugid();
                  _loc13_ = int(eax);
                  if(_loc13_ == 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(L__2E_str42,_loc2_);
                     ESP = _loc2_;
                     F_getenv();
                     _loc2_ = int(_loc2_ + 16);
                     _loc12_ = int(eax);
                     if(_loc12_ == 0)
                     {
                     }
                  }
                  si8(0,_loc4_ - 1025);
                  _loc12_ = int(_loc4_ - 1025);
               }
            }
            else
            {
               _loc12_ = li32(__malloc_options);
               if(_loc12_ == 0)
               {
                  si8(0,_loc4_ - 1025);
                  _loc12_ = int(_loc4_ - 1025);
               }
            }
            _loc9_ = li8(_loc12_);
            _loc10_ = 0;
            if(_loc9_ != 0)
            {
               while(true)
               {
                  _loc6_ = int(_loc12_ + _loc10_);
                  _loc13_ = _loc9_ << 24;
                  _loc7_ = _loc13_ >> 24;
                  _loc13_ = int(_loc7_ + -48);
                  _loc8_ = 0;
                  _loc11_ = 1;
                  if(uint(_loc13_) >= 10)
                  {
                     addr486:
                     while(true)
                     {
                        _loc13_ = _loc9_ << 24;
                        _loc8_ = _loc13_ >> 24;
                        if(_loc8_ <= 96)
                        {
                           if(_loc8_ <= 76)
                           {
                              if(_loc8_ <= 67)
                              {
                                 if(_loc8_ != 65)
                                 {
                                    if(_loc8_ != 66)
                                    {
                                       if(_loc8_ != 67)
                                       {
                                          addr958:
                                          si8(_loc9_,_loc4_ - 1050);
                                          si8(0,_loc4_ - 1049);
                                          _loc13_ = li32(__malloc_message);
                                          ESP = _loc2_;
                                          F__getprogname();
                                          var _loc1_:* = int(eax);
                                          _loc2_ = int(_loc2_ - 16);
                                          si32(L__2E_str44,_loc2_ + 12);
                                          var _loc5_:* = int(_loc4_ - 1050);
                                          si32(_loc5_,_loc2_ + 8);
                                          si32(L__2E_str43,_loc2_ + 4);
                                          si32(_loc1_,_loc2_);
                                          ESP = _loc2_;
                                          ptr2fun[_loc13_]();
                                          _loc2_ = int(_loc2_ + 16);
                                       }
                                       else
                                       {
                                          _loc9_ = li32(_opt_cspace_max_2pow);
                                          if(uint(_loc9_) <= 10)
                                          {
                                             _loc13_ = int(_loc9_ + 1);
                                             si32(_loc13_,_opt_cspace_max_2pow);
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    si8(1,_opt_abort_2E_b);
                                 }
                              }
                              else if(_loc8_ <= 73)
                              {
                                 if(_loc8_ != 68)
                                 {
                                    if(_loc8_ != 70)
                                    {
                                       §§goto(addr958);
                                    }
                                    else
                                    {
                                       _loc9_ = li32(_opt_dirty_max);
                                       if(_loc9_ == 0)
                                       {
                                          si32(1,_opt_dirty_max);
                                       }
                                       else
                                       {
                                          _loc13_ = _loc9_ & 2147483647;
                                          if(_loc13_ != 0)
                                          {
                                             _loc13_ = _loc9_ << 1;
                                             si32(_loc13_,_opt_dirty_max);
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    si8(0,_opt_dss_2E_b);
                                 }
                              }
                              else if(_loc8_ != 74)
                              {
                                 if(_loc8_ != 75)
                                 {
                                    §§goto(addr958);
                                 }
                                 else
                                 {
                                    _loc13_ = li32(_opt_chunk_2pow);
                                    _loc9_ = int(_loc13_ + 1);
                                    if(uint(_loc9_) <= 31)
                                    {
                                       si32(_loc9_,_opt_chunk_2pow);
                                    }
                                 }
                              }
                              else
                              {
                                 si8(1,_opt_junk_2E_b);
                              }
                           }
                           else if(_loc8_ <= 84)
                           {
                              if(_loc8_ <= 79)
                              {
                                 if(_loc8_ != 77)
                                 {
                                    if(_loc8_ != 78)
                                    {
                                       §§goto(addr958);
                                    }
                                    else
                                    {
                                       _loc13_ = li32(_opt_narenas_lshift);
                                       _loc13_ = int(_loc13_ + 1);
                                       si32(_loc13_,_opt_narenas_lshift);
                                    }
                                 }
                                 else
                                 {
                                    si8(0,_opt_mmap_2E_b);
                                 }
                              }
                              else if(_loc8_ != 80)
                              {
                                 if(_loc8_ != 81)
                                 {
                                    §§goto(addr958);
                                 }
                                 else
                                 {
                                    _loc13_ = li32(_opt_qspace_max_2pow);
                                    _loc9_ = int(_loc13_ + 1);
                                    if(uint(_loc9_) < uint(li32(_opt_cspace_max_2pow)))
                                    {
                                       si32(_loc9_,_opt_qspace_max_2pow);
                                    }
                                 }
                              }
                              else
                              {
                                 si8(1,_opt_print_stats_2E_b);
                              }
                           }
                           else if(_loc8_ <= 87)
                           {
                              if(_loc8_ != 85)
                              {
                                 if(_loc8_ != 86)
                                 {
                                    §§goto(addr958);
                                 }
                                 else
                                 {
                                    si8(1,_opt_sysv_2E_b);
                                 }
                              }
                              else
                              {
                                 si8(1,_opt_utrace_2E_b);
                              }
                           }
                           else if(_loc8_ != 88)
                           {
                              if(_loc8_ != 90)
                              {
                                 §§goto(addr958);
                              }
                              else
                              {
                                 si8(1,_opt_zero_2E_b);
                              }
                           }
                           else
                           {
                              si8(1,_opt_xmalloc_2E_b);
                           }
                        }
                        else if(_loc8_ <= 108)
                        {
                           if(_loc8_ <= 99)
                           {
                              if(_loc8_ != 97)
                              {
                                 if(_loc8_ != 98)
                                 {
                                    if(_loc8_ != 99)
                                    {
                                       §§goto(addr958);
                                    }
                                    else
                                    {
                                       _loc9_ = li32(_opt_cspace_max_2pow);
                                       _loc8_ = int(_loc9_ + -1);
                                       if(uint(_loc8_) > uint(li32(_opt_qspace_max_2pow)))
                                       {
                                          if(uint(_loc9_) >= 7)
                                          {
                                             si32(_loc8_,_opt_cspace_max_2pow);
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 si8(0,_opt_abort_2E_b);
                              }
                           }
                           else if(_loc8_ <= 105)
                           {
                              if(_loc8_ != 100)
                              {
                                 if(_loc8_ != 102)
                                 {
                                    §§goto(addr958);
                                 }
                                 else
                                 {
                                    _loc13_ = li32(_opt_dirty_max);
                                    _loc13_ = int(_loc13_ >>> 1);
                                    si32(_loc13_,_opt_dirty_max);
                                 }
                              }
                              else
                              {
                                 si8(1,_opt_dss_2E_b);
                              }
                           }
                           else if(_loc8_ != 106)
                           {
                              if(_loc8_ != 107)
                              {
                                 §§goto(addr958);
                              }
                              else
                              {
                                 _loc9_ = li32(_opt_chunk_2pow);
                                 if(uint(_loc9_) >= 14)
                                 {
                                    _loc13_ = int(_loc9_ + -1);
                                    si32(_loc13_,_opt_chunk_2pow);
                                 }
                              }
                           }
                           else
                           {
                              si8(0,_opt_junk_2E_b);
                           }
                        }
                        else if(_loc8_ <= 116)
                        {
                           if(_loc8_ <= 111)
                           {
                              if(_loc8_ != 109)
                              {
                                 if(_loc8_ != 110)
                                 {
                                    §§goto(addr958);
                                 }
                                 else
                                 {
                                    _loc13_ = li32(_opt_narenas_lshift);
                                    _loc13_ = int(_loc13_ + -1);
                                    si32(_loc13_,_opt_narenas_lshift);
                                 }
                              }
                              else
                              {
                                 si8(1,_opt_mmap_2E_b);
                              }
                           }
                           else if(_loc8_ != 112)
                           {
                              if(_loc8_ != 113)
                              {
                                 §§goto(addr958);
                              }
                              else
                              {
                                 _loc9_ = li32(_opt_qspace_max_2pow);
                                 if(uint(_loc9_) >= 5)
                                 {
                                    _loc13_ = int(_loc9_ + -1);
                                    si32(_loc13_,_opt_qspace_max_2pow);
                                 }
                              }
                           }
                           else
                           {
                              si8(0,_opt_print_stats_2E_b);
                           }
                        }
                        else if(_loc8_ <= 119)
                        {
                           if(_loc8_ != 117)
                           {
                              if(_loc8_ != 118)
                              {
                                 §§goto(addr958);
                              }
                              else
                              {
                                 si8(0,_opt_sysv_2E_b);
                              }
                           }
                           else
                           {
                              si8(0,_opt_utrace_2E_b);
                           }
                        }
                        else if(_loc8_ != 120)
                        {
                           if(_loc8_ != 122)
                           {
                              §§goto(addr958);
                           }
                           else
                           {
                              si8(0,_opt_zero_2E_b);
                           }
                        }
                        else
                        {
                           si8(0,_opt_xmalloc_2E_b);
                        }
                        _loc11_ = int(_loc11_ + -1);
                        if(_loc11_ != 0)
                        {
                           _loc9_ = li8(_loc6_);
                           continue;
                        }
                        break;
                     }
                  }
                  else
                  {
                     do
                     {
                        _loc13_ = int(_loc8_ * 10);
                        _loc13_ = int(_loc7_ + _loc13_);
                        _loc8_ = int(_loc13_ + -48);
                        _loc13_ = int(_loc12_ + _loc10_);
                        _loc7_ = si8(li8(_loc13_ + 1));
                        _loc13_ = int(_loc7_ + -48);
                        _loc10_ = int(_loc10_ + 1);
                     }
                     while(uint(_loc13_) < 10);
                     
                     _loc6_ = int(_loc12_ + _loc10_);
                     _loc11_ = _loc8_;
                     _loc9_ = _loc7_;
                     if(_loc8_ != 0)
                     {
                        §§goto(addr486);
                     }
                  }
                  _loc10_ = int(_loc10_ + 1);
                  _loc13_ = int(_loc12_ + _loc10_);
                  _loc9_ = li8(_loc13_);
                  if(_loc9_ != 0)
                  {
                     continue;
                  }
                  break;
               }
               continue;
            }
         }
         while(_loc3_ = int(_loc3_ + 1), _loc3_ != 3);
         
         _loc13_ = li8(_opt_dss_2E_b);
         if(_loc13_ == 1)
         {
            _loc13_ = li8(_opt_mmap_2E_b);
            if(_loc13_ == 1)
            {
               si8(0,_opt_mmap_2E_b);
            }
         }
         _loc13_ = li8(_opt_print_stats_2E_b);
         if(_loc13_ == 1)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_malloc_print_stats,_loc2_);
            ESP = _loc2_;
            F_atexit();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc10_ = li32(_opt_qspace_max_2pow);
         _loc3_ = 1;
         _loc12_ = _loc3_ << _loc10_;
         si32(_loc12_,_qspace_max);
         _loc13_ = int(_loc12_ + 63);
         _loc11_ = _loc13_ & -64;
         _loc6_ = int(_loc11_ + 64);
         if(_loc11_ != _loc12_)
         {
            _loc6_ = _loc11_;
         }
         si32(_loc6_,_cspace_min);
         _loc11_ = li32(_opt_cspace_max_2pow);
         _loc7_ = _loc3_ << _loc11_;
         si32(_loc7_,_cspace_max);
         _loc13_ = int(_loc7_ + 255);
         _loc8_ = _loc13_ & -256;
         _loc9_ = int(_loc8_ + 256);
         if(_loc8_ != _loc7_)
         {
            _loc9_ = _loc8_;
         }
         si32(_loc9_,_sspace_min);
         si8(_loc3_,_sspace_max_2E_b);
         _loc13_ = int(_loc7_ - _loc6_);
         _loc13_ = int(_loc13_ >>> 6);
         _loc1_ = int(_loc13_ + 1);
         _loc5_ = int(_loc12_ >>> 4);
         si32(_loc5_,_nqbins);
         si32(_loc1_,_ncbins);
         _loc13_ = int(_loc5_ + _loc13_);
         _loc1_ = int(3840 - _loc9_);
         _loc1_ = int(_loc1_ >>> 8);
         _loc13_ = int(_loc13_ + _loc1_);
         _loc13_ = int(_loc13_ + 5);
         si32(_loc13_,_nbins);
         if(_loc10_ == 7)
         {
            _loc12_ = int(_const_size2bin);
            if(_loc11_ != 9)
            {
            }
            addr1695:
            si32(_loc12_,_size2bin);
            _loc13_ = li32(_opt_chunk_2pow);
            _loc10_ = _loc3_ << _loc13_;
            si32(_loc10_,_chunksize);
            _loc13_ = int(_loc10_ + -1);
            si32(_loc13_,_chunksize_mask);
            _loc13_ = int(_loc10_ >>> 12);
            si32(_loc13_,_chunk_npages);
            _loc13_ = int(_loc13_ * 12);
            _loc12_ = int(_loc13_ + 16);
            _loc13_ = _loc12_ & 4092;
            if(_loc13_ == 0)
            {
               _loc3_ = 0;
            }
            _loc13_ = int(_loc12_ >>> 12);
            _loc1_ = _loc3_ & 1;
            _loc13_ = int(_loc1_ + _loc13_);
            si32(_loc13_,_arena_chunk_header_npages);
            _loc13_ = _loc13_ << 12;
            _loc13_ = int(_loc10_ - _loc13_);
            si32(_loc13_,_arena_maxclass);
            _loc13_ = li8(_opt_utrace_2E_b);
            if(_loc13_ == 1)
            {
               si32(0,_loc4_ - 1064);
               _loc13_ = int(_loc4_ - 1064);
               si32(0,_loc13_ | 4);
               si32(0,_loc4_ - 1056);
               _loc2_ = int(_loc2_ - 16);
               si32(12,_loc2_ + 4);
               si32(_loc13_,_loc2_);
               ESP = _loc2_;
               F_utrace();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc3_ = 0;
            si32(_loc3_,_huge_mtx);
            si32(_loc3_,_huge_mtx + 4);
            si32(_loc3_,_huge_mtx + 8);
            si32(_loc3_,_huge_mtx + 12);
            _loc13_ = int(_huge + 4);
            si32(_loc13_,_huge);
            si32(_loc13_,_huge + 12);
            _loc13_ = _loc13_ & -2;
            si32(_loc13_,_huge + 16);
            si32(_loc3_,_dss_mtx);
            si32(_loc3_,_dss_mtx + 4);
            si32(_loc3_,_dss_mtx + 8);
            si32(_loc3_,_dss_mtx + 12);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_sbrk();
            _loc2_ = int(_loc2_ + 16);
            _loc13_ = int(eax);
            si32(_loc13_,_dss_base);
            si32(_loc13_,_dss_prev);
            si32(_loc13_,_dss_max);
            _loc13_ = int(_dss_chunks_szad + 4);
            si32(_loc13_,_dss_chunks_szad);
            si32(_loc13_,_dss_chunks_szad + 4);
            _loc13_ = _loc13_ & -2;
            si32(_loc13_,_dss_chunks_szad + 8);
            _loc13_ = int(_dss_chunks_ad + 4);
            si32(_loc13_,_dss_chunks_ad);
            si32(_loc13_,_dss_chunks_ad + 12);
            _loc13_ = _loc13_ & -2;
            si32(_loc13_,_dss_chunks_ad + 16);
            _loc13_ = li8(_opt_dss_2E_b);
            if(_loc13_ == 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F_base_pages_alloc();
               _loc2_ = int(_loc2_ + 16);
            }
            si32(_loc3_,_base_nodes);
            si32(_loc3_,_base_mtx);
            si32(_loc3_,_base_mtx + 4);
            si32(_loc3_,_base_mtx + 8);
            si32(_loc3_,_base_mtx + 12);
            _loc10_ = li32(_opt_narenas_lshift);
            _loc12_ = li32(_ncpus);
            if(uint(_loc12_) >= 2)
            {
               _loc10_ = int(_loc10_ + 1);
               si32(_loc10_,_opt_narenas_lshift);
            }
            si32(_loc12_,_narenas);
            if(_loc10_ >= 1)
            {
               _loc10_ = _loc12_ << _loc10_;
               if(uint(_loc10_) > uint(_loc12_))
               {
                  si32(_loc10_,_narenas);
                  _loc12_ = _loc10_;
               }
               _loc13_ = _loc12_ << 2;
               _loc10_ = li32(_chunksize);
               if(uint(_loc13_) > uint(_loc10_))
               {
                  _loc12_ = int(_loc10_ >>> 2);
                  si32(_loc12_,_narenas);
               }
            }
            else if(_loc10_ <= -1)
            {
               _loc10_ = int(_loc12_ >>> int(0 - _loc10_));
               if(uint(_loc10_) < uint(_loc12_))
               {
                  si32(_loc10_,_narenas);
                  _loc12_ = _loc10_;
               }
               if(_loc12_ == 0)
               {
                  _loc12_ = 1;
                  si32(_loc12_,_narenas);
               }
               addr2155:
               _loc2_ = int(_loc2_ - 16);
               _loc13_ = _loc12_ << 2;
               si32(_loc13_,_loc2_);
               ESP = _loc2_;
               F_base_alloc();
               _loc2_ = int(_loc2_ + 16);
               _loc12_ = int(eax);
               si32(_loc12_,_arenas);
               if(_loc12_ == 0)
               {
                  _loc3_ = 1;
                  _loc13_ = li32(___isthreaded);
                  if(_loc13_ != 0)
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_init_lock,_loc2_);
                     ESP = _loc2_;
                     F__spinunlock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc3_ = 1;
                  }
               }
               else
               {
                  _loc2_ = int(_loc2_ - 16);
                  _loc13_ = li32(_narenas) << 2;
                  si32(_loc13_,_loc2_ + 8);
                  si32(_loc3_,_loc2_ + 4);
                  si32(_loc12_,_loc2_);
                  ESP = _loc2_;
                  Fmemset();
                  _loc2_ = int(_loc2_ + 16);
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc3_,_loc2_);
                  ESP = _loc2_;
                  F_arenas_extend();
                  _loc2_ = int(_loc2_ + 16);
                  _loc13_ = li32(_arenas);
                  _loc13_ = li32(_loc13_);
                  if(_loc13_ == 0)
                  {
                     _loc3_ = 1;
                     _loc13_ = li32(___isthreaded);
                     if(_loc13_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_init_lock,_loc2_);
                        ESP = _loc2_;
                        F__spinunlock();
                        _loc2_ = int(_loc2_ + 16);
                        _loc3_ = 1;
                     }
                  }
                  else
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(_base_calloc,_loc2_ + 4);
                     si32(_arenas_lock,_loc2_);
                     ESP = _loc2_;
                     F__pthread_mutex_init_calloc_cb();
                     _loc2_ = int(_loc2_ + 16);
                     si8(1,_malloc_initialized_2E_b);
                     _loc13_ = li32(___isthreaded);
                     if(_loc13_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_init_lock,_loc2_);
                        ESP = _loc2_;
                        F__spinunlock();
                        _loc2_ = int(_loc2_ + 16);
                        _loc3_ = 0;
                     }
                  }
               }
            }
            _loc10_ = 1;
            if(uint(_loc12_) > 1)
            {
               while(true)
               {
                  _loc11_ = 263;
                  if(uint(_loc10_) < 56)
                  {
                     _loc13_ = int(_primes_2E_11878 + (_loc10_ << 2));
                     _loc11_ = li32(_loc13_);
                     if(uint(_loc11_) <= uint(_loc12_))
                     {
                        _loc10_ = int(_loc10_ + 1);
                        continue;
                     }
                     break;
                  }
                  break;
               }
               si32(_loc11_,_narenas);
               _loc12_ = _loc11_;
            }
            §§goto(addr2155);
         }
         _loc2_ = int(_loc2_ - 16);
         si32(3841,_loc2_);
         ESP = _loc2_;
         F_base_alloc();
         _loc2_ = int(_loc2_ + 16);
         _loc12_ = int(eax);
         if(_loc12_ != 0)
         {
            si8(-1,_loc12_);
            si8(0,_loc12_ + 1);
            _loc9_ = int(_loc12_ + 2);
            _loc11_ = 0;
            do
            {
               _loc10_ = int(_loc11_ + 1);
               _loc13_ = int(_loc10_ >>> 1);
               _loc1_ = _loc13_ | _loc10_;
               _loc13_ = int(_loc1_ >>> 2);
               _loc1_ = _loc13_ | _loc1_;
               _loc13_ = int(_loc1_ >>> 4);
               _loc1_ = _loc13_ | _loc1_;
               _loc13_ = int(_loc1_ >>> 8);
               _loc13_ = _loc13_ | _loc1_;
               _loc1_ = int(_loc13_ >>> 16);
               _loc13_ = _loc1_ | _loc13_;
               _loc13_ = int(_loc13_ + 1);
               _loc6_ = int(_loc13_ >>> 2);
               _loc8_ = 0;
               if(_loc6_ != 0)
               {
                  _loc13_ = _loc6_ ^ -1;
                  _loc13_ = _loc13_ & int(_loc6_ + -1);
                  _loc13_ = int(_loc13_ - (int(_loc13_ >>> 1) & 1431655765)) & 858993459;
                  _loc13_ = int(int(_loc13_ + (int(int(_loc13_ - (int(_loc13_ >>> 1) & 1431655765)) >>> 2) & 858993459)) + (int(int(_loc13_ + (int(int(_loc13_ - (int(_loc13_ >>> 1) & 1431655765)) >>> 2) & 858993459)) >>> 4)));
                  _loc13_ = _loc13_ & 252645135;
                  _loc13_ = int(_loc13_ * 16843009);
                  _loc13_ = int(_loc13_ >>> 24);
                  _loc8_ = int(_loc13_ + 1);
               }
               _loc13_ = int(_loc9_ + _loc11_);
               si8(_loc8_,_loc13_);
               _loc11_ = _loc10_;
            }
            while(_loc10_ != 14);
            
            _loc11_ = 31;
            _loc10_ = 16;
            _loc13_ = li32(_qspace_max);
            if(uint(_loc13_) >= 16)
            {
               do
               {
                  _loc13_ = int(_loc12_ + _loc10_);
                  _loc1_ = int(_loc11_ >>> 4);
                  _loc1_ = int(_loc1_ + 2);
                  si8(_loc1_,_loc13_);
                  _loc11_ = int(_loc11_ + 1);
                  _loc10_ = int(_loc10_ + 1);
                  _loc13_ = li32(_qspace_max);
               }
               while(uint(_loc10_) <= uint(_loc13_));
               
            }
            _loc13_ = li32(_cspace_max);
            if(uint(_loc10_) <= uint(_loc13_))
            {
               do
               {
                  _loc13_ = int(_loc12_ + _loc10_);
                  _loc1_ = int(_loc10_ + 63);
                  _loc5_ = _loc1_ & 16320;
                  _loc1_ = li32(_cspace_min);
                  _loc1_ = int(_loc5_ - _loc1_);
                  _loc1_ = int(_loc1_ >>> 6);
                  _loc5_ = li32(_nqbins);
                  _loc1_ = int(_loc5_ + _loc1_);
                  _loc1_ = int(_loc1_ + 3);
                  si8(_loc1_,_loc13_);
                  _loc10_ = int(_loc10_ + 1);
                  _loc13_ = li32(_cspace_max);
               }
               while(uint(_loc10_) <= uint(_loc13_));
               
            }
            _loc11_ = 3840;
            _loc13_ = li8(_sspace_max_2E_b);
            if(_loc13_ == 0)
            {
               _loc11_ = 0;
            }
            if(uint(_loc10_) <= uint(_loc11_))
            {
               while(true)
               {
                  _loc13_ = li32(_ncbins);
                  _loc1_ = li32(_nqbins);
                  _loc13_ = int(_loc1_ + _loc13_);
                  _loc1_ = int(_loc10_ + 255);
                  _loc1_ = _loc1_ & 65280;
                  _loc5_ = li32(_sspace_min);
                  _loc1_ = int(_loc1_ - _loc5_);
                  _loc1_ = int(_loc1_ >>> 8);
                  _loc13_ = int(_loc13_ + _loc1_);
                  _loc13_ = int(_loc13_ + 3);
                  _loc1_ = int(_loc12_ + _loc10_);
                  si8(_loc13_,_loc1_);
                  _loc11_ = 3840;
                  _loc13_ = li8(_sspace_max_2E_b);
                  if(_loc13_ == 0)
                  {
                     _loc11_ = 0;
                  }
                  _loc10_ = int(_loc10_ + 1);
                  if(uint(_loc10_) <= uint(_loc11_))
                  {
                     continue;
                  }
                  break;
               }
            }
            §§goto(addr1695);
         }
         else
         {
            _loc3_ = 1;
            _loc13_ = li32(___isthreaded);
            if(_loc13_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_init_lock,_loc2_);
               ESP = _loc2_;
               F__spinunlock();
               _loc2_ = int(_loc2_ + 16);
               _loc3_ = 1;
            }
         }
      }
      eax = _loc3_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
