package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_h_alloc_2E_o_3A_86547DBF_2D_F3BA_2D_4441_2D_ABF4_2D_ED581EDA3BB7.*;
   
   public function F___cxa_allocate_exception() : void
   {
      var _loc3_:* = 0;
      var _loc5_:int = 0;
      var _loc12_:int = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:int = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc5_)
         {
            _loc3_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            _loc2_ = int(_loc2_ - 16);
            _loc1_ = li32(_loc3_);
            _loc12_ = _loc1_ + 80;
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            F_malloc();
            _loc2_ = int(_loc2_ + 16);
            _loc11_ = int(eax);
            si32(L_LSDA_7,_loc3_ - 28);
            si32(___gxx_personality_sj0,_loc3_ - 32);
            _loc1_ = _loc3_;
            si32(_loc1_,_loc3_ - 24);
            _loc1_ = _loc2_;
            si32(_loc1_,_loc3_ - 16);
            _loc10_ = int(_loc3_ - 56);
            _loc9_ = int(_loc10_ + 32);
            eax = setjmp(_loc9_,1,_loc2_);
         }
         else if(int(_loc5_) - 1)
         {
            throw "bad longjmp";
         }
         _loc1_ = int(eax);
         if(_loc1_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            if(_loc11_ == 0)
            {
               _loc9_ = _loc10_ | 4;
               si32(1,_loc9_);
               _loc2_ = int(_loc2_ - 16);
               si32(__ZN12_GLOBAL__N_115emergency_mutexE,_loc2_);
               ESP = _loc2_;
               F_pthread_mutex_lock();
               _loc2_ = int(_loc2_ + 16);
               _loc8_ = int(eax);
               if(_loc8_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(4,_loc2_);
                  ESP = _loc2_;
                  F___cxa_allocate_exception();
                  _loc1_ = int(__ZTVN9__gnu_cxx24__concurrence_lock_errorE + 8);
                  _loc2_ = int(_loc2_ + 16);
                  _loc10_ = int(eax);
                  si32(_loc1_,_loc10_);
                  si32(2,_loc9_);
                  _loc2_ = int(_loc2_ - 16);
                  si32(__ZN9__gnu_cxx24__concurrence_lock_errorD1Ev,_loc2_ + 8);
                  si32(__ZTIN9__gnu_cxx24__concurrence_lock_errorE,_loc2_ + 4);
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F___cxa_throw();
                  _loc2_ = int(_loc2_ + 16);
               }
               if(uint(_loc12_) <= 512)
               {
                  _loc7_ = __ZL16emergency_buffer;
                  _loc6_ = li32(__ZL14emergency_used);
                  _loc8_ = _loc6_;
                  _loc12_ = 0;
                  while(true)
                  {
                     _loc1_ = _loc8_ & 1;
                     if(_loc1_ == 0)
                     {
                        _loc1_ = 1 << _loc12_;
                        _loc1_ = _loc6_ | _loc1_;
                        si32(_loc1_,__ZL14emergency_used);
                        _loc11_ = _loc7_;
                        break;
                     }
                     _loc7_ = _loc7_ + 512;
                     _loc8_ = int(_loc8_ >>> 1);
                     _loc12_ = _loc12_ + 1;
                     if(uint(_loc12_) <= 31)
                     {
                        continue;
                     }
                     break;
                  }
               }
               if(_loc11_ == 0)
               {
                  si32(3,_loc9_);
                  ESP = _loc2_;
                  F__ZSt9terminatev();
               }
               si32(4,_loc9_);
               _loc2_ = int(_loc2_ - 16);
               si32(__ZN12_GLOBAL__N_115emergency_mutexE,_loc2_);
               ESP = _loc2_;
               F_pthread_mutex_unlock();
               _loc2_ = int(_loc2_ + 16);
               _loc12_ = eax;
               if(_loc12_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(4,_loc2_);
                  ESP = _loc2_;
                  F___cxa_allocate_exception();
                  _loc1_ = int(__ZTVN9__gnu_cxx26__concurrence_unlock_errorE + 8);
                  _loc2_ = int(_loc2_ + 16);
                  _loc10_ = int(eax);
                  si32(_loc1_,_loc10_);
                  si32(5,_loc9_);
                  _loc2_ = int(_loc2_ - 16);
                  si32(__ZN9__gnu_cxx26__concurrence_unlock_errorD1Ev,_loc2_ + 8);
                  si32(__ZTIN9__gnu_cxx26__concurrence_unlock_errorE,_loc2_ + 4);
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F___cxa_throw();
                  _loc2_ = int(_loc2_ + 16);
               }
            }
            addr450:
            ESP = _loc2_;
            F___cxa_get_globals();
            _loc1_ = int(eax);
            _loc4_ = li32(_loc1_ + 4);
            _loc4_ = int(_loc4_ + 1);
            si32(_loc4_,_loc1_ + 4);
            _loc2_ = int(_loc2_ - 16);
            si32(80,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            Fmemset();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Unregister();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = int(_loc11_ + 80);
            eax = _loc1_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
         while(true)
         {
            _loc1_ = _loc10_ | 4;
            _loc9_ = li32(_loc1_);
            if(_loc9_ <= 2)
            {
               if(uint(_loc9_) >= 2)
               {
                  if(_loc9_ != 2)
                  {
                     addr757:
                     while(true)
                     {
                     }
                  }
                  else
                  {
                     _loc9_ = li32(_loc3_ - 48);
                     _loc11_ = li32(_loc3_ - 44);
                     _loc10_ = _loc10_ | 4;
                     si32(6,_loc10_);
                     _loc2_ = int(_loc2_ - 16);
                     si32(__ZN12_GLOBAL__N_115emergency_mutexE,_loc2_);
                     ESP = _loc2_;
                     F_pthread_mutex_unlock();
                     _loc2_ = int(_loc2_ + 16);
                     _loc11_ = int(eax);
                     if(_loc11_ != 0)
                     {
                        _loc2_ = int(_loc2_ - 16);
                        si32(4,_loc2_);
                        ESP = _loc2_;
                        F___cxa_allocate_exception();
                        _loc1_ = int(__ZTVN9__gnu_cxx26__concurrence_unlock_errorE + 8);
                        _loc2_ = int(_loc2_ + 16);
                        _loc9_ = int(eax);
                        si32(_loc1_,_loc9_);
                        si32(7,_loc10_);
                        _loc2_ = int(_loc2_ - 16);
                        si32(__ZN9__gnu_cxx26__concurrence_unlock_errorD1Ev,_loc2_ + 8);
                        si32(__ZTIN9__gnu_cxx26__concurrence_unlock_errorE,_loc2_ + 4);
                        si32(_loc9_,_loc2_);
                        ESP = _loc2_;
                        F___cxa_throw();
                        _loc2_ = int(_loc2_ + 16);
                     }
                     continue;
                  }
               }
               else
               {
                  _loc9_ = li32(_loc3_ - 48);
                  _loc10_ = li32(_loc3_ - 44);
                  continue;
               }
            }
            else
            {
               _loc1_ = int(_loc9_ + -3);
               if(uint(_loc1_) >= 2)
               {
                  _loc1_ = int(_loc9_ + -5);
                  if(uint(_loc1_) >= 2)
                  {
                     §§goto(addr757);
                  }
               }
               else
               {
                  break;
               }
            }
            _loc1_ = li32(_loc3_ - 48);
            _loc10_ = li32(_loc3_ - 44);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F___cxa_call_unexpected();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc1_ = li32(_loc3_ - 48);
         _loc10_ = li32(_loc3_ - 44);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F___cxa_call_unexpected();
         _loc2_ = int(_loc2_ + 16);
         §§goto(addr450);
      }
   }
}
