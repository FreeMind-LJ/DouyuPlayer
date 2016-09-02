package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_ew_op_2E_o_3A_7C0784B7_2D_37C0_2D_4AA7_2D_89DC_2D_797B4BF93334.*;
   
   public function F__Znwj() : void
   {
      var _loc3_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:int = 0;
      var _loc8_:int = 0;
      var _loc6_:int = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:int = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc5_)
         {
            _loc3_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            _loc1_ = 1;
            _loc12_ = li32(_loc3_);
            if(_loc12_ != 0)
            {
               _loc1_ = _loc12_;
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_malloc();
            _loc2_ = int(_loc2_ + 16);
            _loc11_ = eax;
            si32(L_LSDA_0,_loc3_ - 28);
            si32(___gxx_personality_sj0,_loc3_ - 32);
            _loc10_ = _loc3_;
            si32(_loc10_,_loc3_ - 24);
            _loc10_ = _loc2_;
            si32(_loc10_,_loc3_ - 16);
            _loc9_ = _loc3_ - 56;
            _loc8_ = _loc9_ + 32;
            eax = setjmp(_loc8_,1,_loc2_);
         }
         else if(int(_loc5_) - 1)
         {
            throw "bad longjmp";
         }
         _loc10_ = int(eax);
         if(_loc10_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            while(_loc11_ == 0)
            {
               _loc7_ = li32(___new_handler);
               if(_loc7_ == 0)
               {
                  _loc2_ = int(_loc2_ - 16);
                  si32(4,_loc2_);
                  ESP = _loc2_;
                  F___cxa_allocate_exception();
                  _loc10_ = int(__ZTVSt9bad_alloc + 8);
                  _loc2_ = int(_loc2_ + 16);
                  _loc6_ = eax;
                  si32(_loc10_,_loc6_);
                  _loc10_ = _loc9_ | 4;
                  si32(1,_loc10_);
                  _loc2_ = int(_loc2_ - 16);
                  si32(__ZNSt9bad_allocD1Ev,_loc2_ + 8);
                  si32(__ZTISt9bad_alloc,_loc2_ + 4);
                  si32(_loc6_,_loc2_);
                  ESP = _loc2_;
                  F___cxa_throw();
                  _loc2_ = int(_loc2_ + 16);
               }
               _loc10_ = _loc9_ | 4;
               si32(2,_loc10_);
               ESP = _loc2_;
               ptr2fun[_loc7_]();
               _loc2_ = int(_loc2_ - 16);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_malloc();
               _loc2_ = int(_loc2_ + 16);
               _loc11_ = eax;
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Unregister();
            _loc2_ = int(_loc2_ + 16);
            eax = _loc11_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
         while(true)
         {
            _loc10_ = _loc9_ | 4;
            _loc10_ = li32(_loc10_);
            if(uint(_loc10_) >= 2)
            {
               break;
            }
            while(true)
            {
               _loc4_ = li32(_loc3_ - 48);
               _loc10_ = li32(_loc3_ - 44);
               if(_loc10_ >= 0)
               {
                  break;
               }
               _loc10_ = _loc9_ | 4;
               si32(-1,_loc10_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F___cxa_call_unexpected();
               _loc2_ = int(_loc2_ + 16);
            }
            _loc10_ = _loc9_ | 4;
            si32(-1,_loc10_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc4_,_loc2_);
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
