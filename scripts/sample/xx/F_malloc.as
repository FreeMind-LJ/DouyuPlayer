package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_malloc() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      ESP = _loc2_;
      F_malloc_init();
      _loc1_ = li32(_loc3_);
      _loc9_ = int(eax);
      _loc8_ = _loc1_;
      if(_loc9_ == 0)
      {
         if(_loc1_ == 0)
         {
            _loc1_ = 1;
            _loc8_ = 0;
            _loc9_ = li8(_opt_sysv_2E_b);
            if(_loc9_ == 0)
            {
            }
         }
         _loc9_ = li32(_arena_maxclass);
         if(uint(_loc9_) >= uint(_loc1_))
         {
            _loc9_ = li32(___isthreaded);
            if(_loc9_ != 0)
            {
               _loc9_ = li32(_narenas);
               if(uint(_loc9_) >= 2)
               {
                  ESP = _loc2_;
                  F__pthread_self();
                  var _loc7_:* = li32(_narenas);
                  _loc6_ = uint(int(eax)) % uint(_loc7_);
                  _loc8_ = _loc6_ << 2;
                  _loc9_ = li32(_arenas);
                  _loc9_ = int(_loc9_ + _loc8_);
                  _loc5_ = li32(_loc9_);
                  if(_loc5_ == 0)
                  {
                     _loc9_ = li32(___isthreaded);
                     if(_loc9_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_arenas_lock,_loc2_);
                        ESP = _loc2_;
                        F__pthread_mutex_trylock();
                        _loc2_ = int(_loc2_ + 16);
                        _loc9_ = int(eax);
                        if(_loc9_ != 0)
                        {
                           _loc5_ = 1;
                           _loc9_ = li32(_ncpus);
                           if(uint(_loc9_) > 1)
                           {
                              while(true)
                              {
                                 if(uint(_loc5_) < 12)
                                 {
                                    si32(0,_loc3_ - 4);
                                    _loc4_ = 1 << _loc5_;
                                    if(uint(_loc4_) > uint(li32(_loc3_ - 4)))
                                    {
                                       do
                                       {
                                          _loc9_ = li32(_loc3_ - 4);
                                          _loc9_ = int(_loc9_ + 1);
                                          si32(_loc9_,_loc3_ - 4);
                                          _loc9_ = li32(_loc3_ - 4);
                                       }
                                       while(uint(_loc4_) > uint(_loc9_));
                                       
                                    }
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_arenas_lock,_loc2_);
                                    ESP = _loc2_;
                                    F__pthread_mutex_trylock();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc9_ = int(eax);
                                    if(_loc9_ != 0)
                                    {
                                       _loc5_ = int(_loc5_ + 1);
                                       continue;
                                    }
                                    break;
                                 }
                              }
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(_arenas_lock,_loc2_);
                           ESP = _loc2_;
                           F__pthread_mutex_lock();
                           _loc2_ = int(_loc2_ + 16);
                        }
                     }
                     _loc9_ = li32(_arenas);
                     _loc9_ = int(_loc9_ + _loc8_);
                     _loc5_ = li32(_loc9_);
                     if(_loc5_ == 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc6_,_loc2_);
                        ESP = _loc2_;
                        F_arenas_extend();
                        _loc2_ = int(_loc2_ + 16);
                        _loc5_ = int(eax);
                     }
                     _loc9_ = li32(___isthreaded);
                     if(_loc9_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_arenas_lock,_loc2_);
                        ESP = _loc2_;
                        F__pthread_mutex_unlock();
                        _loc2_ = int(_loc2_ + 16);
                     }
                  }
               }
               addr339:
               _loc2_ = int(_loc2_ - 16);
               si32(0,_loc2_ + 8);
               si32(_loc1_,_loc2_ + 4);
               si32(_loc5_,_loc2_);
               ESP = _loc2_;
               F_arena_malloc();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = eax;
            }
            _loc9_ = li32(_arenas);
            _loc5_ = li32(_loc9_);
            §§goto(addr339);
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            si32(0,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_huge_malloc();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = eax;
         }
         _loc8_ = _loc1_;
         if(_loc6_ == 0)
         {
         }
         addr487:
         _loc9_ = li8(_opt_utrace_2E_b);
         if(_loc9_ == 1)
         {
            si32(0,_loc3_ - 16);
            _loc7_ = int(_loc3_ - 16);
            si32(_loc1_,_loc7_ | 4);
            si32(_loc6_,_loc3_ - 8);
            _loc2_ = int(_loc2_ - 16);
            si32(12,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F_utrace();
            _loc2_ = int(_loc2_ + 16);
         }
         eax = _loc6_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc9_ = li8(_opt_xmalloc_2E_b);
      if(_loc9_ == 1)
      {
         _loc7_ = li32(__malloc_message);
         ESP = _loc2_;
         F__getprogname();
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str2,_loc2_ + 12);
         si32(L__2E_str2,_loc2_ + 8);
         si32(L__2E_str49,_loc2_ + 4);
         si32(int(eax),_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc7_]();
         _loc2_ = int(_loc2_ + 16);
         ESP = _loc2_;
         F_abort();
      }
      ESP = _loc2_;
      F___error();
      _loc9_ = int(eax);
      si32(12,_loc9_);
      _loc6_ = 0;
      _loc1_ = _loc8_;
      §§goto(addr487);
   }
}
