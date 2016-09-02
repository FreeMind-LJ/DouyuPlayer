package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tdexcept_2E_o_3A_6FB92F22_2D_ED5B_2D_4C06_2D_B80B_2D_6BC6232606FA.*;
   
   public function F__ZNSt11range_errorC2ERKSs() : void
   {
      var _loc3_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:int = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:int = 0;
      var _loc9_:int = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc5_)
         {
            _loc3_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            _loc1_ = li32(_loc3_);
            si32(_loc1_,_loc3_ - 60);
            _loc1_ = int(__ZTVSt13runtime_error + 8);
            _loc12_ = li32(_loc3_ - 60);
            si32(_loc1_,_loc12_);
            _loc11_ = li32(_loc3_ - 60);
            si32(L_LSDA_19,_loc3_ - 28);
            si32(___gxx_personality_sj0,_loc3_ - 32);
            _loc1_ = _loc3_;
            si32(_loc1_,_loc3_ - 24);
            _loc1_ = _loc2_;
            si32(_loc1_,_loc3_ - 16);
            _loc10_ = _loc3_ - 56;
            _loc9_ = _loc10_ + 32;
            eax = setjmp(_loc9_,1,_loc2_);
         }
         else if(int(_loc5_) - 1)
         {
            throw "bad longjmp";
         }
         _loc1_ = int(eax);
         if(_loc1_ == 0)
         {
            _loc8_ = _loc11_ + 4;
            _loc7_ = li32(_loc3_ + 4);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = _loc10_ | 4;
            si32(1,_loc1_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_ + 4);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__ZNSsC1ERKSs();
            _loc2_ = int(_loc2_ + 16);
         }
         else
         {
            _loc1_ = _loc10_ | 4;
            _loc1_ = li32(_loc1_);
            if(_loc1_ != 0)
            {
               while(true)
               {
               }
            }
            else
            {
               _loc1_ = li32(_loc3_ - 60);
               _loc6_ = li32(_loc3_ - 48);
               _loc4_ = li32(_loc3_ - 44);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F__ZNSt9exceptionD2Ev();
               _loc2_ = int(_loc2_ + 16);
               _loc1_ = _loc10_ | 4;
               si32(-1,_loc1_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Resume();
               _loc2_ = int(_loc2_ + 16);
            }
         }
         _loc1_ = int(__ZTVSt11range_error + 8);
         si32(_loc1_,_loc12_);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc10_,_loc2_);
         ESP = _loc2_;
         F__Unwind_SjLj_Unregister();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
   }
}
