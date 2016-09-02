package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_posix_memalign() : void
   {
      var _loc6_:* = 0;
      var _loc16_:* = 0;
      var _loc17_:* = 0;
      var _loc14_:* = 0;
      var _loc15_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:int = 0;
      var _loc4_:* = 0;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      _loc3_ = int(_loc3_ - 32);
      ESP = _loc3_;
      F_malloc_init();
      _loc4_ = li32(_loc6_ + 8);
      var _loc18_:* = int(eax);
      if(_loc18_ == 0)
      {
         _loc17_ = li32(_loc6_ + 4);
         _loc16_ = int(_loc17_ + -1);
         _loc18_ = _loc16_ & _loc17_;
         if(_loc18_ == 0)
         {
            if(uint(_loc17_) <= 3)
            {
            }
            addr147:
            _loc12_ = _loc4_;
            if(_loc4_ == 0)
            {
               _loc12_ = 1;
               _loc4_ = 0;
               _loc14_ = _loc4_;
               _loc15_ = _loc4_;
               if(li8(_opt_sysv_2E_b) == 0)
               {
               }
               addr2155:
               _loc18_ = li8(_opt_utrace_2E_b);
               if(_loc18_ == 1)
               {
                  si32(0,_loc6_ - 24);
                  var _loc13_:* = int(_loc6_ - 24);
                  si32(_loc4_,_loc13_ | 4);
                  si32(_loc15_,_loc6_ - 16);
                  _loc3_ = int(_loc3_ - 16);
                  si32(12,_loc3_ + 4);
                  si32(_loc13_,_loc3_);
                  ESP = _loc3_;
                  F_utrace();
                  _loc3_ = int(_loc3_ + 16);
               }
               eax = _loc14_;
               _loc3_ = _loc6_;
               ESP = _loc3_;
               return;
            }
            _loc4_ = _loc12_;
            _loc18_ = int(_loc4_ + _loc16_);
            _loc13_ = int(0 - _loc17_);
            _loc14_ = _loc18_ & _loc13_;
            if(uint(_loc14_) >= uint(_loc4_))
            {
               _loc16_ = li32(_loc6_);
               if(uint(_loc14_) >= 4097)
               {
                  _loc15_ = li32(_arena_maxclass);
                  if(uint(_loc17_) <= 4096)
                  {
                     if(uint(_loc14_) <= uint(_loc15_))
                     {
                     }
                  }
                  _loc12_ = int(_loc4_ + 4095);
                  _loc14_ = _loc12_ & -4096;
                  if(uint(_loc14_) >= uint(_loc4_))
                  {
                     _loc18_ = int(_loc17_ + 4095);
                     _loc17_ = _loc18_ & -4096;
                     _loc11_ = int(_loc14_ + _loc17_);
                     _loc1_ = 1;
                     if(uint(_loc11_) >= uint(_loc14_))
                     {
                        _loc1_ = 0;
                     }
                     if(_loc1_ == 0)
                     {
                        _loc1_ = _loc17_ << 1;
                        _loc7_ = _loc1_;
                        if(uint(_loc14_) >= uint(_loc17_))
                        {
                           _loc7_ = _loc11_;
                        }
                        _loc11_ = int(_loc7_ + -4096);
                        if(uint(_loc11_) <= uint(_loc15_))
                        {
                           _loc18_ = li32(___isthreaded);
                           if(_loc18_ != 0)
                           {
                              _loc18_ = li32(_narenas);
                              if(uint(_loc18_) >= 2)
                              {
                                 ESP = _loc3_;
                                 F__pthread_self();
                                 _loc18_ = li32(_narenas);
                                 _loc15_ = int(uint(int(eax)) % uint(_loc18_));
                                 _loc7_ = _loc15_ << 2;
                                 _loc18_ = li32(_arenas);
                                 _loc18_ = int(_loc18_ + _loc7_);
                                 _loc1_ = li32(_loc18_);
                                 if(_loc1_ == 0)
                                 {
                                    _loc18_ = li32(___isthreaded);
                                    if(_loc18_ != 0)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_arenas_lock,_loc3_);
                                       ESP = _loc3_;
                                       F__pthread_mutex_trylock();
                                       _loc3_ = int(_loc3_ + 16);
                                       _loc18_ = int(eax);
                                       if(_loc18_ != 0)
                                       {
                                          _loc8_ = 1;
                                          _loc18_ = li32(_ncpus);
                                          if(uint(_loc18_) > 1)
                                          {
                                             while(true)
                                             {
                                                if(uint(_loc8_) < 12)
                                                {
                                                   si32(0,_loc6_ - 4);
                                                   _loc1_ = 1 << _loc8_;
                                                   if(uint(_loc1_) > uint(li32(_loc6_ - 4)))
                                                   {
                                                      do
                                                      {
                                                         _loc18_ = li32(_loc6_ - 4);
                                                         _loc18_ = int(_loc18_ + 1);
                                                         si32(_loc18_,_loc6_ - 4);
                                                         _loc18_ = li32(_loc6_ - 4);
                                                      }
                                                      while(uint(_loc1_) > uint(_loc18_));
                                                      
                                                   }
                                                   _loc3_ = int(_loc3_ - 16);
                                                   si32(_arenas_lock,_loc3_);
                                                   ESP = _loc3_;
                                                   F__pthread_mutex_trylock();
                                                   _loc3_ = int(_loc3_ + 16);
                                                   _loc18_ = int(eax);
                                                   if(_loc18_ != 0)
                                                   {
                                                      _loc8_ = int(_loc8_ + 1);
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
                                    _loc18_ = li32(_arenas);
                                    _loc18_ = int(_loc18_ + _loc7_);
                                    _loc7_ = li32(_loc18_);
                                    if(_loc7_ == 0)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_loc15_,_loc3_);
                                       ESP = _loc3_;
                                       F_arenas_extend();
                                       _loc3_ = int(_loc3_ + 16);
                                       _loc7_ = int(eax);
                                    }
                                    _loc18_ = li32(___isthreaded);
                                    if(_loc18_ == 0)
                                    {
                                       _loc1_ = _loc7_;
                                    }
                                    else
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_arenas_lock,_loc3_);
                                       ESP = _loc3_;
                                       F__pthread_mutex_unlock();
                                       _loc3_ = int(_loc3_ + 16);
                                       _loc1_ = _loc7_;
                                    }
                                    addr1010:
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(0,_loc3_ + 12);
                                    si32(1,_loc3_ + 8);
                                    si32(_loc11_,_loc3_ + 4);
                                    si32(_loc1_,_loc3_);
                                    ESP = _loc3_;
                                    F_arena_run_alloc();
                                    _loc3_ = int(_loc3_ + 16);
                                    _loc15_ = int(eax);
                                    addr2149:
                                    if(_loc15_ == 0)
                                    {
                                       _loc18_ = li32(___isthreaded);
                                       if(_loc18_ != 0)
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc7_,_loc3_);
                                          ESP = _loc3_;
                                          F__pthread_mutex_unlock();
                                          _loc3_ = int(_loc3_ + 16);
                                       }
                                    }
                                    else
                                    {
                                       _loc9_ = _loc15_ & int(_loc17_ + -1);
                                       _loc18_ = li32(_chunksize_mask);
                                       _loc8_ = _loc15_ & (_loc18_ ^ -1);
                                       if(_loc9_ == 0)
                                       {
                                          _loc18_ = int(_loc15_ - _loc8_);
                                          _loc13_ = int(_loc18_ >>> 12);
                                          _loc18_ = int(_loc8_ + 16);
                                          var _loc10_:* = _loc14_ | 3;
                                          si32(_loc10_,int(_loc18_ + int(_loc13_ * 12)) + 8);
                                          _loc13_ = int(_loc13_ + (int(_loc12_ >>> 12)));
                                          _loc13_ = int(_loc11_ - _loc14_);
                                          _loc13_ = _loc13_ | 3;
                                          si32(_loc13_,int(_loc18_ + int(_loc13_ * 12)) + 8);
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(0,_loc3_ + 8);
                                          _loc18_ = int(_loc15_ + _loc14_);
                                          si32(_loc18_,_loc3_ + 4);
                                          si32(_loc1_,_loc3_);
                                          ESP = _loc3_;
                                          F_arena_run_dalloc();
                                          _loc3_ = int(_loc3_ + 16);
                                       }
                                       else
                                       {
                                          _loc5_ = _loc17_ - _loc9_;
                                          _loc11_ = int(_loc11_ - _loc5_);
                                          if(_loc9_ != _loc17_)
                                          {
                                             _loc18_ = int(_loc15_ - _loc8_);
                                             _loc13_ = int(_loc18_ >>> 12);
                                             _loc18_ = int(_loc8_ + 16);
                                             si32(_loc5_ | 3,int(_loc18_ + int(_loc13_ * 12)) + 8);
                                             _loc13_ = int(_loc13_ + (int(_loc5_ >>> 12)));
                                             _loc13_ = _loc11_ | 3;
                                             si32(_loc13_,int(_loc18_ + int(_loc13_ * 12)) + 8);
                                             _loc3_ = int(_loc3_ - 16);
                                             si32(0,_loc3_ + 8);
                                             si32(_loc15_,_loc3_ + 4);
                                             si32(_loc1_,_loc3_);
                                             _loc15_ = int(_loc5_ + _loc15_);
                                             ESP = _loc3_;
                                             F_arena_run_dalloc();
                                             _loc3_ = int(_loc3_ + 16);
                                          }
                                          if(_loc11_ != _loc14_)
                                          {
                                             _loc18_ = int(_loc15_ - _loc8_);
                                             _loc13_ = int(_loc18_ >>> 12);
                                             _loc18_ = int(_loc8_ + 16);
                                             si32(_loc14_ | 3,int(_loc18_ + int(_loc13_ * 12)) + 8);
                                             _loc13_ = int(_loc13_ + (int(_loc12_ >>> 12)));
                                             _loc13_ = int(_loc11_ - _loc14_);
                                             _loc13_ = _loc13_ | 3;
                                             si32(_loc13_,int(_loc18_ + int(_loc13_ * 12)) + 8);
                                             _loc3_ = int(_loc3_ - 16);
                                             si32(0,_loc3_ + 8);
                                             _loc18_ = int(_loc15_ + _loc14_);
                                             si32(_loc18_,_loc3_ + 4);
                                             si32(_loc1_,_loc3_);
                                             ESP = _loc3_;
                                             F_arena_run_dalloc();
                                             _loc3_ = int(_loc3_ + 16);
                                          }
                                       }
                                       _loc18_ = li32(___isthreaded);
                                       if(_loc18_ != 0)
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc7_,_loc3_);
                                          ESP = _loc3_;
                                          F__pthread_mutex_unlock();
                                          _loc3_ = int(_loc3_ + 16);
                                       }
                                       _loc18_ = li8(_opt_junk_2E_b);
                                       if(_loc18_ == 1)
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc14_,_loc3_ + 8);
                                          si32(165,_loc3_ + 4);
                                          si32(_loc15_,_loc3_);
                                          ESP = _loc3_;
                                          Fmemset();
                                          _loc3_ = int(_loc3_ + 16);
                                       }
                                       else
                                       {
                                          _loc18_ = li8(_opt_zero_2E_b);
                                          if(_loc18_ == 1)
                                          {
                                             _loc3_ = int(_loc3_ - 16);
                                             si32(_loc14_,_loc3_ + 8);
                                             si32(0,_loc3_ + 4);
                                             si32(_loc15_,_loc3_);
                                             ESP = _loc3_;
                                             Fmemset();
                                             _loc3_ = int(_loc3_ + 16);
                                          }
                                       }
                                       addr2078:
                                       if(_loc15_ == 0)
                                       {
                                       }
                                    }
                                    si32(_loc15_,_loc16_);
                                    _loc14_ = 0;
                                    §§goto(addr2155);
                                 }
                              }
                              addr858:
                              _loc18_ = li32(___isthreaded);
                              _loc7_ = _loc1_;
                              if(_loc18_ != 0)
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_loc1_,_loc3_);
                                 ESP = _loc3_;
                                 F__pthread_mutex_trylock();
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc7_ = _loc1_;
                                 if(int(eax) != 0)
                                 {
                                    _loc15_ = 1;
                                    _loc18_ = li32(_ncpus);
                                    if(uint(_loc18_) > 1)
                                    {
                                       while(true)
                                       {
                                          if(uint(_loc15_) < 12)
                                          {
                                             si32(0,_loc6_ - 12);
                                             _loc7_ = 1 << _loc15_;
                                             if(uint(_loc7_) > uint(li32(_loc6_ - 12)))
                                             {
                                                do
                                                {
                                                   _loc18_ = li32(_loc6_ - 12);
                                                   _loc18_ = int(_loc18_ + 1);
                                                   si32(_loc18_,_loc6_ - 12);
                                                   _loc18_ = li32(_loc6_ - 12);
                                                }
                                                while(uint(_loc7_) > uint(_loc18_));
                                                
                                             }
                                             _loc3_ = int(_loc3_ - 16);
                                             si32(_loc1_,_loc3_);
                                             ESP = _loc3_;
                                             F__pthread_mutex_trylock();
                                             _loc3_ = int(_loc3_ + 16);
                                             _loc18_ = int(eax);
                                             _loc7_ = _loc1_;
                                             if(_loc18_ != 0)
                                             {
                                                _loc15_ = int(_loc15_ + 1);
                                                continue;
                                             }
                                             break;
                                          }
                                       }
                                    }
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_loc1_,_loc3_);
                                    ESP = _loc3_;
                                    F__pthread_mutex_lock();
                                    _loc3_ = int(_loc3_ + 16);
                                    _loc7_ = _loc1_;
                                 }
                              }
                              §§goto(addr1010);
                           }
                           _loc18_ = li32(_arenas);
                           _loc1_ = li32(_loc18_);
                           §§goto(addr858);
                        }
                        else
                        {
                           _loc15_ = li32(_chunksize);
                           if(uint(_loc17_) <= uint(_loc15_))
                           {
                              _loc3_ = int(_loc3_ - 16);
                              si32(0,_loc3_ + 4);
                              si32(_loc14_,_loc3_);
                              ESP = _loc3_;
                              F_huge_malloc();
                              _loc3_ = int(_loc3_ + 16);
                              _loc15_ = int(eax);
                              §§goto(addr2078);
                           }
                           else
                           {
                              _loc13_ = li32(_chunksize_mask);
                              _loc12_ = int(_loc13_ + _loc14_) & (_loc13_ ^ -1);
                              if(uint(_loc14_) >= uint(_loc17_))
                              {
                                 _loc1_ = int(_loc12_ + _loc17_);
                              }
                              _loc18_ = li32(___isthreaded);
                              if(_loc18_ != 0)
                              {
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(_base_mtx,_loc3_);
                                 ESP = _loc3_;
                                 F__spinlock();
                                 _loc3_ = int(_loc3_ + 16);
                              }
                              _loc1_ = int(_loc1_ - _loc15_);
                              _loc11_ = li32(_base_nodes);
                              if(_loc11_ != 0)
                              {
                                 _loc18_ = li32(_loc11_);
                                 si32(_loc18_,_base_nodes);
                                 _loc18_ = li32(___isthreaded);
                                 if(_loc18_ != 0)
                                 {
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_base_mtx,_loc3_);
                                    ESP = _loc3_;
                                    F__spinunlock();
                                    _loc3_ = int(_loc3_ + 16);
                                 }
                                 addr1695:
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(0,_loc3_ + 4);
                                 si32(_loc1_,_loc3_);
                                 ESP = _loc3_;
                                 F_chunk_alloc();
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc15_ = int(eax);
                                 if(_loc15_ == 0)
                                 {
                                    _loc18_ = li32(___isthreaded);
                                    if(_loc18_ != 0)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_base_mtx,_loc3_);
                                       ESP = _loc3_;
                                       F__spinlock();
                                       _loc3_ = int(_loc3_ + 16);
                                    }
                                    _loc18_ = li32(_base_nodes);
                                    si32(_loc18_,_loc11_);
                                    si32(_loc11_,_base_nodes);
                                    _loc18_ = li32(___isthreaded);
                                    if(_loc18_ != 0)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_base_mtx,_loc3_);
                                       ESP = _loc3_;
                                       F__spinunlock();
                                       _loc3_ = int(_loc3_ + 16);
                                    }
                                 }
                                 else
                                 {
                                    _loc14_ = _loc15_ & int(_loc17_ + -1);
                                    if(_loc14_ == 0)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(int(_loc1_ - _loc12_),_loc3_ + 4);
                                       _loc18_ = int(_loc15_ + _loc12_);
                                       si32(_loc18_,_loc3_);
                                       ESP = _loc3_;
                                       F_chunk_dealloc();
                                       _loc3_ = int(_loc3_ + 16);
                                    }
                                    else
                                    {
                                       _loc18_ = int(_loc14_ - _loc17_);
                                       _loc1_ = int(_loc18_ + _loc1_);
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(int(_loc17_ - _loc14_),_loc3_ + 4);
                                       si32(_loc15_,_loc3_);
                                       _loc15_ = int(int(_loc17_ - _loc14_) + _loc15_);
                                       ESP = _loc3_;
                                       F_chunk_dealloc();
                                       _loc3_ = int(_loc3_ + 16);
                                       if(_loc1_ != _loc12_)
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(int(_loc1_ - _loc12_),_loc3_ + 4);
                                          _loc18_ = int(_loc15_ + _loc12_);
                                          si32(_loc18_,_loc3_);
                                          ESP = _loc3_;
                                          F_chunk_dealloc();
                                          _loc3_ = int(_loc3_ + 16);
                                       }
                                    }
                                    si32(_loc15_,_loc11_ + 16);
                                    si32(_loc12_,_loc11_ + 20);
                                    _loc18_ = li32(___isthreaded);
                                    if(_loc18_ != 0)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_huge_mtx,_loc3_);
                                       ESP = _loc3_;
                                       F__spinlock();
                                       _loc3_ = int(_loc3_ + 16);
                                    }
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_loc11_,_loc3_ + 4);
                                    si32(_huge,_loc3_);
                                    ESP = _loc3_;
                                    F_extent_tree_ad_insert();
                                    _loc3_ = int(_loc3_ + 16);
                                    _loc18_ = li32(___isthreaded);
                                    if(_loc18_ != 0)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_huge_mtx,_loc3_);
                                       ESP = _loc3_;
                                       F__spinunlock();
                                       _loc3_ = int(_loc3_ + 16);
                                    }
                                    _loc18_ = li8(_opt_junk_2E_b);
                                    if(_loc18_ == 1)
                                    {
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_loc12_,_loc3_ + 8);
                                       si32(165,_loc3_ + 4);
                                       si32(_loc15_,_loc3_);
                                       ESP = _loc3_;
                                       Fmemset();
                                       _loc3_ = int(_loc3_ + 16);
                                    }
                                    else
                                    {
                                       _loc18_ = li8(_opt_zero_2E_b);
                                       if(_loc18_ == 1)
                                       {
                                          _loc3_ = int(_loc3_ - 16);
                                          si32(_loc12_,_loc3_ + 8);
                                          si32(0,_loc3_ + 4);
                                          si32(_loc15_,_loc3_);
                                          ESP = _loc3_;
                                          Fmemset();
                                          _loc3_ = int(_loc3_ + 16);
                                       }
                                    }
                                    §§goto(addr2078);
                                 }
                                 §§goto(addr2149);
                              }
                              else
                              {
                                 _loc18_ = li32(___isthreaded);
                                 if(_loc18_ != 0)
                                 {
                                    _loc3_ = int(_loc3_ - 16);
                                    si32(_base_mtx,_loc3_);
                                    ESP = _loc3_;
                                    F__spinunlock();
                                    _loc3_ = int(_loc3_ + 16);
                                 }
                                 _loc3_ = int(_loc3_ - 16);
                                 si32(24,_loc3_);
                                 ESP = _loc3_;
                                 F_base_alloc();
                                 _loc3_ = int(_loc3_ + 16);
                                 _loc11_ = int(eax);
                                 if(_loc11_ != 0)
                                 {
                                    §§goto(addr1695);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               _loc18_ = li32(___isthreaded);
               if(_loc18_ != 0)
               {
                  _loc18_ = li32(_narenas);
                  if(uint(_loc18_) >= 2)
                  {
                     ESP = _loc3_;
                     F__pthread_self();
                     _loc18_ = li32(_narenas);
                     _loc17_ = int(uint(int(eax)) % uint(_loc18_));
                     _loc12_ = _loc17_ << 2;
                     _loc18_ = li32(_arenas);
                     _loc18_ = int(_loc18_ + _loc12_);
                     _loc15_ = li32(_loc18_);
                     if(_loc15_ == 0)
                     {
                        _loc18_ = li32(___isthreaded);
                        if(_loc18_ != 0)
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(_arenas_lock,_loc3_);
                           ESP = _loc3_;
                           F__pthread_mutex_trylock();
                           _loc3_ = int(_loc3_ + 16);
                           _loc18_ = int(eax);
                           if(_loc18_ != 0)
                           {
                              _loc15_ = 1;
                              _loc18_ = li32(_ncpus);
                              if(uint(_loc18_) > 1)
                              {
                                 while(true)
                                 {
                                    if(uint(_loc15_) < 12)
                                    {
                                       si32(0,_loc6_ - 8);
                                       _loc11_ = 1 << _loc15_;
                                       if(uint(_loc11_) > uint(li32(_loc6_ - 8)))
                                       {
                                          do
                                          {
                                             _loc18_ = li32(_loc6_ - 8);
                                             _loc18_ = int(_loc18_ + 1);
                                             si32(_loc18_,_loc6_ - 8);
                                             _loc18_ = li32(_loc6_ - 8);
                                          }
                                          while(uint(_loc11_) > uint(_loc18_));
                                          
                                       }
                                       _loc3_ = int(_loc3_ - 16);
                                       si32(_arenas_lock,_loc3_);
                                       ESP = _loc3_;
                                       F__pthread_mutex_trylock();
                                       _loc3_ = int(_loc3_ + 16);
                                       _loc18_ = int(eax);
                                       if(_loc18_ != 0)
                                       {
                                          _loc15_ = int(_loc15_ + 1);
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
                        _loc18_ = li32(_arenas);
                        _loc18_ = int(_loc18_ + _loc12_);
                        _loc15_ = li32(_loc18_);
                        if(_loc15_ == 0)
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(_loc17_,_loc3_);
                           ESP = _loc3_;
                           F_arenas_extend();
                           _loc3_ = int(_loc3_ + 16);
                           _loc15_ = int(eax);
                        }
                        _loc18_ = li32(___isthreaded);
                        if(_loc18_ != 0)
                        {
                           _loc3_ = int(_loc3_ - 16);
                           si32(_arenas_lock,_loc3_);
                           ESP = _loc3_;
                           F__pthread_mutex_unlock();
                           _loc3_ = int(_loc3_ + 16);
                        }
                     }
                  }
                  addr480:
                  _loc3_ = int(_loc3_ - 16);
                  si32(0,_loc3_ + 8);
                  si32(_loc14_,_loc3_ + 4);
                  si32(_loc15_,_loc3_);
                  ESP = _loc3_;
                  F_arena_malloc();
                  _loc3_ = int(_loc3_ + 16);
                  _loc15_ = int(eax);
                  §§goto(addr2078);
               }
               _loc18_ = li32(_arenas);
               _loc15_ = li32(_loc18_);
               §§goto(addr480);
            }
         }
         _loc15_ = 0;
         _loc14_ = 22;
         _loc18_ = li8(_opt_xmalloc_2E_b);
         if(_loc18_ == 1)
         {
            _loc18_ = li32(__malloc_message);
            ESP = _loc3_;
            F__getprogname();
            _loc3_ = int(_loc3_ - 16);
            si32(L__2E_str2,_loc3_ + 12);
            si32(L__2E_str2,_loc3_ + 8);
            si32(L__2E_str47,_loc3_ + 4);
            si32(int(eax),_loc3_);
            ESP = _loc3_;
            ptr2fun[_loc18_]();
            _loc3_ = int(_loc3_ + 16);
            ESP = _loc3_;
            F_abort();
            §§goto(addr147);
         }
         §§goto(addr2155);
      }
      _loc15_ = 0;
      _loc14_ = 12;
      _loc18_ = li8(_opt_xmalloc_2E_b);
      if(_loc18_ == 1)
      {
         _loc13_ = li32(__malloc_message);
         ESP = _loc3_;
         F__getprogname();
         _loc3_ = int(_loc3_ - 16);
         si32(L__2E_str2,_loc3_ + 12);
         si32(L__2E_str2,_loc3_ + 8);
         si32(L__2E_str48,_loc3_ + 4);
         si32(int(eax),_loc3_);
         ESP = _loc3_;
         ptr2fun[_loc13_]();
         _loc3_ = int(_loc3_ + 16);
         ESP = _loc3_;
         F_abort();
         §§goto(addr2149);
      }
      §§goto(addr2155);
   }
}
