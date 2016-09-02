package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNSsC2Ev() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc7_:* = 0;
      var _loc11_:int = 0;
      var _loc10_:int = 0;
      var _loc9_:int = 0;
      var _loc8_:int = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc4_)
         {
            _loc3_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            ESP = _loc2_;
            F__ZNSs12_S_empty_repEv();
            _loc1_ = int(eax);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__ZNSs4_Rep10_M_refdataEv();
            _loc2_ = int(_loc2_ + 16);
            _loc11_ = eax;
            _loc2_ = int(_loc2_ - 16);
            _loc10_ = _loc3_ - 64;
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F__ZNSaIcEC1Ev();
            _loc2_ = int(_loc2_ + 16);
            si32(L_LSDA_20,_loc3_ - 28);
            si32(___gxx_personality_sj0,_loc3_ - 32);
            _loc1_ = _loc3_;
            si32(_loc1_,_loc3_ - 24);
            _loc1_ = _loc2_;
            si32(_loc1_,_loc3_ - 16);
            _loc9_ = _loc3_ - 56;
            _loc8_ = _loc9_ + 32;
            eax = setjmp(_loc8_,1,_loc2_);
         }
         else if(int(_loc4_) - 1)
         {
            throw "bad longjmp";
         }
         _loc1_ = int(eax);
         if(_loc1_ == 0)
         {
            _loc7_ = li32(_loc3_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = _loc9_ | 4;
            si32(1,_loc1_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_ + 8);
            si32(_loc11_,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F__ZNSs12_Alloc_hiderC1EPcRKSaIcE();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F__ZNSaIcED1Ev();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Unregister();
            _loc2_ = int(_loc2_ + 16);
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
         while(true)
         {
            _loc1_ = _loc9_ | 4;
            _loc1_ = li32(_loc1_);
            if(_loc1_ != 0)
            {
               break;
            }
            _loc6_ = li32(_loc3_ - 48);
            _loc5_ = li32(_loc3_ - 44);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F__ZNSaIcED1Ev();
            _loc2_ = int(_loc2_ + 16);
            _loc1_ = _loc9_ | 4;
            si32(-1,_loc1_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_);
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
