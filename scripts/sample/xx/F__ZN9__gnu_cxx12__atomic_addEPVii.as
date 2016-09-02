package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_tomicity_2E_o_3A_44ABF313_2D_6049_2D_4BB7_2D_89B0_2D_8B517D33973B.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZN9__gnu_cxx12__atomic_addEPVii() : void
   {
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc10_:* = 0;
      var _loc3_:int = 0;
      var _loc6_:int = 0;
      var _loc13_:* = 0;
      var _loc12_:int = 0;
      var _loc11_:int = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc5_)
         {
            _loc4_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            _loc2_ = int(_loc2_ - 16);
            si32(__ZN12_GLOBAL__N_112atomic_mutexE,_loc2_);
            ESP = _loc2_;
            F_pthread_mutex_lock();
            _loc2_ = int(_loc2_ + 16);
            _loc3_ = eax;
            si32(L_LSDA_9,_loc4_ - 28);
            si32(___gxx_personality_sj0,_loc4_ - 32);
            _loc13_ = _loc4_;
            si32(_loc13_,_loc4_ - 24);
            _loc13_ = _loc2_;
            si32(_loc13_,_loc4_ - 16);
            _loc12_ = _loc4_ - 56;
            _loc11_ = _loc12_ + 32;
            eax = setjmp(_loc11_,1,_loc2_);
         }
         else if(int(_loc5_) - 1)
         {
            throw "bad longjmp";
         }
         _loc13_ = int(eax);
         if(_loc13_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            if(_loc3_ != 0)
            {
               _loc13_ = _loc12_ | 4;
               si32(-1,_loc13_);
               ESP = _loc2_;
               F__ZN9__gnu_cxx30__throw_concurrence_lock_errorEv();
            }
            _loc10_ = li32(_loc4_ + 4);
            _loc13_ = li32(_loc4_);
            _loc9_ = li32(_loc13_);
            _loc8_ = li32(_loc13_);
            _loc8_ = int(_loc8_ + _loc10_);
            si32(_loc8_,_loc13_);
            _loc7_ = _loc12_ | 4;
            si32(1,_loc7_);
            _loc2_ = int(_loc2_ - 16);
            si32(__ZN12_GLOBAL__N_112atomic_mutexE,_loc2_);
            ESP = _loc2_;
            F_pthread_mutex_unlock();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = eax;
            if(_loc6_ != 0)
            {
               si32(2,_loc7_);
               ESP = _loc2_;
               F__ZN9__gnu_cxx32__throw_concurrence_unlock_errorEv();
            }
            addr253:
            _loc2_ = int(_loc2_ - 16);
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Unregister();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
         _loc13_ = _loc12_ | 4;
         _loc13_ = li32(_loc13_);
         if(uint(_loc13_) >= 2)
         {
            while(true)
            {
            }
         }
         _loc13_ = li32(_loc4_ - 48);
         _loc1_ = li32(_loc4_ - 44);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc13_,_loc2_);
         ESP = _loc2_;
         F___cxa_call_unexpected();
         _loc2_ = int(_loc2_ + 16);
         §§goto(addr253);
      }
   }
}
