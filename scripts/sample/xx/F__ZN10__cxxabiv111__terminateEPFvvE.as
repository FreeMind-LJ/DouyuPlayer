package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_h_terminate_2E_o_3A_E642DE23_2D_868E_2D_4DE2_2D_86DD_2D_2AB6F19AC061.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZN10__cxxabiv111__terminateEPFvvE() : void
   {
      var _loc4_:* = 0;
      var _loc7_:int = 0;
      var _loc13_:* = 0;
      var _loc10_:* = 0;
      var _loc15_:int = 0;
      var _loc14_:int = 0;
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:int = ESP;
      while(true)
      {
         if(!_loc7_)
         {
            _loc4_ = _loc2_;
            _loc2_ = _loc2_ - 64;
            si32(L_LSDA_0,_loc4_ - 28);
            si32(___gxx_personality_sj0,_loc4_ - 32);
            _loc3_ = _loc4_;
            si32(_loc3_,_loc4_ - 24);
            _loc3_ = _loc2_;
            si32(_loc3_,_loc4_ - 16);
            _loc15_ = _loc4_ - 56;
            _loc14_ = _loc15_ + 32;
            eax = setjmp(_loc14_,1,_loc2_);
         }
         else if(int(_loc7_) - 1)
         {
            throw "bad longjmp";
         }
         _loc3_ = int(eax);
         if(_loc3_ == 0)
         {
            _loc13_ = li32(_loc4_);
            _loc2_ = _loc2_ - 16;
            si32(_loc15_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = _loc2_ + 16;
            _loc12_ = _loc15_ | 4;
            si32(1,_loc12_);
            ESP = _loc2_;
            ptr2fun[_loc13_]();
            si32(2,_loc12_);
            ESP = _loc2_;
            F_abort();
            addr152:
            while(true)
            {
            }
         }
         else
         {
            while(true)
            {
               _loc3_ = _loc15_ | 4;
               _loc6_ = li32(_loc3_);
               if(uint(_loc6_) >= 2)
               {
                  if(_loc6_ != 2)
                  {
                     if(_loc6_ != 3)
                     {
                        while(true)
                        {
                        }
                     }
                     else
                     {
                        _loc1_ = li32(_loc4_ - 48);
                        _loc5_ = li32(_loc4_ - 44);
                        ESP = _loc2_;
                        F__ZSt9terminatev();
                        continue;
                     }
                  }
                  else
                  {
                     _loc10_ = li32(_loc4_ - 48);
                     _loc8_ = li32(_loc4_ - 44);
                     _loc11_ = _loc15_ | 4;
                     si32(4,_loc11_);
                     ESP = _loc2_;
                     F___cxa_end_catch();
                  }
               }
               break;
            }
            while(true)
            {
               _loc3_ = li32(_loc4_ - 48);
               _loc9_ = li32(_loc4_ - 44);
               _loc2_ = _loc2_ - 16;
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F___cxa_begin_catch();
               _loc2_ = _loc2_ + 16;
               _loc3_ = _loc15_ | 4;
               si32(3,_loc3_);
               ESP = _loc2_;
               F_abort();
               §§goto(addr152);
            }
         }
         while(true)
         {
            si32(-1,_loc11_);
            _loc2_ = _loc2_ - 16;
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Resume();
            _loc2_ = _loc2_ + 16;
            §§goto(addr176);
         }
      }
   }
}
