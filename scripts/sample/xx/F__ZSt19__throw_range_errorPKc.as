package sample.xx
{
   import avm2.intrinsics.memory.si32;
   import sample.xx_unctexcept_2E_o_3A_4C4D056D_2D_CC18_2D_4223_2D_B594_2D_CB5FEF2FC7EC.*;
   import avm2.intrinsics.memory.li32;
   
   public function F__ZSt19__throw_range_errorPKc() : void
   {
      var _loc6_:* = 0;
      var _loc11_:int = 0;
      var _loc16_:* = 0;
      var _loc4_:int = 0;
      var _loc18_:int = 0;
      var _loc17_:int = 0;
      var _loc5_:* = 0;
      var _loc15_:* = 0;
      var _loc14_:int = 0;
      var _loc1_:* = 0;
      var _loc13_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc19_:* = 0;
      var _loc10_:* = 0;
      var _loc2_:* = 0;
      var _loc12_:* = 0;
      var _loc3_:int = ESP;
      while(true)
      {
         if(!_loc11_)
         {
            _loc6_ = _loc3_;
            _loc3_ = _loc3_ - 80;
            _loc3_ = _loc3_ - 16;
            _loc4_ = _loc6_ - 64;
            si32(_loc4_,_loc3_);
            ESP = _loc3_;
            F__ZNSaIcEC1Ev();
            _loc3_ = _loc3_ + 16;
            si32(L_LSDA_13,_loc6_ - 28);
            si32(___gxx_personality_sj0,_loc6_ - 32);
            _loc19_ = _loc6_;
            si32(_loc19_,_loc6_ - 24);
            _loc19_ = _loc3_;
            si32(_loc19_,_loc6_ - 16);
            _loc18_ = _loc6_ - 56;
            _loc17_ = _loc18_ + 32;
            eax = setjmp(_loc17_,1,_loc3_);
         }
         else if(int(_loc11_) - 1)
         {
            throw "bad longjmp";
         }
         _loc19_ = int(eax);
         if(_loc19_ == 0)
         {
            _loc16_ = li32(_loc6_);
            _loc3_ = _loc3_ - 16;
            si32(_loc18_,_loc3_);
            ESP = _loc3_;
            F__Unwind_SjLj_Register();
            _loc3_ = _loc3_ + 16;
            _loc15_ = _loc18_ | 4;
            si32(1,_loc15_);
            _loc3_ = _loc3_ - 16;
            si32(_loc4_,_loc3_ + 8);
            si32(_loc16_,_loc3_ + 4);
            _loc14_ = _loc6_ - 72;
            si32(_loc14_,_loc3_);
            ESP = _loc3_;
            F__ZNSsC1EPKcRKSaIcE();
            _loc3_ = _loc3_ + 16;
            _loc3_ = _loc3_ - 16;
            si32(8,_loc3_);
            ESP = _loc3_;
            F___cxa_allocate_exception();
            _loc3_ = _loc3_ + 16;
            _loc19_ = int(eax);
            si32(_loc19_,_loc6_ - 60);
            _loc13_ = li32(_loc6_ - 60);
            si32(2,_loc15_);
            _loc3_ = _loc3_ - 16;
            si32(_loc14_,_loc3_ + 4);
            si32(_loc13_,_loc3_);
            ESP = _loc3_;
            F__ZNSt11range_errorC1ERKSs();
            _loc3_ = _loc3_ + 16;
            si32(3,_loc15_);
            _loc3_ = _loc3_ - 16;
            si32(_loc14_,_loc3_);
            ESP = _loc3_;
            F__ZNSsD1Ev();
            _loc3_ = _loc3_ + 16;
            _loc3_ = _loc3_ - 16;
            si32(_loc4_,_loc3_);
            ESP = _loc3_;
            F__ZNSaIcED1Ev();
            _loc3_ = _loc3_ + 16;
            _loc19_ = li32(_loc6_ - 60);
            si32(-1,_loc15_);
            _loc3_ = _loc3_ - 16;
            si32(__ZNSt11range_errorD1Ev,_loc3_ + 8);
            si32(__ZTISt11range_error,_loc3_ + 4);
            si32(_loc19_,_loc3_);
            ESP = _loc3_;
            F___cxa_throw();
            _loc3_ = _loc3_ + 16;
            addr338:
            while(true)
            {
               _loc12_ = li32(_loc6_ - 48);
               _loc1_ = li32(_loc6_ - 44);
               addr457:
               while(true)
               {
                  _loc3_ = _loc3_ - 16;
                  si32(_loc4_,_loc3_);
                  ESP = _loc3_;
                  F__ZNSaIcED1Ev();
                  _loc3_ = _loc3_ + 16;
                  _loc19_ = _loc18_ | 4;
                  si32(-1,_loc19_);
                  _loc3_ = _loc3_ - 16;
                  si32(_loc12_,_loc3_);
                  ESP = _loc3_;
                  F__Unwind_SjLj_Resume();
                  _loc3_ = _loc3_ + 16;
               }
            }
         }
         while(true)
         {
            _loc19_ = _loc18_ | 4;
            _loc5_ = li32(_loc19_);
            if(_loc5_ <= 1)
            {
               if(_loc5_ != 0)
               {
                  if(_loc5_ != 1)
                  {
                     break;
                  }
                  _loc12_ = li32(_loc6_ - 48);
                  _loc7_ = li32(_loc6_ - 44);
                  _loc19_ = li32(_loc6_ - 60);
                  _loc3_ = _loc3_ - 16;
                  si32(_loc19_,_loc3_);
                  ESP = _loc3_;
                  F___cxa_free_exception();
                  _loc3_ = _loc3_ + 16;
                  _loc19_ = _loc18_ | 4;
                  si32(4,_loc19_);
                  _loc3_ = _loc3_ - 16;
                  _loc19_ = int(_loc6_ - 72);
                  si32(_loc19_,_loc3_);
                  ESP = _loc3_;
                  F__ZNSsD1Ev();
                  _loc3_ = _loc3_ + 16;
               }
               else
               {
                  §§goto(addr338);
               }
            }
            else
            {
               if(_loc5_ != 2)
               {
                  if(_loc5_ != 3)
                  {
                     addr531:
                     while(true)
                     {
                     }
                  }
                  else
                  {
                     _loc8_ = li32(_loc6_ - 48);
                     _loc9_ = li32(_loc6_ - 44);
                     ESP = _loc3_;
                     F__ZSt9terminatev();
                  }
               }
               _loc10_ = li32(_loc6_ - 48);
               _loc2_ = li32(_loc6_ - 44);
               ESP = _loc3_;
               F__ZSt9terminatev();
            }
            §§goto(addr457);
         }
         §§goto(addr531);
      }
   }
}
