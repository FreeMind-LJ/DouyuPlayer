package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNSs9_M_mutateEjjj() : void
   {
      var _loc5_:* = 0;
      var _loc10_:int = 0;
      var _loc15_:* = 0;
      var _loc12_:* = 0;
      var _loc26_:* = 0;
      var _loc25_:* = 0;
      var _loc24_:int = 0;
      var _loc20_:int = 0;
      var _loc21_:int = 0;
      var _loc30_:int = 0;
      var _loc17_:int = 0;
      var _loc18_:int = 0;
      var _loc19_:int = 0;
      var _loc14_:int = 0;
      var _loc13_:int = 0;
      var _loc11_:int = 0;
      var _loc8_:int = 0;
      var _loc31_:int = 0;
      var _loc28_:int = 0;
      var _loc27_:int = 0;
      var _loc22_:* = 0;
      var _loc6_:int = 0;
      var _loc29_:* = 0;
      var _loc7_:int = 0;
      var _loc23_:* = 0;
      var _loc16_:int = 0;
      var _loc9_:int = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc10_)
         {
            _loc5_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            _loc2_ = int(_loc2_ - 16);
            _loc15_ = li32(_loc5_);
            si32(_loc15_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs4sizeEv();
            _loc2_ = int(_loc2_ + 16);
            _loc31_ = eax;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc15_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs8capacityEv();
            _loc2_ = int(_loc2_ + 16);
            _loc30_ = eax;
            si32(L_LSDA_17,_loc5_ - 28);
            si32(___gxx_personality_sj0,_loc5_ - 32);
            _loc29_ = _loc5_;
            si32(_loc29_,_loc5_ - 24);
            _loc29_ = _loc2_;
            si32(_loc29_,_loc5_ - 16);
            _loc28_ = _loc5_ - 56;
            _loc27_ = _loc28_ + 32;
            eax = setjmp(_loc27_,1,_loc2_);
         }
         else if(int(_loc10_) - 1)
         {
            throw "bad longjmp";
         }
         _loc29_ = int(eax);
         if(_loc29_ == 0)
         {
            _loc26_ = li32(_loc5_ + 8);
            _loc25_ = li32(_loc5_ + 12);
            _loc29_ = int(_loc25_ - _loc26_);
            _loc24_ = _loc29_ + _loc31_;
            _loc12_ = li32(_loc5_ + 4);
            _loc20_ = _loc31_ - _loc12_;
            _loc21_ = _loc20_ - _loc26_;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc28_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            if(uint(_loc30_) >= uint(_loc24_))
            {
               _loc22_ = _loc28_ | 4;
               si32(-1,_loc22_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc15_,_loc2_);
               ESP = _loc2_;
               F__ZNKSs6_M_repEv();
               _loc2_ = int(_loc2_ + 16);
               _loc29_ = int(eax);
               si32(-1,_loc22_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc29_,_loc2_);
               ESP = _loc2_;
               F__ZNKSs4_Rep12_M_is_sharedEv();
               _loc2_ = int(_loc2_ + 16);
               _loc29_ = int(eax);
               if(_loc29_ == 0)
               {
                  if(_loc20_ != _loc26_)
                  {
                     if(_loc26_ != _loc25_)
                     {
                        si32(-1,_loc22_);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc15_,_loc2_);
                        ESP = _loc2_;
                        F__ZNKSs7_M_dataEv();
                        _loc2_ = int(_loc2_ + 16);
                        _loc6_ = eax;
                        si32(-1,_loc22_);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc15_,_loc2_);
                        ESP = _loc2_;
                        F__ZNKSs7_M_dataEv();
                        _loc2_ = int(_loc2_ + 16);
                        _loc29_ = int(eax);
                        si32(-1,_loc22_);
                        _loc2_ = int(_loc2_ - 16);
                        si32(_loc21_,_loc2_ + 8);
                        _loc7_ = _loc26_ + _loc12_;
                        _loc29_ = int(_loc29_ + _loc7_);
                        si32(_loc29_,_loc2_ + 4);
                        _loc29_ = int(_loc25_ + _loc12_);
                        _loc29_ = int(_loc6_ + _loc29_);
                        si32(_loc29_,_loc2_);
                        ESP = _loc2_;
                        F__ZNSs7_M_moveEPcPKcj();
                        _loc2_ = int(_loc2_ + 16);
                     }
                  }
               }
               addr836:
               _loc3_ = _loc28_ | 4;
               si32(-1,_loc3_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc15_,_loc2_);
               ESP = _loc2_;
               F__ZNKSs6_M_repEv();
               _loc2_ = int(_loc2_ + 16);
               _loc29_ = int(eax);
               si32(-1,_loc3_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc24_,_loc2_ + 4);
               si32(_loc29_,_loc2_);
               ESP = _loc2_;
               F__ZNSs4_Rep26_M_set_length_and_sharableEj();
               _loc2_ = int(_loc2_ + 16);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc28_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Unregister();
               _loc2_ = int(_loc2_ + 16);
               _loc2_ = _loc5_;
               ESP = _loc2_;
               return;
            }
            _loc23_ = _loc28_ | 4;
            si32(-1,_loc23_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc15_,_loc2_ + 4);
            _loc16_ = _loc5_ - 64;
            si32(_loc16_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs13get_allocatorEv();
            _loc2_ = int(_loc2_ + 16);
            si32(1,_loc23_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc15_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs8capacityEv();
            _loc2_ = int(_loc2_ + 16);
            _loc17_ = eax;
            si32(2,_loc23_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc16_,_loc2_ + 8);
            si32(_loc17_,_loc2_ + 4);
            si32(_loc24_,_loc2_);
            ESP = _loc2_;
            F__ZNSs4_Rep9_S_createEjjRKSaIcE();
            _loc2_ = int(_loc2_ + 16);
            _loc18_ = eax;
            if(_loc12_ != 0)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc18_,_loc2_);
               ESP = _loc2_;
               F__ZNSs4_Rep10_M_refdataEv();
               _loc2_ = int(_loc2_ + 16);
               _loc19_ = eax;
               si32(3,_loc23_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc15_,_loc2_);
               ESP = _loc2_;
               F__ZNKSs7_M_dataEv();
               _loc2_ = int(_loc2_ + 16);
               _loc14_ = eax;
               si32(4,_loc23_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc12_,_loc2_ + 8);
               si32(_loc14_,_loc2_ + 4);
               si32(_loc19_,_loc2_);
               ESP = _loc2_;
               F__ZNSs7_M_copyEPcPKcj();
               _loc2_ = int(_loc2_ + 16);
            }
            if(_loc20_ != _loc26_)
            {
               _loc2_ = int(_loc2_ - 16);
               si32(_loc18_,_loc2_);
               ESP = _loc2_;
               F__ZNSs4_Rep10_M_refdataEv();
               _loc2_ = int(_loc2_ + 16);
               _loc13_ = eax;
               si32(5,_loc23_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc15_,_loc2_);
               ESP = _loc2_;
               F__ZNKSs7_M_dataEv();
               _loc2_ = int(_loc2_ + 16);
               _loc11_ = eax;
               si32(6,_loc23_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc21_,_loc2_ + 8);
               _loc29_ = int(_loc26_ + _loc12_);
               _loc29_ = int(_loc11_ + _loc29_);
               si32(_loc29_,_loc2_ + 4);
               _loc29_ = int(_loc25_ + _loc12_);
               _loc29_ = int(_loc13_ + _loc29_);
               si32(_loc29_,_loc2_);
               ESP = _loc2_;
               F__ZNSs7_M_copyEPcPKcj();
               _loc2_ = int(_loc2_ + 16);
            }
            si32(7,_loc23_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc15_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs6_M_repEv();
            _loc2_ = int(_loc2_ + 16);
            _loc8_ = eax;
            si32(8,_loc23_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc16_,_loc2_ + 4);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__ZNSs4_Rep10_M_disposeERKSaIcE();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc18_,_loc2_);
            ESP = _loc2_;
            F__ZNSs4_Rep10_M_refdataEv();
            _loc2_ = int(_loc2_ + 16);
            _loc9_ = eax;
            si32(9,_loc23_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_ + 4);
            si32(_loc15_,_loc2_);
            ESP = _loc2_;
            F__ZNSs7_M_dataEPc();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc16_,_loc2_);
            ESP = _loc2_;
            F__ZNSaIcED1Ev();
            _loc2_ = int(_loc2_ + 16);
            §§goto(addr836);
         }
         else
         {
            while(true)
            {
               _loc29_ = _loc28_ | 4;
               _loc29_ = li32(_loc29_);
               if(uint(_loc29_) >= 9)
               {
                  break;
               }
               _loc4_ = li32(_loc5_ - 48);
               _loc1_ = li32(_loc5_ - 44);
               _loc2_ = int(_loc2_ - 16);
               _loc29_ = int(_loc5_ - 64);
               si32(_loc29_,_loc2_);
               ESP = _loc2_;
               F__ZNSaIcED1Ev();
               _loc2_ = int(_loc2_ + 16);
               _loc29_ = _loc28_ | 4;
               si32(-1,_loc29_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Resume();
               _loc2_ = int(_loc2_ + 16);
            }
            while(true)
            {
            }
         }
      }
   }
}
