package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx__3A__5C_FlasCC_1_2E_0_2E_0_5C_cygwin_5C_tmp_5C_ccoWZZEr_2E_o_3A_fa4b70d4_2D_363d_2D_4eae_2D_96dc_2D_1df1d5edcc9b.*;
   import avm2.intrinsics.memory.li32;
   
   public function F_sub_18() : void
   {
      var _loc1_:* = 0;
      var _loc10_:int = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc6_:int = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc10_)
         {
            _loc1_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            _loc2_ = int(_loc2_ - 16);
            si32(8,_loc2_);
            ESP = _loc2_;
            F__Znwj();
            _loc2_ = int(_loc2_ + 16);
            _loc3_ = int(eax);
            si32(_loc3_,_loc1_ - 60);
            _loc4_ = li32(_loc1_ - 60);
            si32(L_LSDA_5,_loc1_ - 28);
            si32(___gxx_personality_sj0,_loc1_ - 32);
            _loc3_ = _loc1_;
            si32(_loc3_,_loc1_ - 24);
            _loc3_ = _loc2_;
            si32(_loc3_,_loc1_ - 16);
            _loc5_ = _loc1_ - 56;
            _loc6_ = _loc5_ + 32;
            eax = setjmp(_loc6_,1,_loc2_);
         }
         else if(int(_loc10_) - 1)
         {
            throw "bad longjmp";
         }
         _loc3_ = int(eax);
         if(_loc3_ == 0)
         {
            _loc7_ = li32(_loc1_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            _loc3_ = _loc5_ | 4;
            si32(1,_loc3_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_ + 4);
            si32(_loc4_,_loc2_);
            ESP = _loc2_;
            F__ZN12CDataProcessC1EPc();
            _loc2_ = int(_loc2_ + 16);
            si32(_loc4_,_pDataProcess);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Unregister();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = _loc1_;
            ESP = _loc2_;
            return;
         }
         while(true)
         {
            _loc3_ = _loc5_ | 4;
            _loc3_ = li32(_loc3_);
            if(_loc3_ != 0)
            {
               break;
            }
            _loc8_ = li32(_loc1_ - 48);
            _loc9_ = li32(_loc1_ - 44);
            _loc3_ = li32(_loc1_ - 60);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F__ZdlPv();
            _loc2_ = int(_loc2_ + 16);
            _loc3_ = _loc5_ | 4;
            si32(-1,_loc3_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Resume();
            _loc2_ = int(_loc2_ + 16);
         }
         while(true)
         {
         }
      }
   }
}
