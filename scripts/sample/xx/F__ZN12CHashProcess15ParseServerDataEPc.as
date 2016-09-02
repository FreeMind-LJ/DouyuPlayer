package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_cchkBB4I_2E_o_3A_3d09543f_2D_286a_2D_4d3e_2D_a658_2D_8a6759fb7e32.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZN12CHashProcess15ParseServerDataEPc() : void
   {
      var _loc49_:* = 0;
      var _loc18_:int = 0;
      var _loc23_:* = 0;
      var _loc20_:* = 0;
      var _loc24_:int = 0;
      var _loc26_:int = 0;
      var _loc25_:int = 0;
      var _loc27_:* = 0;
      var _loc29_:int = 0;
      var _loc32_:int = 0;
      var _loc36_:* = 0;
      var _loc42_:int = 0;
      var _loc46_:* = 0;
      var _loc44_:* = 0;
      var _loc30_:int = 0;
      var _loc33_:int = 0;
      var _loc37_:int = 0;
      var _loc39_:int = 0;
      var _loc17_:* = 0;
      var _loc41_:* = 0;
      var _loc43_:int = 0;
      var _loc45_:int = 0;
      var _loc19_:* = 0;
      var _loc47_:* = 0;
      var _loc22_:* = 0;
      var _loc21_:* = 0;
      var _loc6_:* = 0;
      var _loc35_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc28_:* = 0;
      var _loc10_:* = 0;
      var _loc34_:* = 0;
      var _loc12_:* = 0;
      var _loc38_:* = 0;
      var _loc14_:* = 0;
      var _loc40_:* = 0;
      var _loc13_:* = 0;
      var _loc48_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc16_:* = 0;
      var _loc15_:* = 0;
      var _loc31_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc18_)
         {
            _loc49_ = _loc1_;
            _loc1_ = int(_loc1_ - 192);
            _loc1_ = int(_loc1_ - 16);
            si32(85,_loc1_ + 8);
            _loc30_ = _loc49_ - 173;
            si32(_loc30_,_loc1_);
            _loc31_ = 0;
            si32(_loc31_,_loc1_ + 4);
            ESP = _loc1_;
            Fmemset();
            _loc1_ = int(_loc1_ + 16);
            _loc1_ = int(_loc1_ - 16);
            _loc33_ = _loc49_ - 80;
            si32(_loc33_,_loc1_);
            ESP = _loc1_;
            F__ZNSaIcEC1Ev();
            _loc1_ = int(_loc1_ + 16);
            si32(L_LSDA_8,_loc49_ - 28);
            si32(___gxx_personality_sj0,_loc49_ - 32);
            _loc35_ = _loc49_;
            si32(_loc35_,_loc49_ - 24);
            _loc35_ = _loc1_;
            si32(_loc35_,_loc49_ - 16);
            _loc37_ = _loc49_ - 56;
            _loc39_ = _loc37_ + 32;
            eax = setjmp(_loc39_,1,_loc1_);
         }
         else if(int(_loc18_) - 1)
         {
            throw "bad longjmp";
         }
         _loc35_ = int(eax);
         if(_loc35_ == 0)
         {
            _loc1_ = int(_loc1_ - 16);
            si32(_loc37_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            _loc41_ = _loc37_ | 4;
            si32(1,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc33_,_loc1_ + 8);
            si32(L__2E_str14,_loc1_ + 4);
            _loc43_ = _loc49_ - 88;
            si32(_loc43_,_loc1_);
            ESP = _loc1_;
            F__ZNSsC1EPKcRKSaIcE();
            _loc1_ = int(_loc1_ + 16);
            si32(2,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc43_,_loc1_ + 4);
            _loc45_ = _loc49_ - 184;
            si32(_loc45_,_loc1_);
            ESP = _loc1_;
            F__ZNSsC1ERKSs();
            _loc1_ = int(_loc1_ + 16);
            si32(3,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(L__2E_str3,_loc1_ + 4);
            si32(_loc45_,_loc1_);
            ESP = _loc1_;
            F__ZNSs6appendEPKc();
            _loc1_ = int(_loc1_ + 16);
         }
         else
         {
            while(true)
            {
               _loc35_ = _loc37_ | 4;
               _loc17_ = li32(_loc35_);
               if(_loc17_ <= 9)
               {
                  if(_loc17_ <= 3)
                  {
                     if(_loc17_ <= 1)
                     {
                        if(_loc17_ != 0)
                        {
                           if(_loc17_ != 1)
                           {
                           }
                        }
                        else
                        {
                           addr1181:
                           _loc4_ = li32(_loc49_ - 48);
                           _loc7_ = li32(_loc49_ - 44);
                        }
                        addr1437:
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc33_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSaIcED1Ev();
                        _loc1_ = int(_loc1_ + 16);
                        continue;
                     }
                     if(_loc17_ != 2)
                     {
                        if(_loc17_ != 3)
                        {
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           _loc20_ = li32(_loc49_ - 48);
                           _loc19_ = li32(_loc49_ - 44);
                           _loc47_ = _loc37_ | 4;
                           si32(5,_loc47_);
                           _loc1_ = int(_loc1_ - 16);
                           _loc35_ = int(_loc49_ - 184);
                           si32(_loc35_,_loc1_);
                           ESP = _loc1_;
                           F__ZNSsD1Ev();
                           _loc1_ = int(_loc1_ + 16);
                           si32(4,_loc47_);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc20_,_loc1_);
                           ESP = _loc1_;
                           F__Unwind_SjLj_Resume();
                           _loc1_ = int(_loc1_ + 16);
                        }
                     }
                     _loc4_ = li32(_loc49_ - 48);
                     _loc6_ = li32(_loc49_ - 44);
                     _loc35_ = _loc37_ | 4;
                     si32(24,_loc35_);
                     _loc1_ = int(_loc1_ - 16);
                     _loc35_ = int(_loc49_ - 88);
                     si32(_loc35_,_loc1_);
                     ESP = _loc1_;
                     F__ZNSsD1Ev();
                     _loc1_ = int(_loc1_ + 16);
                     §§goto(addr1437);
                  }
                  else if(_loc17_ <= 5)
                  {
                     if(_loc17_ != 4)
                     {
                        if(_loc17_ == 5)
                        {
                           §§goto(addr1181);
                        }
                     }
                     else
                     {
                        break;
                     }
                  }
                  else
                  {
                     _loc35_ = int(_loc17_ + -6);
                     if(uint(_loc35_) >= 3)
                     {
                        if(_loc17_ == 9)
                        {
                           _loc4_ = li32(_loc49_ - 48);
                           _loc10_ = li32(_loc49_ - 44);
                           _loc35_ = li32(_loc49_ - 72);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc35_,_loc1_);
                           ESP = _loc1_;
                           F__ZdlPv();
                           _loc1_ = int(_loc1_ + 16);
                        }
                     }
                     addr1458:
                     _loc35_ = _loc37_ | 4;
                     si32(25,_loc35_);
                     _loc1_ = int(_loc1_ - 16);
                     _loc35_ = int(_loc49_ - 184);
                     si32(_loc35_,_loc1_);
                     ESP = _loc1_;
                     F__ZNSsD1Ev();
                     _loc1_ = int(_loc1_ + 16);
                     continue;
                  }
                  addr1641:
                  while(true)
                  {
                  }
               }
               else if(_loc17_ <= 13)
               {
                  if(_loc17_ <= 11)
                  {
                     if(_loc17_ != 10)
                     {
                        if(_loc17_ != 11)
                        {
                           §§goto(addr1641);
                        }
                        else
                        {
                           _loc4_ = li32(_loc49_ - 48);
                           _loc12_ = li32(_loc49_ - 44);
                           _loc35_ = li32(_loc49_ - 68);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc35_,_loc1_);
                           ESP = _loc1_;
                           F__ZdlPv();
                           _loc1_ = int(_loc1_ + 16);
                        }
                     }
                     §§goto(addr1458);
                  }
                  else
                  {
                     if(_loc17_ != 12)
                     {
                        if(_loc17_ != 13)
                        {
                           §§goto(addr1641);
                        }
                        else
                        {
                           _loc4_ = li32(_loc49_ - 48);
                           _loc14_ = li32(_loc49_ - 44);
                           _loc35_ = li32(_loc49_ - 64);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc35_,_loc1_);
                           ESP = _loc1_;
                           F__ZdlPv();
                           _loc1_ = int(_loc1_ + 16);
                        }
                     }
                     §§goto(addr1458);
                  }
               }
               else if(_loc17_ <= 15)
               {
                  if(_loc17_ != 14)
                  {
                     if(_loc17_ != 15)
                     {
                        §§goto(addr1641);
                     }
                     else
                     {
                        _loc4_ = li32(_loc49_ - 48);
                        _loc13_ = li32(_loc49_ - 44);
                        _loc35_ = li32(_loc49_ - 60);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc35_,_loc1_);
                        ESP = _loc1_;
                        F__ZdlPv();
                        _loc1_ = int(_loc1_ + 16);
                     }
                  }
                  §§goto(addr1458);
               }
               else
               {
                  _loc35_ = int(_loc17_ + -16);
                  if(uint(_loc35_) >= 7)
                  {
                     if(_loc17_ != 23)
                     {
                        if(_loc17_ != 24)
                        {
                           §§goto(addr1641);
                        }
                        else
                        {
                           _loc16_ = li32(_loc49_ - 48);
                           _loc15_ = li32(_loc49_ - 44);
                           ESP = _loc1_;
                           F__ZSt9terminatev();
                           §§goto(addr1437);
                        }
                     }
                     else
                     {
                        _loc9_ = li32(_loc49_ - 48);
                        _loc8_ = li32(_loc49_ - 44);
                        ESP = _loc1_;
                        F__ZSt9terminatev();
                     }
                  }
               }
               _loc4_ = li32(_loc49_ - 48);
               _loc11_ = li32(_loc49_ - 44);
               §§goto(addr1458);
            }
            _loc22_ = li32(_loc49_ - 48);
            _loc21_ = li32(_loc49_ - 44);
            ESP = _loc1_;
            F__ZSt9terminatev();
         }
         si32(6,_loc41_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc43_,_loc1_);
         ESP = _loc1_;
         F__ZNSsD1Ev();
         _loc1_ = int(_loc1_ + 16);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc33_,_loc1_);
         ESP = _loc1_;
         F__ZNSaIcED1Ev();
         _loc1_ = int(_loc1_ + 16);
         si32(7,_loc41_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc45_,_loc1_);
         ESP = _loc1_;
         F__ZNKSs5c_strEv();
         _loc1_ = int(_loc1_ + 16);
         _loc24_ = eax;
         _loc23_ = li32(_loc49_ + 4);
         si32(8,_loc41_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc30_,_loc1_ + 8);
         si32(_loc24_,_loc1_ + 4);
         si32(_loc23_,_loc1_);
         ESP = _loc1_;
         F_GetItemAsString();
         _loc1_ = int(_loc1_ + 16);
         _loc26_ = eax;
         if(_loc26_ == 84)
         {
            si32(9,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(16,_loc1_);
            ESP = _loc1_;
            F__Znwj();
            _loc1_ = int(_loc1_ + 16);
            _loc25_ = eax;
            si32(_loc25_,_loc49_ - 72);
            _loc28_ = li32(_loc49_ - 72);
            si32(10,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc28_,_loc1_);
            ESP = _loc1_;
            F__ZN9CListDataC1Ev();
            _loc1_ = int(_loc1_ + 16);
            _loc27_ = li32(_loc49_ - 72);
            si32(11,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(16,_loc1_);
            ESP = _loc1_;
            F__Znwj();
            _loc1_ = int(_loc1_ + 16);
            _loc29_ = eax;
            si32(_loc29_,_loc49_ - 68);
            _loc34_ = li32(_loc49_ - 68);
            si32(12,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc34_,_loc1_);
            ESP = _loc1_;
            F__ZN9CListDataC1Ev();
            _loc1_ = int(_loc1_ + 16);
            _loc31_ = li32(_loc49_ - 68);
            si32(13,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(16,_loc1_);
            ESP = _loc1_;
            F__Znwj();
            _loc1_ = int(_loc1_ + 16);
            _loc32_ = eax;
            si32(_loc32_,_loc49_ - 64);
            _loc38_ = li32(_loc49_ - 64);
            si32(14,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc38_,_loc1_);
            ESP = _loc1_;
            F__ZN9CListDataC1Ev();
            _loc1_ = int(_loc1_ + 16);
            _loc36_ = li32(_loc49_ - 64);
            si32(15,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(16,_loc1_);
            ESP = _loc1_;
            F__Znwj();
            _loc1_ = int(_loc1_ + 16);
            _loc42_ = eax;
            si32(_loc42_,_loc49_ - 60);
            _loc40_ = li32(_loc49_ - 60);
            si32(16,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc40_,_loc1_);
            ESP = _loc1_;
            F__ZN9CListDataC1Ev();
            _loc1_ = int(_loc1_ + 16);
            _loc46_ = li32(_loc49_ - 60);
            _loc44_ = li32(_loc49_ - 64);
            _loc35_ = li32(_loc44_);
            _loc48_ = li32(_loc35_ + 8);
            si32(17,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(84,_loc1_ + 8);
            si32(_loc30_,_loc1_ + 4);
            si32(_loc36_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc48_]();
            _loc1_ = int(_loc1_ + 16);
            si32(18,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc36_,_loc1_ + 4);
            si32(_loc46_,_loc1_);
            ESP = _loc1_;
            F__ZN10IDataCache10hex_to_binEPS_PKS_();
            _loc1_ = int(_loc1_ + 16);
            si32(19,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc27_,_loc1_ + 4);
            si32(_loc46_,_loc1_);
            ESP = _loc1_;
            F__Z15HashCodeUnpackCP10IDataCacheS0_();
            _loc1_ = int(_loc1_ + 16);
            si32(20,_loc41_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc27_,_loc1_ + 4);
            si32(_loc31_,_loc1_);
            ESP = _loc1_;
            F__ZN10IDataCache10bin_to_hexEPS_PKS_();
            _loc1_ = int(_loc1_ + 16);
            _loc35_ = li32(_loc49_ - 64);
            if(_loc35_ != 0)
            {
               _loc35_ = li32(_loc44_);
               _loc3_ = li32(_loc35_ + 4);
               si32(21,_loc41_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc36_,_loc1_);
               ESP = _loc1_;
               ptr2fun[_loc3_]();
               _loc1_ = int(_loc1_ + 16);
            }
            _loc35_ = li32(_loc49_ - 60);
            if(_loc35_ != 0)
            {
               _loc35_ = li32(_loc49_ - 60);
               _loc35_ = li32(_loc35_);
               _loc2_ = li32(_loc35_ + 4);
               si32(22,_loc41_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc46_,_loc1_);
               ESP = _loc1_;
               ptr2fun[_loc2_]();
               _loc1_ = int(_loc1_ + 16);
            }
            _loc35_ = li32(_loc49_ - 72);
            if(_loc35_ != 0)
            {
               _loc35_ = li32(_loc49_ - 72);
               _loc35_ = li32(_loc35_);
               _loc5_ = li32(_loc35_ + 4);
               si32(23,_loc41_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc27_,_loc1_);
               ESP = _loc1_;
               ptr2fun[_loc5_]();
               _loc1_ = int(_loc1_ + 16);
            }
         }
         si32(-1,_loc41_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc45_,_loc1_);
         ESP = _loc1_;
         F__ZNSsD1Ev();
         _loc1_ = int(_loc1_ + 16);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc37_,_loc1_);
         ESP = _loc1_;
         F__Unwind_SjLj_Unregister();
         _loc1_ = int(_loc1_ + 16);
         eax = _loc31_;
         _loc1_ = _loc49_;
         ESP = _loc1_;
         return;
      }
   }
}
