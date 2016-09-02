package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2.*;
   
   public function F_realloc() : void
   {
      var _loc5_:* = 0;
      var _loc17_:* = 0;
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:int = 0;
      var _loc9_:* = 0;
      var _loc2_:int = 0;
      var _loc14_:* = 0;
      var _loc16_:* = 0;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ = int(_loc3_ - 32);
      _loc4_ = li32(_loc5_ + 4);
      _loc17_ = li32(_loc5_);
      _loc16_ = _loc4_;
      if(_loc4_ == 0)
      {
         _loc16_ = 1;
         var _loc15_:* = li8(_opt_sysv_2E_b);
         if(_loc15_ == 1)
         {
            _loc14_ = 0;
            _loc16_ = _loc4_;
            if(_loc17_ != 0)
            {
               _loc3_ = int(_loc3_ - 16);
               si32(_loc17_,_loc3_);
               ESP = _loc3_;
               F_idalloc();
               _loc3_ = int(_loc3_ + 16);
               _loc14_ = 0;
               _loc16_ = _loc4_;
            }
         }
         addr2413:
         _loc15_ = li8(_opt_utrace_2E_b);
         if(_loc15_ == 1)
         {
            si32(_loc17_,_loc5_ - 32);
            var _loc10_:* = int(_loc5_ - 32);
            si32(_loc16_,_loc10_ | 4);
            si32(_loc14_,_loc5_ - 24);
            _loc3_ = int(_loc3_ - 16);
            si32(12,_loc3_ + 4);
            si32(_loc10_,_loc3_);
            ESP = _loc3_;
            F_utrace();
            _loc3_ = int(_loc3_ + 16);
         }
         eax = _loc14_;
         _loc3_ = _loc5_;
         ESP = _loc3_;
         return;
      }
      if(_loc17_ != 0)
      {
         _loc15_ = li32(_chunksize_mask);
         _loc4_ = _loc17_ & (_loc15_ ^ -1);
         if(_loc4_ != _loc17_)
         {
            _loc15_ = int(_loc17_ - _loc4_);
            _loc15_ = int(_loc15_ >>> 12);
            _loc15_ = int(_loc4_ + int(_loc15_ * 12));
            _loc15_ = li32(_loc15_ + 24);
            _loc4_ = _loc15_ & -4096;
            _loc15_ = _loc15_ & 2;
            if(_loc15_ == 0)
            {
               _loc15_ = li32(_loc4_);
               _loc4_ = li32(_loc15_ + 20);
            }
         }
         else
         {
            _loc15_ = li32(___isthreaded);
            if(_loc15_ != 0)
            {
               _loc3_ = int(_loc3_ - 16);
               si32(_huge_mtx,_loc3_);
               ESP = _loc3_;
               F__spinlock();
               _loc3_ = int(_loc3_ + 16);
            }
            _loc13_ = li32(_huge);
            _loc4_ = int(_huge + 4);
            while(_loc13_ != _loc4_)
            {
               _loc11_ = li32(_loc13_ + 16);
               if(_loc11_ == _loc17_)
               {
                  break;
               }
               _loc14_ = 1;
               _loc12_ = _loc14_;
               if(uint(_loc11_) <= uint(_loc17_))
               {
                  _loc12_ = 0;
               }
               if(uint(_loc11_) >= uint(_loc17_))
               {
                  _loc14_ = 0;
               }
               _loc15_ = _loc12_ & 1;
               _loc10_ = _loc14_ & 1;
               _loc15_ = int(_loc10_ - _loc15_);
               if(_loc15_ <= -1)
               {
                  _loc13_ = li32(_loc13_ + 8);
               }
               else
               {
                  _loc15_ = li32(_loc13_ + 12);
                  _loc13_ = _loc15_ & -2;
               }
            }
            _loc14_ = 0;
            if(_loc13_ != _loc4_)
            {
               _loc14_ = _loc13_;
            }
            _loc4_ = li32(_loc14_ + 20);
            _loc15_ = li32(___isthreaded);
            if(_loc15_ != 0)
            {
               _loc3_ = int(_loc3_ - 16);
               si32(_huge_mtx,_loc3_);
               ESP = _loc3_;
               F__spinunlock();
               _loc3_ = int(_loc3_ + 16);
            }
         }
         _loc11_ = li32(_arena_maxclass);
         if(uint(_loc11_) >= uint(_loc16_))
         {
            _loc13_ = 3840;
            _loc15_ = li8(_sspace_max_2E_b);
            if(_loc15_ == 0)
            {
               _loc13_ = 0;
            }
            if(uint(_loc13_) >= uint(_loc16_))
            {
               if(uint(_loc13_) >= uint(_loc4_))
               {
                  _loc10_ = li32(_size2bin);
                  _loc15_ = int(_loc10_ + _loc4_);
                  _loc10_ = int(_loc10_ + _loc16_);
                  _loc10_ = li8(_loc10_);
                  if(_loc10_ == li8(_loc15_))
                  {
                     _loc15_ = li8(_opt_junk_2E_b);
                     if(_loc15_ == 1)
                     {
                        if(uint(_loc4_) > uint(_loc16_))
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(90,_loc3_ + 4);
                           _loc15_ = int(_loc4_ - _loc16_);
                           si32(_loc15_,_loc3_ + 8);
                           _loc15_ = int(_loc16_ + _loc17_);
                           si32(_loc15_,_loc3_);
                           ESP = _loc3_;
                           Fmemset();
                           _loc3_ = int(_loc3_ + 16);
                           _loc14_ = _loc17_;
                        }
                     }
                     _loc15_ = li8(_opt_zero_2E_b);
                     _loc14_ = _loc17_;
                     if(_loc15_ == 1)
                     {
                        _loc14_ = _loc17_;
                        if(uint(_loc4_) < uint(_loc16_))
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(0,_loc3_ + 4);
                           _loc15_ = int(_loc16_ - _loc4_);
                           si32(_loc15_,_loc3_ + 8);
                           _loc15_ = int(_loc4_ + _loc17_);
                           si32(_loc15_,_loc3_);
                           ESP = _loc3_;
                           Fmemset();
                           _loc3_ = int(_loc3_ + 16);
                           _loc14_ = _loc17_;
                        }
                     }
                  }
               }
            }
            else
            {
               _loc14_ = 1;
               if(uint(_loc13_) < uint(_loc4_))
               {
                  _loc14_ = 0;
               }
               if(uint(_loc11_) >= uint(_loc4_))
               {
                  if(_loc14_ == 0)
                  {
                     _loc12_ = int(_loc16_ + 4095);
                     _loc14_ = _loc12_ & -4096;
                     if(_loc14_ == _loc4_)
                     {
                        _loc14_ = _loc17_;
                        if(li8(_opt_junk_2E_b) == 1)
                        {
                           _loc14_ = _loc17_;
                           if(uint(_loc4_) > uint(_loc16_))
                           {
                              _loc3_ = int(_loc3_ - 16);
                              si32(90,_loc3_ + 4);
                              _loc15_ = int(_loc4_ - _loc16_);
                              si32(_loc15_,_loc3_ + 8);
                              _loc15_ = int(_loc16_ + _loc17_);
                              si32(_loc15_,_loc3_);
                              ESP = _loc3_;
                              Fmemset();
                              _loc3_ = int(_loc3_ + 16);
                              _loc14_ = _loc17_;
                           }
                        }
                     }
                     else
                     {
                        _loc15_ = li32(_chunksize_mask);
                        _loc11_ = _loc17_ & (_loc15_ ^ -1);
                        _loc13_ = li32(_loc11_);
                        if(uint(_loc14_) < uint(_loc4_))
                        {
                           _loc15_ = li8(_opt_junk_2E_b);
                           if(_loc15_ == 1)
                           {
                              _loc3_ = int(_loc3_ - 16);
                              si32(90,_loc3_ + 4);
                              _loc15_ = int(_loc4_ - _loc16_);
                              si32(_loc15_,_loc3_ + 8);
                              _loc15_ = int(_loc16_ + _loc17_);
                              si32(_loc15_,_loc3_);
                              ESP = _loc3_;
                              Fmemset();
                              _loc3_ = int(_loc3_ + 16);
                           }
                           _loc15_ = li32(___isthreaded);
                           if(_loc15_ != 0)
                           {
                              _loc3_ = int(_loc3_ - 16);
                              si32(_loc13_,_loc3_);
                              ESP = _loc3_;
                              F__pthread_mutex_trylock();
                              _loc3_ = int(_loc3_ + 16);
                              _loc15_ = int(eax);
                              if(_loc15_ != 0)
                              {
                                 _loc1_ = 1;
                                 _loc15_ = li32(_ncpus);
                                 if(uint(_loc15_) > 1)
                                 {
                                    while(true)
                                    {
                                       if(uint(_loc1_) < 12)
                                       {
                                          si32(0,_loc5_ - 16);
                                          _loc6_ = 1 << _loc1_;
                                          if(uint(_loc6_) > uint(li32(_loc5_ - 16)))
                                          {
                                             do
                                             {
                                                _loc15_ = li32(_loc5_ - 16);
                                                _loc15_ = int(_loc15_ + 1);
                                                si32(_loc15_,_loc5_ - 16);
                                                _loc15_ = li32(_loc5_ - 16);
                                             }
                                             while(uint(_loc6_) > uint(_loc15_));
                                             
                                          }
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc13_,_loc3_);
                                          ESP = _loc3_;
                                          F__pthread_mutex_trylock();
                                          _loc3_ = int(_loc3_ + 16);
                                          _loc15_ = int(eax);
                                          if(_loc15_ != 0)
                                          {
                                             _loc1_ = _loc1_ + 1;
                                             continue;
                                          }
                                          break;
                                       }
                                    }
                                 }
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc13_,_loc3_);
                                 ESP = _loc3_;
                                 F__pthread_mutex_lock();
                                 _loc3_ = int(_loc3_ + 16);
                              }
                           }
                           _loc15_ = int(_loc17_ - _loc11_);
                           _loc10_ = int(_loc15_ >>> 12);
                           var _loc7_:* = int(_loc10_ * 12);
                           _loc15_ = int(_loc11_ + 16);
                           var _loc8_:int = _loc15_ + _loc7_;
                           _loc7_ = _loc14_ | 3;
                           si32(_loc7_,_loc8_ + 8);
                           _loc7_ = int(_loc12_ >>> 12);
                           _loc10_ = int(_loc10_ + _loc7_);
                           _loc10_ = int(_loc10_ * 12);
                           _loc15_ = int(_loc15_ + _loc10_);
                           _loc10_ = int(_loc4_ - _loc14_);
                           _loc10_ = _loc10_ | 3;
                           si32(_loc10_,_loc15_ + 8);
                           _loc3_ = int(_loc3_ - 16);
                           si32(1,_loc3_ + 8);
                           _loc15_ = int(_loc14_ + _loc17_);
                           si32(_loc15_,_loc3_ + 4);
                           si32(_loc13_,_loc3_);
                           ESP = _loc3_;
                           F_arena_run_dalloc();
                           _loc3_ = int(_loc3_ + 16);
                           _loc15_ = li32(___isthreaded);
                           _loc14_ = _loc17_;
                           if(_loc15_ != 0)
                           {
                              _loc3_ = int(_loc3_ - 16);
                              si32(_loc13_,_loc3_);
                              ESP = _loc3_;
                              F__pthread_mutex_unlock();
                              _loc3_ = int(_loc3_ + 16);
                              _loc14_ = _loc17_;
                           }
                        }
                        else
                        {
                           _loc15_ = li32(___isthreaded);
                           if(_loc15_ != 0)
                           {
                              _loc3_ = int(_loc3_ - 16);
                              si32(_loc13_,_loc3_);
                              ESP = _loc3_;
                              F__pthread_mutex_trylock();
                              _loc3_ = int(_loc3_ + 16);
                              _loc15_ = int(eax);
                              if(_loc15_ != 0)
                              {
                                 _loc12_ = 1;
                                 _loc15_ = li32(_ncpus);
                                 if(uint(_loc15_) > 1)
                                 {
                                    while(true)
                                    {
                                       if(uint(_loc12_) < 12)
                                       {
                                          si32(0,_loc5_ - 12);
                                          _loc6_ = 1 << _loc12_;
                                          if(uint(_loc6_) > uint(li32(_loc5_ - 12)))
                                          {
                                             do
                                             {
                                                _loc15_ = li32(_loc5_ - 12);
                                                _loc15_ = int(_loc15_ + 1);
                                                si32(_loc15_,_loc5_ - 12);
                                                _loc15_ = li32(_loc5_ - 12);
                                             }
                                             while(uint(_loc6_) > uint(_loc15_));
                                             
                                          }
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc13_,_loc3_);
                                          ESP = _loc3_;
                                          F__pthread_mutex_trylock();
                                          _loc3_ = int(_loc3_ + 16);
                                          _loc15_ = int(eax);
                                          if(_loc15_ != 0)
                                          {
                                             _loc12_ = int(_loc12_ + 1);
                                             continue;
                                          }
                                          break;
                                       }
                                    }
                                 }
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc13_,_loc3_);
                                 ESP = _loc3_;
                                 F__pthread_mutex_lock();
                                 _loc3_ = int(_loc3_ + 16);
                              }
                           }
                           _loc15_ = int(_loc17_ - _loc11_);
                           _loc6_ = int(_loc15_ >>> 12);
                           _loc15_ = int(_loc4_ >>> 12);
                           _loc1_ = _loc6_ + _loc15_;
                           _loc15_ = li32(_chunk_npages);
                           if(uint(_loc1_) < uint(_loc15_))
                           {
                              _loc12_ = int(_loc11_ + int(_loc1_ * 12));
                              _loc9_ = li32(_loc12_ + 24);
                              _loc15_ = _loc9_ & 1;
                              if(_loc15_ == 0)
                              {
                                 _loc2_ = _loc14_ - _loc4_;
                                 _loc15_ = _loc9_ & -4096;
                                 if(uint(_loc15_) >= uint(_loc2_))
                                 {
                                    _loc3_ = int(_loc3_ - 32);
                                    si32(0,_loc3_ + 16);
                                    si32(1,_loc3_ + 12);
                                    si32(_loc2_,_loc3_ + 8);
                                    si32(_loc13_,_loc3_);
                                    _loc15_ = _loc1_ << 12;
                                    _loc15_ = int(_loc15_ + _loc11_);
                                    si32(_loc15_,_loc3_ + 4);
                                    ESP = _loc3_;
                                    F_arena_run_split();
                                    _loc3_ = int(_loc3_ + 32);
                                    _loc10_ = _loc14_ | 3;
                                    si32(_loc10_,int(_loc11_ + int(_loc6_ * 12)) + 24);
                                    si32(3,_loc12_ + 24);
                                    _loc15_ = li32(___isthreaded);
                                    if(_loc15_ != 0)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_loc13_,_loc3_);
                                       ESP = _loc3_;
                                       F__pthread_mutex_unlock();
                                       _loc3_ = int(_loc3_ + 16);
                                    }
                                    _loc15_ = li8(_opt_zero_2E_b);
                                    _loc14_ = _loc17_;
                                    if(_loc15_ == 1)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(0,_loc3_ + 4);
                                       _loc15_ = int(_loc16_ - _loc4_);
                                       si32(_loc15_,_loc3_ + 8);
                                       _loc15_ = int(_loc4_ + _loc17_);
                                       si32(_loc15_,_loc3_);
                                       ESP = _loc3_;
                                       Fmemset();
                                       _loc3_ = int(_loc3_ + 16);
                                       _loc14_ = _loc17_;
                                    }
                                 }
                              }
                           }
                           _loc15_ = li32(___isthreaded);
                           if(_loc15_ != 0)
                           {
                              _loc3_ = int(_loc3_ - 16);
                              si32(_loc13_,_loc3_);
                              ESP = _loc3_;
                              F__pthread_mutex_unlock();
                              _loc3_ = int(_loc3_ + 16);
                           }
                        }
                     }
                  }
               }
            }
            _loc15_ = li32(___isthreaded);
            if(_loc15_ != 0)
            {
               _loc15_ = li32(_narenas);
               if(uint(_loc15_) >= 2)
               {
                  ESP = _loc3_;
                  F__pthread_self();
                  _loc10_ = li32(_narenas);
                  _loc13_ = int(uint(int(eax)) % uint(_loc10_));
                  _loc14_ = _loc13_ << 2;
                  _loc15_ = li32(_arenas);
                  _loc15_ = int(_loc15_ + _loc14_);
                  _loc11_ = li32(_loc15_);
                  if(_loc11_ == 0)
                  {
                     _loc15_ = li32(___isthreaded);
                     if(_loc15_ != 0)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(_arenas_lock,_loc3_);
                        ESP = _loc3_;
                        F__pthread_mutex_trylock();
                        _loc3_ = int(_loc3_ + 16);
                        _loc15_ = int(eax);
                        if(_loc15_ != 0)
                        {
                           _loc11_ = 1;
                           _loc15_ = li32(_ncpus);
                           if(uint(_loc15_) > 1)
                           {
                              while(true)
                              {
                                 if(uint(_loc11_) < 12)
                                 {
                                    si32(0,_loc5_ - 8);
                                    _loc12_ = 1 << _loc11_;
                                    if(uint(_loc12_) > uint(li32(_loc5_ - 8)))
                                    {
                                       do
                                       {
                                          _loc15_ = li32(_loc5_ - 8);
                                          _loc15_ = int(_loc15_ + 1);
                                          si32(_loc15_,_loc5_ - 8);
                                          _loc15_ = li32(_loc5_ - 8);
                                       }
                                       while(uint(_loc12_) > uint(_loc15_));
                                       
                                    }
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_arenas_lock,_loc3_);
                                    ESP = _loc3_;
                                    F__pthread_mutex_trylock();
                                    _loc3_ = int(_loc3_ + 16);
                                    _loc15_ = int(eax);
                                    if(_loc15_ != 0)
                                    {
                                       _loc11_ = int(_loc11_ + 1);
                                       continue;
                                    }
                                    break;
                                 }
                              }
                           }
                           _loc3_ = int(_loc3_ - 16);
                           si32(_arenas_lock,_loc3_);
                           ESP = _loc3_;
                           F__pthread_mutex_lock();
                           _loc3_ = int(_loc3_ + 16);
                        }
                     }
                     _loc15_ = li32(_arenas);
                     _loc15_ = int(_loc15_ + _loc14_);
                     _loc11_ = li32(_loc15_);
                     if(_loc11_ == 0)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(_loc13_,_loc3_);
                        ESP = _loc3_;
                        F_arenas_extend();
                        _loc3_ = int(_loc3_ + 16);
                        _loc11_ = int(eax);
                     }
                     _loc15_ = li32(___isthreaded);
                     if(_loc15_ != 0)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(_arenas_lock,_loc3_);
                        ESP = _loc3_;
                        F__pthread_mutex_unlock();
                        _loc3_ = int(_loc3_ + 16);
                     }
                  }
               }
               addr1453:
               _loc3_ = int(_loc3_ - 16);
               si32(0,_loc3_ + 8);
               si32(_loc16_,_loc3_ + 4);
               si32(_loc11_,_loc3_);
               ESP = _loc3_;
               F_arena_malloc();
               _loc3_ = int(_loc3_ + 16);
               _loc14_ = int(eax);
               if(_loc14_ != 0)
               {
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc17_,_loc3_ + 4);
                  si32(_loc14_,_loc3_);
                  if(uint(_loc4_) > uint(_loc16_))
                  {
                     _loc4_ = _loc16_;
                  }
                  si32(_loc4_,_loc3_ + 8);
                  ESP = _loc3_;
                  Fmemcpy();
                  _loc3_ = int(_loc3_ + 16);
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc17_,_loc3_);
                  ESP = _loc3_;
                  F_idalloc();
                  _loc3_ = int(_loc3_ + 16);
               }
            }
            _loc15_ = li32(_arenas);
            _loc11_ = li32(_loc15_);
            §§goto(addr1453);
         }
         else
         {
            if(uint(_loc11_) < uint(_loc4_))
            {
               _loc15_ = li32(_chunksize_mask);
               _loc10_ = int(_loc15_ + _loc16_);
               _loc15_ = (_loc10_ ^ int(_loc15_ + _loc4_)) & (_loc15_ ^ -1);
               if(_loc15_ == 0)
               {
                  _loc15_ = li8(_opt_junk_2E_b);
                  if(_loc15_ == 1)
                  {
                     if(uint(_loc4_) > uint(_loc16_))
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(90,_loc3_ + 4);
                        _loc15_ = int(_loc4_ - _loc16_);
                        si32(_loc15_,_loc3_ + 8);
                        _loc15_ = int(_loc16_ + _loc17_);
                        si32(_loc15_,_loc3_);
                        ESP = _loc3_;
                        Fmemset();
                        _loc3_ = int(_loc3_ + 16);
                        _loc14_ = _loc17_;
                     }
                  }
                  _loc15_ = li8(_opt_zero_2E_b);
                  _loc14_ = _loc17_;
                  if(_loc15_ == 1)
                  {
                     _loc14_ = _loc17_;
                     if(uint(_loc4_) < uint(_loc16_))
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(0,_loc3_ + 4);
                        _loc15_ = int(_loc16_ - _loc4_);
                        si32(_loc15_,_loc3_ + 8);
                        _loc15_ = int(_loc4_ + _loc17_);
                        si32(_loc15_,_loc3_);
                        ESP = _loc3_;
                        Fmemset();
                        _loc3_ = int(_loc3_ + 16);
                        _loc14_ = _loc17_;
                     }
                  }
               }
            }
            _loc3_ = int(_loc3_ - 16);
            si32(0,_loc3_ + 4);
            si32(_loc16_,_loc3_);
            ESP = _loc3_;
            F_huge_malloc();
            _loc3_ = int(_loc3_ + 16);
            _loc14_ = int(eax);
            if(_loc14_ != 0)
            {
               _loc3_ = int(_loc3_ - 16);
               si32(_loc17_,_loc3_ + 4);
               si32(_loc14_,_loc3_);
               if(uint(_loc4_) > uint(_loc16_))
               {
                  _loc4_ = _loc16_;
               }
               si32(_loc4_,_loc3_ + 8);
               ESP = _loc3_;
               Fmemcpy();
               _loc3_ = int(_loc3_ + 16);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc17_,_loc3_);
               ESP = _loc3_;
               F_idalloc();
               _loc3_ = int(_loc3_ + 16);
            }
         }
         _loc15_ = li8(_opt_xmalloc_2E_b);
         if(_loc15_ == 1)
         {
            _loc10_ = li32(__malloc_message);
            ESP = _loc3_;
            F__getprogname();
            _loc3_ = int(_loc3_ - 16);
            si32(L__2E_str2,_loc3_ + 12);
            si32(L__2E_str2,_loc3_ + 8);
            si32(L__2E_str45,_loc3_ + 4);
            si32(int(eax),_loc3_);
            ESP = _loc3_;
            ptr2fun[_loc10_]();
            _loc3_ = int(_loc3_ + 16);
            ESP = _loc3_;
            F_abort();
         }
         ESP = _loc3_;
         F___error();
         _loc15_ = int(eax);
         si32(12,_loc15_);
         _loc14_ = 0;
      }
      else
      {
         ESP = _loc3_;
         F_malloc_init();
         _loc15_ = int(eax);
         if(_loc15_ == 0)
         {
            _loc15_ = li32(_arena_maxclass);
            if(uint(_loc15_) >= uint(_loc16_))
            {
               _loc15_ = li32(___isthreaded);
               if(_loc15_ != 0)
               {
                  _loc15_ = li32(_narenas);
                  if(uint(_loc15_) >= 2)
                  {
                     ESP = _loc3_;
                     F__pthread_self();
                     _loc15_ = li32(_narenas);
                     _loc13_ = int(uint(int(eax)) % uint(_loc15_));
                     _loc4_ = _loc13_ << 2;
                     _loc15_ = li32(_arenas);
                     _loc15_ = int(_loc15_ + _loc4_);
                     _loc14_ = li32(_loc15_);
                     if(_loc14_ == 0)
                     {
                        _loc15_ = li32(___isthreaded);
                        if(_loc15_ != 0)
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(_arenas_lock,_loc3_);
                           ESP = _loc3_;
                           F__pthread_mutex_trylock();
                           _loc3_ = int(_loc3_ + 16);
                           _loc15_ = int(eax);
                           if(_loc15_ != 0)
                           {
                              _loc11_ = 1;
                              _loc15_ = li32(_ncpus);
                              if(uint(_loc15_) > 1)
                              {
                                 while(true)
                                 {
                                    if(uint(_loc11_) < 12)
                                    {
                                       si32(0,_loc5_ - 4);
                                       _loc14_ = 1 << _loc11_;
                                       if(uint(_loc14_) > uint(li32(_loc5_ - 4)))
                                       {
                                          do
                                          {
                                             _loc15_ = li32(_loc5_ - 4);
                                             _loc15_ = int(_loc15_ + 1);
                                             si32(_loc15_,_loc5_ - 4);
                                             _loc15_ = li32(_loc5_ - 4);
                                          }
                                          while(uint(_loc14_) > uint(_loc15_));
                                          
                                       }
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_arenas_lock,_loc3_);
                                       ESP = _loc3_;
                                       F__pthread_mutex_trylock();
                                       _loc3_ = int(_loc3_ + 16);
                                       _loc15_ = int(eax);
                                       if(_loc15_ != 0)
                                       {
                                          _loc11_ = int(_loc11_ + 1);
                                          continue;
                                       }
                                       break;
                                    }
                                 }
                              }
                              _loc3_ = int(_loc3_ - 16);
                              si32(_arenas_lock,_loc3_);
                              ESP = _loc3_;
                              F__pthread_mutex_lock();
                              _loc3_ = int(_loc3_ + 16);
                           }
                        }
                        _loc15_ = li32(_arenas);
                        _loc15_ = int(_loc15_ + _loc4_);
                        _loc14_ = li32(_loc15_);
                        if(_loc14_ == 0)
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc13_,_loc3_);
                           ESP = _loc3_;
                           F_arenas_extend();
                           _loc3_ = int(_loc3_ + 16);
                           _loc14_ = int(eax);
                        }
                        _loc15_ = li32(___isthreaded);
                        if(_loc15_ != 0)
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(_arenas_lock,_loc3_);
                           ESP = _loc3_;
                           F__pthread_mutex_unlock();
                           _loc3_ = int(_loc3_ + 16);
                        }
                     }
                  }
                  addr2269:
                  _loc3_ = int(_loc3_ - 16);
                  si32(0,_loc3_ + 8);
                  si32(_loc16_,_loc3_ + 4);
                  si32(_loc14_,_loc3_);
                  ESP = _loc3_;
                  F_arena_malloc();
                  _loc3_ = int(_loc3_ + 16);
                  _loc14_ = int(eax);
               }
               _loc15_ = li32(_arenas);
               _loc14_ = li32(_loc15_);
               §§goto(addr2269);
            }
            else
            {
               _loc3_ = int(_loc3_ - 16);
               si32(0,_loc3_ + 4);
               si32(_loc16_,_loc3_);
               ESP = _loc3_;
               F_huge_malloc();
               _loc3_ = int(_loc3_ + 16);
               _loc14_ = int(eax);
            }
            if(_loc14_ == 0)
            {
            }
         }
         _loc15_ = li8(_opt_xmalloc_2E_b);
         if(_loc15_ == 1)
         {
            _loc10_ = li32(__malloc_message);
            ESP = _loc3_;
            F__getprogname();
            _loc3_ = int(_loc3_ - 16);
            si32(L__2E_str2,_loc3_ + 12);
            si32(L__2E_str2,_loc3_ + 8);
            si32(L__2E_str45,_loc3_ + 4);
            si32(int(eax),_loc3_);
            ESP = _loc3_;
            ptr2fun[_loc10_]();
            _loc3_ = int(_loc3_ + 16);
            ESP = _loc3_;
            F_abort();
         }
         ESP = _loc3_;
         F___error();
         _loc15_ = int(eax);
         si32(12,_loc15_);
         _loc14_ = 0;
      }
      §§goto(addr2413);
   }
}
