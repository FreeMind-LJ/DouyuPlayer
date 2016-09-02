package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNSs4_Rep10_M_refcopyEv() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc7_:* = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc4_)
         {
            _loc3_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            si32(L_LSDA_151,_loc3_ - 28);
            si32(___gxx_personality_sj0,_loc3_ - 32);
            _loc1_ = _loc3_;
            si32(_loc1_,_loc3_ - 24);
            _loc1_ = _loc2_;
            si32(_loc1_,_loc3_ - 16);
            _loc8_ = int(_loc3_ - 56);
            _loc7_ = int(_loc8_ + 32);
            eax = setjmp(_loc7_,1,_loc2_);
         }
         else if(int(_loc4_) - 1)
         {
            throw "bad longjmp";
         }
         _loc1_ = int(eax);
         if(_loc1_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            _loc6_ = _loc8_ | 4;
            si32(1,_loc6_);
            ESP = _loc2_;
            F__ZNSs4_Rep12_S_empty_repEv();
            _loc5_ = eax;
            _loc7_ = li32(_loc3_);
            if(_loc5_ != _loc7_)
            {
               si32(2,_loc6_);
               _loc2_ = int(_loc2_ - 16);
               si32(1,_loc2_ + 4);
               _loc1_ = int(_loc7_ + 8);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F__ZN9__gnu_cxx12__atomic_addEPVii();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F__ZNSs4_Rep10_M_refdataEv();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = int(eax);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Unregister();
            _loc2_ = int(_loc2_ + 16);
            eax = _loc1_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
         while(true)
         {
            _loc1_ = _loc8_ | 4;
            _loc1_ = li32(_loc1_);
            if(uint(_loc1_) >= 2)
            {
               break;
            }
            _loc1_ = li32(_loc3_ - 48);
            _loc8_ = li32(_loc3_ - 44);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F___cxa_call_unexpected();
            _loc2_ = int(_loc2_ + 16);
         }
         while(true)
         {
         }
      }
   }
}
