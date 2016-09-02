package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNSsC2ERKSs() : void
   {
      var _loc6_:* = 0;
      var _loc11_:int = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc19_:int = 0;
      var _loc12_:int = 0;
      var _loc18_:int = 0;
      var _loc16_:int = 0;
      var _loc15_:int = 0;
      var _loc5_:* = 0;
      var _loc17_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:int = 0;
      var _loc9_:* = 0;
      var _loc1_:int = 0;
      var _loc10_:* = 0;
      var _loc2_:* = 0;
      var _loc8_:* = 0;
      var _loc3_:* = int(ESP);
      while(true)
      {
         if(!_loc11_)
         {
            _loc6_ = _loc3_;
            _loc3_ = int(_loc3_ - 80);
            _loc3_ = int(_loc3_ - 16);
            _loc4_ = li32(_loc6_ + 4);
            si32(_loc4_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs6_M_repEv();
            _loc3_ = int(_loc3_ + 16);
            _loc19_ = eax;
            _loc3_ = int(_loc3_ - 16);
            si32(_loc4_,_loc3_ + 4);
            _loc18_ = _loc6_ - 80;
            si32(_loc18_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs13get_allocatorEv();
            _loc3_ = int(_loc3_ + 16);
            si32(L_LSDA_24,_loc6_ - 28);
            si32(___gxx_personality_sj0,_loc6_ - 32);
            _loc17_ = _loc6_;
            si32(_loc17_,_loc6_ - 24);
            _loc17_ = _loc3_;
            si32(_loc17_,_loc6_ - 16);
            _loc16_ = _loc6_ - 56;
            _loc15_ = _loc16_ + 32;
            eax = setjmp(_loc15_,1,_loc3_);
         }
         else if(int(_loc11_) - 1)
         {
            throw "bad longjmp";
         }
         _loc17_ = int(eax);
         if(_loc17_ == 0)
         {
            _loc3_ = int(_loc3_ - 16);
            si32(_loc16_,_loc3_);
            ESP = _loc3_;
            F__Unwind_SjLj_Register();
            _loc3_ = int(_loc3_ + 16);
            _loc14_ = _loc16_ | 4;
            si32(1,_loc14_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc4_,_loc3_ + 4);
            _loc13_ = _loc6_ - 72;
            si32(_loc13_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs13get_allocatorEv();
            _loc3_ = int(_loc3_ + 16);
            si32(2,_loc14_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc13_,_loc3_ + 8);
            si32(_loc18_,_loc3_ + 4);
            si32(_loc19_,_loc3_);
            ESP = _loc3_;
            F__ZNSs4_Rep7_M_grabERKSaIcES2_();
            _loc3_ = int(_loc3_ + 16);
            _loc12_ = eax;
            si32(3,_loc14_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc4_,_loc3_ + 4);
            _loc1_ = _loc6_ - 64;
            si32(_loc1_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs13get_allocatorEv();
            _loc3_ = int(_loc3_ + 16);
            _loc7_ = li32(_loc6_);
            si32(4,_loc14_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc1_,_loc3_ + 8);
            si32(_loc12_,_loc3_ + 4);
            si32(_loc7_,_loc3_);
            ESP = _loc3_;
            F__ZNSs12_Alloc_hiderC1EPcRKSaIcE();
            _loc3_ = int(_loc3_ + 16);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc1_,_loc3_);
            ESP = _loc3_;
            F__ZNSaIcED1Ev();
            _loc3_ = int(_loc3_ + 16);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc13_,_loc3_);
            ESP = _loc3_;
            F__ZNSaIcED1Ev();
            _loc3_ = int(_loc3_ + 16);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc18_,_loc3_);
            ESP = _loc3_;
            F__ZNSaIcED1Ev();
            _loc3_ = int(_loc3_ + 16);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc16_,_loc3_);
            ESP = _loc3_;
            F__Unwind_SjLj_Unregister();
            _loc3_ = int(_loc3_ + 16);
            _loc3_ = _loc6_;
            ESP = _loc3_;
            return;
         }
         _loc17_ = _loc16_ | 4;
         _loc5_ = li32(_loc17_);
         if(_loc5_ != 0)
         {
            _loc17_ = int(_loc5_ + -1);
            if(uint(_loc17_) >= 2)
            {
               if(_loc5_ != 3)
               {
                  while(true)
                  {
                  }
               }
               else
               {
                  _loc8_ = li32(_loc6_ - 48);
                  _loc2_ = li32(_loc6_ - 44);
                  _loc3_ = int(_loc3_ - 16);
                  _loc17_ = int(_loc6_ - 64);
                  si32(_loc17_,_loc3_);
                  ESP = _loc3_;
                  F__ZNSaIcED1Ev();
                  _loc3_ = int(_loc3_ + 16);
               }
            }
            else
            {
               _loc8_ = li32(_loc6_ - 48);
               _loc10_ = li32(_loc6_ - 44);
            }
            addr522:
            while(true)
            {
               _loc3_ = int(_loc3_ - 16);
               _loc17_ = int(_loc6_ - 72);
               si32(_loc17_,_loc3_);
               ESP = _loc3_;
               F__ZNSaIcED1Ev();
               _loc3_ = int(_loc3_ + 16);
            }
         }
         else
         {
            _loc8_ = li32(_loc6_ - 48);
            _loc9_ = li32(_loc6_ - 44);
         }
         while(true)
         {
            _loc3_ = int(_loc3_ - 16);
            si32(_loc18_,_loc3_);
            ESP = _loc3_;
            F__ZNSaIcED1Ev();
            _loc3_ = int(_loc3_ + 16);
            _loc17_ = _loc16_ | 4;
            si32(-1,_loc17_);
            _loc3_ = int(_loc3_ - 16);
            si32(_loc8_,_loc3_);
            ESP = _loc3_;
            F__Unwind_SjLj_Resume();
            _loc3_ = int(_loc3_ + 16);
            §§goto(addr522);
         }
      }
   }
}
