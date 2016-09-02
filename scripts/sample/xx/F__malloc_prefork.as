package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2.*;
   
   public function F__malloc_prefork() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ = int(_loc2_ - 16);
      _loc1_ = li32(_narenas);
      _loc1_ = _loc1_ << 2;
      _loc11_ = int(_loc1_ + 15);
      _loc11_ = _loc11_ & -16;
      var _loc10_:* = _loc2_;
      _loc10_ = int(_loc10_ - _loc11_);
      _loc9_ = _loc10_ & -16;
      _loc2_ = _loc9_;
      _loc10_ = _loc2_;
      _loc11_ = int(_loc10_ - _loc11_);
      _loc8_ = _loc11_ & -16;
      _loc2_ = _loc8_;
      _loc2_ = int(_loc2_ - 16);
      si32(_loc1_,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ = int(_loc2_ + 16);
      loop0:
      while(true)
      {
         _loc1_ = li32(___isthreaded);
         if(_loc1_ != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_arenas_lock,_loc2_);
            ESP = _loc2_;
            F__pthread_mutex_trylock();
            _loc2_ = int(_loc2_ + 16);
            if(int(eax) != 0)
            {
               _loc7_ = 1;
               if(uint(li32(_ncpus)) > 1)
               {
                  while(true)
                  {
                     if(uint(_loc7_) < 12)
                     {
                        si32(0,_loc3_ - 8);
                        _loc6_ = 1 << _loc7_;
                        if(uint(_loc6_) > uint(li32(_loc3_ - 8)))
                        {
                           do
                           {
                              _loc1_ = li32(_loc3_ - 8);
                              _loc1_ = int(_loc1_ + 1);
                              si32(_loc1_,_loc3_ - 8);
                              _loc1_ = li32(_loc3_ - 8);
                           }
                           while(uint(_loc6_) > uint(_loc1_));
                           
                        }
                        _loc2_ = int(_loc2_ - 16);
                        si32(_arenas_lock,_loc2_);
                        ESP = _loc2_;
                        F__pthread_mutex_trylock();
                        _loc2_ = int(_loc2_ + 16);
                        _loc1_ = int(eax);
                        if(_loc1_ != 0)
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
         _loc6_ = li32(_arenas);
         _loc7_ = li32(_narenas);
         _loc5_ = 0;
         while(uint(_loc5_) < uint(_loc7_))
         {
            _loc11_ = _loc5_ << 2;
            _loc11_ = int(_loc6_ + _loc11_);
            _loc11_ = li32(_loc11_);
            if(_loc11_ != li32(int(_loc9_ + _loc11_)))
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc6_,_loc2_ + 4);
               si32(_loc8_,_loc2_);
               si32(_loc7_ << 2,_loc2_ + 8);
               ESP = _loc2_;
               Fmemcpy();
               _loc2_ = int(_loc2_ + 16);
               if(li32(___isthreaded) != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_arenas_lock,_loc2_);
                  ESP = _loc2_;
                  F__pthread_mutex_unlock();
                  _loc2_ = int(_loc2_ + 16);
                  _loc7_ = li32(_narenas);
               }
               _loc6_ = 0;
               if(_loc7_ != 0)
               {
                  do
                  {
                     _loc11_ = _loc6_ << 2;
                     _loc1_ = int(_loc8_ + _loc11_);
                     _loc7_ = li32(_loc1_);
                     _loc5_ = int(_loc9_ + _loc11_);
                     _loc1_ = li32(_loc5_);
                     if(_loc1_ != _loc7_)
                     {
                        si32(_loc7_,_loc5_);
                        if(li32(___isthreaded) != 0)
                        {
                           _loc2_ = int(_loc2_ - 16);
                           si32(_loc7_,_loc2_);
                           ESP = _loc2_;
                           F__pthread_mutex_trylock();
                           _loc2_ = int(_loc2_ + 16);
                           if(int(eax) != 0)
                           {
                              _loc4_ = 1;
                              if(uint(li32(_ncpus)) > 1)
                              {
                                 while(true)
                                 {
                                    if(uint(_loc4_) < 12)
                                    {
                                       si32(0,_loc3_ - 4);
                                       _loc5_ = 1 << _loc4_;
                                       if(uint(_loc5_) > uint(li32(_loc3_ - 4)))
                                       {
                                          do
                                          {
                                             _loc1_ = li32(_loc3_ - 4);
                                             _loc1_ = int(_loc1_ + 1);
                                             si32(_loc1_,_loc3_ - 4);
                                             _loc1_ = li32(_loc3_ - 4);
                                          }
                                          while(uint(_loc5_) > uint(_loc1_));
                                          
                                       }
                                       _loc2_ = int(_loc2_ - 16);
                                       si32(_loc7_,_loc2_);
                                       ESP = _loc2_;
                                       F__pthread_mutex_trylock();
                                       _loc2_ = int(_loc2_ + 16);
                                       _loc1_ = int(eax);
                                       if(_loc1_ != 0)
                                       {
                                          _loc4_ = _loc4_ + 1;
                                          continue;
                                       }
                                       break;
                                    }
                                 }
                                 continue;
                              }
                              _loc2_ = int(_loc2_ - 16);
                              si32(_loc7_,_loc2_);
                              ESP = _loc2_;
                              F__pthread_mutex_lock();
                              _loc2_ = int(_loc2_ + 16);
                              continue;
                           }
                           continue;
                        }
                        continue;
                     }
                  }
                  while(_loc6_ = int(_loc6_ + 1), _loc1_ = li32(_narenas), uint(_loc6_) < uint(_loc1_));
                  
               }
               continue loop0;
            }
            _loc5_ = int(_loc5_ + 1);
         }
         if(li32(___isthreaded) != 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_base_mtx,_loc2_);
            ESP = _loc2_;
            F__spinlock();
            _loc2_ = int(_loc2_ + 16);
            if(li32(___isthreaded) != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_huge_mtx,_loc2_);
               ESP = _loc2_;
               F__spinlock();
               _loc2_ = int(_loc2_ + 16);
               if(li32(___isthreaded) != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(_dss_mtx,_loc2_);
                  ESP = _loc2_;
                  F__spinlock();
                  _loc2_ = int(_loc2_ + 16);
               }
            }
         }
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
   }
}
