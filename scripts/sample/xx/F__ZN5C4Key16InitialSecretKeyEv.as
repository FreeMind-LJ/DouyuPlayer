package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccWOpgXM_2E_o_3A_e07a7c20_2D_50a5_2D_4908_2D_bae4_2D_6489778f0fee.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZN5C4Key16InitialSecretKeyEv() : void
   {
      var _loc16_:* = 0;
      var _loc17_:int = 0;
      var _loc11_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:int = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:int = 0;
      var _loc15_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc17_)
         {
            _loc16_ = _loc1_;
            _loc1_ = int(_loc1_ - 96);
            _loc1_ = int(_loc1_ - 16);
            si32(4,_loc1_);
            ESP = _loc1_;
            F__Znwj();
            _loc1_ = int(_loc1_ + 16);
            _loc2_ = int(eax);
            si32(_loc2_,_loc16_ - 60);
            _loc3_ = li32(_loc16_ - 60);
            si32(L_LSDA_10,_loc16_ - 28);
            si32(___gxx_personality_sj0,_loc16_ - 32);
            _loc2_ = _loc16_;
            si32(_loc2_,_loc16_ - 24);
            _loc2_ = _loc1_;
            si32(_loc2_,_loc16_ - 16);
            _loc5_ = _loc16_ - 56;
            _loc7_ = _loc5_ + 32;
            eax = setjmp(_loc7_,1,_loc1_);
         }
         else if(int(_loc17_) - 1)
         {
            throw "bad longjmp";
         }
         _loc2_ = int(eax);
         if(_loc2_ == 0)
         {
            _loc1_ = int(_loc1_ - 16);
            si32(_loc5_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            _loc9_ = _loc5_ | 4;
            si32(1,_loc9_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc3_,_loc1_);
            ESP = _loc1_;
            F__ZN11CRandom_WinC1Ev();
            _loc1_ = int(_loc1_ + 16);
            _loc11_ = li32(_loc16_);
            si32(0,_loc16_ - 64);
            si32(0,_loc16_ - 68);
            si32(0,_loc16_ - 72);
            si32(0,_loc16_ - 76);
            si32(0,_loc16_ - 80);
            si32(0,_loc16_ - 84);
            si32(0,_loc16_ - 88);
            si32(0,_loc16_ - 92);
            _loc12_ = li32(_loc16_ - 60);
            _loc2_ = li32(_loc12_);
            _loc13_ = li32(_loc2_ + 8);
            si32(-1,_loc9_);
            _loc1_ = int(_loc1_ - 16);
            si32(32,_loc1_ + 8);
            _loc14_ = _loc16_ - 92;
            si32(_loc14_,_loc1_ + 4);
            si32(_loc3_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc13_]();
            _loc1_ = int(_loc1_ + 16);
            _loc2_ = li32(_loc11_ + 12);
            _loc15_ = li32(_loc2_);
            _loc6_ = li32(_loc15_ + 8);
            si32(-1,_loc9_);
            _loc1_ = int(_loc1_ - 16);
            si32(32,_loc1_ + 8);
            si32(_loc14_,_loc1_ + 4);
            si32(_loc2_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc6_]();
            _loc1_ = int(_loc1_ + 16);
            _loc2_ = li32(_loc16_ - 60);
            if(_loc2_ != 0)
            {
               _loc2_ = li32(_loc12_);
               _loc4_ = li32(_loc2_ + 4);
               si32(-1,_loc9_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc3_,_loc1_);
               ESP = _loc1_;
               ptr2fun[_loc4_]();
               _loc1_ = int(_loc1_ + 16);
            }
            _loc1_ = int(_loc1_ - 16);
            si32(_loc5_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Unregister();
            _loc1_ = int(_loc1_ + 16);
            _loc1_ = _loc16_;
            ESP = _loc1_;
            return;
         }
         while(true)
         {
            _loc2_ = _loc5_ | 4;
            _loc2_ = li32(_loc2_);
            if(_loc2_ != 0)
            {
               break;
            }
            _loc10_ = li32(_loc16_ - 48);
            _loc8_ = li32(_loc16_ - 44);
            _loc2_ = li32(_loc16_ - 60);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc2_,_loc1_);
            ESP = _loc1_;
            F__ZdlPv();
            _loc1_ = int(_loc1_ + 16);
            _loc2_ = _loc5_ | 4;
            si32(-1,_loc2_);
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
