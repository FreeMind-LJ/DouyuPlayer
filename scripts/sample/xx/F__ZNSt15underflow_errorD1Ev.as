package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tdexcept_2E_o_3A_6FB92F22_2D_ED5B_2D_4C06_2D_B80B_2D_6BC6232606FA.*;
   
   public function F__ZNSt15underflow_errorD1Ev() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc7_:* = 0;
      var _loc5_:int = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc4_)
         {
            _loc3_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            _loc1_ = li32(_loc3_);
            si32(_loc1_,_loc3_ - 60);
            _loc1_ = int(__ZTVSt13runtime_error + 8);
            _loc8_ = li32(_loc3_ - 60);
            si32(_loc1_,_loc8_);
            _loc7_ = li32(_loc3_ - 60);
            si32(L_LSDA_7,_loc3_ - 28);
            si32(___gxx_personality_sj0,_loc3_ - 32);
            _loc1_ = _loc3_;
            si32(_loc1_,_loc3_ - 24);
            _loc1_ = _loc2_;
            si32(_loc1_,_loc3_ - 16);
            _loc6_ = int(_loc3_ - 56);
            _loc5_ = _loc6_ + 32;
            eax = setjmp(_loc5_,1,_loc2_);
         }
         else if(int(_loc4_) - 1)
         {
            throw "bad longjmp";
         }
         _loc1_ = int(eax);
         if(_loc1_ == 0)
         {
            _loc7_ = int(_loc7_ + 4);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = _loc6_ | 4;
            si32(1,_loc1_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F__ZNSsD1Ev();
            _loc2_ = int(_loc2_ + 16);
         }
         else
         {
            _loc1_ = _loc6_ | 4;
            _loc1_ = li32(_loc1_);
            if(_loc1_ != 0)
            {
               while(true)
               {
               }
            }
            else
            {
               _loc1_ = li32(_loc3_ - 48);
               _loc6_ = li32(_loc3_ - 44);
               _loc8_ = li32(_loc3_ - 60);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F__ZNSt9exceptionD2Ev();
               _loc2_ = int(_loc2_ + 16);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F___cxa_call_unexpected();
               _loc2_ = int(_loc2_ + 16);
            }
         }
         _loc1_ = li32(_loc3_ - 60);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__ZNSt9exceptionD2Ev();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = int(_loc2_ - 16);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F__Unwind_SjLj_Unregister();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
   }
}
