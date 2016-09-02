package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_() : void
   {
      var _loc9_:* = 0;
      var _loc14_:int = 0;
      var _loc22_:* = 0;
      var _loc18_:* = 0;
      var _loc21_:int = 0;
      var _loc16_:int = 0;
      var _loc13_:* = 0;
      var _loc5_:* = 0;
      var _loc20_:int = 0;
      var _loc19_:int = 0;
      var _loc2_:* = 0;
      var _loc17_:* = 0;
      var _loc15_:* = 0;
      var _loc1_:int = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = int(ESP);
      while(true)
      {
         if(!_loc14_)
         {
            _loc9_ = _loc4_;
            _loc4_ = int(_loc4_ - 64);
            _loc5_ = li32(_loc9_);
            si32(_loc5_,_loc9_ - 60);
            _loc4_ = int(_loc4_ - 16);
            _loc22_ = li32(_loc9_ + 4);
            si32(_loc22_,_loc4_);
            ESP = _loc4_;
            F_strlen();
            _loc4_ = int(_loc4_ + 16);
            _loc21_ = eax;
            _loc5_ = li32(_loc9_ - 60);
            _loc4_ = int(_loc4_ - 16);
            si32(_loc5_,_loc4_);
            ESP = _loc4_;
            F__ZNSsC1Ev();
            _loc4_ = int(_loc4_ + 16);
            si32(L_LSDA_153,_loc9_ - 28);
            si32(___gxx_personality_sj0,_loc9_ - 32);
            _loc5_ = _loc9_;
            si32(_loc5_,_loc9_ - 24);
            _loc5_ = _loc4_;
            si32(_loc5_,_loc9_ - 16);
            _loc20_ = _loc9_ - 56;
            _loc19_ = _loc20_ + 32;
            eax = setjmp(_loc19_,1,_loc4_);
         }
         else if(int(_loc14_) - 1)
         {
            throw "bad longjmp";
         }
         _loc5_ = int(eax);
         if(_loc5_ == 0)
         {
            _loc18_ = li32(_loc9_ + 8);
            _loc4_ = int(_loc4_ - 16);
            si32(_loc20_,_loc4_);
            ESP = _loc4_;
            F__Unwind_SjLj_Register();
            _loc4_ = int(_loc4_ + 16);
            _loc17_ = _loc20_ | 4;
            si32(1,_loc17_);
            _loc4_ = int(_loc4_ - 16);
            si32(_loc18_,_loc4_);
            ESP = _loc4_;
            F__ZNKSs4sizeEv();
            _loc4_ = int(_loc4_ + 16);
            _loc16_ = eax;
            _loc15_ = li32(_loc9_ - 60);
            si32(2,_loc17_);
            _loc1_ = _loc16_ + _loc21_;
            _loc4_ = int(_loc4_ - 16);
            si32(_loc1_,_loc4_ + 4);
            si32(_loc15_,_loc4_);
            ESP = _loc4_;
            F__ZNSs7reserveEj();
            _loc4_ = int(_loc4_ + 16);
            _loc10_ = li32(_loc9_ - 60);
            si32(3,_loc17_);
            _loc4_ = int(_loc4_ - 16);
            si32(_loc21_,_loc4_ + 8);
            si32(_loc22_,_loc4_ + 4);
            si32(_loc10_,_loc4_);
            ESP = _loc4_;
            F__ZNSs6appendEPKcj();
            _loc4_ = int(_loc4_ + 16);
            _loc11_ = li32(_loc9_ - 60);
            si32(4,_loc17_);
            _loc4_ = int(_loc4_ - 16);
            si32(_loc18_,_loc4_ + 4);
            si32(_loc11_,_loc4_);
            ESP = _loc4_;
            F__ZNSs6appendERKSs();
            _loc4_ = int(_loc4_ + 16);
         }
         else
         {
            while(true)
            {
               _loc5_ = _loc20_ | 4;
               _loc2_ = li32(_loc5_);
               if(uint(_loc2_) >= 4)
               {
                  if(_loc2_ != 4)
                  {
                     while(true)
                     {
                     }
                  }
                  else
                  {
                     _loc7_ = li32(_loc9_ - 48);
                     _loc8_ = li32(_loc9_ - 44);
                     ESP = _loc4_;
                     F__ZSt9terminatev();
                     continue;
                  }
               }
               else
               {
                  break;
               }
            }
            _loc13_ = li32(_loc9_ - 48);
            _loc3_ = li32(_loc9_ - 44);
            _loc12_ = _loc20_ | 4;
            _loc6_ = li32(_loc9_ - 60);
            si32(5,_loc12_);
            _loc4_ = int(_loc4_ - 16);
            si32(_loc6_,_loc4_);
            ESP = _loc4_;
            F__ZNSsD1Ev();
            _loc4_ = int(_loc4_ + 16);
            si32(-1,_loc12_);
            _loc4_ = int(_loc4_ - 16);
            si32(_loc13_,_loc4_);
            ESP = _loc4_;
            F__Unwind_SjLj_Resume();
            _loc4_ = int(_loc4_ + 16);
         }
         _loc4_ = int(_loc4_ - 16);
         si32(_loc20_,_loc4_);
         ESP = _loc4_;
         F__Unwind_SjLj_Unregister();
         _loc4_ = int(_loc4_ + 16);
         _loc4_ = _loc9_;
         ESP = _loc4_;
         return;
      }
   }
}
