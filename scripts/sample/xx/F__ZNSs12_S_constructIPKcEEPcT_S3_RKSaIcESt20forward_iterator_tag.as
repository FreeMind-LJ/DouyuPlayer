package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag() : void
   {
      var _loc8_:* = 0;
      var _loc13_:int = 0;
      var _loc18_:* = 0;
      var _loc19_:* = 0;
      var _loc14_:int = 0;
      var _loc10_:* = 0;
      var _loc21_:int = 0;
      var _loc20_:int = 0;
      var _loc7_:* = 0;
      var _loc15_:* = 0;
      var _loc1_:int = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc17_:int = 0;
      var _loc16_:int = 0;
      var _loc3_:* = int(ESP);
      while(true)
      {
         if(!_loc13_)
         {
            _loc8_ = _loc3_;
            _loc3_ = int(_loc3_ - 80);
            _loc4_ = li32(_loc8_ + 8);
            si32(_loc4_,_loc8_ - 64);
            si32(L_LSDA_164,_loc8_ - 28);
            si32(___gxx_personality_sj0,_loc8_ - 32);
            _loc4_ = _loc8_;
            si32(_loc4_,_loc8_ - 24);
            _loc4_ = _loc3_;
            si32(_loc4_,_loc8_ - 16);
            _loc21_ = _loc8_ - 56;
            _loc20_ = _loc21_ + 32;
            eax = setjmp(_loc20_,1,_loc3_);
         }
         else if(int(_loc13_) - 1)
         {
            throw "bad longjmp";
         }
         _loc4_ = int(eax);
         if(_loc4_ == 0)
         {
            _loc19_ = li32(_loc8_ + 4);
            _loc18_ = li32(_loc8_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc21_,_loc3_);
            ESP = _loc3_;
            F__Unwind_SjLj_Register();
            _loc3_ = int(_loc3_ + 16);
            if(_loc18_ == _loc19_)
            {
               _loc3_ = int(_loc3_ - 16);
               _loc17_ = _loc8_ - 72;
               si32(_loc17_,_loc3_);
               ESP = _loc3_;
               F__ZNSaIcEC1Ev();
               _loc3_ = int(_loc3_ + 16);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc17_,_loc3_);
               ESP = _loc3_;
               F__ZNSaIcED1Ev();
               _loc3_ = int(_loc3_ + 16);
               _loc4_ = _loc21_ | 4;
               si32(-1,_loc4_);
               ESP = _loc3_;
               F__ZNSs12_S_empty_repEv();
               _loc4_ = int(eax);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc4_,_loc3_);
               ESP = _loc3_;
               F__ZNSs4_Rep10_M_refdataEv();
               _loc3_ = int(_loc3_ + 16);
               _loc16_ = eax;
            }
            else
            {
               if(_loc18_ != _loc19_)
               {
                  if(_loc18_ == 0)
                  {
                     _loc4_ = _loc21_ | 4;
                     si32(-1,_loc4_);
                     _loc3_ = int(_loc3_ - 16);
                     si32(L__2E_str11,_loc3_);
                     ESP = _loc3_;
                     F__ZSt19__throw_logic_errorPKc();
                     _loc3_ = int(_loc3_ + 16);
                  }
                  addr408:
                  _loc4_ = li32(_loc8_ - 60);
                  si32(-1,_loc15_);
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc14_,_loc3_ + 4);
                  si32(_loc4_,_loc3_);
                  ESP = _loc3_;
                  F__ZNSs4_Rep26_M_set_length_and_sharableEj();
                  _loc3_ = int(_loc3_ + 16);
                  _loc4_ = li32(_loc8_ - 60);
                  _loc3_ = int(_loc3_ - 16);
                  si32(_loc4_,_loc3_);
                  ESP = _loc3_;
                  F__ZNSs4_Rep10_M_refdataEv();
                  _loc3_ = int(_loc3_ + 16);
                  _loc16_ = eax;
               }
               _loc15_ = _loc21_ | 4;
               _loc4_ = li32(_loc8_ - 64);
               si32(-1,_loc15_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc4_,_loc3_ + 8);
               si32(0,_loc3_ + 4);
               _loc14_ = _loc19_ - _loc18_;
               si32(_loc14_,_loc3_);
               ESP = _loc3_;
               F__ZNSs4_Rep9_S_createEjjRKSaIcE();
               _loc3_ = int(_loc3_ + 16);
               _loc4_ = int(eax);
               si32(_loc4_,_loc8_ - 60);
               _loc4_ = li32(_loc8_ - 60);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc4_,_loc3_);
               ESP = _loc3_;
               F__ZNSs4_Rep10_M_refdataEv();
               _loc3_ = int(_loc3_ + 16);
               _loc1_ = eax;
               si32(1,_loc15_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc19_,_loc3_ + 8);
               si32(_loc18_,_loc3_ + 4);
               si32(_loc1_,_loc3_);
               ESP = _loc3_;
               F__ZNSs13_S_copy_charsEPcPKcS1_();
               _loc3_ = int(_loc3_ + 16);
               §§goto(addr408);
            }
            _loc3_ = int(_loc3_ - 16);
            si32(_loc21_,_loc3_);
            ESP = _loc3_;
            F__Unwind_SjLj_Unregister();
            _loc3_ = int(_loc3_ + 16);
            eax = _loc16_;
            _loc3_ = _loc8_;
            ESP = _loc3_;
            return;
         }
         while(true)
         {
            _loc4_ = _loc21_ | 4;
            _loc7_ = li32(_loc4_);
            if(_loc7_ != 0)
            {
               if(_loc7_ != 1)
               {
                  if(_loc7_ != 2)
                  {
                     while(true)
                     {
                     }
                  }
                  else
                  {
                     _loc5_ = li32(_loc8_ - 48);
                     _loc6_ = li32(_loc8_ - 44);
                     ESP = _loc3_;
                     F__ZSt9terminatev();
                     continue;
                  }
               }
               else
               {
                  _loc10_ = li32(_loc8_ - 48);
                  _loc2_ = li32(_loc8_ - 44);
                  _loc9_ = _loc21_ | 4;
                  si32(3,_loc9_);
                  ESP = _loc3_;
                  F___cxa_end_catch();
                  break;
               }
            }
            else
            {
               _loc4_ = li32(_loc8_ - 48);
               _loc11_ = li32(_loc8_ - 44);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc4_,_loc3_);
               ESP = _loc3_;
               F___cxa_begin_catch();
               _loc3_ = int(_loc3_ + 16);
               _loc12_ = li32(_loc8_ - 64);
               _loc4_ = li32(_loc8_ - 60);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc12_,_loc3_ + 4);
               si32(_loc4_,_loc3_);
               ESP = _loc3_;
               F__ZNSs4_Rep10_M_destroyERKSaIcE();
               _loc3_ = int(_loc3_ + 16);
               _loc4_ = _loc21_ | 4;
               si32(2,_loc4_);
               ESP = _loc3_;
               F___cxa_rethrow();
            }
         }
         si32(-1,_loc9_);
         _loc3_ = int(_loc3_ - 16);
         si32(_loc10_,_loc3_);
         ESP = _loc3_;
         F__Unwind_SjLj_Resume();
         _loc3_ = int(_loc3_ + 16);
         §§goto(addr408);
         §§goto(addr385);
      }
   }
}
