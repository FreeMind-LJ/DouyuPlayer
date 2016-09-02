package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKgiH7b_2E_o_3A_ec56f713_2D_06a1_2D_4be7_2D_88a0_2D_e6cc830d9279.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZN11CMapMapData9CacheDataEPKhi() : void
   {
      var _loc34_:* = 0;
      var _loc35_:int = 0;
      var _loc5_:* = 0;
      var _loc24_:* = 0;
      var _loc18_:* = 0;
      var _loc30_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:int = 0;
      var _loc12_:* = 0;
      var _loc17_:int = 0;
      var _loc23_:int = 0;
      var _loc21_:* = 0;
      var _loc31_:* = 0;
      var _loc29_:* = 0;
      var _loc9_:int = 0;
      var _loc26_:int = 0;
      var _loc28_:int = 0;
      var _loc4_:int = 0;
      var _loc8_:* = 0;
      var _loc14_:int = 0;
      var _loc19_:* = 0;
      var _loc15_:* = 0;
      var _loc33_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc20_:* = 0;
      var _loc22_:* = 0;
      var _loc16_:int = 0;
      var _loc13_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc25_:* = 0;
      var _loc27_:* = 0;
      var _loc32_:int = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc35_)
         {
            _loc34_ = _loc1_;
            _loc1_ = int(_loc1_ - 112);
            si32(L_LSDA_10,_loc34_ - 28);
            si32(___gxx_personality_sj0,_loc34_ - 32);
            _loc15_ = _loc34_;
            si32(_loc15_,_loc34_ - 24);
            _loc15_ = _loc1_;
            si32(_loc15_,_loc34_ - 16);
            _loc16_ = 1;
            _loc18_ = li32(_loc34_ + 8);
            _loc20_ = _loc16_;
            if(_loc18_ <= 35436)
            {
               _loc20_ = 0;
            }
            _loc22_ = _loc16_;
            if(_loc18_ != 0)
            {
               _loc22_ = 0;
            }
            _loc24_ = li32(_loc34_ + 4);
            if(_loc24_ != 0)
            {
               _loc16_ = 0;
            }
            _loc26_ = _loc34_ - 56;
            _loc28_ = _loc26_ + 32;
            eax = setjmp(_loc28_,1,_loc1_);
         }
         else if(int(_loc35_) - 1)
         {
            throw "bad longjmp";
         }
         _loc15_ = int(eax);
         if(_loc15_ == 0)
         {
            _loc15_ = _loc16_ | _loc22_;
            _loc30_ = _loc15_ | _loc20_;
            _loc1_ = int(_loc1_ - 16);
            si32(_loc26_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            _loc32_ = 0;
            if(_loc30_ == 0)
            {
               _loc5_ = li32(_loc34_);
               _loc4_ = _loc34_ - 104;
               _loc15_ = int(_loc4_ + 8);
               si32(_loc15_,_loc34_ - 64);
               si32(_loc4_,_loc34_ - 60);
               _loc7_ = _loc5_ + 4;
               _loc6_ = _loc4_ | 4;
               _loc32_ = 1;
               _loc9_ = 0;
               addr817:
               while(_loc9_ < _loc18_)
               {
                  _loc15_ = li32(_loc5_ + 28);
                  _loc8_ = _loc26_ | 4;
                  si32(-1,_loc8_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc15_,_loc1_);
                  ESP = _loc1_;
                  F__ZN11CCommonFunc6AphashEj();
                  _loc1_ = int(_loc1_ + 16);
                  _loc15_ = int(eax);
                  si32(_loc15_,_loc5_ + 28);
                  _loc15_ = li32(_loc5_ + 32);
                  si32(-1,_loc8_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc15_,_loc1_);
                  ESP = _loc1_;
                  F__ZN11CCommonFunc8BKDRHashEj();
                  _loc1_ = int(_loc1_ + 16);
                  _loc15_ = int(eax);
                  si32(_loc15_,_loc5_ + 32);
                  si32(0,_loc6_ + 16);
                  si32(0,_loc6_ + 12);
                  si32(0,_loc6_ + 8);
                  si32(0,_loc6_ + 4);
                  si32(0,_loc6_);
                  si32(_loc6_,_loc34_ - 92);
                  si32(_loc6_,_loc34_ - 88);
                  _loc11_ = li32(_loc5_ + 28);
                  _loc10_ = li32(_loc34_ - 64);
                  _loc13_ = _loc6_;
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        _loc12_ = li32(_loc10_);
                        if(_loc12_ == 0)
                        {
                           break;
                        }
                        _loc15_ = li32(_loc12_ + 16);
                        if(_loc15_ >= _loc11_)
                        {
                           _loc10_ = int(_loc12_ + 8);
                           _loc13_ = _loc12_;
                           continue loop3;
                        }
                        _loc10_ = int(_loc12_ + 12);
                     }
                     if(_loc13_ != _loc6_)
                     {
                        _loc15_ = li32(_loc13_ + 16);
                        if(_loc11_ < _loc15_)
                        {
                        }
                        addr473:
                        _loc15_ = int(_loc24_ + _loc9_);
                        _loc15_ = li8(_loc15_);
                        _loc15_ = _loc11_ ^ _loc15_;
                        si8(_loc15_,_loc13_ + 20);
                        _loc15_ = li32(_loc5_ + 32);
                        si32(_loc15_,_loc34_ - 76);
                        si32(2,_loc8_);
                        _loc1_ = int(_loc1_ - 16);
                        _loc15_ = int(_loc34_ - 76);
                        si32(_loc15_,_loc1_ + 4);
                        si32(_loc7_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSt3mapIiS_IihSt4lessIiESaISt4pairIKihEEES1_SaIS2_IS3_S6_EEEixERS3_();
                        _loc1_ = int(_loc1_ + 16);
                        _loc17_ = eax;
                        if(_loc17_ != _loc4_)
                        {
                           _loc15_ = li32(_loc17_ + 8);
                           _loc1_ = int(_loc1_ - 16);
                           si32(_loc15_,_loc1_ + 4);
                           si32(_loc17_,_loc1_);
                           ESP = _loc1_;
                           F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
                           _loc1_ = int(_loc1_ + 16);
                           _loc23_ = _loc17_ + 4;
                           si32(_loc23_,_loc17_ + 12);
                           si32(0,_loc17_ + 8);
                           si32(_loc23_,_loc17_ + 16);
                           si32(0,_loc17_ + 20);
                           _loc15_ = li32(_loc34_ - 64);
                           _loc21_ = li32(_loc15_);
                           if(_loc21_ != 0)
                           {
                              si32(3,_loc8_);
                              _loc1_ = int(_loc1_ - 16);
                              si32(_loc23_,_loc1_ + 8);
                              si32(_loc21_,_loc1_ + 4);
                              si32(_loc17_,_loc1_);
                              ESP = _loc1_;
                              F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE7_M_copyEPKSt13_Rb_tree_nodeIS2_EPSA_();
                              _loc1_ = int(_loc1_ + 16);
                              _loc27_ = int(eax);
                              si32(_loc27_,_loc17_ + 8);
                              _loc25_ = _loc27_;
                              do
                              {
                                 _loc31_ = _loc25_;
                                 _loc25_ = li32(_loc31_ + 8);
                              }
                              while(_loc25_ != 0);
                              
                              si32(_loc31_,_loc17_ + 12);
                              do
                              {
                                 _loc29_ = _loc27_;
                                 _loc27_ = li32(_loc29_ + 12);
                              }
                              while(_loc27_ != 0);
                              
                              si32(_loc29_,_loc17_ + 16);
                              _loc15_ = li32(_loc34_ - 84);
                              si32(_loc15_,_loc17_ + 20);
                           }
                        }
                     }
                     si32(_loc11_,_loc34_ - 72);
                     _loc14_ = _loc34_ - 72;
                     _loc15_ = _loc14_ | 4;
                     si8(0,_loc15_);
                     _loc19_ = li32(_loc34_ - 60);
                     si32(_loc32_,_loc8_);
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc14_,_loc1_ + 8);
                     si32(_loc13_,_loc1_ + 4);
                     si32(_loc19_,_loc1_);
                     ESP = _loc1_;
                     F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2_();
                     _loc1_ = int(_loc1_ + 16);
                     _loc13_ = int(eax);
                     _loc11_ = li32(_loc5_ + 28);
                     §§goto(addr473);
                  }
               }
            }
            _loc1_ = int(_loc1_ - 16);
            si32(_loc26_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Unregister();
            _loc1_ = int(_loc1_ + 16);
            eax = _loc32_;
            _loc1_ = _loc34_;
            ESP = _loc1_;
            return;
         }
         _loc15_ = _loc26_ | 4;
         _loc15_ = li32(_loc15_);
         if(uint(_loc15_) >= 3)
         {
            while(true)
            {
            }
         }
         else
         {
            _loc33_ = li32(_loc34_ - 48);
            _loc3_ = li32(_loc34_ - 44);
            _loc15_ = li32(_loc34_ - 64);
            _loc15_ = li32(_loc15_);
            _loc2_ = li32(_loc34_ - 60);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc15_,_loc1_ + 4);
            si32(_loc2_,_loc1_);
            ESP = _loc1_;
            F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
            _loc1_ = int(_loc1_ + 16);
            _loc15_ = _loc26_ | 4;
            si32(-1,_loc15_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc33_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Resume();
            _loc1_ = int(_loc1_ + 16);
         }
         while(true)
         {
            _loc15_ = li32(_loc34_ - 64);
            _loc2_ = li32(_loc15_);
            _loc15_ = li32(_loc34_ - 60);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc2_,_loc1_ + 4);
            si32(_loc15_,_loc1_);
            ESP = _loc1_;
            F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
            _loc1_ = int(_loc1_ + 16);
            _loc9_ = _loc9_ + 1;
            §§goto(addr817);
         }
      }
   }
}
