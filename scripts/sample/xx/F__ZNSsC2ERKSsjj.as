package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNSsC2ERKSsjj() : void
   {
      var _loc10_:* = 0;
      var _loc15_:int = 0;
      var _loc7_:* = 0;
      var _loc11_:int = 0;
      var _loc12_:int = 0;
      var _loc4_:int = 0;
      var _loc6_:* = 0;
      var _loc24_:int = 0;
      var _loc23_:* = 0;
      var _loc22_:int = 0;
      var _loc21_:int = 0;
      var _loc19_:int = 0;
      var _loc18_:int = 0;
      var _loc20_:* = 0;
      var _loc16_:int = 0;
      var _loc1_:int = 0;
      var _loc17_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:int = 0;
      var _loc3_:* = 0;
      var _loc8_:int = 0;
      var _loc2_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = int(ESP);
      while(true)
      {
         if(!_loc15_)
         {
            _loc10_ = _loc5_;
            _loc5_ = int(_loc5_ - 80);
            _loc5_ = int(_loc5_ - 16);
            _loc6_ = li32(_loc10_ + 4);
            si32(_loc6_,_loc5_);
            ESP = _loc5_;
            F__ZNKSs7_M_dataEv();
            _loc5_ = int(_loc5_ + 16);
            _loc24_ = eax;
            _loc5_ = int(_loc5_ - 16);
            si32(L__2E_str12,_loc5_ + 8);
            _loc23_ = li32(_loc10_ + 8);
            si32(_loc23_,_loc5_ + 4);
            si32(_loc6_,_loc5_);
            ESP = _loc5_;
            F__ZNKSs8_M_checkEjPKc();
            _loc5_ = int(_loc5_ + 16);
            _loc22_ = eax;
            _loc5_ = int(_loc5_ - 16);
            si32(_loc6_,_loc5_);
            ESP = _loc5_;
            F__ZNKSs7_M_dataEv();
            _loc5_ = int(_loc5_ + 16);
            _loc21_ = eax;
            _loc5_ = int(_loc5_ - 16);
            _loc20_ = li32(_loc10_ + 12);
            si32(_loc20_,_loc5_ + 8);
            si32(_loc23_,_loc5_ + 4);
            si32(_loc6_,_loc5_);
            ESP = _loc5_;
            F__ZNKSs8_M_limitEjj();
            _loc5_ = int(_loc5_ + 16);
            _loc19_ = eax;
            _loc5_ = int(_loc5_ - 16);
            _loc18_ = _loc10_ - 72;
            si32(_loc18_,_loc5_);
            ESP = _loc5_;
            F__ZNSaIcEC1Ev();
            _loc5_ = int(_loc5_ + 16);
            si32(L_LSDA_26,_loc10_ - 28);
            si32(___gxx_personality_sj0,_loc10_ - 32);
            _loc20_ = _loc10_;
            si32(_loc20_,_loc10_ - 24);
            _loc20_ = _loc5_;
            si32(_loc20_,_loc10_ - 16);
            _loc16_ = _loc10_ - 56;
            _loc1_ = _loc16_ + 32;
            eax = setjmp(_loc1_,1,_loc5_);
         }
         else if(int(_loc15_) - 1)
         {
            throw "bad longjmp";
         }
         _loc20_ = int(eax);
         if(_loc20_ == 0)
         {
            _loc11_ = _loc24_ + _loc22_;
            _loc20_ = int(_loc19_ + _loc23_);
            _loc12_ = _loc21_ + _loc20_;
            _loc5_ = int(_loc5_ - 16);
            si32(_loc16_,_loc5_);
            ESP = _loc5_;
            F__Unwind_SjLj_Register();
            _loc5_ = int(_loc5_ + 16);
            _loc13_ = _loc16_ | 4;
            si32(1,_loc13_);
            _loc5_ = int(_loc5_ - 16);
            si32(_loc14_,_loc5_ + 12);
            si32(_loc18_,_loc5_ + 8);
            si32(_loc12_,_loc5_ + 4);
            si32(_loc11_,_loc5_);
            ESP = _loc5_;
            F__ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag();
            _loc5_ = int(_loc5_ + 16);
            _loc4_ = eax;
            _loc7_ = li32(_loc10_);
            _loc5_ = int(_loc5_ - 16);
            _loc8_ = _loc10_ - 64;
            si32(_loc8_,_loc5_);
            ESP = _loc5_;
            F__ZNSaIcEC1Ev();
            _loc5_ = int(_loc5_ + 16);
            si32(2,_loc13_);
            _loc5_ = int(_loc5_ - 16);
            si32(_loc8_,_loc5_ + 8);
            si32(_loc4_,_loc5_ + 4);
            si32(_loc7_,_loc5_);
            ESP = _loc5_;
            F__ZNSs12_Alloc_hiderC1EPcRKSaIcE();
            _loc5_ = int(_loc5_ + 16);
            _loc5_ = int(_loc5_ - 16);
            si32(_loc8_,_loc5_);
            ESP = _loc5_;
            F__ZNSaIcED1Ev();
            _loc5_ = int(_loc5_ + 16);
            _loc5_ = int(_loc5_ - 16);
            si32(_loc18_,_loc5_);
            ESP = _loc5_;
            F__ZNSaIcED1Ev();
            _loc5_ = int(_loc5_ + 16);
            _loc5_ = int(_loc5_ - 16);
            si32(_loc16_,_loc5_);
            ESP = _loc5_;
            F__Unwind_SjLj_Unregister();
            _loc5_ = int(_loc5_ + 16);
            _loc5_ = _loc10_;
            ESP = _loc5_;
            return;
         }
         while(true)
         {
            _loc20_ = _loc16_ | 4;
            _loc17_ = li32(_loc20_);
            if(_loc17_ != 0)
            {
               if(_loc17_ != 1)
               {
                  break;
               }
               _loc9_ = li32(_loc10_ - 48);
               _loc2_ = li32(_loc10_ - 44);
               _loc5_ = int(_loc5_ - 16);
               _loc20_ = int(_loc10_ - 64);
               si32(_loc20_,_loc5_);
               ESP = _loc5_;
               F__ZNSaIcED1Ev();
               _loc5_ = int(_loc5_ + 16);
            }
            else
            {
               _loc9_ = li32(_loc10_ - 48);
               _loc3_ = li32(_loc10_ - 44);
            }
            _loc5_ = int(_loc5_ - 16);
            si32(_loc18_,_loc5_);
            ESP = _loc5_;
            F__ZNSaIcED1Ev();
            _loc5_ = int(_loc5_ + 16);
            _loc20_ = _loc16_ | 4;
            si32(-1,_loc20_);
            _loc5_ = int(_loc5_ - 16);
            si32(_loc9_,_loc5_);
            ESP = _loc5_;
            F__Unwind_SjLj_Resume();
            _loc5_ = int(_loc5_ + 16);
         }
         while(true)
         {
         }
      }
   }
}
