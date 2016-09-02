package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccf8iwcn_2E_o_3A_97b2014d_2D_8ddb_2D_4d42_2D_b61d_2D_986fcc55eb9e.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   
   public function F__ZN12CDataProcess15ParseVerifyDataEPKh() : void
   {
      var _loc42_:* = 0;
      var _loc43_:int = 0;
      var _loc25_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:* = 0;
      var _loc14_:int = 0;
      var _loc18_:int = 0;
      var _loc16_:int = 0;
      var _loc20_:* = 0;
      var _loc22_:* = 0;
      var _loc41_:* = 0;
      var _loc23_:int = 0;
      var _loc26_:int = 0;
      var _loc28_:int = 0;
      var _loc30_:int = 0;
      var _loc32_:int = 0;
      var _loc17_:* = 0;
      var _loc34_:* = 0;
      var _loc36_:int = 0;
      var _loc38_:int = 0;
      var _loc4_:* = 0;
      var _loc40_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = 0;
      var _loc21_:* = 0;
      var _loc15_:* = 0;
      var _loc27_:* = 0;
      var _loc31_:* = 0;
      var _loc29_:* = 0;
      var _loc24_:* = 0;
      var _loc35_:* = 0;
      var _loc33_:int = 0;
      var _loc39_:* = 0;
      var _loc37_:* = 0;
      var _loc9_:* = 0;
      var _loc13_:* = 0;
      var _loc19_:* = 0;
      var _loc3_:* = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc43_)
         {
            _loc42_ = _loc1_;
            _loc1_ = int(_loc1_ - 576);
            _loc1_ = int(_loc1_ - 16);
            si32(37,_loc1_ + 8);
            si32(0,_loc1_ + 4);
            _loc23_ = _loc42_ - 109;
            si32(_loc23_,_loc1_);
            ESP = _loc1_;
            Fmemset();
            _loc1_ = int(_loc1_ + 16);
            _loc1_ = int(_loc1_ - 16);
            si32(256,_loc1_ + 8);
            si32(0,_loc1_ + 4);
            _loc24_ = int(_loc42_ - 365);
            si32(_loc24_,_loc1_);
            ESP = _loc1_;
            Fmemset();
            _loc1_ = int(_loc1_ + 16);
            _loc1_ = int(_loc1_ - 16);
            si32(149,_loc1_ + 8);
            si32(0,_loc1_ + 4);
            _loc26_ = _loc42_ - 514;
            si32(_loc26_,_loc1_);
            ESP = _loc1_;
            Fmemset();
            _loc1_ = int(_loc1_ + 16);
            _loc1_ = int(_loc1_ - 16);
            _loc28_ = _loc42_ - 64;
            si32(_loc28_,_loc1_);
            ESP = _loc1_;
            F__ZNSaIcEC1Ev();
            _loc1_ = int(_loc1_ + 16);
            si32(L_LSDA_7,_loc42_ - 28);
            si32(___gxx_personality_sj0,_loc42_ - 32);
            _loc24_ = _loc42_;
            si32(_loc24_,_loc42_ - 24);
            _loc24_ = _loc1_;
            si32(_loc24_,_loc42_ - 16);
            _loc30_ = _loc42_ - 56;
            _loc32_ = _loc30_ + 32;
            eax = setjmp(_loc32_,1,_loc1_);
         }
         else if(int(_loc43_) - 1)
         {
            throw "bad longjmp";
         }
         _loc24_ = int(eax);
         if(_loc24_ == 0)
         {
            _loc1_ = int(_loc1_ - 16);
            si32(_loc30_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            _loc34_ = _loc30_ | 4;
            si32(1,_loc34_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc28_,_loc1_ + 8);
            si32(L__2E_str1,_loc1_ + 4);
            _loc36_ = _loc42_ - 72;
            si32(_loc36_,_loc1_);
            ESP = _loc1_;
            F__ZNSsC1EPKcRKSaIcE();
            _loc1_ = int(_loc1_ + 16);
            si32(2,_loc34_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc36_,_loc1_ + 4);
            _loc38_ = _loc42_ - 520;
            si32(_loc38_,_loc1_);
            ESP = _loc1_;
            F__ZNSsC1ERKSs();
            _loc1_ = int(_loc1_ + 16);
            si32(3,_loc34_);
            _loc1_ = int(_loc1_ - 16);
            si32(L__2E_str2,_loc1_ + 4);
            si32(_loc38_,_loc1_);
            ESP = _loc1_;
            F__ZNSs6appendEPKc();
            _loc1_ = int(_loc1_ + 16);
         }
         else
         {
            while(true)
            {
               _loc24_ = _loc30_ | 4;
               _loc17_ = li32(_loc24_);
               if(_loc17_ <= 4)
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
                        addr1123:
                        _loc3_ = li32(_loc42_ - 48);
                        _loc2_ = li32(_loc42_ - 44);
                     }
                     addr1268:
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc28_,_loc1_);
                     ESP = _loc1_;
                     F__ZNSaIcED1Ev();
                     _loc1_ = int(_loc1_ + 16);
                     continue;
                  }
                  if(_loc17_ != 2)
                  {
                     if(_loc17_ != 3)
                     {
                        if(_loc17_ == 4)
                        {
                           _loc10_ = li32(_loc42_ - 48);
                           _loc8_ = li32(_loc42_ - 44);
                           ESP = _loc1_;
                           F__ZSt9terminatev();
                        }
                     }
                  }
                  else
                  {
                     break;
                  }
                  _loc3_ = li32(_loc42_ - 48);
                  _loc7_ = li32(_loc42_ - 44);
                  _loc24_ = _loc30_ | 4;
                  si32(16,_loc24_);
                  _loc1_ = int(_loc1_ - 16);
                  _loc24_ = int(_loc42_ - 72);
                  si32(_loc24_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSsD1Ev();
                  _loc1_ = int(_loc1_ + 16);
                  §§goto(addr1268);
               }
               else
               {
                  if(_loc17_ <= 9)
                  {
                     if(_loc17_ != 5)
                     {
                        _loc24_ = int(_loc17_ + -6);
                        if(uint(_loc24_) >= 3)
                        {
                           if(_loc17_ == 9)
                           {
                              _loc3_ = li32(_loc42_ - 48);
                              _loc15_ = li32(_loc42_ - 44);
                              _loc24_ = li32(_loc42_ - 60);
                              _loc1_ = int(_loc1_ - 16);
                              si32(_loc24_,_loc1_);
                              ESP = _loc1_;
                              F__ZdlPv();
                              _loc1_ = int(_loc1_ + 16);
                           }
                        }
                        addr1289:
                        _loc24_ = _loc30_ | 4;
                        si32(17,_loc24_);
                        _loc1_ = int(_loc1_ - 16);
                        _loc24_ = int(_loc42_ - 520);
                        si32(_loc24_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSsD1Ev();
                        _loc1_ = int(_loc1_ + 16);
                        continue;
                     }
                     §§goto(addr1123);
                  }
                  else
                  {
                     _loc24_ = int(_loc17_ + -10);
                     if(uint(_loc24_) >= 5)
                     {
                        if(_loc17_ != 15)
                        {
                           if(_loc17_ == 16)
                           {
                              _loc13_ = li32(_loc42_ - 48);
                              _loc19_ = li32(_loc42_ - 44);
                              ESP = _loc1_;
                              F__ZSt9terminatev();
                              §§goto(addr1268);
                           }
                        }
                        else
                        {
                           _loc5_ = li32(_loc42_ - 48);
                           _loc11_ = li32(_loc42_ - 44);
                           ESP = _loc1_;
                           F__ZSt9terminatev();
                        }
                     }
                  }
                  _loc3_ = li32(_loc42_ - 48);
                  _loc9_ = li32(_loc42_ - 44);
                  §§goto(addr1289);
               }
               while(true)
               {
               }
            }
            while(true)
            {
               _loc6_ = li32(_loc42_ - 48);
               _loc4_ = li32(_loc42_ - 44);
               _loc40_ = _loc30_ | 4;
               si32(5,_loc40_);
               _loc1_ = int(_loc1_ - 16);
               _loc24_ = int(_loc42_ - 520);
               si32(_loc24_,_loc1_);
               ESP = _loc1_;
               F__ZNSsD1Ev();
               _loc1_ = int(_loc1_ + 16);
               si32(4,_loc40_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc6_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Resume();
               _loc1_ = int(_loc1_ + 16);
            }
         }
         si32(6,_loc34_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc36_,_loc1_);
         ESP = _loc1_;
         F__ZNSsD1Ev();
         _loc1_ = int(_loc1_ + 16);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc28_,_loc1_);
         ESP = _loc1_;
         F__ZNSaIcED1Ev();
         _loc1_ = int(_loc1_ + 16);
         si32(7,_loc34_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc38_,_loc1_);
         ESP = _loc1_;
         F__ZNKSs5c_strEv();
         _loc1_ = int(_loc1_ + 16);
         _loc14_ = eax;
         _loc12_ = li32(_loc42_ + 4);
         si32(8,_loc34_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc26_,_loc1_ + 8);
         si32(_loc14_,_loc1_ + 4);
         si32(_loc12_,_loc1_);
         ESP = _loc1_;
         F_GetItemAsString();
         _loc1_ = int(_loc1_ + 16);
         _loc18_ = eax;
         si32(9,_loc34_);
         _loc1_ = int(_loc1_ - 16);
         si32(16,_loc1_);
         ESP = _loc1_;
         F__Znwj();
         _loc1_ = int(_loc1_ + 16);
         _loc16_ = eax;
         si32(_loc16_,_loc42_ - 60);
         _loc21_ = li32(_loc42_ - 60);
         si32(10,_loc34_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc21_,_loc1_);
         ESP = _loc1_;
         F__ZN9CListDataC1Ev();
         _loc1_ = int(_loc1_ + 16);
         _loc20_ = li32(_loc42_ - 60);
         _loc22_ = li32(_loc42_ - 60);
         _loc24_ = li32(_loc22_);
         _loc27_ = li32(_loc24_ + 8);
         si32(11,_loc34_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc18_,_loc1_ + 8);
         si32(_loc26_,_loc1_ + 4);
         si32(_loc20_,_loc1_);
         ESP = _loc1_;
         ptr2fun[_loc27_]();
         _loc1_ = int(_loc1_ + 16);
         _loc25_ = li32(_loc42_);
         si16(0,_loc42_ - 522);
         si16(0,_loc42_ - 524);
         si16(0,_loc42_ - 526);
         si32(0,_loc42_ - 532);
         si32(0,_loc42_ - 536);
         _loc24_ = li32(_loc25_ + 4);
         _loc31_ = li32(_loc24_ + 16);
         _loc24_ = li32(_loc31_);
         _loc29_ = li32(_loc24_ + 16);
         si32(12,_loc34_);
         _loc1_ = int(_loc1_ - 16);
         _loc24_ = int(_loc42_ - 536);
         si32(_loc24_,_loc1_ + 8);
         _loc24_ = int(_loc42_ - 532);
         si32(_loc24_,_loc1_ + 4);
         si32(_loc31_,_loc1_);
         ESP = _loc1_;
         ptr2fun[_loc29_]();
         _loc1_ = int(_loc1_ + 16);
         si32(0,_loc42_ - 540);
         si32(0,_loc42_ - 544);
         si32(0,_loc42_ - 548);
         si32(0,_loc42_ - 552);
         si32(0,_loc42_ - 556);
         si32(0,_loc42_ - 560);
         si32(0,_loc42_ - 564);
         si32(0,_loc42_ - 568);
         _loc35_ = li32(_loc42_ - 532);
         si32(13,_loc34_);
         _loc1_ = int(_loc1_ - 32);
         si32(_loc20_,_loc1_ + 28);
         _loc24_ = int(_loc42_ - 526);
         si32(_loc24_,_loc1_ + 24);
         _loc24_ = int(_loc42_ - 524);
         si32(_loc24_,_loc1_ + 20);
         _loc24_ = int(_loc42_ - 522);
         si32(_loc24_,_loc1_ + 16);
         si32(_loc35_,_loc1_ + 12);
         _loc24_ = int(_loc42_ - 568);
         si32(_loc24_,_loc1_ + 8);
         si32(_loc23_,_loc1_ + 4);
         si32(_loc33_,_loc1_);
         ESP = _loc1_;
         F__ZN12CDataProcess10unpackDataEPhS0_S0_PtS1_S1_PK10IDataCache();
         _loc1_ = int(_loc1_ + 32);
         _loc39_ = li32(_loc25_ + 4);
         si32(14,_loc34_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc23_,_loc1_ + 4);
         si32(_loc39_,_loc1_);
         ESP = _loc1_;
         F__ZN5C4Key13SetVerifyDataEPKh();
         _loc1_ = int(_loc1_ + 16);
         _loc24_ = li32(_loc42_ - 60);
         if(_loc24_ != 0)
         {
            _loc24_ = li32(_loc22_);
            _loc37_ = li32(_loc24_ + 4);
            si32(15,_loc34_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc20_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc37_]();
            _loc1_ = int(_loc1_ + 16);
         }
         _loc41_ = li32(_loc42_ - 532);
         if(_loc41_ != 0)
         {
            _loc1_ = int(_loc1_ - 16);
            si32(_loc41_,_loc1_);
            ESP = _loc1_;
            F__ZdaPv();
            _loc1_ = int(_loc1_ + 16);
            si32(0,_loc42_ - 532);
         }
         si32(-1,_loc34_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc38_,_loc1_);
         ESP = _loc1_;
         F__ZNSsD1Ev();
         _loc1_ = int(_loc1_ + 16);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc30_,_loc1_);
         ESP = _loc1_;
         F__Unwind_SjLj_Unregister();
         _loc1_ = int(_loc1_ + 16);
         eax = 1;
         _loc1_ = _loc42_;
         ESP = _loc1_;
         return;
      }
   }
}
