package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKgiH7b_2E_o_3A_ec56f713_2D_06a1_2D_4be7_2D_88a0_2D_e6cc830d9279.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZN9__gnu_cxx13new_allocatorISt4pairIKiSt3mapIihSt4lessIiESaIS1_IS2_hEEEEE9constructEPS9_RKS9_() : void
   {
      var _loc18_:* = 0;
      var _loc19_:int = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:int = 0;
      var _loc13_:* = 0;
      var _loc17_:* = 0;
      var _loc6_:* = 0;
      var _loc3_:int = 0;
      var _loc5_:int = 0;
      var _loc12_:* = 0;
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc14_:* = 0;
      var _loc2_:* = 0;
      var _loc16_:* = 0;
      var _loc15_:* = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc19_)
         {
            _loc18_ = _loc1_;
            _loc1_ = int(_loc1_ - 64);
            si32(L_LSDA_20,_loc18_ - 28);
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
            _loc7_ = li32(_loc18_ + 4);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc3_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            if(_loc7_ != 0)
            {
               _loc9_ = li32(_loc18_ + 8);
               _loc2_ = li32(_loc9_);
               si32(_loc2_,_loc7_);
               si32(0,_loc7_ + 24);
               si32(0,_loc7_ + 20);
               si32(0,_loc7_ + 16);
               si32(0,_loc7_ + 12);
               si32(0,_loc7_ + 8);
               _loc11_ = _loc7_ + 8;
               si32(_loc11_,_loc7_ + 16);
               si32(_loc11_,_loc7_ + 20);
               _loc13_ = li32(_loc9_ + 12);
               if(_loc13_ != 0)
               {
                  _loc2_ = _loc3_ | 4;
                  si32(1,_loc2_);
                  _loc1_ = int(_loc1_ - 16);
                  si32(_loc11_,_loc1_ + 8);
                  si32(_loc13_,_loc1_ + 4);
                  _loc2_ = int(_loc7_ + 4);
                  si32(_loc2_,_loc1_);
                  ESP = _loc1_;
                  F__ZNSt8_Rb_treeIiSt4pairIKihESt10_Select1stIS2_ESt4lessIiESaIS2_EE7_M_copyEPKSt13_Rb_tree_nodeIS2_EPSA_();
                  _loc1_ = int(_loc1_ + 16);
                  _loc15_ = int(eax);
                  si32(_loc15_,_loc7_ + 12);
                  _loc16_ = _loc15_;
                  do
                  {
                     _loc17_ = _loc16_;
                     _loc16_ = li32(_loc17_ + 8);
                  }
                  while(_loc16_ != 0);
                  
                  si32(_loc17_,_loc7_ + 16);
                  do
                  {
                     _loc6_ = _loc15_;
                     _loc15_ = li32(_loc6_ + 12);
                  }
                  while(_loc15_ != 0);
                  
                  si32(_loc6_,_loc7_ + 20);
                  _loc2_ = li32(_loc9_ + 24);
                  si32(_loc2_,_loc7_ + 24);
               }
            }
         }
         else
         {
            while(true)
            {
               _loc2_ = _loc3_ | 4;
               _loc12_ = li32(_loc2_);
               if(_loc12_ != 0)
               {
                  if(_loc12_ != 1)
                  {
                     while(true)
                     {
                     }
                  }
                  else
                  {
                     _loc2_ = li32(_loc18_ - 48);
                     _loc8_ = li32(_loc18_ - 44);
                     _loc14_ = _loc3_ | 4;
                     si32(-1,_loc14_);
                     _loc1_ = int(_loc1_ - 16);
                     si32(_loc2_,_loc1_);
                     ESP = _loc1_;
                     F__Unwind_SjLj_Resume();
                     _loc1_ = int(_loc1_ + 16);
                     continue;
                  }
               }
               else
               {
                  break;
               }
            }
            _loc4_ = li32(_loc18_ - 48);
            _loc10_ = li32(_loc18_ - 44);
            _loc2_ = _loc3_ | 4;
            si32(2,_loc2_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc4_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Resume();
            _loc1_ = int(_loc1_ + 16);
         }
         _loc1_ = int(_loc1_ - 16);
         si32(_loc3_,_loc1_);
         ESP = _loc1_;
         F__Unwind_SjLj_Unregister();
         _loc1_ = int(_loc1_ + 16);
         _loc1_ = _loc18_;
         ESP = _loc1_;
         return;
      }
   }
}
