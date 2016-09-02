package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_S8_() : void
   {
      var _loc4_:* = 0;
      var _loc8_:int = 0;
      var _loc12_:* = 0;
      var _loc15_:* = 0;
      var _loc10_:* = 0;
      var _loc16_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:int = 0;
      var _loc13_:int = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc8_)
         {
            _loc4_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            _loc3_ = li32(_loc4_);
            si32(_loc3_,_loc4_ - 60);
            _loc3_ = li32(_loc4_ - 60);
            _loc2_ = int(_loc2_ - 16);
            _loc16_ = li32(_loc4_ + 4);
            si32(_loc16_,_loc2_ + 4);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F__ZNSsC1ERKSs();
            _loc2_ = int(_loc2_ + 16);
            _loc15_ = li32(_loc4_ - 60);
            si32(L_LSDA_155,_loc4_ - 28);
            si32(___gxx_personality_sj0,_loc4_ - 32);
            _loc3_ = _loc4_;
            si32(_loc3_,_loc4_ - 24);
            _loc3_ = _loc2_;
            si32(_loc3_,_loc4_ - 16);
            _loc14_ = _loc4_ - 56;
            _loc13_ = _loc14_ + 32;
            eax = setjmp(_loc13_,1,_loc2_);
         }
         else if(int(_loc8_) - 1)
         {
            throw "bad longjmp";
         }
         _loc3_ = int(eax);
         if(_loc3_ == 0)
         {
            _loc12_ = li32(_loc4_ + 8);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc14_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            _loc3_ = _loc14_ | 4;
            si32(1,_loc3_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc12_,_loc2_ + 4);
            si32(_loc15_,_loc2_);
            ESP = _loc2_;
            F__ZNSs6appendERKSs();
            _loc2_ = int(_loc2_ + 16);
         }
         else
         {
            while(true)
            {
               _loc3_ = _loc14_ | 4;
               _loc7_ = li32(_loc3_);
               if(_loc7_ != 0)
               {
                  if(_loc7_ != 1)
                  {
                     while(true)
                     {
                     }
                  }
                  else
                  {
                     _loc5_ = li32(_loc4_ - 48);
                     _loc6_ = li32(_loc4_ - 44);
                     ESP = _loc2_;
                     F__ZSt9terminatev();
                     continue;
                  }
               }
               else
               {
                  break;
               }
            }
            _loc10_ = li32(_loc4_ - 48);
            _loc9_ = li32(_loc4_ - 44);
            _loc11_ = _loc14_ | 4;
            _loc1_ = li32(_loc4_ - 60);
            si32(2,_loc11_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__ZNSsD1Ev();
            _loc2_ = int(_loc2_ + 16);
            si32(-1,_loc11_);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Resume();
            _loc2_ = int(_loc2_ + 16);
         }
         _loc2_ = int(_loc2_ - 16);
         si32(_loc14_,_loc2_);
         ESP = _loc2_;
         F__Unwind_SjLj_Unregister();
         _loc2_ = int(_loc2_ + 16);
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
   }
}
