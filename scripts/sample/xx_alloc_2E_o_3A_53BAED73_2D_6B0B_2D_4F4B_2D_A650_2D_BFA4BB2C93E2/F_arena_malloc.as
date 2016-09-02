package sample.xx_alloc_2E_o_3A_53BAED73_2D_6B0B_2D_4F4B_2D_A650_2D_BFA4BB2C93E2
{
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.li32;
   import sample.xx.*;
   import avm2.intrinsics.memory.si32;
   
   public function F_arena_malloc() : void
   {
      var _loc7_:* = 0;
      var _loc16_:* = 0;
      var _loc17_:* = 0;
      var _loc18_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc15_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:int = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:* = int(ESP);
      _loc7_ = _loc3_;
      _loc3_ = int(_loc3_ - 16);
      _loc4_ = 3840;
      var _loc19_:* = li8(_sspace_max_2E_b);
      if(_loc19_ == 0)
      {
         _loc4_ = 0;
      }
      _loc18_ = li32(_loc7_ + 8);
      _loc17_ = li32(_loc7_ + 4);
      _loc16_ = li32(_loc7_);
      if(uint(_loc4_) >= uint(_loc17_))
      {
         _loc19_ = li32(_size2bin);
         _loc19_ = int(_loc19_ + _loc17_);
         _loc19_ = li8(_loc19_);
         _loc4_ = _loc16_ + int(_loc19_ * 40);
         _loc17_ = li32(_loc4_ + 80);
         _loc19_ = li32(___isthreaded);
         if(_loc19_ != 0)
         {
            _loc3_ = int(_loc3_ - 16);
            si32(_loc16_,_loc3_);
            ESP = _loc3_;
            F__pthread_mutex_trylock();
            _loc3_ = int(_loc3_ + 16);
            _loc19_ = int(eax);
            if(_loc19_ != 0)
            {
               _loc15_ = 1;
               _loc19_ = li32(_ncpus);
               if(uint(_loc19_) > 1)
               {
                  while(true)
                  {
                     if(uint(_loc15_) < 12)
                     {
                        si32(0,_loc7_ - 8);
                        _loc14_ = 1 << _loc15_;
                        if(uint(_loc14_) > uint(li32(_loc7_ - 8)))
                        {
                           do
                           {
                              _loc19_ = li32(_loc7_ - 8);
                              _loc19_ = int(_loc19_ + 1);
                              si32(_loc19_,_loc7_ - 8);
                              _loc19_ = li32(_loc7_ - 8);
                           }
                           while(uint(_loc14_) > uint(_loc19_));
                           
                        }
                        _loc3_ = int(_loc3_ - 16);
                        si32(_loc16_,_loc3_);
                        ESP = _loc3_;
                        F__pthread_mutex_trylock();
                        _loc3_ = int(_loc3_ + 16);
                        _loc19_ = int(eax);
                        if(_loc19_ != 0)
                        {
                           _loc15_ = int(_loc15_ + 1);
                           continue;
                        }
                        break;
                     }
                  }
               }
               _loc3_ = int(_loc3_ - 16);
               si32(_loc16_,_loc3_);
               ESP = _loc3_;
               F__pthread_mutex_lock();
               _loc3_ = int(_loc3_ + 16);
            }
         }
         _loc13_ = li32(_loc4_ + 60);
         if(_loc13_ != 0)
         {
            _loc19_ = li32(_loc13_ + 8);
            if(_loc19_ != 0)
            {
               _loc15_ = li32(_loc13_ + 4);
               _loc14_ = int(_loc13_ + (_loc15_ << 2));
               _loc12_ = li32(_loc14_ + 12);
               if(_loc12_ == 0)
               {
                  _loc1_ = li32(_loc4_ + 92);
                  _loc14_ = 0;
                  _loc8_ = _loc15_;
                  _loc9_ = _loc14_;
                  while(true)
                  {
                     _loc6_ = int(_loc8_ + 1);
                     if(uint(_loc1_) > uint(_loc6_))
                     {
                        _loc12_ = int(_loc13_ + (_loc8_ << 2));
                        _loc5_ = li32(_loc12_ + 16);
                        _loc9_ = int(_loc9_ + 1);
                        _loc8_ = _loc6_;
                        if(_loc5_ != 0)
                        {
                           _loc19_ = _loc5_ ^ -1;
                           _loc19_ = _loc19_ & int(_loc5_ + -1);
                           var _loc10_:* = int(_loc19_ >>> 1);
                           _loc10_ = int(_loc19_ - (_loc10_ & 1431655765));
                           _loc10_ = int(_loc10_ >>> 2);
                           _loc10_ = int((_loc10_ & 858993459) + (_loc10_ & 858993459));
                           _loc19_ = int(_loc10_ + (int(_loc10_ >>> 4)));
                           _loc19_ = _loc19_ & 252645135;
                           _loc19_ = int(_loc19_ * 16843009);
                           var _loc2_:* = int(_loc19_ >>> 24);
                           _loc19_ = 1 << _loc2_;
                           _loc10_ = li32(_loc4_ + 96);
                           _loc19_ = li32(_loc4_ + 80);
                           si32(_loc19_ ^ _loc5_,_loc12_ + 16);
                           si32(_loc6_,_loc13_ + 4);
                           _loc10_ = int(_loc13_ + _loc10_);
                           _loc19_ = int(_loc19_ * _loc9_);
                           _loc19_ = _loc19_ << 5;
                           _loc14_ = int(_loc19_ + (int(_loc10_ + int(_loc19_ * (int(_loc2_ + (_loc15_ << 5)))))));
                           break;
                        }
                        continue;
                     }
                     break;
                  }
               }
               else
               {
                  _loc19_ = _loc12_ ^ -1;
                  _loc19_ = _loc19_ & int(_loc12_ + -1);
                  _loc10_ = int(_loc19_ >>> 1);
                  _loc10_ = int(_loc19_ - (_loc10_ & 1431655765));
                  _loc10_ = int(_loc10_ >>> 2);
                  _loc19_ = int((_loc10_ & 858993459) + (_loc10_ & 858993459));
                  _loc19_ = int(_loc19_ + (int(_loc19_ >>> 4)));
                  _loc19_ = _loc19_ & 252645135;
                  _loc19_ = int(_loc19_ * 16843009);
                  _loc10_ = int(_loc19_ >>> 24);
                  _loc19_ = 1 << _loc10_;
                  _loc19_ = li32(_loc4_ + 96);
                  _loc2_ = li32(_loc4_ + 80);
                  si32(_loc19_ ^ _loc12_,_loc14_ + 12);
                  _loc19_ = int(_loc19_ + _loc13_);
                  _loc14_ = int(_loc19_ + int(_loc2_ * (int(_loc10_ + (_loc15_ << 5)))));
               }
               _loc19_ = li32(_loc13_ + 8);
               _loc19_ = int(_loc19_ + -1);
               si32(_loc19_,_loc13_ + 8);
            }
            addr1146:
            _loc19_ = li32(___isthreaded);
            if(_loc19_ != 0)
            {
               _loc3_ = int(_loc3_ - 16);
               si32(_loc16_,_loc3_);
               ESP = _loc3_;
               F__pthread_mutex_unlock();
               _loc3_ = int(_loc3_ + 16);
            }
            _loc16_ = 0;
            if(_loc14_ != 0)
            {
               if(_loc18_ == 0)
               {
                  _loc19_ = li8(_opt_junk_2E_b);
                  if(_loc19_ == 1)
                  {
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc17_,_loc3_ + 8);
                     si32(165,_loc3_ + 4);
                     si32(_loc14_,_loc3_);
                     ESP = _loc3_;
                     Fmemset();
                     _loc3_ = int(_loc3_ + 16);
                     _loc16_ = _loc14_;
                  }
                  else
                  {
                     _loc16_ = _loc14_;
                     if(li8(_opt_zero_2E_b) == 1)
                     {
                        _loc3_ = int(_loc3_ - 16);
                        si32(_loc17_,_loc3_ + 8);
                        si32(0,_loc3_ + 4);
                        si32(_loc14_,_loc3_);
                        ESP = _loc3_;
                        Fmemset();
                        _loc3_ = int(_loc3_ + 16);
                        _loc16_ = _loc14_;
                     }
                  }
               }
               else
               {
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc17_,_loc3_ + 8);
                  si32(0,_loc3_ + 4);
                  si32(_loc14_,_loc3_);
                  ESP = _loc3_;
                  Fmemset();
                  _loc3_ = int(_loc3_ + 16);
                  _loc16_ = _loc14_;
               }
            }
         }
         _loc14_ = int(_loc4_ + 60);
         _loc12_ = li32(_loc4_ + 64);
         _loc15_ = int(_loc4_ + 68);
         do
         {
            _loc13_ = _loc12_;
            _loc12_ = li32(_loc13_);
         }
         while(_loc12_ != _loc15_);
         
         _loc12_ = 0;
         if(_loc15_ != _loc13_)
         {
            _loc12_ = _loc13_;
         }
         if(_loc12_ != 0)
         {
            _loc3_ = int(_loc3_ - 16);
            si32(int(_loc4_ + 64),_loc3_);
            si32(_loc12_,_loc3_ + 4);
            ESP = _loc3_;
            F_arena_run_tree_remove();
            _loc3_ = int(_loc3_ + 16);
            _loc19_ = li32(_loc12_ + 8);
            _loc15_ = _loc19_ & -4096;
         }
         else
         {
            _loc3_ = int(_loc3_ - 16);
            _loc13_ = 0;
            si32(_loc13_,_loc3_ + 12);
            si32(_loc13_,_loc3_ + 8);
            si32(li32(_loc4_ + 84),_loc3_ + 4);
            si32(_loc16_,_loc3_);
            ESP = _loc3_;
            F_arena_run_alloc();
            _loc3_ = int(_loc3_ + 16);
            _loc15_ = int(eax);
            if(_loc15_ == 0)
            {
               _loc14_ = 0;
               si32(_loc14_,_loc4_ + 60);
            }
            else
            {
               si32(_loc14_,_loc15_);
               _loc19_ = li32(_loc4_ + 92);
               if(_loc19_ != 1)
               {
                  _loc13_ = 0;
                  do
                  {
                     _loc19_ = _loc13_ << 2;
                     _loc19_ = int(_loc15_ + _loc19_);
                     si32(-1,_loc19_ + 12);
                     _loc19_ = li32(_loc4_ + 92);
                     _loc19_ = int(_loc19_ + -1);
                     _loc13_ = int(_loc13_ + 1);
                  }
                  while(uint(_loc19_) > uint(_loc13_));
                  
               }
               _loc19_ = li32(_loc4_ + 88);
               _loc14_ = _loc19_ & 31;
               if(_loc14_ == 0)
               {
                  si32(-1,int(_loc15_ + (_loc13_ << 2)) + 12);
               }
               else
               {
                  si32(int(-1 >>> int(32 - _loc14_)),int(_loc15_ + (_loc13_ << 2)) + 12);
               }
               si32(0,_loc15_ + 4);
               _loc19_ = li32(_loc4_ + 88);
               si32(_loc19_,_loc15_ + 8);
            }
            §§goto(addr1146);
         }
         si32(_loc15_,_loc4_ + 60);
         _loc14_ = 0;
         if(_loc15_ != 0)
         {
            _loc13_ = li32(_loc15_ + 4);
            _loc12_ = int(_loc15_ + (_loc13_ << 2));
            _loc14_ = li32(_loc12_ + 12);
            if(_loc14_ == 0)
            {
               _loc6_ = li32(_loc4_ + 92);
               _loc14_ = 0;
               _loc9_ = _loc13_;
               _loc8_ = _loc14_;
               while(true)
               {
                  _loc5_ = int(_loc9_ + 1);
                  if(uint(_loc6_) > uint(_loc5_))
                  {
                     _loc1_ = int(_loc15_ + (_loc9_ << 2));
                     _loc12_ = li32(_loc1_ + 16);
                     _loc8_ = int(_loc8_ + 1);
                     _loc9_ = _loc5_;
                     if(_loc12_ != 0)
                     {
                        _loc19_ = _loc12_ ^ -1;
                        _loc19_ = _loc19_ & int(_loc12_ + -1);
                        _loc10_ = int(_loc19_ >>> 1);
                        _loc10_ = int(_loc19_ - (_loc10_ & 1431655765));
                        _loc10_ = int(_loc10_ >>> 2);
                        _loc10_ = int((_loc10_ & 858993459) + (_loc10_ & 858993459));
                        _loc19_ = int(_loc10_ + (int(_loc10_ >>> 4)));
                        _loc19_ = _loc19_ & 252645135;
                        _loc19_ = int(_loc19_ * 16843009);
                        _loc2_ = int(_loc19_ >>> 24);
                        _loc19_ = 1 << _loc2_;
                        _loc10_ = li32(_loc4_ + 96);
                        _loc19_ = li32(_loc4_ + 80);
                        si32(_loc19_ ^ _loc12_,_loc1_ + 16);
                        si32(_loc5_,_loc15_ + 4);
                        _loc10_ = int(_loc15_ + _loc10_);
                        _loc19_ = int(_loc19_ * _loc8_);
                        _loc19_ = _loc19_ << 5;
                        _loc14_ = int(_loc19_ + (int(_loc10_ + int(_loc19_ * (int(_loc2_ + (_loc13_ << 5)))))));
                        break;
                     }
                     continue;
                  }
                  break;
               }
            }
            else
            {
               _loc19_ = _loc14_ ^ -1;
               _loc19_ = _loc19_ & int(_loc14_ + -1);
               _loc10_ = int(_loc19_ >>> 1);
               _loc10_ = int(_loc19_ - (_loc10_ & 1431655765));
               _loc10_ = int(_loc10_ >>> 2);
               _loc10_ = int((_loc10_ & 858993459) + (_loc10_ & 858993459));
               _loc19_ = int(_loc10_ + (int(_loc10_ >>> 4)));
               _loc19_ = _loc19_ & 252645135;
               _loc19_ = int(_loc19_ * 16843009);
               _loc2_ = int(_loc19_ >>> 24);
               _loc19_ = 1 << _loc2_;
               _loc19_ = li32(_loc4_ + 96);
               _loc10_ = li32(_loc4_ + 80);
               si32(_loc19_ ^ _loc14_,_loc12_ + 12);
               _loc19_ = int(_loc19_ + _loc15_);
               _loc14_ = int(_loc19_ + int(_loc10_ * (int(_loc2_ + (_loc13_ << 5)))));
            }
            _loc19_ = li32(_loc15_ + 8);
            _loc19_ = int(_loc19_ + -1);
            si32(_loc19_,_loc15_ + 8);
         }
         §§goto(addr1146);
      }
      else
      {
         _loc19_ = li32(___isthreaded);
         if(_loc19_ != 0)
         {
            _loc3_ = int(_loc3_ - 16);
            si32(_loc16_,_loc3_);
            ESP = _loc3_;
            F__pthread_mutex_trylock();
            _loc3_ = int(_loc3_ + 16);
            _loc19_ = int(eax);
            if(_loc19_ != 0)
            {
               _loc4_ = 1;
               _loc19_ = li32(_ncpus);
               if(uint(_loc19_) > 1)
               {
                  while(true)
                  {
                     if(uint(_loc4_) < 12)
                     {
                        si32(0,_loc7_ - 4);
                        _loc14_ = 1 << _loc4_;
                        if(uint(_loc14_) > uint(li32(_loc7_ - 4)))
                        {
                           do
                           {
                              _loc19_ = li32(_loc7_ - 4);
                              _loc19_ = int(_loc19_ + 1);
                              si32(_loc19_,_loc7_ - 4);
                              _loc19_ = li32(_loc7_ - 4);
                           }
                           while(uint(_loc14_) > uint(_loc19_));
                           
                        }
                        _loc3_ = int(_loc3_ - 16);
                        si32(_loc16_,_loc3_);
                        ESP = _loc3_;
                        F__pthread_mutex_trylock();
                        _loc3_ = int(_loc3_ + 16);
                        _loc19_ = int(eax);
                        if(_loc19_ != 0)
                        {
                           _loc4_ = _loc4_ + 1;
                           continue;
                        }
                        break;
                     }
                  }
               }
               _loc3_ = int(_loc3_ - 16);
               si32(_loc16_,_loc3_);
               ESP = _loc3_;
               F__pthread_mutex_lock();
               _loc3_ = int(_loc3_ + 16);
            }
         }
         _loc19_ = int(_loc17_ + 4095);
         _loc17_ = _loc19_ & -4096;
         _loc3_ = int(_loc3_ - 16);
         si32(_loc18_,_loc3_ + 12);
         si32(1,_loc3_ + 8);
         si32(_loc17_,_loc3_ + 4);
         si32(_loc16_,_loc3_);
         ESP = _loc3_;
         F_arena_run_alloc();
         _loc3_ = int(_loc3_ + 16);
         _loc4_ = eax;
         _loc19_ = li32(___isthreaded);
         if(_loc19_ != 0)
         {
            _loc3_ = int(_loc3_ - 16);
            si32(_loc16_,_loc3_);
            ESP = _loc3_;
            F__pthread_mutex_unlock();
            _loc3_ = int(_loc3_ + 16);
         }
         _loc16_ = 0;
         if(_loc4_ != 0)
         {
            _loc16_ = _loc4_;
            if(_loc18_ == 0)
            {
               _loc19_ = li8(_opt_junk_2E_b);
               if(_loc19_ == 1)
               {
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc17_,_loc3_ + 8);
                  si32(165,_loc3_ + 4);
                  si32(_loc4_,_loc3_);
                  ESP = _loc3_;
                  Fmemset();
                  _loc3_ = int(_loc3_ + 16);
                  _loc16_ = _loc4_;
               }
               else
               {
                  _loc16_ = _loc4_;
                  if(li8(_opt_zero_2E_b) == 1)
                  {
                     _loc3_ = int(_loc3_ - 16);
                     si32(_loc17_,_loc3_ + 8);
                     si32(0,_loc3_ + 4);
                     si32(_loc4_,_loc3_);
                     ESP = _loc3_;
                     Fmemset();
                     _loc3_ = int(_loc3_ + 16);
                     _loc16_ = _loc4_;
                  }
               }
            }
         }
      }
      eax = _loc16_;
      _loc3_ = _loc7_;
      ESP = _loc3_;
   }
}
