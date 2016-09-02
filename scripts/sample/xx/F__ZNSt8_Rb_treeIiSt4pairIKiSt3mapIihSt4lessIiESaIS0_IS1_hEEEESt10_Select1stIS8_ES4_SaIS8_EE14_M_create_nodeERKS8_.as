package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccKgiH7b_2E_o_3A_ec56f713_2D_06a1_2D_4be7_2D_88a0_2D_e6cc830d9279.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNSt8_Rb_treeIiSt4pairIKiSt3mapIihSt4lessIiESaIS0_IS1_hEEEESt10_Select1stIS8_ES4_SaIS8_EE14_M_create_nodeERKS8_() : void
   {
      var _loc17_:* = 0;
      var _loc18_:int = 0;
      var _loc11_:* = 0;
      var _loc9_:int = 0;
      var _loc6_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:int = 0;
      var _loc13_:* = 0;
      var _loc12_:int = 0;
      var _loc15_:* = 0;
      var _loc4_:* = 0;
      var _loc16_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc14_:* = 0;
      var _loc1_:* = int(ESP);
      while(true)
      {
         if(!_loc18_)
         {
            _loc17_ = _loc1_;
            _loc1_ = int(_loc1_ - 64);
            _loc1_ = int(_loc1_ - 16);
            si32(44,_loc1_);
            ESP = _loc1_;
            F__Znwj();
            _loc1_ = int(_loc1_ + 16);
            _loc2_ = int(eax);
            si32(_loc2_,_loc17_ - 60);
            _loc3_ = li32(_loc17_ - 60);
            si32(L_LSDA_21,_loc17_ - 28);
            si32(___gxx_personality_sj0,_loc17_ - 32);
            _loc2_ = _loc17_;
            si32(_loc2_,_loc17_ - 24);
            _loc2_ = _loc1_;
            si32(_loc2_,_loc17_ - 16);
            _loc5_ = _loc17_ - 56;
            _loc7_ = _loc5_ + 32;
            eax = setjmp(_loc7_,1,_loc1_);
         }
         else if(int(_loc18_) - 1)
         {
            throw "bad longjmp";
         }
         _loc2_ = int(eax);
         if(_loc2_ == 0)
         {
            _loc9_ = _loc3_ + 16;
            _loc11_ = li32(_loc17_ + 4);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc5_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = int(_loc1_ + 16);
            _loc2_ = _loc5_ | 4;
            si32(1,_loc2_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc11_,_loc1_ + 8);
            si32(_loc9_,_loc1_ + 4);
            si32(_loc12_,_loc1_);
            ESP = _loc1_;
            F__ZN9__gnu_cxx13new_allocatorISt4pairIKiSt3mapIihSt4lessIiESaIS1_IS2_hEEEEE9constructEPS9_RKS9_();
            _loc1_ = int(_loc1_ + 16);
            _loc14_ = li32(_loc17_ - 60);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc5_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Unregister();
            _loc1_ = int(_loc1_ + 16);
            eax = _loc14_;
            _loc1_ = _loc17_;
            ESP = _loc1_;
            return;
         }
         loop1:
         while(true)
         {
            _loc2_ = _loc5_ | 4;
            _loc13_ = li32(_loc2_);
            if(_loc13_ != 0)
            {
               if(_loc13_ != 1)
               {
                  if(_loc13_ != 2)
                  {
                     while(true)
                     {
                     }
                  }
                  else
                  {
                     _loc10_ = li32(_loc17_ - 48);
                     _loc8_ = li32(_loc17_ - 44);
                     ESP = _loc1_;
                     F__ZSt9terminatev();
                     continue;
                  }
               }
               else
               {
                  addr332:
                  while(true)
                  {
                     _loc6_ = li32(_loc17_ - 48);
                     _loc4_ = li32(_loc17_ - 44);
                     _loc16_ = _loc5_ | 4;
                     si32(3,_loc16_);
                     ESP = _loc1_;
                     F___cxa_end_catch();
                     break loop1;
                  }
               }
            }
            else
            {
               _loc2_ = li32(_loc17_ - 48);
               _loc15_ = li32(_loc17_ - 44);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc2_,_loc1_);
               ESP = _loc1_;
               F___cxa_begin_catch();
               _loc1_ = int(_loc1_ + 16);
               _loc2_ = li32(_loc17_ - 60);
               _loc1_ = int(_loc1_ - 16);
               si32(_loc2_,_loc1_);
               ESP = _loc1_;
               F__ZdlPv();
               _loc1_ = int(_loc1_ + 16);
               _loc2_ = _loc5_ | 4;
               si32(2,_loc2_);
               ESP = _loc1_;
               F___cxa_rethrow();
               break;
            }
         }
         while(true)
         {
            si32(-1,_loc16_);
            _loc1_ = int(_loc1_ - 16);
            si32(_loc6_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Resume();
            _loc1_ = int(_loc1_ + 16);
            §§goto(addr332);
         }
      }
   }
}
