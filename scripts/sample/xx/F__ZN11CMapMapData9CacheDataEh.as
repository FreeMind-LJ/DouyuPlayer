package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKgiH7b_2E_o_3A_ec56f713_2D_06a1_2D_4be7_2D_88a0_2D_e6cc830d9279.*;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN11CMapMapData9CacheDataEh() : void
   {
      var _loc24_:* = 0;
      var _loc25_:int = 0;
      var _loc13_:* = 0;
      var _loc22_:* = 0;
      var _loc17_:* = 0;
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc7_:int = 0;
      var _loc6_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc15_:int = 0;
      var _loc20_:int = 0;
      var _loc21_:int = 0;
      var _loc2_:int = 0;
      var _loc5_:* = 0;
      var _loc12_:* = 0;
      var _loc16_:* = 0;
      var _loc14_:* = 0;
      var _loc23_:* = 0;
      var _loc19_:* = 0;
      var _loc18_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc25_)
         {
            _loc24_ = _loc1_;
            _loc1_ = int(_loc1_ - 112);
            _loc13_ = li32(_loc24_);
            _loc14_ = li32(_loc13_ + 28);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc14_,_loc1_);
            ESP = _loc1_;
            F__ZN11CCommonFunc6AphashEj();
            _loc1_ = int(_loc1_ + 16);
            _loc14_ = int(eax);
            si32(_loc14_,_loc13_ + 28);
            _loc14_ = li32(_loc13_ + 32);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc14_,_loc1_);
            ESP = _loc1_;
            F__ZN11CCommonFunc8BKDRHashEj();
            _loc1_ = int(_loc1_ + 16);
            _loc14_ = int(eax);
            si32(_loc14_,_loc13_ + 32);
            _loc15_ = _loc24_ - 104;
            _loc17_ = _loc15_ | 4;
            si32(0,_loc17_ + 12);
            si32(0,_loc17_ + 8);
            si32(0,_loc17_ + 4);
            si32(0,_loc17_);
            si32(0,_loc24_ - 84);
            si32(_loc17_,_loc17_ + 8);
            si32(_loc17_,_loc17_ + 12);
            _loc18_ = li32(_loc13_ + 28);
            _loc14_ = int(_loc17_ + 4);
            si32(_loc14_,_loc24_ - 60);
            _loc19_ = li32(_loc24_ - 60);
            si32(L_LSDA_11,_loc24_ - 28);
            si32(___gxx_personality_sj0,_loc24_ - 32);
            _loc14_ = _loc24_;
            si32(_loc14_,_loc24_ - 24);
            _loc14_ = _loc1_;
            si32(_loc14_,_loc24_ - 16);
            _loc20_ = _loc24_ - 56;
            _loc21_ = _loc20_ + 32;
            eax = setjmp(_loc21_,1,_loc1_);
         }
         else if(int(_loc25_) - 1)
         {
            throw "bad longjmp";
         }
         _loc14_ = int(eax);
         if(_loc14_ == 0)
         {
            _loc22_ = li32(_loc24_ + 4);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc20_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            _loc23_ = _loc17_;
            loop2:
            while(true)
            {
               while(true)
               {
                  _loc3_ = li32(_loc19_);
                  if(_loc3_ == 0)
                  {
                     break;
                  }
                  _loc14_ = li32(_loc3_ + 16);
                  if(_loc14_ >= _loc18_)
                  {
                     _loc19_ = int(_loc3_ + 8);
                     _loc23_ = _loc3_;
                     continue loop2;
                  }
                  _loc19_ = int(_loc3_ + 12);
               }
               if(_loc23_ != _loc17_)
               {
                  _loc14_ = li32(_loc23_ + 16);
                  if(_loc18_ < _loc14_)
                  {
                  }
                  addr383:
                  _loc14_ = _loc18_ ^ _loc22_;
                  si8(_loc14_,_loc23_ + 20);
                  _loc14_ = li32(_loc13_ + 32);
                  si32(_loc14_,_loc24_ - 76);
                  _loc5_ = _loc20_ | 4;
                  si32(2,_loc5_);
                  _loc1_ = int(_loc1_ - 16);
                  _loc14_ = int(_loc24_ - 76);
                  si32(_loc14_,_loc1_ + 4);
                  _loc14_ = int(_loc13_ + 4);
                  si32(_loc14_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSt3mapIiS_IihSt4lessIiESaISt4pairIKihEEES1_SaIS2_IS3_S6_EEEixERS3_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc4_ = eax;
                  if(_loc4_ != _loc15_)
                  {
                     _loc14_ = li32(_loc4_ + 8);
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc14_,_loc1_ + 4);
                     si32(_loc4_,_loc1_);
                     ESP = _loc1_;
                     F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
                     _loc1_ = int(_loc1_ + 16);
                     _loc7_ = _loc4_ + 4;
                     si32(_loc7_,_loc4_ + 12);
                     si32(0,_loc4_ + 8);
                     si32(_loc7_,_loc4_ + 16);
                     si32(0,_loc4_ + 20);
                     _loc14_ = li32(_loc24_ - 60);
                     _loc6_ = li32(_loc14_);
                     if(_loc6_ != 0)
                     {
                        si32(3,_loc5_);
                        _loc1_ = int(_loc1_ - 16);
                        si32(_loc7_,_loc1_ + 8);
                        si32(_loc6_,_loc1_ + 4);
                        si32(_loc4_,_loc1_);
                        ESP = _loc1_;
                        F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE7_M_copyEPKSt13_Rb_tree_nodeIS2_EPSA_();
                        _loc1_ = int(_loc1_ + 16);
                        _loc9_ = int(eax);
                        si32(_loc9_,_loc4_ + 8);
                        _loc8_ = _loc9_;
                        do
                        {
                           _loc11_ = _loc8_;
                           _loc8_ = li32(_loc11_ + 8);
                        }
                        while(_loc8_ != 0);
                        
                        si32(_loc11_,_loc4_ + 12);
                        do
                        {
                           _loc10_ = _loc9_;
                           _loc9_ = li32(_loc10_ + 12);
                        }
                        while(_loc9_ != 0);
                        
                        si32(_loc10_,_loc4_ + 16);
                        _loc14_ = li32(_loc24_ - 84);
                        si32(_loc14_,_loc4_ + 20);
                     }
                  }
               }
               si32(_loc18_,_loc24_ - 72);
               _loc2_ = _loc24_ - 72;
               _loc14_ = _loc2_ | 4;
               si8(0,_loc14_);
               _loc14_ = _loc20_ | 4;
               si32(1,_loc14_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc2_,_loc1_ + 8);
               si32(_loc23_,_loc1_ + 4);
               si32(_loc15_,_loc1_);
               ESP = _loc1_;
               F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE16_M_insert_uniqueESt17_Rb_tree_iteratorIS2_ERKS2_();
               _loc1_ = int(_loc1_ + 16);
               _loc23_ = int(eax);
               _loc18_ = li32(_loc13_ + 28);
               §§goto(addr383);
            }
         }
         else
         {
            _loc14_ = _loc20_ | 4;
            _loc14_ = li32(_loc14_);
            if(uint(_loc14_) >= 3)
            {
               while(true)
               {
               }
            }
            else
            {
               _loc12_ = li32(_loc24_ - 48);
               _loc16_ = li32(_loc24_ - 44);
               _loc14_ = li32(_loc24_ - 60);
               _loc14_ = li32(_loc14_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc14_,_loc1_ + 4);
               si32(_loc15_,_loc1_);
               ESP = _loc1_;
               F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
               _loc1_ = int(_loc1_ + 16);
               _loc14_ = _loc20_ | 4;
               si32(-1,_loc14_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc12_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Resume();
               _loc1_ = int(_loc1_ + 16);
            }
         }
         _loc14_ = li32(_loc24_ - 60);
         _loc14_ = li32(_loc14_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc14_,_loc1_ + 4);
         si32(_loc15_,_loc1_);
         ESP = _loc1_;
         F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
         _loc1_ = int(_loc1_ + 16);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc20_,_loc1_);
         ESP = _loc1_;
         F__Unwind_SjLj_Unregister();
         _loc1_ = int(_loc1_ + 16);
         _loc1_ = _loc24_;
         ESP = _loc1_;
         return;
      }
   }
}
