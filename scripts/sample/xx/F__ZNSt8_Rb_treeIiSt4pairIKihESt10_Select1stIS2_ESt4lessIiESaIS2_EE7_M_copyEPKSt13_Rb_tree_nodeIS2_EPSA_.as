package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccHiFHTa_2E_o_3A_825f17d5_2D_64c2_2D_44fe_2D_86df_2D_62c8e7ad665c.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE7_M_copyEPKSt13_Rb_tree_nodeIS2_EPSA_() : void
   {
      var _loc29_:* = 0;
      var _loc30_:int = 0;
      var _loc22_:* = 0;
      var _loc14_:int = 0;
      var _loc20_:int = 0;
      var _loc26_:* = 0;
      var _loc3_:int = 0;
      var _loc9_:* = 0;
      var _loc11_:int = 0;
      var _loc7_:int = 0;
      var _loc6_:* = 0;
      var _loc17_:* = 0;
      var _loc13_:* = 0;
      var _loc16_:int = 0;
      var _loc18_:int = 0;
      var _loc23_:* = 0;
      var _loc27_:* = 0;
      var _loc28_:* = 0;
      var _loc4_:* = 0;
      var _loc24_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc21_:* = 0;
      var _loc12_:* = 0;
      var _loc19_:* = 0;
      var _loc25_:* = 0;
      var _loc15_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:int = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc30_)
         {
            _loc29_ = _loc1_;
            _loc1_ = int(_loc1_ - 64);
            _loc13_ = li32(_loc29_);
            si32(_loc13_,_loc29_ - 64);
            _loc1_ = int(_loc1_ - 16);
            si32(24,_loc1_);
            ESP = _loc1_;
            F__Znwj();
            _loc1_ = int(_loc1_ + 16);
            _loc14_ = eax;
            si32(_loc14_,_loc29_ - 60);
            si32(L_LSDA_16,_loc29_ - 28);
            si32(___gxx_personality_sj0,_loc29_ - 32);
            _loc13_ = _loc29_;
            si32(_loc13_,_loc29_ - 24);
            _loc13_ = _loc1_;
            si32(_loc13_,_loc29_ - 16);
            _loc16_ = _loc29_ - 56;
            _loc18_ = _loc16_ + 32;
            eax = setjmp(_loc18_,1,_loc1_);
         }
         else if(int(_loc30_) - 1)
         {
            throw "bad longjmp";
         }
         _loc13_ = int(eax);
         if(_loc13_ == 0)
         {
            _loc20_ = _loc14_ + 16;
            _loc22_ = li32(_loc29_ + 4);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc16_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            if(_loc20_ != 0)
            {
               _loc24_ = li8(_loc22_ + 20);
               _loc13_ = li32(_loc22_ + 16);
               si32(_loc13_,_loc14_ + 16);
               si8(_loc24_,_loc14_ + 20);
            }
            _loc13_ = li32(_loc29_ + 8);
            _loc24_ = li32(_loc22_);
            si32(_loc24_,_loc14_);
            si32(0,_loc14_ + 8);
            si32(0,_loc14_ + 12);
            si32(_loc13_,_loc14_ + 4);
            _loc26_ = li32(_loc22_ + 12);
            if(_loc26_ != 0)
            {
               _loc13_ = _loc16_ | 4;
               _loc27_ = li32(_loc29_ - 64);
               _loc28_ = li32(_loc29_ - 60);
               si32(1,_loc13_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc28_,_loc1_ + 8);
               si32(_loc26_,_loc1_ + 4);
               si32(_loc27_,_loc1_);
               ESP = _loc1_;
               F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE7_M_copyEPKSt13_Rb_tree_nodeIS2_EPSA_();
               _loc1_ = int(_loc1_ + 16);
               _loc3_ = eax;
               si32(_loc3_,_loc14_ + 12);
            }
            _loc2_ = _loc22_ + 8;
            _loc5_ = li32(_loc29_ - 60);
            while(true)
            {
               _loc6_ = li32(_loc2_);
               if(_loc6_ != 0)
               {
                  _loc4_ = _loc16_ | 4;
                  si32(2,_loc4_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(24,_loc1_);
                  ESP = _loc1_;
                  F__Znwj();
                  _loc1_ = int(_loc1_ + 16);
                  _loc7_ = eax;
                  if(_loc7_ != -16)
                  {
                     _loc13_ = li8(_loc6_ + 20);
                     _loc24_ = li32(_loc6_ + 16);
                     si32(_loc24_,_loc7_ + 16);
                     si8(_loc13_,_loc7_ + 20);
                  }
                  _loc13_ = li32(_loc6_);
                  si32(_loc13_,_loc7_);
                  si32(0,_loc7_ + 8);
                  si32(0,_loc7_ + 12);
                  si32(_loc7_,_loc5_ + 8);
                  si32(_loc5_,_loc7_ + 4);
                  _loc9_ = li32(_loc6_ + 12);
                  if(_loc9_ != 0)
                  {
                     _loc8_ = li32(_loc29_ - 64);
                     si32(3,_loc4_);
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc7_,_loc1_ + 8);
                     si32(_loc9_,_loc1_ + 4);
                     si32(_loc8_,_loc1_);
                     ESP = _loc1_;
                     F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE7_M_copyEPKSt13_Rb_tree_nodeIS2_EPSA_();
                     _loc1_ = int(_loc1_ + 16);
                     _loc11_ = eax;
                     si32(_loc11_,_loc7_ + 12);
                  }
                  _loc2_ = _loc6_ + 8;
                  _loc5_ = _loc7_;
                  continue;
               }
               break;
            }
         }
         else
         {
            while(true)
            {
               _loc13_ = _loc16_ | 4;
               _loc23_ = li32(_loc13_);
               if(uint(_loc23_) >= 3)
               {
                  if(_loc23_ != 3)
                  {
                     if(_loc23_ != 4)
                     {
                        while(true)
                        {
                        }
                     }
                     else
                     {
                        _loc19_ = li32(_loc29_ - 48);
                        _loc25_ = li32(_loc29_ - 44);
                        ESP = _loc1_;
                        F__ZSt9terminatev();
                        continue;
                     }
                  }
                  else
                  {
                     _loc17_ = li32(_loc29_ - 48);
                     _loc21_ = li32(_loc29_ - 44);
                     _loc12_ = _loc16_ | 4;
                     si32(5,_loc12_);
                     ESP = _loc1_;
                     F___cxa_end_catch();
                     break;
                  }
               }
               else
               {
                  _loc13_ = li32(_loc29_ - 48);
                  _loc10_ = li32(_loc29_ - 44);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc13_,_loc1_);
                  ESP = _loc1_;
                  F___cxa_begin_catch();
                  _loc1_ = int(_loc1_ + 16);
                  _loc24_ = li32(_loc29_ - 64);
                  _loc13_ = li32(_loc29_ - 60);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc13_,_loc1_ + 4);
                  si32(_loc24_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
                  _loc1_ = int(_loc1_ + 16);
                  _loc13_ = _loc16_ | 4;
                  si32(4,_loc13_);
                  ESP = _loc1_;
                  F___cxa_rethrow();
                  break;
               }
            }
            si32(-1,_loc12_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc17_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Resume();
            _loc1_ = int(_loc1_ + 16);
         }
         _loc15_ = li32(_loc29_ - 60);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc16_,_loc1_);
         ESP = _loc1_;
         F__Unwind_SjLj_Unregister();
         _loc1_ = int(_loc1_ + 16);
         eax = _loc15_;
         _loc1_ = _loc29_;
         ESP = _loc1_;
         return;
      }
   }
}
