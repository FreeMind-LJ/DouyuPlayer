package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNSs4_Rep9_S_createEjjRKSaIcE() : void
   {
      var _loc4_:* = 0;
      var _loc8_:int = 0;
      var _loc11_:int = 0;
      var _loc5_:int = 0;
      var _loc16_:int = 0;
      var _loc15_:int = 0;
      var _loc3_:* = 0;
      var _loc13_:* = 0;
      var _loc10_:int = 0;
      var _loc9_:int = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc12_:* = 0;
      var _loc14_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc8_)
         {
            _loc4_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            si32(L_LSDA_148,_loc4_ - 28);
            si32(___gxx_personality_sj0,_loc4_ - 32);
            _loc3_ = _loc4_;
            si32(_loc3_,_loc4_ - 24);
            _loc3_ = _loc2_;
            si32(_loc3_,_loc4_ - 16);
            _loc16_ = _loc4_ - 56;
            _loc15_ = _loc16_ + 32;
            eax = setjmp(_loc15_,1,_loc2_);
         }
         else if(int(_loc8_) - 1)
         {
            throw "bad longjmp";
         }
         _loc3_ = int(eax);
         if(_loc3_ == 0)
         {
            _loc14_ = li32(_loc4_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc16_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            if(uint(_loc14_) >= 1073741821)
            {
               _loc3_ = _loc16_ | 4;
               si32(-1,_loc3_);
               _loc2_ = int(_loc2_ - 16);
               si32(L__2E_str,_loc2_);
               ESP = _loc2_;
               F__ZSt20__throw_length_errorPKc();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc13_ = li32(_loc4_ + 4);
            if(uint(_loc14_) > uint(_loc13_))
            {
               _loc12_ = _loc13_ << 1;
               if(uint(_loc12_) <= uint(_loc14_))
               {
                  _loc12_ = _loc14_;
               }
               _loc14_ = _loc12_;
            }
            _loc11_ = _loc14_ + 29;
            if(uint(_loc11_) >= 4097)
            {
               if(uint(_loc14_) > uint(_loc13_))
               {
                  _loc3_ = _loc11_ & 4095;
                  _loc3_ = int(4096 - _loc3_);
                  _loc10_ = _loc3_ + _loc14_;
                  _loc14_ = 1073741820;
                  if(uint(_loc10_) <= uint(_loc14_))
                  {
                     _loc14_ = _loc10_;
                  }
               }
            }
            _loc3_ = li32(_loc4_ + 8);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_ + 4);
            _loc9_ = _loc4_ - 64;
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F__ZNSaIcEC1ERKS_();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = _loc16_ | 4;
            si32(1,_loc1_);
            _loc2_ = int(_loc2_ - 16);
            _loc3_ = int(_loc14_ + 13);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F__Znwj();
            _loc2_ = int(_loc2_ + 16);
            _loc5_ = eax;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F__ZNSaIcED1Ev();
            _loc2_ = int(_loc2_ + 16);
            si32(_loc14_,_loc5_ + 4);
            si32(-1,_loc1_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F__ZNSs4_Rep15_M_set_sharableEv();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc16_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Unregister();
            _loc2_ = int(_loc2_ + 16);
            eax = _loc5_;
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
         while(true)
         {
            _loc3_ = _loc16_ | 4;
            _loc3_ = li32(_loc3_);
            if(_loc3_ != 0)
            {
               break;
            }
            _loc6_ = li32(_loc4_ - 48);
            _loc7_ = li32(_loc4_ - 44);
            _loc2_ = int(_loc2_ - 16);
            _loc3_ = int(_loc4_ - 64);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F__ZNSaIcED1Ev();
            _loc2_ = int(_loc2_ + 16);
            _loc3_ = _loc16_ | 4;
            si32(-1,_loc3_);
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
