package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.li32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNSs7replaceEjjPKcj() : void
   {
      var _loc2_:* = 0;
      var _loc6_:int = 0;
      var _loc11_:* = 0;
      var _loc23_:* = 0;
      var _loc24_:* = 0;
      var _loc25_:int = 0;
      var _loc22_:int = 0;
      var _loc16_:int = 0;
      var _loc17_:int = 0;
      var _loc15_:int = 0;
      var _loc21_:int = 0;
      var _loc20_:int = 0;
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc18_:int = 0;
      var _loc19_:int = 0;
      var _loc12_:int = 0;
      var _loc9_:* = 0;
      var _loc26_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc14_:int = 0;
      var _loc13_:int = 0;
      var _loc27_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc6_)
         {
            _loc2_ = _loc1_;
            _loc1_ = int(_loc1_ - 80);
            _loc1_ = int(_loc1_ - 16);
            si32(L__2E_str7,_loc1_ + 8);
            _loc11_ = li32(_loc2_ + 4);
            si32(_loc11_,_loc1_ + 4);
            _loc27_ = li32(_loc2_);
            si32(_loc27_,_loc1_);
            ESP = _loc1_;
            F__ZNKSs8_M_checkEjPKc();
            _loc1_ = int(_loc1_ + 16);
            _loc1_ = int(_loc1_ - 16);
            _loc26_ = li32(_loc2_ + 8);
            si32(_loc26_,_loc1_ + 8);
            si32(_loc11_,_loc1_ + 4);
            si32(_loc27_,_loc1_);
            ESP = _loc1_;
            F__ZNKSs8_M_limitEjj();
            _loc1_ = int(_loc1_ + 16);
            _loc25_ = eax;
            _loc1_ = int(_loc1_ - 16);
            si32(L__2E_str7,_loc1_ + 12);
            _loc24_ = li32(_loc2_ + 16);
            si32(_loc24_,_loc1_ + 8);
            si32(_loc25_,_loc1_ + 4);
            si32(_loc27_,_loc1_);
            ESP = _loc1_;
            F__ZNKSs15_M_check_lengthEjjPKc();
            _loc1_ = int(_loc1_ + 16);
            _loc1_ = int(_loc1_ - 16);
            _loc23_ = li32(_loc2_ + 12);
            si32(_loc23_,_loc1_ + 4);
            si32(_loc27_,_loc1_);
            ESP = _loc1_;
            F__ZNKSs11_M_disjunctEPKc();
            _loc1_ = int(_loc1_ + 16);
            _loc22_ = eax;
            si32(L_LSDA_88,_loc2_ - 28);
            si32(___gxx_personality_sj0,_loc2_ - 32);
            _loc26_ = _loc2_;
            si32(_loc26_,_loc2_ - 24);
            _loc26_ = _loc1_;
            si32(_loc26_,_loc2_ - 16);
            _loc21_ = _loc2_ - 56;
            _loc20_ = _loc21_ + 32;
            eax = setjmp(_loc20_,1,_loc1_);
         }
         else if(int(_loc6_) - 1)
         {
            throw "bad longjmp";
         }
         _loc26_ = int(eax);
         if(_loc26_ == 0)
         {
            _loc1_ = int(_loc1_ - 16);
            si32(_loc21_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            if(_loc22_ == 0)
            {
               _loc8_ = _loc21_ | 4;
               si32(-1,_loc8_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc27_,_loc1_);
               ESP = _loc1_;
               F__ZNKSs6_M_repEv();
               _loc1_ = int(_loc1_ + 16);
               _loc26_ = int(eax);
               si32(-1,_loc8_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc26_,_loc1_);
               ESP = _loc1_;
               F__ZNKSs4_Rep12_M_is_sharedEv();
               _loc1_ = int(_loc1_ + 16);
               _loc26_ = int(eax);
               if(_loc26_ == 0)
               {
                  si32(-1,_loc8_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc27_,_loc1_);
                  _loc16_ = _loc23_ + _loc24_;
                  ESP = _loc1_;
                  F__ZNKSs7_M_dataEv();
                  _loc1_ = int(_loc1_ + 16);
                  _loc26_ = int(eax);
                  _loc17_ = _loc26_ + _loc11_;
                  if(uint(_loc16_) > uint(_loc17_))
                  {
                     si32(-1,_loc8_);
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc27_,_loc1_);
                     _loc18_ = _loc25_ + _loc11_;
                     ESP = _loc1_;
                     F__ZNKSs7_M_dataEv();
                     _loc1_ = int(_loc1_ + 16);
                     _loc26_ = int(eax);
                     _loc26_ = int(_loc26_ + _loc18_);
                     if(uint(_loc26_) > uint(_loc23_))
                     {
                        _loc1_ = int(_loc1_ - 16);
                        _loc19_ = _loc2_ - 64;
                        si32(_loc19_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSaIcEC1Ev();
                        _loc1_ = int(_loc1_ + 16);
                        si32(1,_loc8_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc19_,_loc1_ + 12);
                        si32(_loc24_,_loc1_ + 8);
                        si32(_loc23_,_loc1_ + 4);
                        _loc12_ = _loc2_ - 72;
                        si32(_loc12_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSsC1EPKcjRKSaIcE();
                        _loc1_ = int(_loc1_ + 16);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc19_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSaIcED1Ev();
                        _loc1_ = int(_loc1_ + 16);
                        si32(2,_loc8_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc12_,_loc1_);
                        ESP = _loc1_;
                        F__ZNKSs7_M_dataEv();
                        _loc1_ = int(_loc1_ + 16);
                        _loc15_ = eax;
                        si32(3,_loc8_);
                        _loc1_ = int(_loc1_ - 32);
                        si32(_loc24_,_loc1_ + 16);
                        si32(_loc15_,_loc1_ + 12);
                        si32(_loc25_,_loc1_ + 8);
                        si32(_loc11_,_loc1_ + 4);
                        si32(_loc27_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSs15_M_replace_safeEjjPKcj();
                        _loc1_ = int(_loc1_ + 32);
                        _loc27_ = int(eax);
                        si32(-1,_loc8_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc12_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSsD1Ev();
                        _loc1_ = int(_loc1_ + 16);
                     }
                  }
                  si32(-1,_loc8_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc27_,_loc1_);
                  ESP = _loc1_;
                  F__ZNKSs7_M_dataEv();
                  _loc1_ = int(_loc1_ + 16);
                  _loc26_ = int(eax);
                  _loc13_ = _loc23_ - _loc26_;
                  if(uint(_loc16_) > uint(_loc17_))
                  {
                     _loc26_ = int(_loc24_ - _loc25_);
                     _loc13_ = _loc26_ + _loc13_;
                  }
                  si32(-1,_loc8_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc24_,_loc1_ + 12);
                  si32(_loc25_,_loc1_ + 8);
                  si32(_loc27_,_loc1_);
                  si32(_loc11_,_loc1_ + 4);
                  ESP = _loc1_;
                  F__ZNSs9_M_mutateEjjj();
                  _loc1_ = int(_loc1_ + 16);
                  si32(-1,_loc8_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc27_,_loc1_);
                  ESP = _loc1_;
                  F__ZNKSs7_M_dataEv();
                  _loc1_ = int(_loc1_ + 16);
                  _loc14_ = eax;
                  si32(-1,_loc8_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc27_,_loc1_);
                  ESP = _loc1_;
                  F__ZNKSs7_M_dataEv();
                  _loc1_ = int(_loc1_ + 16);
                  _loc26_ = int(eax);
                  si32(-1,_loc8_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc24_,_loc1_ + 8);
                  _loc26_ = int(_loc26_ + _loc13_);
                  si32(_loc26_,_loc1_ + 4);
                  _loc26_ = int(_loc14_ + _loc11_);
                  si32(_loc26_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSs7_M_copyEPcPKcj();
                  _loc1_ = int(_loc1_ + 16);
               }
               addr846:
               _loc1_ = int(_loc1_ - 16);
               si32(_loc21_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Unregister();
               _loc1_ = int(_loc1_ + 16);
               eax = _loc27_;
               _loc1_ = _loc2_;
               ESP = _loc1_;
               return;
            }
            _loc26_ = _loc21_ | 4;
            si32(-1,_loc26_);
            _loc1_ = int(_loc1_ - 32);
            si32(_loc24_,_loc1_ + 16);
            si32(_loc23_,_loc1_ + 12);
            si32(_loc25_,_loc1_ + 8);
            si32(_loc11_,_loc1_ + 4);
            si32(_loc27_,_loc1_);
            ESP = _loc1_;
            F__ZNSs15_M_replace_safeEjjPKcj();
            _loc1_ = int(_loc1_ + 32);
            _loc27_ = int(eax);
            §§goto(addr846);
         }
         else
         {
            while(true)
            {
               _loc26_ = _loc21_ | 4;
               _loc3_ = li32(_loc26_);
               if(_loc3_ != 0)
               {
                  _loc26_ = int(_loc3_ + -1);
                  if(uint(_loc26_) >= 2)
                  {
                     if(_loc3_ != 3)
                     {
                        break;
                     }
                     _loc4_ = li32(_loc2_ - 48);
                     _loc5_ = li32(_loc2_ - 44);
                     ESP = _loc1_;
                     F__ZSt9terminatev();
                  }
                  else
                  {
                     _loc10_ = li32(_loc2_ - 48);
                     _loc7_ = li32(_loc2_ - 44);
                     _loc26_ = _loc21_ | 4;
                     si32(4,_loc26_);
                     _loc1_ = int(_loc1_ - 16);
                     _loc26_ = int(_loc2_ - 72);
                     si32(_loc26_,_loc1_);
                     ESP = _loc1_;
                     F__ZNSsD1Ev();
                     _loc1_ = int(_loc1_ + 16);
                  }
               }
               else
               {
                  _loc10_ = li32(_loc2_ - 48);
                  _loc9_ = li32(_loc2_ - 44);
                  _loc1_ = int(_loc1_ - 16);
                  _loc26_ = int(_loc2_ - 64);
                  si32(_loc26_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSaIcED1Ev();
                  _loc1_ = int(_loc1_ + 16);
               }
               _loc26_ = _loc21_ | 4;
               si32(-1,_loc26_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc10_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Resume();
               _loc1_ = int(_loc1_ + 16);
            }
            while(true)
            {
            }
         }
      }
   }
}
