package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNSs4swapERSs() : void
   {
      var _loc4_:* = 0;
      var _loc8_:int = 0;
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc15_:int = 0;
      var _loc14_:int = 0;
      var _loc13_:int = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:int = 0;
      var _loc1_:int = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc16_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc8_)
         {
            _loc4_ = _loc2_;
            _loc2_ = int(_loc2_ - 80);
            _loc2_ = int(_loc2_ - 16);
            _loc3_ = li32(_loc4_);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs6_M_repEv();
            _loc2_ = int(_loc2_ + 16);
            _loc16_ = int(eax);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc16_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs4_Rep12_M_is_leakedEv();
            _loc2_ = int(_loc2_ + 16);
            _loc15_ = eax;
            si32(L_LSDA_103,_loc4_ - 28);
            si32(___gxx_personality_sj0,_loc4_ - 32);
            _loc16_ = _loc4_;
            si32(_loc16_,_loc4_ - 24);
            _loc16_ = _loc2_;
            si32(_loc16_,_loc4_ - 16);
            _loc14_ = _loc4_ - 56;
            _loc13_ = _loc14_ + 32;
            eax = setjmp(_loc13_,1,_loc2_);
         }
         else if(int(_loc8_) - 1)
         {
            throw "bad longjmp";
         }
         _loc16_ = int(eax);
         if(_loc16_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc14_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            if(_loc15_ != 0)
            {
               _loc12_ = _loc14_ | 4;
               si32(-1,_loc12_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F__ZNKSs6_M_repEv();
               _loc2_ = int(_loc2_ + 16);
               _loc16_ = int(eax);
               si32(-1,_loc12_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc16_,_loc2_);
               ESP = _loc2_;
               F__ZNSs4_Rep15_M_set_sharableEv();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc11_ = li32(_loc4_ + 4);
            _loc10_ = _loc14_ | 4;
            si32(-1,_loc10_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs6_M_repEv();
            _loc2_ = int(_loc2_ + 16);
            _loc16_ = int(eax);
            si32(-1,_loc10_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc16_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs4_Rep12_M_is_leakedEv();
            _loc2_ = int(_loc2_ + 16);
            _loc16_ = int(eax);
            if(_loc16_ != 0)
            {
               si32(-1,_loc10_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F__ZNKSs6_M_repEv();
               _loc2_ = int(_loc2_ + 16);
               _loc16_ = int(eax);
               si32(-1,_loc10_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc16_,_loc2_);
               ESP = _loc2_;
               F__ZNSs4_Rep15_M_set_sharableEv();
               _loc2_ = int(_loc2_ + 16);
            }
            si32(-1,_loc10_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_ + 4);
            _loc9_ = _loc4_ - 72;
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs13get_allocatorEv();
            _loc2_ = int(_loc2_ + 16);
            si32(1,_loc10_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc11_,_loc2_ + 4);
            _loc1_ = _loc4_ - 64;
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs13get_allocatorEv();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__ZNSaIcED1Ev();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F__ZNSaIcED1Ev();
            _loc2_ = int(_loc2_ + 16);
            si32(-1,_loc10_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs7_M_dataEv();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = eax;
            si32(-1,_loc10_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F__ZNKSs7_M_dataEv();
            _loc2_ = int(_loc2_ + 16);
            _loc16_ = int(eax);
            si32(-1,_loc10_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc16_,_loc2_ + 4);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F__ZNSs7_M_dataEPc();
            _loc2_ = int(_loc2_ + 16);
            si32(-1,_loc10_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F__ZNSs7_M_dataEPc();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc14_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Unregister();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
         while(true)
         {
            _loc16_ = _loc14_ | 4;
            _loc16_ = li32(_loc16_);
            if(_loc16_ != 0)
            {
               break;
            }
            _loc6_ = li32(_loc4_ - 48);
            _loc7_ = li32(_loc4_ - 44);
            _loc2_ = int(_loc2_ - 16);
            _loc16_ = int(_loc4_ - 72);
            si32(_loc16_,_loc2_);
            ESP = _loc2_;
            F__ZNSaIcED1Ev();
            _loc2_ = int(_loc2_ + 16);
            _loc16_ = _loc14_ | 4;
            si32(-1,_loc16_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_);
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
