package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccf8iwcn_2E_o_3A_97b2014d_2D_8ddb_2D_4d42_2D_b61d_2D_986fcc55eb9e.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   
   public function F__ZN12CDataProcess14ParseSetupDataEPKh() : void
   {
      var _loc46_:* = 0;
      var _loc47_:int = 0;
      var _loc35_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:* = 0;
      var _loc14_:int = 0;
      var _loc18_:int = 0;
      var _loc21_:int = 0;
      var _loc23_:* = 0;
      var _loc30_:* = 0;
      var _loc5_:* = 0;
      var _loc25_:int = 0;
      var _loc29_:int = 0;
      var _loc34_:int = 0;
      var _loc36_:int = 0;
      var _loc31_:* = 0;
      var _loc38_:* = 0;
      var _loc40_:int = 0;
      var _loc42_:int = 0;
      var _loc4_:* = 0;
      var _loc44_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc15_:* = 0;
      var _loc13_:* = 0;
      var _loc19_:* = 0;
      var _loc9_:* = 0;
      var _loc16_:int = 0;
      var _loc20_:* = 0;
      var _loc22_:* = 0;
      var _loc28_:* = 0;
      var _loc33_:* = 0;
      var _loc39_:* = 0;
      var _loc37_:* = 0;
      var _loc43_:int = 0;
      var _loc41_:* = 0;
      var _loc45_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc7_:* = 0;
      var _loc17_:* = 0;
      var _loc26_:* = 0;
      var _loc24_:* = 0;
      var _loc32_:* = 0;
      var _loc27_:int = 0;
      var _loc11_:* = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc47_)
         {
            _loc46_ = _loc1_;
            _loc1_ = int(_loc1_ - 320);
            _loc1_ = int(_loc1_ - 16);
            si32(149,_loc1_ + 8);
            _loc25_ = _loc46_ - 221;
            si32(_loc25_,_loc1_);
            _loc27_ = 0;
            si32(_loc27_,_loc1_ + 4);
            ESP = _loc1_;
            Fmemset();
            _loc1_ = int(_loc1_ + 16);
            _loc1_ = int(_loc1_ - 16);
            _loc29_ = _loc46_ - 64;
            si32(_loc29_,_loc1_);
            ESP = _loc1_;
            F__ZNSaIcEC1Ev();
            _loc1_ = int(_loc1_ + 16);
            si32(L_LSDA_8,_loc46_ - 28);
            si32(___gxx_personality_sj0,_loc46_ - 32);
            _loc32_ = _loc46_;
            si32(_loc32_,_loc46_ - 24);
            _loc32_ = _loc1_;
            si32(_loc32_,_loc46_ - 16);
            _loc34_ = _loc46_ - 56;
            _loc36_ = _loc34_ + 32;
            eax = setjmp(_loc36_,1,_loc1_);
         }
         else if(int(_loc47_) - 1)
         {
            throw "bad longjmp";
         }
         _loc32_ = int(eax);
         if(_loc32_ == 0)
         {
            _loc1_ = int(_loc1_ - 16);
            si32(_loc34_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            _loc38_ = _loc34_ | 4;
            si32(1,_loc38_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc29_,_loc1_ + 8);
            si32(L__2E_str3,_loc1_ + 4);
            _loc40_ = _loc46_ - 72;
            si32(_loc40_,_loc1_);
            ESP = _loc1_;
            F__ZNSsC1EPKcRKSaIcE();
            _loc1_ = int(_loc1_ + 16);
            si32(2,_loc38_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc40_,_loc1_ + 4);
            _loc42_ = _loc46_ - 232;
            si32(_loc42_,_loc1_);
            ESP = _loc1_;
            F__ZNSsC1ERKSs();
            _loc1_ = int(_loc1_ + 16);
            si32(3,_loc38_);
            _loc1_ = int(_loc1_ - 16);
            si32(L__2E_str2,_loc1_ + 4);
            si32(_loc42_,_loc1_);
            ESP = _loc1_;
            F__ZNSs6appendEPKc();
            _loc1_ = int(_loc1_ + 16);
         }
         else
         {
            while(true)
            {
               _loc32_ = _loc34_ | 4;
               _loc31_ = li32(_loc32_);
               if(_loc31_ <= 4)
               {
                  if(_loc31_ <= 1)
                  {
                     if(_loc31_ != 0)
                     {
                        if(_loc31_ != 1)
                        {
                        }
                     }
                     else
                     {
                        addr1195:
                        _loc11_ = li32(_loc46_ - 48);
                        _loc9_ = li32(_loc46_ - 44);
                     }
                     addr1340:
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc29_,_loc1_);
                     ESP = _loc1_;
                     F__ZNSaIcED1Ev();
                     _loc1_ = int(_loc1_ + 16);
                     continue;
                  }
                  if(_loc31_ != 2)
                  {
                     if(_loc31_ != 3)
                     {
                        if(_loc31_ == 4)
                        {
                           _loc10_ = li32(_loc46_ - 48);
                           _loc8_ = li32(_loc46_ - 44);
                           ESP = _loc1_;
                           F__ZSt9terminatev();
                        }
                     }
                  }
                  else
                  {
                     break;
                  }
                  _loc11_ = li32(_loc46_ - 48);
                  _loc15_ = li32(_loc46_ - 44);
                  _loc32_ = _loc34_ | 4;
                  si32(19,_loc32_);
                  _loc1_ = int(_loc1_ - 16);
                  _loc32_ = int(_loc46_ - 72);
                  si32(_loc32_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSsD1Ev();
                  _loc1_ = int(_loc1_ + 16);
                  §§goto(addr1340);
               }
               else
               {
                  if(_loc31_ <= 9)
                  {
                     if(_loc31_ != 5)
                     {
                        _loc32_ = int(_loc31_ + -6);
                        if(uint(_loc32_) >= 3)
                        {
                           if(_loc31_ == 9)
                           {
                              _loc11_ = li32(_loc46_ - 48);
                              _loc22_ = li32(_loc46_ - 44);
                              _loc32_ = li32(_loc46_ - 60);
                              _loc1_ = int(_loc1_ - 16);
                              si32(_loc32_,_loc1_);
                              ESP = _loc1_;
                              F__ZdlPv();
                              _loc1_ = int(_loc1_ + 16);
                           }
                        }
                        addr1361:
                        _loc32_ = _loc34_ | 4;
                        si32(20,_loc32_);
                        _loc1_ = int(_loc1_ - 16);
                        _loc32_ = int(_loc46_ - 232);
                        si32(_loc32_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSsD1Ev();
                        _loc1_ = int(_loc1_ + 16);
                        continue;
                     }
                     §§goto(addr1195);
                  }
                  else
                  {
                     _loc32_ = int(_loc31_ + -10);
                     if(uint(_loc32_) >= 8)
                     {
                        if(_loc31_ != 18)
                        {
                           if(_loc31_ == 19)
                           {
                              _loc26_ = li32(_loc46_ - 48);
                              _loc24_ = li32(_loc46_ - 44);
                              ESP = _loc1_;
                              F__ZSt9terminatev();
                              §§goto(addr1340);
                           }
                        }
                        else
                        {
                           _loc13_ = li32(_loc46_ - 48);
                           _loc19_ = li32(_loc46_ - 44);
                           ESP = _loc1_;
                           F__ZSt9terminatev();
                        }
                     }
                  }
                  _loc11_ = li32(_loc46_ - 48);
                  _loc17_ = li32(_loc46_ - 44);
                  §§goto(addr1361);
               }
               while(true)
               {
               }
            }
            while(true)
            {
               _loc6_ = li32(_loc46_ - 48);
               _loc4_ = li32(_loc46_ - 44);
               _loc44_ = _loc34_ | 4;
               si32(5,_loc44_);
               _loc1_ = int(_loc1_ - 16);
               _loc32_ = int(_loc46_ - 232);
               si32(_loc32_,_loc1_);
               ESP = _loc1_;
               F__ZNSsD1Ev();
               _loc1_ = int(_loc1_ + 16);
               si32(4,_loc44_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc6_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Resume();
               _loc1_ = int(_loc1_ + 16);
            }
         }
         si32(6,_loc38_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc40_,_loc1_);
         ESP = _loc1_;
         F__ZNSsD1Ev();
         _loc1_ = int(_loc1_ + 16);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc29_,_loc1_);
         ESP = _loc1_;
         F__ZNSaIcED1Ev();
         _loc1_ = int(_loc1_ + 16);
         si32(7,_loc38_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc42_,_loc1_);
         ESP = _loc1_;
         F__ZNKSs5c_strEv();
         _loc1_ = int(_loc1_ + 16);
         _loc14_ = eax;
         _loc12_ = li32(_loc46_ + 4);
         si32(8,_loc38_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc25_,_loc1_ + 8);
         si32(_loc14_,_loc1_ + 4);
         si32(_loc12_,_loc1_);
         ESP = _loc1_;
         F_GetItemAsString();
         _loc1_ = int(_loc1_ + 16);
         _loc18_ = eax;
         if(_loc18_ == 148)
         {
            _loc1_ = int(_loc1_ - 16);
            si32(36,_loc1_ + 8);
            si32(0,_loc1_ + 4);
            _loc16_ = _loc46_ - 268;
            si32(_loc16_,_loc1_);
            ESP = _loc1_;
            Fmemset();
            _loc1_ = int(_loc1_ + 16);
            si32(9,_loc38_);
            _loc1_ = int(_loc1_ - 16);
            si32(16,_loc1_);
            ESP = _loc1_;
            F__Znwj();
            _loc1_ = int(_loc1_ + 16);
            _loc21_ = eax;
            si32(_loc21_,_loc46_ - 60);
            _loc20_ = li32(_loc46_ - 60);
            si32(10,_loc38_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc20_,_loc1_);
            ESP = _loc1_;
            F__ZN9CListDataC1Ev();
            _loc1_ = int(_loc1_ + 16);
            _loc23_ = li32(_loc46_ - 60);
            _loc30_ = li32(_loc46_ - 60);
            _loc32_ = li32(_loc30_);
            _loc28_ = li32(_loc32_ + 8);
            si32(11,_loc38_);
            _loc1_ = int(_loc1_ - 16);
            si32(148,_loc1_ + 8);
            si32(_loc25_,_loc1_ + 4);
            si32(_loc23_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc28_]();
            _loc1_ = int(_loc1_ + 16);
            _loc35_ = li32(_loc46_);
            si16(0,_loc46_ - 270);
            si16(0,_loc46_ - 272);
            si16(0,_loc46_ - 274);
            si32(0,_loc46_ - 280);
            si32(0,_loc46_ - 284);
            _loc32_ = li32(_loc35_ + 4);
            _loc33_ = li32(_loc32_);
            _loc32_ = li32(_loc33_);
            _loc39_ = li32(_loc32_ + 16);
            si32(12,_loc38_);
            _loc1_ = int(_loc1_ - 16);
            _loc32_ = int(_loc46_ - 280);
            si32(_loc32_,_loc1_ + 8);
            _loc32_ = int(_loc46_ - 284);
            si32(_loc32_,_loc1_ + 4);
            si32(_loc33_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc39_]();
            _loc1_ = int(_loc1_ + 16);
            si32(0,_loc46_ - 288);
            si32(0,_loc46_ - 292);
            si32(0,_loc46_ - 296);
            si32(0,_loc46_ - 300);
            si32(0,_loc46_ - 304);
            si32(0,_loc46_ - 308);
            si32(0,_loc46_ - 312);
            si32(0,_loc46_ - 316);
            _loc37_ = li32(_loc46_ - 284);
            si32(13,_loc38_);
            _loc1_ = int(_loc1_ - 32);
            si32(_loc23_,_loc1_ + 28);
            _loc32_ = int(_loc46_ - 274);
            si32(_loc32_,_loc1_ + 24);
            _loc32_ = int(_loc46_ - 272);
            si32(_loc32_,_loc1_ + 20);
            _loc32_ = int(_loc46_ - 270);
            si32(_loc32_,_loc1_ + 16);
            si32(_loc37_,_loc1_ + 12);
            _loc32_ = int(_loc46_ - 316);
            si32(_loc32_,_loc1_ + 8);
            si32(_loc16_,_loc1_ + 4);
            si32(_loc43_,_loc1_);
            ESP = _loc1_;
            F__ZN12CDataProcess10unpackDataEPhS0_S0_PtS1_S1_PK10IDataCache();
            _loc1_ = int(_loc1_ + 32);
            _loc41_ = li32(_loc35_ + 4);
            si32(14,_loc38_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc41_,_loc1_);
            ESP = _loc1_;
            F__ZN5C4Key16InitialSecretKeyEv();
            _loc1_ = int(_loc1_ + 16);
            _loc45_ = li32(_loc35_ + 4);
            si32(15,_loc38_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc45_,_loc1_);
            ESP = _loc1_;
            F__ZN5C4Key15CreatePublicKeyEv();
            _loc1_ = int(_loc1_ + 16);
            _loc3_ = li32(_loc35_ + 4);
            si32(16,_loc38_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc16_,_loc1_ + 4);
            si32(_loc3_,_loc1_);
            ESP = _loc1_;
            F__ZN5C4Key18SetServerPublicKeyEPKh();
            _loc1_ = int(_loc1_ + 16);
            _loc2_ = li32(_loc35_ + 4);
            si32(17,_loc38_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc2_,_loc1_);
            ESP = _loc1_;
            F__ZN5C4Key15CreateSharedKeyEv();
            _loc1_ = int(_loc1_ + 16);
            _loc32_ = li32(_loc46_ - 60);
            if(_loc32_ != 0)
            {
               _loc32_ = li32(_loc30_);
               _loc7_ = li32(_loc32_ + 4);
               si32(18,_loc38_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc23_,_loc1_);
               ESP = _loc1_;
               ptr2fun[_loc7_]();
               _loc1_ = int(_loc1_ + 16);
            }
            _loc5_ = li32(_loc46_ - 284);
            _loc27_ = 1;
            if(_loc5_ != 0)
            {
               _loc1_ = int(_loc1_ - 16);
               si32(_loc5_,_loc1_);
               ESP = _loc1_;
               F__ZdaPv();
               _loc1_ = int(_loc1_ + 16);
               si32(0,_loc46_ - 284);
               _loc27_ = 1;
            }
         }
         si32(-1,_loc38_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc42_,_loc1_);
         ESP = _loc1_;
         F__ZNSsD1Ev();
         _loc1_ = int(_loc1_ + 16);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc34_,_loc1_);
         ESP = _loc1_;
         F__Unwind_SjLj_Unregister();
         _loc1_ = int(_loc1_ + 16);
         eax = _loc27_;
         _loc1_ = _loc46_;
         ESP = _loc1_;
         return;
      }
   }
}
