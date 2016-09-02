package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_h_alloc_2E_o_3A_86547DBF_2D_F3BA_2D_4441_2D_ABF4_2D_ED581EDA3BB7.*;
   import avm2.intrinsics.memory.li32;
   
   public function F___cxa_free_exception() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:int = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc10_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc4_)
         {
            _loc3_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            si32(L_LSDA_6,_loc3_ - 28);
            si32(___gxx_personality_sj0,_loc3_ - 32);
            _loc1_ = _loc3_;
            si32(_loc1_,_loc3_ - 24);
            _loc1_ = _loc2_;
            si32(_loc1_,_loc3_ - 16);
            _loc10_ = 1;
            _loc9_ = li32(_loc3_);
            _loc8_ = _loc10_;
            if(uint(_loc9_) >= uint(__ZL16emergency_buffer))
            {
               _loc8_ = 0;
            }
            _loc1_ = int(__ZL16emergency_buffer + 16384);
            if(uint(_loc9_) < uint(_loc1_))
            {
               _loc10_ = 0;
            }
            _loc7_ = int(_loc3_ - 56);
            _loc6_ = _loc7_ + 32;
            eax = setjmp(_loc6_,1,_loc2_);
         }
         else if(int(_loc4_) - 1)
         {
            throw "bad longjmp";
         }
         _loc1_ = int(eax);
         if(_loc1_ == 0)
         {
            _loc1_ = _loc8_ | _loc10_;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            if(_loc1_ == 0)
            {
               _loc10_ = _loc7_ | 4;
               si32(1,_loc10_);
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
                  _loc7_ = int(eax);
                  si32(_loc1_,_loc7_);
                  si32(2,_loc10_);
                  _loc2_ = int(_loc2_ - 16);
                  si32(__ZN9__gnu_cxx24__concurrence_lock_errorD1Ev,_loc2_ + 8);
                  si32(__ZTIN9__gnu_cxx24__concurrence_lock_errorE,_loc2_ + 4);
                  si32(_loc7_,_loc2_);
                  ESP = _loc2_;
                  F___cxa_throw();
                  _loc2_ = int(_loc2_ + 16);
               }
               _loc1_ = int(_loc9_ - __ZL16emergency_buffer);
               _loc1_ = int(_loc1_ >>> 9);
               _loc1_ = 1 << _loc1_;
               _loc5_ = _loc1_ ^ -1;
               _loc1_ = li32(__ZL14emergency_used);
               _loc1_ = _loc1_ & _loc5_;
               si32(_loc1_,__ZL14emergency_used);
               si32(3,_loc10_);
               _loc2_ = int(_loc2_ - 16);
               si32(__ZN12_GLOBAL__N_115emergency_mutexE,_loc2_);
               ESP = _loc2_;
               F_pthread_mutex_unlock();
               _loc2_ = int(_loc2_ + 16);
               _loc9_ = int(eax);
               if(_loc9_ != 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(4,_loc2_);
                  ESP = _loc2_;
                  F___cxa_allocate_exception();
                  _loc1_ = int(__ZTVN9__gnu_cxx26__concurrence_unlock_errorE + 8);
                  _loc2_ = int(_loc2_ + 16);
                  _loc7_ = int(eax);
                  si32(_loc1_,_loc7_);
                  si32(4,_loc10_);
                  _loc2_ = int(_loc2_ - 16);
                  si32(__ZN9__gnu_cxx26__concurrence_unlock_errorD1Ev,_loc2_ + 8);
                  si32(__ZTIN9__gnu_cxx26__concurrence_unlock_errorE,_loc2_ + 4);
                  si32(_loc7_,_loc2_);
                  ESP = _loc2_;
                  F___cxa_throw();
                  _loc2_ = int(_loc2_ + 16);
               }
               addr425:
               _loc2_ = int(_loc2_ - 16);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Unregister();
               _loc2_ = int(_loc2_ + 16);
               _loc2_ = _loc3_;
               ESP = _loc2_;
               return;
            }
            addr400:
            _loc2_ = int(_loc2_ - 16);
            _loc1_ = int(_loc9_ + -80);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_free();
            _loc2_ = int(_loc2_ + 16);
            §§goto(addr425);
         }
         else
         {
            while(true)
            {
               _loc1_ = _loc7_ | 4;
               _loc7_ = li32(_loc1_);
               if(uint(_loc7_) >= 2)
               {
                  break;
               }
               _loc1_ = li32(_loc3_ - 48);
               _loc7_ = li32(_loc3_ - 44);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F___cxa_call_unexpected();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc1_ = int(_loc7_ + -2);
            if(uint(_loc1_) >= 2)
            {
               while(true)
               {
               }
            }
         }
         _loc1_ = li32(_loc3_ - 48);
         _loc7_ = li32(_loc3_ - 44);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F___cxa_call_unexpected();
         _loc2_ = int(_loc2_ + 16);
         §§goto(addr400);
      }
   }
}
