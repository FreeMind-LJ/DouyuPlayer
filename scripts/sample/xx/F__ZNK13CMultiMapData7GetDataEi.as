package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccHiFHTa_2E_o_3A_825f17d5_2D_64c2_2D_44fe_2D_86df_2D_62c8e7ad665c.*;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZNK13CMultiMapData7GetDataEi() : void
   {
      var _loc30_:* = 0;
      var _loc31_:int = 0;
      var _loc13_:* = 0;
      var _loc24_:* = 0;
      var _loc14_:* = 0;
      var _loc27_:* = 0;
      var _loc29_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:int = 0;
      var _loc10_:int = 0;
      var _loc15_:* = 0;
      var _loc19_:int = 0;
      var _loc18_:int = 0;
      var _loc20_:int = 0;
      var _loc28_:* = 0;
      var _loc26_:int = 0;
      var _loc8_:* = 0;
      var _loc11_:* = 0;
      var _loc16_:* = 0;
      var _loc25_:* = 0;
      var _loc23_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = 0;
      var _loc3_:int = 0;
      var _loc17_:* = 0;
      var _loc12_:* = 0;
      var _loc21_:* = 0;
      var _loc9_:* = 0;
      var _loc22_:* = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc31_)
         {
            _loc30_ = _loc1_;
            _loc1_ = int(_loc1_ - 96);
            _loc13_ = li32(_loc30_);
            _loc14_ = li32(_loc13_ + 24);
            si32(L_LSDA_12,_loc30_ - 28);
            si32(___gxx_personality_sj0,_loc30_ - 32);
            _loc16_ = _loc30_;
            si32(_loc16_,_loc30_ - 24);
            _loc16_ = _loc1_;
            si32(_loc16_,_loc30_ - 16);
            _loc18_ = _loc30_ - 56;
            _loc20_ = _loc18_ + 32;
            _loc22_ = 0;
            eax = setjmp(_loc20_,1,_loc1_);
         }
         else if(int(_loc31_) - 1)
         {
            throw "bad longjmp";
         }
         _loc16_ = int(eax);
         if(_loc16_ == 0)
         {
            _loc1_ = int(_loc1_ - 16);
            si32(_loc18_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            if(_loc14_ != 0)
            {
               _loc24_ = li32(_loc30_ + 4);
               _loc26_ = _loc30_ - 88;
               _loc27_ = _loc26_ | 4;
               _loc22_ = 0;
               si32(_loc22_,_loc27_ + 12);
               si32(_loc22_,_loc27_ + 8);
               si32(_loc22_,_loc27_ + 4);
               si32(_loc22_,_loc27_);
               si32(_loc22_,_loc30_ - 68);
               si32(_loc27_,_loc27_ + 8);
               si32(_loc27_,_loc27_ + 12);
               _loc29_ = li32(_loc13_ + 12);
               if(_loc29_ == 0)
               {
                  _loc3_ = _loc26_ + 8;
               }
               else
               {
                  _loc16_ = _loc18_ | 4;
                  si32(1,_loc16_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc27_,_loc1_ + 8);
                  si32(_loc29_,_loc1_ + 4);
                  si32(_loc26_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE7_M_copyEPKSt13_Rb_tree_nodeIS2_EPSA_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc2_ = int(eax);
                  si32(_loc2_,_loc30_ - 80);
                  _loc3_ = _loc26_ + 8;
                  _loc5_ = _loc2_;
                  do
                  {
                     _loc4_ = _loc5_;
                     _loc5_ = li32(_loc4_ + 8);
                  }
                  while(_loc5_ != 0);
                  
                  si32(_loc4_,_loc30_ - 76);
                  do
                  {
                     _loc7_ = _loc2_;
                     _loc2_ = li32(_loc7_ + 12);
                  }
                  while(_loc2_ != 0);
                  
                  si32(_loc7_,_loc30_ - 72);
                  _loc16_ = li32(_loc13_ + 24);
                  si32(_loc16_,_loc30_ - 68);
               }
               si32(_loc3_,_loc30_ - 60);
               _loc6_ = _loc24_ + 1;
               _loc9_ = _loc22_;
               addr540:
               while(_loc9_ < _loc14_)
               {
               }
               _loc16_ = li32(_loc30_ - 60);
               _loc16_ = li32(_loc16_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc16_,_loc1_ + 4);
               si32(_loc26_,_loc1_);
               ESP = _loc1_;
               F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
               _loc1_ = int(_loc1_ + 16);
            }
            addr653:
            _loc1_ = int(_loc1_ - 16);
            si32(_loc18_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Unregister();
            _loc1_ = int(_loc1_ + 16);
            _loc16_ = _loc22_ & 255;
            eax = _loc16_;
            _loc1_ = _loc30_;
            ESP = _loc1_;
            return;
         }
         _loc16_ = _loc18_ | 4;
         _loc28_ = li32(_loc16_);
         if(_loc28_ != 0)
         {
            if(_loc28_ != 1)
            {
               while(true)
               {
               }
            }
            else
            {
               _loc25_ = li32(_loc30_ - 48);
               _loc23_ = li32(_loc30_ - 44);
               _loc16_ = li32(_loc30_ - 60);
               _loc16_ = li32(_loc16_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc16_,_loc1_ + 4);
               _loc16_ = int(_loc30_ - 88);
               si32(_loc16_,_loc1_);
               ESP = _loc1_;
               F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
               _loc1_ = int(_loc1_ + 16);
               _loc16_ = _loc18_ | 4;
               si32(-1,_loc16_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc25_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Resume();
               _loc1_ = int(_loc1_ + 16);
            }
         }
         else
         {
            _loc16_ = li32(_loc30_ - 48);
            _loc8_ = li32(_loc30_ - 44);
            _loc11_ = _loc18_ | 4;
            si32(-1,_loc11_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc16_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Resume();
            _loc1_ = int(_loc1_ + 16);
         }
         §§goto(addr653);
         while(true)
         {
            _loc10_ = _loc9_ % 10;
            _loc12_ = li32(_loc30_ - 60);
            _loc17_ = _loc27_;
            loop6:
            while(true)
            {
               while(true)
               {
                  _loc15_ = li32(_loc12_);
                  if(_loc15_ == 0)
                  {
                     break;
                  }
                  _loc16_ = li32(_loc15_ + 16);
                  if(_loc16_ >= _loc10_)
                  {
                     _loc12_ = int(_loc15_ + 8);
                     _loc17_ = _loc15_;
                     continue loop6;
                  }
                  _loc12_ = int(_loc15_ + 12);
               }
               _loc21_ = _loc27_;
               if(_loc17_ != _loc27_)
               {
                  _loc16_ = li32(_loc17_ + 16);
                  _loc21_ = _loc27_;
                  if(_loc10_ >= _loc16_)
                  {
                     _loc21_ = _loc17_;
                  }
               }
               _loc9_ = int(_loc9_ + 1);
               if(_loc6_ == _loc9_)
               {
                  _loc11_ = li8(_loc21_ + 20);
                  _loc16_ = li8(_loc21_ + 16);
                  _loc22_ = _loc16_ ^ _loc11_;
               }
               else
               {
                  _loc16_ = _loc18_ | 4;
                  si32(2,_loc16_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc27_,_loc1_ + 4);
                  si32(_loc21_,_loc1_);
                  ESP = _loc1_;
                  F__ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc19_ = eax;
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc19_,_loc1_);
                  ESP = _loc1_;
                  F__ZdlPv();
                  _loc1_ = int(_loc1_ + 16);
                  _loc16_ = li32(_loc30_ - 68);
                  _loc16_ = int(_loc16_ + -1);
                  si32(_loc16_,_loc30_ - 68);
                  §§goto(addr540);
               }
               §§goto(addr544);
            }
         }
      }
   }
}
