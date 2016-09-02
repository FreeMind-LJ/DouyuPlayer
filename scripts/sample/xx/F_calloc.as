package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_calloc() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      ESP = _loc2_;
      F_malloc_init();
      _loc1_ = 0;
      var _loc9_:* = int(eax);
      if(_loc9_ == 0)
      {
         _loc8_ = li32(_loc3_ + 4);
         _loc7_ = li32(_loc3_);
         _loc6_ = int(_loc8_ * _loc7_);
         if(_loc6_ == 0)
         {
            _loc1_ = 0;
            _loc9_ = li8(_opt_sysv_2E_b);
            if(_loc9_ == 0)
            {
               _loc5_ = 1;
               if(_loc7_ != 0)
               {
                  _loc1_ = _loc6_;
                  if(_loc8_ != 0)
                  {
                  }
                  addr528:
                  _loc9_ = li8(_opt_utrace_2E_b);
                  if(_loc9_ == 1)
                  {
                     si32(0,_loc3_ - 16);
                     var _loc4_:int = _loc3_ - 16;
                     si32(_loc5_,_loc4_ | 4);
                     si32(_loc6_,_loc3_ - 8);
                     _loc2_ = int(_loc2_ - 16);
                     si32(12,_loc2_ + 4);
                     si32(_loc4_,_loc2_);
                     ESP = _loc2_;
                     F_utrace();
                     _loc2_ = int(_loc2_ + 16);
                  }
                  eax = _loc6_;
                  _loc2_ = _loc3_;
                  ESP = _loc2_;
                  return;
               }
            }
         }
         else
         {
            _loc5_ = _loc6_;
            if((uint(_loc8_ | _loc7_)) >= 65536)
            {
               _loc5_ = _loc6_;
               _loc1_ = _loc6_;
               if(int(uint(_loc6_) / uint(_loc8_)) == _loc7_)
               {
               }
            }
         }
         _loc9_ = li32(_arena_maxclass);
         if(uint(_loc9_) >= uint(_loc5_))
         {
            _loc9_ = li32(___isthreaded);
            if(_loc9_ != 0)
            {
               _loc9_ = li32(_narenas);
               if(uint(_loc9_) >= 2)
               {
                  ESP = _loc2_;
                  F__pthread_self();
                  _loc9_ = li32(_narenas);
                  _loc1_ = int(uint(int(eax)) % uint(_loc9_));
                  _loc6_ = _loc1_ << 2;
                  _loc9_ = li32(_arenas);
                  _loc9_ = int(_loc9_ + _loc6_);
                  _loc8_ = li32(_loc9_);
                  if(_loc8_ == 0)
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
                           _loc7_ = 1;
                           _loc9_ = li32(_ncpus);
                           if(uint(_loc9_) > 1)
                           {
                              while(true)
                              {
                                 if(uint(_loc7_) < 12)
                                 {
                                    si32(0,_loc3_ - 4);
                                    _loc8_ = 1 << _loc7_;
                                    if(uint(_loc8_) > uint(li32(_loc3_ - 4)))
                                    {
                                       do
                                       {
                                          _loc9_ = li32(_loc3_ - 4);
                                          _loc9_ = int(_loc9_ + 1);
                                          si32(_loc9_,_loc3_ - 4);
                                          _loc9_ = li32(_loc3_ - 4);
                                       }
                                       while(uint(_loc8_) > uint(_loc9_));
                                       
                                    }
                                    _loc2_ = int(_loc2_ - 16);
                                    si32(_arenas_lock,_loc2_);
                                    ESP = _loc2_;
                                    F__pthread_mutex_trylock();
                                    _loc2_ = int(_loc2_ + 16);
                                    _loc9_ = int(eax);
                                    if(_loc9_ != 0)
                                    {
                                       _loc7_ = int(_loc7_ + 1);
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
                     _loc9_ = int(_loc9_ + _loc6_);
                     _loc8_ = li32(_loc9_);
                     if(_loc8_ == 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_arenas_extend();
                        _loc2_ = int(_loc2_ + 16);
                        _loc8_ = int(eax);
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
               addr380:
               _loc2_ = int(_loc2_ - 16);
               si32(1,_loc2_ + 8);
               si32(_loc5_,_loc2_ + 4);
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F_arena_malloc();
               _loc2_ = int(_loc2_ + 16);
               _loc6_ = int(eax);
            }
            _loc9_ = li32(_arenas);
            _loc8_ = li32(_loc9_);
            §§goto(addr380);
         }
         else
         {
            _loc2_ = int(_loc2_ - 16);
            si32(1,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_huge_malloc();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = int(eax);
         }
         _loc1_ = _loc5_;
         if(_loc6_ == 0)
         {
         }
         §§goto(addr528);
      }
      _loc9_ = li8(_opt_xmalloc_2E_b);
      if(_loc9_ == 1)
      {
         _loc9_ = li32(__malloc_message);
         ESP = _loc2_;
         F__getprogname();
         _loc2_ = int(_loc2_ - 16);
         si32(L__2E_str2,_loc2_ + 12);
         si32(L__2E_str2,_loc2_ + 8);
         si32(L__2E_str46,_loc2_ + 4);
         si32(int(eax),_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc9_]();
         _loc2_ = int(_loc2_ + 16);
         ESP = _loc2_;
         F_abort();
      }
      ESP = _loc2_;
      F___error();
      _loc9_ = int(eax);
      si32(12,_loc9_);
      _loc6_ = 0;
      _loc5_ = _loc1_;
      §§goto(addr528);
   }
}
