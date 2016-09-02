package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKgiH7b_2E_o_3A_ec56f713_2D_06a1_2D_4be7_2D_88a0_2D_e6cc830d9279.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNSt3mapIiS_IihSt4lessIiESaISt4pairIKihEEES1_SaIS2_IS3_S6_EEEixERS3_() : void
   {
      var _loc18_:* = 0;
      var _loc19_:int = 0;
      var _loc7_:* = 0;
      var _loc13_:* = 0;
      var _loc9_:int = 0;
      var _loc17_:* = 0;
      var _loc2_:* = 0;
      var _loc3_:int = 0;
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc10_:int = 0;
      var _loc8_:* = 0;
      var _loc14_:* = 0;
      var _loc12_:* = 0;
      var _loc16_:* = 0;
      var _loc15_:* = 0;
      var _loc11_:int = 0;
      var _loc6_:* = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc19_)
         {
            _loc18_ = _loc1_;
            _loc1_ = int(_loc1_ - 128);
            si32(L_LSDA_24,_loc18_ - 28);
            si32(___gxx_personality_sj0,_loc18_ - 32);
            _loc2_ = _loc18_;
            si32(_loc2_,_loc18_ - 24);
            _loc2_ = _loc1_;
            si32(_loc2_,_loc18_ - 16);
            _loc3_ = _loc18_ - 56;
            _loc5_ = _loc3_ + 32;
            eax = setjmp(_loc5_,1,_loc1_);
         }
         else if(int(_loc19_) - 1)
         {
            throw "bad longjmp";
         }
         _loc2_ = int(eax);
         if(_loc2_ == 0)
         {
            _loc7_ = li32(_loc18_);
            _loc9_ = _loc7_ + 4;
            _loc11_ = _loc7_ + 8;
            _loc13_ = li32(_loc18_ + 4);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc3_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            _loc15_ = _loc9_;
            loop2:
            while(true)
            {
               while(true)
               {
                  _loc17_ = li32(_loc11_);
                  if(_loc17_ == 0)
                  {
                     break;
                  }
                  _loc2_ = li32(_loc13_);
                  _loc16_ = li32(_loc17_ + 16);
                  if(_loc16_ >= _loc2_)
                  {
                     _loc11_ = _loc17_ + 8;
                     _loc15_ = _loc17_;
                     continue loop2;
                  }
                  _loc11_ = _loc17_ + 12;
               }
               if(_loc15_ == _loc9_)
               {
                  _loc6_ = li32(_loc13_);
                  addr201:
                  _loc4_ = _loc18_ - 88;
                  _loc16_ = _loc4_ | 4;
                  si32(0,_loc16_ + 12);
                  si32(0,_loc16_ + 8);
                  si32(0,_loc16_ + 4);
                  si32(0,_loc16_);
                  si32(0,_loc18_ - 68);
                  si32(_loc16_,_loc16_ + 8);
                  si32(_loc16_,_loc16_ + 12);
                  si32(_loc6_,_loc18_ - 120);
                  _loc10_ = _loc18_ - 120;
                  _loc8_ = _loc10_ | 4;
                  si32(0,_loc8_ + 20);
                  si32(0,_loc18_ - 100);
                  si32(0,_loc18_ - 104);
                  si32(0,_loc18_ - 108);
                  si32(0,_loc18_ - 112);
                  _loc2_ = int(_loc10_ + 8);
                  si32(_loc2_,_loc18_ - 104);
                  si32(_loc2_,_loc18_ - 100);
                  _loc2_ = int(_loc16_ + 4);
                  si32(_loc2_,_loc18_ - 60);
                  _loc2_ = _loc3_ | 4;
                  si32(1,_loc2_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc10_,_loc1_ + 8);
                  si32(_loc15_,_loc1_ + 4);
                  si32(_loc7_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE16_M_insert_uniqueESt17_Rb_tree_iteratorIS8_ERKS8_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc15_ = int(eax);
               }
               else
               {
                  _loc6_ = li32(_loc13_);
                  _loc2_ = li32(_loc15_ + 16);
                  if(_loc6_ < _loc2_)
                  {
                     §§goto(addr201);
                  }
               }
               _loc1_ = int(_loc1_ - 16);
               si32(_loc3_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Unregister();
               _loc1_ = int(_loc1_ + 16);
               _loc2_ = int(_loc15_ + 20);
               eax = _loc2_;
               _loc1_ = _loc18_;
               ESP = _loc1_;
               return;
            }
         }
         else
         {
            _loc2_ = _loc3_ | 4;
            _loc2_ = li32(_loc2_);
            if(_loc2_ != 0)
            {
               while(true)
               {
               }
            }
            else
            {
               _loc14_ = li32(_loc18_ - 48);
               _loc12_ = li32(_loc18_ - 44);
               _loc2_ = int(_loc18_ - 120);
               _loc2_ = _loc2_ | 4;
               _loc16_ = li32(_loc2_ + 8);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc16_,_loc1_ + 4);
               si32(_loc2_,_loc1_);
               ESP = _loc1_;
               F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
               _loc1_ = int(_loc1_ + 16);
               _loc2_ = li32(_loc18_ - 60);
               _loc2_ = li32(_loc2_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc2_,_loc1_ + 4);
               _loc2_ = int(_loc18_ - 88);
               si32(_loc2_,_loc1_);
               ESP = _loc1_;
               F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
               _loc1_ = int(_loc1_ + 16);
               _loc2_ = _loc3_ | 4;
               si32(-1,_loc2_);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc14_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Resume();
               _loc1_ = int(_loc1_ + 16);
            }
         }
         _loc2_ = li32(_loc8_ + 8);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc2_,_loc1_ + 4);
         si32(_loc8_,_loc1_);
         ESP = _loc1_;
         F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
         _loc1_ = int(_loc1_ + 16);
         _loc2_ = li32(_loc18_ - 60);
         _loc2_ = li32(_loc2_);
         _loc1_ = int(_loc1_ - 16);
         si32(_loc2_,_loc1_ + 4);
         si32(_loc4_,_loc1_);
         ESP = _loc1_;
         F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E();
         _loc1_ = int(_loc1_ + 16);
         §§goto(addr525);
      }
   }
}
