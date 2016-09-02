package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_unctexcept_2E_o_3A_4C4D056D_2D_CC18_2D_4223_2D_B594_2D_CB5FEF2FC7EC.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZSt19__throw_ios_failurePKc() : void
   {
      var _loc4_:* = 0;
      var _loc8_:int = 0;
      var _loc13_:* = 0;
      var _loc10_:int = 0;
      var _loc3_:int = 0;
      var _loc15_:int = 0;
      var _loc14_:int = 0;
      var _loc16_:* = 0;
      var _loc7_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:int = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:int = ESP;
      while(true)
      {
         if(!_loc8_)
         {
            _loc4_ = _loc2_;
            _loc2_ = _loc2_ - 80;
            _loc2_ = _loc2_ - 16;
            _loc3_ = _loc4_ - 64;
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F__ZNSaIcEC1Ev();
            _loc2_ = _loc2_ + 16;
            si32(L_LSDA_1,_loc4_ - 28);
            si32(___gxx_personality_sj0,_loc4_ - 32);
            _loc16_ = _loc4_;
            si32(_loc16_,_loc4_ - 24);
            _loc16_ = _loc2_;
            si32(_loc16_,_loc4_ - 16);
            _loc15_ = _loc4_ - 56;
            _loc14_ = _loc15_ + 32;
            eax = setjmp(_loc14_,1,_loc2_);
         }
         else if(int(_loc8_) - 1)
         {
            throw "bad longjmp";
         }
         _loc16_ = int(eax);
         if(_loc16_ == 0)
         {
            _loc13_ = li32(_loc4_);
            _loc2_ = _loc2_ - 16;
            si32(_loc15_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = _loc2_ + 16;
            _loc12_ = _loc15_ | 4;
            si32(1,_loc12_);
            _loc2_ = _loc2_ - 16;
            si32(_loc3_,_loc2_ + 8);
            si32(_loc13_,_loc2_ + 4);
            _loc11_ = _loc4_ - 72;
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F__ZNSsC1EPKcRKSaIcE();
            _loc2_ = _loc2_ + 16;
            _loc2_ = _loc2_ - 16;
            si32(8,_loc2_);
            ESP = _loc2_;
            F___cxa_allocate_exception();
            _loc2_ = _loc2_ + 16;
            _loc10_ = eax;
            _loc2_ = _loc2_ - 16;
            si32(_loc11_,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F__ZNSt8ios_base7failureC1ERKSs();
            _loc2_ = _loc2_ + 16;
            si32(2,_loc12_);
            _loc2_ = _loc2_ - 16;
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F__ZNSsD1Ev();
            _loc2_ = _loc2_ + 16;
            _loc2_ = _loc2_ - 16;
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F__ZNSaIcED1Ev();
            _loc2_ = _loc2_ + 16;
            si32(-1,_loc12_);
            _loc2_ = _loc2_ - 16;
            si32(__ZNSt8ios_base7failureD1Ev,_loc2_ + 8);
            si32(__ZTINSt8ios_base7failureE,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F___cxa_throw();
            _loc2_ = _loc2_ + 16;
            addr311:
            while(true)
            {
               _loc9_ = li32(_loc4_ - 48);
               _loc1_ = li32(_loc4_ - 44);
               _loc2_ = _loc2_ - 16;
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F__ZNSaIcED1Ev();
               _loc2_ = _loc2_ + 16;
               _loc16_ = _loc15_ | 4;
               si32(-1,_loc16_);
               _loc2_ = _loc2_ - 16;
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Resume();
               _loc2_ = _loc2_ + 16;
               addr368:
               while(true)
               {
                  _loc5_ = li32(_loc4_ - 48);
                  _loc6_ = li32(_loc4_ - 44);
                  ESP = _loc2_;
                  F__ZSt9terminatev();
               }
            }
         }
         while(true)
         {
            _loc16_ = _loc15_ | 4;
            _loc7_ = li32(_loc16_);
            if(_loc7_ != 0)
            {
               if(_loc7_ != 1)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr311);
            }
            §§goto(addr368);
         }
         while(true)
         {
         }
      }
   }
}
