package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNSs7reserveEj() : void
   {
      var _loc6_:* = 0;
      var _loc11_:int = 0;
      var _loc4_:* = 0;
      var _loc19_:int = 0;
      var _loc1_:int = 0;
      var _loc7_:int = 0;
      var _loc9_:int = 0;
      var _loc10_:int = 0;
      var _loc17_:int = 0;
      var _loc16_:int = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc18_:* = 0;
      var _loc12_:int = 0;
      var _loc8_:int = 0;
      var _loc2_:* = 0;
      var _loc5_:* = 0;
      var _loc15_:* = 0;
      var _loc3_:* = int(ESP);
      while(true)
      {
         if(!_loc11_)
         {
            _loc6_ = _loc3_;
            _loc3_ = int(_loc3_ - 64);
            _loc3_ = int(_loc3_ - 16);
            _loc4_ = li32(_loc6_);
            si32(_loc4_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs8capacityEv();
            _loc3_ = int(_loc3_ + 16);
            _loc19_ = eax;
            si32(L_LSDA_55,_loc6_ - 28);
            si32(___gxx_personality_sj0,_loc6_ - 32);
            _loc18_ = _loc6_;
            si32(_loc18_,_loc6_ - 24);
            _loc18_ = _loc3_;
            si32(_loc18_,_loc6_ - 16);
            _loc17_ = _loc6_ - 56;
            _loc16_ = _loc17_ + 32;
            eax = setjmp(_loc16_,1,_loc3_);
         }
         else if(int(_loc11_) - 1)
         {
            throw "bad longjmp";
         }
         _loc18_ = int(eax);
         if(_loc18_ == 0)
         {
            _loc15_ = li32(_loc6_ + 4);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc17_,_loc3_);
            ESP = _loc3_;
            F__Unwind_SjLj_Register();
            _loc3_ = int(_loc3_ + 16);
            if(_loc19_ == _loc15_)
            {
               _loc14_ = _loc17_ | 4;
               si32(-1,_loc14_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc4_,_loc3_);
               ESP = _loc3_;
               F__ZNKSs6_M_repEv();
               _loc3_ = int(_loc3_ + 16);
               _loc18_ = int(eax);
               si32(-1,_loc14_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc18_,_loc3_);
               ESP = _loc3_;
               F__ZNKSs4_Rep12_M_is_sharedEv();
               _loc3_ = int(_loc3_ + 16);
               _loc18_ = int(eax);
               if(_loc18_ != 0)
               {
               }
               addr515:
               _loc3_ = int(_loc3_ - 16);
               si32(_loc17_,_loc3_);
               ESP = _loc3_;
               F__Unwind_SjLj_Unregister();
               _loc3_ = int(_loc3_ + 16);
               _loc3_ = _loc6_;
               ESP = _loc3_;
               return;
            }
            _loc13_ = _loc17_ | 4;
            si32(-1,_loc13_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc4_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs4sizeEv();
            _loc3_ = int(_loc3_ + 16);
            _loc18_ = int(eax);
            if(uint(_loc18_) > uint(_loc15_))
            {
               si32(-1,_loc13_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc4_,_loc3_);
               ESP = _loc3_;
               F__ZNKSs4sizeEv();
               _loc3_ = int(_loc3_ + 16);
               _loc15_ = int(eax);
            }
            si32(-1,_loc13_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc4_,_loc3_ + 4);
            _loc12_ = _loc6_ - 64;
            si32(_loc12_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs13get_allocatorEv();
            _loc3_ = int(_loc3_ + 16);
            si32(1,_loc13_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc4_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs6_M_repEv();
            _loc3_ = int(_loc3_ + 16);
            _loc1_ = eax;
            si32(2,_loc13_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc4_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs4sizeEv();
            _loc3_ = int(_loc3_ + 16);
            _loc7_ = eax;
            si32(3,_loc13_);
            _loc8_ = _loc15_ - _loc7_;
            _loc3_ = int(_loc3_ - 16);
            si32(_loc8_,_loc3_ + 8);
            si32(_loc12_,_loc3_ + 4);
            si32(_loc1_,_loc3_);
            ESP = _loc3_;
            F__ZNSs4_Rep8_M_cloneERKSaIcEj();
            _loc3_ = int(_loc3_ + 16);
            _loc9_ = eax;
            si32(4,_loc13_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc4_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs6_M_repEv();
            _loc3_ = int(_loc3_ + 16);
            _loc10_ = eax;
            si32(5,_loc13_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc12_,_loc3_ + 4);
            si32(_loc10_,_loc3_);
            ESP = _loc3_;
            F__ZNSs4_Rep10_M_disposeERKSaIcE();
            _loc3_ = int(_loc3_ + 16);
            si32(6,_loc13_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc9_,_loc3_ + 4);
            si32(_loc4_,_loc3_);
            ESP = _loc3_;
            F__ZNSs7_M_dataEPc();
            _loc3_ = int(_loc3_ + 16);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc12_,_loc3_);
            ESP = _loc3_;
            F__ZNSaIcED1Ev();
            _loc3_ = int(_loc3_ + 16);
            §§goto(addr515);
         }
         else
         {
            while(true)
            {
               _loc18_ = _loc17_ | 4;
               _loc18_ = li32(_loc18_);
               if(uint(_loc18_) >= 6)
               {
                  break;
               }
               _loc2_ = li32(_loc6_ - 48);
               _loc5_ = li32(_loc6_ - 44);
               _loc3_ = int(_loc3_ - 16);
               _loc18_ = int(_loc6_ - 64);
               si32(_loc18_,_loc3_);
               ESP = _loc3_;
               F__ZNSaIcED1Ev();
               _loc3_ = int(_loc3_ + 16);
               _loc18_ = _loc17_ | 4;
               si32(-1,_loc18_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc2_,_loc3_);
               ESP = _loc3_;
               F__Unwind_SjLj_Resume();
               _loc3_ = int(_loc3_ + 16);
            }
            while(true)
            {
            }
         }
      }
   }
}
