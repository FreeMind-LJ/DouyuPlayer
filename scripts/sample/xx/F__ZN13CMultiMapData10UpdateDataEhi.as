package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccHiFHTa_2E_o_3A_825f17d5_2D_64c2_2D_44fe_2D_86df_2D_62c8e7ad665c.*;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZN13CMultiMapData10UpdateDataEhi() : void
   {
      var _loc51_:* = 0;
      var _loc20_:int = 0;
      var _loc32_:* = 0;
      var _loc43_:* = 0;
      var _loc33_:* = 0;
      var _loc49_:* = 0;
      var _loc21_:* = 0;
      var _loc24_:* = 0;
      var _loc28_:* = 0;
      var _loc27_:* = 0;
      var _loc45_:* = 0;
      var _loc31_:int = 0;
      var _loc40_:* = 0;
      var _loc3_:int = 0;
      var _loc5_:* = 0;
      var _loc11_:int = 0;
      var _loc10_:int = 0;
      var _loc14_:* = 0;
      var _loc12_:* = 0;
      var _loc37_:int = 0;
      var _loc39_:int = 0;
      var _loc19_:* = 0;
      var _loc47_:int = 0;
      var _loc22_:int = 0;
      var _loc30_:* = 0;
      var _loc29_:* = 0;
      var _loc18_:* = 0;
      var _loc13_:* = 0;
      var _loc8_:* = 0;
      var _loc35_:* = 0;
      var _loc50_:* = 0;
      var _loc17_:* = 0;
      var _loc25_:* = 0;
      var _loc26_:* = 0;
      var _loc23_:int = 0;
      var _loc34_:* = 0;
      var _loc36_:* = 0;
      var _loc38_:* = 0;
      var _loc44_:* = 0;
      var _loc48_:int = 0;
      var _loc42_:* = 0;
      var _loc46_:int = 0;
      var _loc4_:* = 0;
      var _loc6_:int = 0;
      var _loc7_:* = 0;
      var _loc9_:int = 0;
      var _loc2_:* = 0;
      var _loc41_:int = 0;
      var _loc16_:* = 0;
      var _loc15_:* = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc20_)
         {
            _loc51_ = _loc1_;
            _loc1_ = int(_loc1_ - 112);
            _loc32_ = li32(_loc51_);
            _loc33_ = li32(_loc32_ + 24);
            si32(L_LSDA_13,_loc51_ - 28);
            si32(___gxx_personality_sj0,_loc51_ - 32);
            _loc35_ = _loc51_;
            si32(_loc35_,_loc51_ - 24);
            _loc35_ = _loc1_;
            si32(_loc35_,_loc51_ - 16);
            _loc37_ = _loc51_ - 56;
            _loc39_ = _loc37_ + 32;
            _loc41_ = 0;
            eax = setjmp(_loc39_,1,_loc1_);
         }
         else if(int(_loc20_) - 1)
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
            if(_loc33_ != 0)
            {
               _loc43_ = li32(_loc51_ + 8);
               _loc45_ = li32(_loc51_ + 4);
               _loc47_ = _loc51_ - 88;
               _loc49_ = _loc47_ | 4;
               si32(_loc41_,_loc49_ + 12);
               si32(_loc41_,_loc49_ + 8);
               si32(_loc41_,_loc49_ + 4);
               si32(_loc41_,_loc49_);
               si32(_loc41_,_loc51_ - 68);
               si32(_loc49_,_loc49_ + 8);
               si32(_loc49_,_loc49_ + 12);
               _loc22_ = _loc51_ - 112;
               _loc21_ = _loc22_ | 4;
               si32(_loc41_,_loc21_ + 12);
               si32(_loc41_,_loc21_ + 8);
               si32(_loc41_,_loc21_ + 4);
               si32(_loc41_,_loc21_);
               si32(_loc41_,_loc51_ - 92);
               si32(_loc21_,_loc21_ + 8);
               si32(_loc21_,_loc21_ + 12);
               _loc24_ = li32(_loc32_ + 12);
               if(_loc24_ == 0)
               {
                  _loc23_ = _loc22_ + 8;
               }
               else
               {
                  _loc35_ = _loc37_ | 4;
                  si32(1,_loc35_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc21_,_loc1_ + 8);
                  si32(_loc24_,_loc1_ + 4);
                  si32(_loc22_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE7_M_copyEPKSt13_Rb_tree_nodeIS2_EPSA_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc26_ = int(eax);
                  si32(_loc26_,_loc51_ - 104);
                  _loc23_ = _loc22_ + 8;
                  _loc25_ = _loc26_;
                  do
                  {
                     _loc28_ = _loc25_;
                     _loc25_ = li32(_loc28_ + 8);
                  }
                  while(_loc25_ != 0);
                  
                  si32(_loc28_,_loc51_ - 100);
                  do
                  {
                     _loc27_ = _loc26_;
                     _loc26_ = li32(_loc27_ + 12);
                  }
                  while(_loc26_ != 0);
                  
                  si32(_loc27_,_loc51_ - 96);
                  _loc35_ = li32(_loc32_ + 24);
                  si32(_loc35_,_loc51_ - 92);
               }
               si32(_loc23_,_loc51_ - 64);
               _loc35_ = int(_loc47_ + 8);
               si32(_loc35_,_loc51_ - 60);
               addr945:
               while(_loc41_ < _loc33_)
               {
               }
               _loc35_ = li32(_loc51_ - 60);
               _loc12_ = li32(_loc32_ + 12);
               _loc14_ = li32(_loc35_);
               if(_loc14_ == 0)
               {
                  if(_loc12_ != 0)
                  {
                     _loc35_ = li32(_loc51_ - 60);
                     si32(_loc12_,_loc35_);
                     _loc35_ = li32(_loc32_ + 16);
                     si32(_loc35_,_loc51_ - 76);
                     _loc35_ = li32(_loc32_ + 20);
                     si32(_loc35_,_loc51_ - 72);
                     si32(_loc49_,_loc12_ + 4);
                     si32(0,_loc32_ + 12);
                     _loc35_ = int(_loc32_ + 8);
                     si32(_loc35_,_loc32_ + 16);
                     si32(_loc35_,_loc32_ + 20);
                  }
               }
               else if(_loc12_ == 0)
               {
                  si32(_loc14_,_loc32_ + 12);
                  _loc35_ = li32(_loc51_ - 76);
                  si32(_loc35_,_loc32_ + 16);
                  _loc35_ = li32(_loc51_ - 72);
                  si32(_loc35_,_loc32_ + 20);
                  _loc35_ = int(_loc32_ + 8);
                  si32(_loc35_,_loc14_ + 4);
                  _loc35_ = li32(_loc51_ - 60);
                  si32(0,_loc35_);
                  si32(_loc49_,_loc51_ - 76);
                  si32(_loc49_,_loc51_ - 72);
               }
               else
               {
                  _loc35_ = li32(_loc51_ - 60);
                  si32(_loc12_,_loc35_);
                  si32(_loc14_,_loc32_ + 12);
                  _loc13_ = li32(_loc32_ + 16);
                  _loc35_ = li32(_loc51_ - 76);
                  si32(_loc13_,_loc51_ - 76);
                  si32(_loc35_,_loc32_ + 16);
                  _loc35_ = li32(_loc32_ + 20);
                  _loc13_ = li32(_loc51_ - 72);
                  si32(_loc35_,_loc51_ - 72);
                  si32(_loc13_,_loc32_ + 20);
                  si32(_loc49_,_loc12_ + 4);
                  _loc35_ = int(_loc32_ + 8);
                  _loc13_ = li32(_loc32_ + 12);
                  si32(_loc35_,_loc13_ + 4);
               }
               _loc13_ = li32(_loc32_ + 24);
               _loc35_ = li32(_loc51_ - 68);
               si32(_loc13_,_loc51_ - 68);
               si32(_loc35_,_loc32_ + 24);
               _loc35_ = li32(_loc51_ - 64);
               _loc35_ = li32(_loc35_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc35_,_loc1_ + 4);
               si32(_loc22_,_loc1_);
               ESP = _loc1_;
               F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
               _loc1_ = int(_loc1_ + 16);
               _loc35_ = li32(_loc51_ - 60);
               _loc35_ = li32(_loc35_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc35_,_loc1_ + 4);
               si32(_loc47_,_loc1_);
               ESP = _loc1_;
               F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
               _loc1_ = int(_loc1_ + 16);
            }
            _loc1_ = int(_loc1_ - 16);
            si32(_loc37_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Unregister();
            _loc1_ = int(_loc1_ + 16);
            _loc1_ = _loc51_;
            ESP = _loc1_;
            return;
         }
         _loc35_ = _loc37_ | 4;
         _loc19_ = li32(_loc35_);
         if(_loc19_ != 0)
         {
            if(_loc19_ != 1)
            {
               _loc35_ = int(_loc19_ + -2);
               if(uint(_loc35_) >= 5)
               {
                  while(true)
                  {
                  }
               }
               else
               {
                  _loc15_ = li32(_loc51_ - 48);
                  _loc17_ = li32(_loc51_ - 44);
                  _loc35_ = li32(_loc51_ - 64);
                  _loc35_ = li32(_loc35_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc35_,_loc1_ + 4);
                  _loc35_ = int(_loc51_ - 112);
                  si32(_loc35_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
                  _loc1_ = int(_loc1_ + 16);
                  _loc16_ = li32(_loc51_ - 60);
               }
            }
            else
            {
               _loc15_ = li32(_loc51_ - 48);
               _loc18_ = li32(_loc51_ - 44);
               _loc35_ = int(_loc51_ - 88);
               _loc16_ = int(_loc35_ + 8);
            }
            _loc35_ = li32(_loc16_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc35_,_loc1_ + 4);
            _loc35_ = int(_loc51_ - 88);
            si32(_loc35_,_loc1_);
            ESP = _loc1_;
            F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
            _loc1_ = int(_loc1_ + 16);
            _loc35_ = _loc37_ | 4;
            si32(-1,_loc35_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc15_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Resume();
            _loc1_ = int(_loc1_ + 16);
         }
         else
         {
            _loc30_ = li32(_loc51_ - 48);
            _loc29_ = li32(_loc51_ - 44);
            _loc35_ = _loc37_ | 4;
            si32(2,_loc35_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc30_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Resume();
            _loc1_ = int(_loc1_ + 16);
         }
         §§goto(addr1218);
         while(true)
         {
            _loc31_ = _loc41_ % 10;
            _loc36_ = li32(_loc51_ - 64);
            _loc34_ = _loc21_;
            loop6:
            while(true)
            {
               while(true)
               {
                  _loc40_ = li32(_loc36_);
                  if(_loc40_ == 0)
                  {
                     break;
                  }
                  _loc35_ = li32(_loc40_ + 16);
                  if(_loc35_ >= _loc31_)
                  {
                     _loc36_ = int(_loc40_ + 8);
                     _loc34_ = _loc40_;
                     continue loop6;
                  }
                  _loc36_ = int(_loc40_ + 12);
               }
               _loc38_ = _loc21_;
               if(_loc34_ != _loc21_)
               {
                  _loc35_ = li32(_loc34_ + 16);
                  _loc38_ = _loc21_;
                  if(_loc31_ >= _loc35_)
                  {
                     _loc38_ = _loc34_;
                  }
               }
               if(_loc43_ == _loc41_)
               {
                  _loc35_ = li32(_loc51_ - 60);
                  _loc44_ = li32(_loc35_);
                  _loc42_ = _loc49_;
                  if(_loc44_ != 0)
                  {
                     do
                     {
                        _loc42_ = _loc44_;
                        _loc48_ = _loc42_ + 8;
                        _loc35_ = li32(_loc42_ + 16);
                        if(_loc31_ >= _loc35_)
                        {
                           _loc48_ = _loc42_ + 12;
                        }
                        _loc44_ = li32(_loc48_);
                     }
                     while(_loc44_ != 0);
                     
                  }
                  _loc46_ = 1;
                  if(_loc49_ != _loc42_)
                  {
                     _loc35_ = li32(_loc42_ + 16);
                     _loc46_ = 1;
                     if(_loc31_ >= _loc35_)
                     {
                        _loc46_ = 0;
                     }
                  }
                  _loc50_ = _loc37_ | 4;
                  si32(3,_loc50_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(24,_loc1_);
                  ESP = _loc1_;
                  F__Znwj();
                  _loc1_ = int(_loc1_ + 16);
                  _loc3_ = eax;
                  if(_loc3_ != -16)
                  {
                     _loc35_ = _loc31_ ^ _loc45_;
                     si32(_loc31_,_loc3_ + 16);
                     si8(_loc35_,_loc3_ + 20);
                  }
                  si32(4,_loc50_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc49_,_loc1_ + 12);
                  si32(_loc42_,_loc1_ + 8);
                  si32(_loc3_,_loc1_ + 4);
                  si32(_loc46_,_loc1_);
                  ESP = _loc1_;
                  F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc2_ = li32(_loc51_ - 68);
               }
               else
               {
                  _loc5_ = li8(_loc38_ + 20);
                  _loc35_ = li32(_loc51_ - 60);
                  _loc4_ = li32(_loc35_);
                  _loc7_ = _loc49_;
                  if(_loc4_ != 0)
                  {
                     do
                     {
                        _loc7_ = _loc4_;
                        _loc6_ = _loc7_ + 8;
                        _loc35_ = li32(_loc7_ + 16);
                        if(_loc31_ >= _loc35_)
                        {
                           _loc6_ = _loc7_ + 12;
                        }
                        _loc4_ = li32(_loc6_);
                     }
                     while(_loc4_ != 0);
                     
                  }
                  _loc9_ = 1;
                  if(_loc49_ != _loc7_)
                  {
                     _loc35_ = li32(_loc7_ + 16);
                     _loc9_ = 1;
                     if(_loc31_ >= _loc35_)
                     {
                        _loc9_ = 0;
                     }
                  }
                  _loc8_ = _loc37_ | 4;
                  si32(5,_loc8_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(24,_loc1_);
                  ESP = _loc1_;
                  F__Znwj();
                  _loc1_ = int(_loc1_ + 16);
                  _loc11_ = eax;
                  if(_loc11_ != -16)
                  {
                     si32(_loc31_,_loc11_ + 16);
                     si8(_loc5_,_loc11_ + 20);
                  }
                  si32(6,_loc8_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc49_,_loc1_ + 12);
                  si32(_loc7_,_loc1_ + 8);
                  si32(_loc11_,_loc1_ + 4);
                  si32(_loc9_,_loc1_);
                  ESP = _loc1_;
                  F__ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc2_ = li32(_loc51_ - 68);
               }
               _loc35_ = int(_loc2_ + 1);
               si32(_loc35_,_loc51_ - 68);
               _loc35_ = _loc37_ | 4;
               si32(7,_loc35_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc21_,_loc1_ + 4);
               si32(_loc38_,_loc1_);
               ESP = _loc1_;
               F__ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_();
               _loc1_ = int(_loc1_ + 16);
               _loc10_ = eax;
               _loc1_ = int(_loc1_ - 16);
               si32(_loc10_,_loc1_);
               ESP = _loc1_;
               F__ZdlPv();
               _loc1_ = int(_loc1_ + 16);
               _loc35_ = li32(_loc51_ - 92);
               _loc35_ = int(_loc35_ + -1);
               si32(_loc35_,_loc51_ - 92);
               _loc41_ = _loc41_ + 1;
               §§goto(addr945);
            }
         }
      }
   }
}
