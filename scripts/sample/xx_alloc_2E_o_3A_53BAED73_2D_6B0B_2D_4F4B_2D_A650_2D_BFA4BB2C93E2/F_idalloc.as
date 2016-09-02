package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_idalloc() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:int = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_chunksize_mask);
      _loc1_ = _loc1_ ^ -1;
      _loc12_ = li32(_loc3_);
      _loc11_ = _loc12_ & _loc1_;
      if(_loc11_ != _loc12_)
      {
         _loc10_ = int(_loc11_ + int((int(int(_loc12_ - _loc11_) >>> 12)) * 12));
         _loc9_ = li32(_loc11_);
         _loc8_ = li32(___isthreaded);
         if((li8(_loc10_ + 24) & 2) == 0)
         {
            if(_loc8_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F__pthread_mutex_trylock();
               _loc2_ = int(_loc2_ + 16);
               if(int(eax) != 0)
               {
                  _loc8_ = 1;
                  if(uint(li32(_ncpus)) > 1)
                  {
                     while(true)
                     {
                        if(uint(_loc8_) < 12)
                        {
                           si32(0,_loc3_ - 8);
                           _loc7_ = 1 << _loc8_;
                           if(uint(_loc7_) > uint(li32(_loc3_ - 8)))
                           {
                              do
                              {
                                 _loc1_ = li32(_loc3_ - 8);
                                 _loc1_ = int(_loc1_ + 1);
                                 si32(_loc1_,_loc3_ - 8);
                                 _loc1_ = li32(_loc3_ - 8);
                              }
                              while(uint(_loc7_) > uint(_loc1_));
                              
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc9_,_loc2_);
                           ESP = _loc2_;
                           F__pthread_mutex_trylock();
                           _loc2_ = int(_loc2_ + 16);
                           _loc1_ = int(eax);
                           if(_loc1_ != 0)
                           {
                              _loc8_ = int(_loc8_ + 1);
                              continue;
                           }
                           break;
                        }
                     }
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc9_,_loc2_);
                  ESP = _loc2_;
                  F__pthread_mutex_lock();
                  _loc2_ = int(_loc2_ + 16);
               }
            }
            _loc1_ = li32(_loc10_ + 24);
            _loc10_ = _loc1_ & -4096;
            _loc8_ = li32(_loc10_);
            _loc7_ = li32(_loc8_ + 20);
            _loc1_ = li8(_opt_junk_2E_b);
            if(_loc1_ == 1)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc7_,_loc2_ + 8);
               si32(90,_loc2_ + 4);
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               Fmemset();
               _loc2_ = int(_loc2_ + 16);
            }
            var _loc6_:* = int(_loc12_ - _loc10_);
            _loc1_ = li32(_loc8_ + 36);
            _loc5_ = _loc6_ - _loc1_;
            _loc12_ = int(_loc7_ + -1);
            _loc1_ = _loc12_ & _loc7_;
            if(_loc1_ == 0)
            {
               if(uint(_loc7_) <= 128)
               {
                  _loc7_ = int(_loc5_ >>> li8(int(_log2_table_2E_10546 + _loc12_)));
               }
               else if(uint(_loc7_) <= 32768)
               {
                  _loc7_ = int(_loc5_ >>> int(li8(int((int(_loc7_ >>> 8)) + _log2_table_2E_10546) - 1) + 8));
               }
               else
               {
                  _loc7_ = int(uint(_loc5_) / uint(_loc7_));
               }
            }
            else if(uint(li32(_qspace_max)) > uint(_loc7_))
            {
               if(uint(_loc7_) <= 112)
               {
                  _loc7_ = int(int(li32(int((int((_loc7_ & -16) >>> 2)) + _qsize_invs_2E_10547) - 12) * _loc5_) >>> 21);
               }
               else
               {
                  _loc7_ = int(uint(_loc5_) / uint(_loc7_));
               }
            }
            else if(uint(li32(_cspace_max)) > uint(_loc7_))
            {
               if(uint(_loc7_) <= 448)
               {
                  _loc7_ = int(int(li32(int((int((_loc7_ & -64) >>> 4)) + _csize_invs_2E_10548) - 12) * _loc5_) >>> 21);
               }
               else
               {
                  _loc7_ = int(uint(_loc5_) / uint(_loc7_));
               }
            }
            else if(uint(_loc7_) <= 3839)
            {
               _loc7_ = int(int(li32(int((int((_loc7_ & -256) >>> 6)) + _ssize_invs_2E_10549) - 12) * _loc5_) >>> 21);
            }
            else
            {
               _loc7_ = int(uint(_loc5_) / uint(_loc7_));
            }
            _loc12_ = int(_loc7_ >>> 5);
            _loc1_ = li32(_loc10_ + 4);
            if(uint(_loc1_) > uint(_loc12_))
            {
               si32(_loc12_,_loc10_ + 4);
            }
            _loc1_ = _loc7_ & 31;
            _loc6_ = 1 << _loc1_;
            _loc1_ = _loc12_ << 2;
            _loc1_ = int(_loc10_ + _loc1_);
            var _loc4_:* = li32(_loc1_ + 12);
            _loc6_ = _loc4_ | _loc6_;
            si32(_loc6_,_loc1_ + 12);
            _loc7_ = li32(_loc10_ + 8);
            _loc1_ = int(_loc7_ + 1);
            si32(_loc1_,_loc10_ + 8);
            _loc12_ = li32(_loc8_ + 28);
            if(_loc1_ == _loc12_)
            {
               if(li32(_loc8_) == _loc10_)
               {
                  si32(0,_loc8_);
               }
               else if(_loc12_ != 1)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(int(_loc8_ + 4),_loc2_);
                  si32(int(int(_loc11_ + int((int(int(_loc10_ - _loc11_) >>> 12)) * 12)) + 16),_loc2_ + 4);
                  ESP = _loc2_;
                  F_arena_run_tree_remove();
                  _loc2_ = int(_loc2_ + 16);
               }
               _loc2_ = int(_loc2_ - 16);
               si32(1,_loc2_ + 8);
               si32(_loc10_,_loc2_ + 4);
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F_arena_run_dalloc();
               _loc2_ = int(_loc2_ + 16);
            }
            else if(_loc7_ == 0)
            {
               _loc12_ = li32(_loc8_);
               if(_loc12_ != _loc10_)
               {
                  if(_loc12_ == 0)
                  {
                     si32(_loc10_,_loc8_);
                  }
                  else if(uint(_loc10_) < uint(_loc12_))
                  {
                     if(li32(_loc12_ + 8) != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        _loc6_ = int(_loc8_ + 4);
                        si32(_loc6_,_loc2_);
                        _loc1_ = _loc12_ & (li32(_chunksize_mask) ^ -1);
                        _loc6_ = int(_loc12_ - _loc1_);
                        _loc6_ = int(_loc6_ >>> 12);
                        si32(int(int(_loc1_ + int(_loc6_ * 12)) + 16),_loc2_ + 4);
                        ESP = _loc2_;
                        F_arena_run_tree_insert();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     si32(_loc10_,_loc8_);
                  }
                  else
                  {
                     _loc2_ = int(_loc2_ - 16);
                     si32(int(_loc8_ + 4),_loc2_);
                     si32(int(int(_loc11_ + int((int(int(_loc10_ - _loc11_) >>> 12)) * 12)) + 16),_loc2_ + 4);
                     ESP = _loc2_;
                     F_arena_run_tree_insert();
                     _loc2_ = int(_loc2_ + 16);
                  }
               }
            }
            _loc1_ = li32(___isthreaded);
            if(_loc1_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F__pthread_mutex_unlock();
               _loc2_ = int(_loc2_ + 16);
            }
         }
         else
         {
            if(_loc8_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F__pthread_mutex_trylock();
               _loc2_ = int(_loc2_ + 16);
               if(int(eax) != 0)
               {
                  _loc11_ = 1;
                  if(uint(li32(_ncpus)) > 1)
                  {
                     while(true)
                     {
                        if(uint(_loc11_) < 12)
                        {
                           si32(0,_loc3_ - 4);
                           _loc8_ = 1 << _loc11_;
                           if(uint(_loc8_) > uint(li32(_loc3_ - 4)))
                           {
                              do
                              {
                                 _loc1_ = li32(_loc3_ - 4);
                                 _loc1_ = int(_loc1_ + 1);
                                 si32(_loc1_,_loc3_ - 4);
                                 _loc1_ = li32(_loc3_ - 4);
                              }
                              while(uint(_loc8_) > uint(_loc1_));
                              
                           }
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc9_,_loc2_);
                           ESP = _loc2_;
                           F__pthread_mutex_trylock();
                           _loc2_ = int(_loc2_ + 16);
                           _loc1_ = int(eax);
                           if(_loc1_ != 0)
                           {
                              _loc11_ = int(_loc11_ + 1);
                              continue;
                           }
                           break;
                        }
                     }
                  }
                  _loc2_ = int(_loc2_ - 16);
                  si32(_loc9_,_loc2_);
                  ESP = _loc2_;
                  F__pthread_mutex_lock();
                  _loc2_ = int(_loc2_ + 16);
               }
            }
            _loc1_ = li8(_opt_junk_2E_b);
            if(_loc1_ == 1)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(li32(_loc10_ + 24) & -4096,_loc2_ + 8);
               si32(90,_loc2_ + 4);
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               Fmemset();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc2_ = int(_loc2_ - 16);
            si32(1,_loc2_ + 8);
            si32(_loc12_,_loc2_ + 4);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F_arena_run_dalloc();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = li32(___isthreaded);
            if(_loc1_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F__pthread_mutex_unlock();
               _loc2_ = int(_loc2_ + 16);
            }
         }
      }
      else
      {
         if(li32(___isthreaded) != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_huge_mtx,_loc2_);
            ESP = _loc2_;
            F__spinlock();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc11_ = li32(_huge);
         _loc9_ = int(_huge + 4);
         while(_loc11_ != _loc9_)
         {
            _loc10_ = li32(_loc11_ + 16);
            if(_loc10_ == _loc12_)
            {
               break;
            }
            _loc7_ = 1;
            _loc8_ = _loc7_;
            if(uint(_loc10_) <= uint(_loc12_))
            {
               _loc8_ = 0;
            }
            if(uint(_loc10_) >= uint(_loc12_))
            {
               _loc7_ = 0;
            }
            _loc6_ = _loc8_ & 1;
            _loc1_ = _loc7_ & 1;
            _loc1_ = int(_loc1_ - _loc6_);
            if(_loc1_ <= -1)
            {
               _loc11_ = li32(_loc11_ + 8);
            }
            else
            {
               _loc11_ = li32(_loc11_ + 12) & -2;
            }
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_huge,_loc2_);
         _loc12_ = 0;
         if(_loc11_ != _loc9_)
         {
            _loc12_ = _loc11_;
         }
         si32(_loc12_,_loc2_ + 4);
         ESP = _loc2_;
         F_extent_tree_ad_remove();
         _loc2_ = int(_loc2_ + 16);
         _loc1_ = li32(___isthreaded);
         if(_loc1_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_huge_mtx,_loc2_);
            ESP = _loc2_;
            F__spinunlock();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc1_ = li8(_opt_junk_2E_b);
         if(_loc1_ == 1)
         {
            if((li8(_opt_dss_2E_b) ^ 1) != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(li32(_loc12_ + 20),_loc2_ + 8);
               si32(90,_loc2_ + 4);
               si32(li32(_loc12_ + 16),_loc2_);
               ESP = _loc2_;
               Fmemset();
               _loc2_ = int(_loc2_ + 16);
            }
            addr1251:
            _loc1_ = li32(_loc12_ + 16);
            _loc6_ = li32(_loc12_ + 20);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_chunk_dealloc();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = li32(___isthreaded);
            if(_loc1_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_base_mtx,_loc2_);
               ESP = _loc2_;
               F__spinlock();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc1_ = li32(_base_nodes);
            si32(_loc1_,_loc12_);
            si32(_loc12_,_base_nodes);
            _loc1_ = li32(___isthreaded);
            if(_loc1_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_base_mtx,_loc2_);
               ESP = _loc2_;
               F__spinunlock();
               _loc2_ = int(_loc2_ + 16);
            }
         }
         §§goto(addr1251);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
