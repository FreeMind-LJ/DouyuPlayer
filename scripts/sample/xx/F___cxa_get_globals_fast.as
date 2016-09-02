package sample.xx
{
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx_h_globals_2E_o_3A_BE3703DC_2D_DDE4_2D_433D_2D_A974_2D_4A1C4EA1F40C.*;
   import avm2.intrinsics.memory.li32;
   
   public function F___cxa_get_globals_fast() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc5_:int = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc4_)
         {
            _loc3_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            _loc1_ = li8(__ZL4init + 4);
            si32(L_LSDA_0,_loc3_ - 28);
            si32(___gxx_personality_sj0,_loc3_ - 32);
            _loc7_ = _loc3_;
            si32(_loc7_,_loc3_ - 24);
            _loc7_ = _loc2_;
            si32(_loc7_,_loc3_ - 16);
            _loc6_ = int(_loc3_ - 56);
            _loc5_ = _loc6_ + 32;
            eax = setjmp(_loc5_,1,_loc2_);
         }
         else if(int(_loc4_) - 1)
         {
            throw "bad longjmp";
         }
         _loc7_ = int(eax);
         if(_loc7_ == 0)
         {
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            _loc7_ = _loc1_ & 255;
            _loc1_ = int(__ZL10eh_globals);
            if(_loc7_ != 0)
            {
               _loc7_ = _loc6_ | 4;
               _loc1_ = li32(__ZL4init);
               si32(1,_loc7_);
               _loc2_ = int(_loc2_ - 16);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_pthread_getspecific();
               _loc2_ = int(_loc2_ + 16);
               _loc1_ = int(eax);
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc6_,_loc2_);
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
            _loc7_ = _loc6_ | 4;
            _loc7_ = li32(_loc7_);
            if(_loc7_ != 0)
            {
               break;
            }
            _loc7_ = li32(_loc3_ - 48);
            _loc6_ = li32(_loc3_ - 44);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc7_,_loc2_);
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
