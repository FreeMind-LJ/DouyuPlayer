package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_() : void
   {
      var _loc7_:* = 0;
      var _loc12_:int = 0;
      var _loc14_:* = 0;
      var _loc18_:* = 0;
      var _loc16_:int = 0;
      var _loc9_:* = 0;
      var _loc4_:* = 0;
      var _loc20_:int = 0;
      var _loc19_:int = 0;
      var _loc6_:* = 0;
      var _loc17_:* = 0;
      var _loc15_:* = 0;
      var _loc13_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = int(ESP);
      while(true)
      {
         if(!_loc12_)
         {
            _loc7_ = _loc3_;
            _loc3_ = int(_loc3_ - 64);
            _loc4_ = li32(_loc7_);
            si32(_loc4_,_loc7_ - 60);
            _loc4_ = li32(_loc7_ - 60);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc4_,_loc3_);
            ESP = _loc3_;
            F__ZNSsC1Ev();
            _loc3_ = int(_loc3_ + 16);
            si32(L_LSDA_154,_loc7_ - 28);
            si32(___gxx_personality_sj0,_loc7_ - 32);
            _loc4_ = _loc7_;
            si32(_loc4_,_loc7_ - 24);
            _loc4_ = _loc3_;
            si32(_loc4_,_loc7_ - 16);
            _loc20_ = _loc7_ - 56;
            _loc19_ = _loc20_ + 32;
            eax = setjmp(_loc19_,1,_loc3_);
         }
         else if(int(_loc12_) - 1)
         {
            throw "bad longjmp";
         }
         _loc4_ = int(eax);
         if(_loc4_ == 0)
         {
            _loc18_ = li32(_loc7_ + 8);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc20_,_loc3_);
            ESP = _loc3_;
            F__Unwind_SjLj_Register();
            _loc3_ = int(_loc3_ + 16);
            _loc17_ = _loc20_ | 4;
            si32(1,_loc17_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc18_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs4sizeEv();
            _loc3_ = int(_loc3_ + 16);
            _loc16_ = eax;
            _loc15_ = li32(_loc7_ - 60);
            si32(2,_loc17_);
            _loc3_ = int(_loc3_ - 16);
            _loc4_ = int(_loc16_ + 1);
            si32(_loc4_,_loc3_ + 4);
            si32(_loc15_,_loc3_);
            ESP = _loc3_;
            F__ZNSs7reserveEj();
            _loc3_ = int(_loc3_ + 16);
            _loc14_ = li32(_loc7_ + 4);
            _loc13_ = li32(_loc7_ - 60);
            si32(3,_loc17_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc14_,_loc3_ + 8);
            si32(1,_loc3_ + 4);
            si32(_loc13_,_loc3_);
            ESP = _loc3_;
            F__ZNSs6appendEjc();
            _loc3_ = int(_loc3_ + 16);
            _loc1_ = li32(_loc7_ - 60);
            si32(4,_loc17_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc18_,_loc3_ + 4);
            si32(_loc1_,_loc3_);
            ESP = _loc3_;
            F__ZNSs6appendERKSs();
            _loc3_ = int(_loc3_ + 16);
         }
         else
         {
            while(true)
            {
               _loc4_ = _loc20_ | 4;
               _loc6_ = li32(_loc4_);
               if(uint(_loc6_) >= 4)
               {
                  if(_loc6_ != 4)
                  {
                     while(true)
                     {
                     }
                  }
                  else
                  {
                     _loc2_ = li32(_loc7_ - 48);
                     _loc5_ = li32(_loc7_ - 44);
                     ESP = _loc3_;
                     F__ZSt9terminatev();
                     continue;
                  }
               }
               else
               {
                  break;
               }
            }
            _loc9_ = li32(_loc7_ - 48);
            _loc10_ = li32(_loc7_ - 44);
            _loc8_ = _loc20_ | 4;
            _loc11_ = li32(_loc7_ - 60);
            si32(5,_loc8_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc11_,_loc3_);
            ESP = _loc3_;
            F__ZNSsD1Ev();
            _loc3_ = int(_loc3_ + 16);
            si32(-1,_loc8_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc9_,_loc3_);
            ESP = _loc3_;
            F__Unwind_SjLj_Resume();
            _loc3_ = int(_loc3_ + 16);
         }
         _loc3_ = int(_loc3_ - 16);
         si32(_loc20_,_loc3_);
         ESP = _loc3_;
         F__Unwind_SjLj_Unregister();
         _loc3_ = int(_loc3_ + 16);
         _loc3_ = _loc7_;
         ESP = _loc3_;
         return;
      }
   }
}
