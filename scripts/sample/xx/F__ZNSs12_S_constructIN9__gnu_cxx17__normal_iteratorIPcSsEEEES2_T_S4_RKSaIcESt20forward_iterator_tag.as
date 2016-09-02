package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag() : void
   {
      var _loc10_:* = 0;
      var _loc15_:int = 0;
      var _loc20_:int = 0;
      var _loc1_:int = 0;
      var _loc23_:int = 0;
      var _loc22_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = 0;
      var _loc21_:* = 0;
      var _loc4_:* = 0;
      var _loc19_:int = 0;
      var _loc16_:* = 0;
      var _loc11_:int = 0;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc7_:* = 0;
      var _loc17_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:* = 0;
      var _loc18_:int = 0;
      var _loc14_:* = 0;
      var _loc5_:* = int(ESP);
      while(true)
      {
         if(!_loc15_)
         {
            _loc10_ = _loc5_;
            _loc5_ = int(_loc5_ - 96);
            _loc6_ = li32(_loc10_ + 8);
            si32(_loc6_,_loc10_ - 64);
            _loc6_ = li32(_loc10_);
            si32(_loc6_,_loc10_ - 72);
            _loc6_ = li32(_loc10_ + 4);
            si32(_loc6_,_loc10_ - 80);
            si32(L_LSDA_162,_loc10_ - 28);
            si32(___gxx_personality_sj0,_loc10_ - 32);
            _loc6_ = _loc10_;
            si32(_loc6_,_loc10_ - 24);
            _loc6_ = _loc5_;
            si32(_loc6_,_loc10_ - 16);
            _loc23_ = _loc10_ - 56;
            _loc22_ = _loc23_ + 32;
            eax = setjmp(_loc22_,1,_loc5_);
         }
         else if(int(_loc15_) - 1)
         {
            throw "bad longjmp";
         }
         _loc6_ = int(eax);
         if(_loc6_ == 0)
         {
            _loc5_ = int(_loc5_ - 16);
            si32(_loc23_,_loc5_);
            ESP = _loc5_;
            F__Unwind_SjLj_Register();
            _loc5_ = int(_loc5_ + 16);
            _loc21_ = _loc23_ | 4;
            si32(1,_loc21_);
            _loc5_ = int(_loc5_ - 16);
            _loc6_ = int(_loc10_ - 80);
            si32(_loc6_,_loc5_ + 4);
            _loc6_ = int(_loc10_ - 72);
            si32(_loc6_,_loc5_);
            ESP = _loc5_;
            F__ZN9__gnu_cxxeqIPcSsEEbRKNS_17__normal_iteratorIT_T0_EES7_();
            _loc5_ = int(_loc5_ + 16);
            _loc20_ = eax;
            if(_loc20_ != 0)
            {
               _loc5_ = int(_loc5_ - 16);
               _loc19_ = _loc10_ - 88;
               si32(_loc19_,_loc5_);
               ESP = _loc5_;
               F__ZNSaIcEC1Ev();
               _loc5_ = int(_loc5_ + 16);
               _loc5_ = int(_loc5_ - 16);
               si32(_loc19_,_loc5_);
               ESP = _loc5_;
               F__ZNSaIcED1Ev();
               _loc5_ = int(_loc5_ + 16);
               si32(-1,_loc21_);
               ESP = _loc5_;
               F__ZNSs12_S_empty_repEv();
               _loc6_ = int(eax);
               _loc5_ = int(_loc5_ - 16);
               si32(_loc6_,_loc5_);
               ESP = _loc5_;
               F__ZNSs4_Rep10_M_refdataEv();
               _loc5_ = int(_loc5_ + 16);
               _loc18_ = eax;
            }
            else
            {
               _loc17_ = li32(_loc10_ - 80);
               _loc6_ = li32(_loc10_ - 72);
               _loc16_ = li32(_loc10_ - 64);
               si32(-1,_loc21_);
               _loc5_ = int(_loc5_ - 16);
               si32(_loc16_,_loc5_ + 8);
               si32(0,_loc5_ + 4);
               _loc1_ = _loc17_ - _loc6_;
               si32(_loc1_,_loc5_);
               ESP = _loc5_;
               F__ZNSs4_Rep9_S_createEjjRKSaIcE();
               _loc5_ = int(_loc5_ + 16);
               _loc6_ = int(eax);
               si32(_loc6_,_loc10_ - 60);
               _loc6_ = li32(_loc10_ - 60);
               _loc5_ = int(_loc5_ - 16);
               si32(_loc6_,_loc5_);
               ESP = _loc5_;
               F__ZNSs4_Rep10_M_refdataEv();
               _loc5_ = int(_loc5_ + 16);
               _loc11_ = eax;
               _loc12_ = li32(_loc10_ - 72);
               _loc13_ = li32(_loc10_ - 80);
               si32(2,_loc21_);
               _loc5_ = int(_loc5_ - 16);
               si32(_loc13_,_loc5_ + 8);
               si32(_loc12_,_loc5_ + 4);
               si32(_loc11_,_loc5_);
               ESP = _loc5_;
               F__ZNSs13_S_copy_charsEPcN9__gnu_cxx17__normal_iteratorIS_SsEES2_();
               _loc5_ = int(_loc5_ + 16);
            }
            addr483:
            _loc5_ = int(_loc5_ - 16);
            si32(_loc23_,_loc5_);
            ESP = _loc5_;
            F__Unwind_SjLj_Unregister();
            _loc5_ = int(_loc5_ + 16);
            eax = _loc18_;
            _loc5_ = _loc10_;
            ESP = _loc5_;
            return;
         }
         while(true)
         {
            _loc6_ = _loc23_ | 4;
            _loc2_ = li32(_loc6_);
            if(_loc2_ <= 1)
            {
               if(_loc2_ != 0)
               {
                  break;
               }
               _loc14_ = li32(_loc10_ - 48);
               _loc4_ = li32(_loc10_ - 44);
            }
            else if(_loc2_ != 2)
            {
               if(_loc2_ != 3)
               {
                  addr709:
                  while(true)
                  {
                  }
               }
               else
               {
                  _loc9_ = li32(_loc10_ - 48);
                  _loc3_ = li32(_loc10_ - 44);
                  ESP = _loc5_;
                  F__ZSt9terminatev();
               }
            }
            else
            {
               _loc14_ = li32(_loc10_ - 48);
               _loc8_ = li32(_loc10_ - 44);
               _loc6_ = _loc23_ | 4;
               si32(4,_loc6_);
               ESP = _loc5_;
               F___cxa_end_catch();
            }
            _loc6_ = _loc23_ | 4;
            si32(-1,_loc6_);
            _loc5_ = int(_loc5_ - 16);
            si32(_loc14_,_loc5_);
            ESP = _loc5_;
            F__Unwind_SjLj_Resume();
            _loc5_ = int(_loc5_ + 16);
         }
         if(_loc2_ != 1)
         {
            §§goto(addr709);
         }
         else
         {
            _loc6_ = li32(_loc10_ - 48);
            _loc7_ = li32(_loc10_ - 44);
            _loc5_ = int(_loc5_ - 16);
            si32(_loc6_,_loc5_);
            ESP = _loc5_;
            F___cxa_begin_catch();
            _loc5_ = int(_loc5_ + 16);
            _loc17_ = li32(_loc10_ - 64);
            _loc6_ = li32(_loc10_ - 60);
            _loc5_ = int(_loc5_ - 16);
            si32(_loc17_,_loc5_ + 4);
            si32(_loc6_,_loc5_);
            ESP = _loc5_;
            F__ZNSs4_Rep10_M_destroyERKSaIcE();
            _loc5_ = int(_loc5_ + 16);
            _loc6_ = _loc23_ | 4;
            si32(3,_loc6_);
            ESP = _loc5_;
            F___cxa_rethrow();
         }
         _loc6_ = li32(_loc10_ - 60);
         si32(-1,_loc21_);
         _loc5_ = int(_loc5_ - 16);
         si32(_loc1_,_loc5_ + 4);
         si32(_loc6_,_loc5_);
         ESP = _loc5_;
         F__ZNSs4_Rep26_M_set_length_and_sharableEj();
         _loc5_ = int(_loc5_ + 16);
         _loc6_ = li32(_loc10_ - 60);
         _loc5_ = int(_loc5_ - 16);
         si32(_loc6_,_loc5_);
         ESP = _loc5_;
         F__ZNSs4_Rep10_M_refdataEv();
         _loc5_ = int(_loc5_ + 16);
         _loc18_ = eax;
         §§goto(addr483);
      }
   }
}
