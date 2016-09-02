package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_tring_2D_inst_2E_o_3A_627BB704_2D_740D_2D_455D_2D_A914_2D_77D0F1EFB3B1.*;
   
   public function F__ZNSs6assignERKSs() : void
   {
      var _loc7_:* = 0;
      var _loc12_:int = 0;
      var _loc4_:* = 0;
      var _loc19_:* = 0;
      var _loc20_:int = 0;
      var _loc18_:int = 0;
      var _loc1_:int = 0;
      var _loc9_:int = 0;
      var _loc10_:int = 0;
      var _loc16_:int = 0;
      var _loc15_:int = 0;
      var _loc6_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:int = 0;
      var _loc8_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = 0;
      var _loc17_:* = 0;
      var _loc11_:* = 0;
      var _loc3_:* = int(ESP);
      while(true)
      {
         if(!_loc12_)
         {
            _loc7_ = _loc3_;
            _loc3_ = int(_loc3_ - 80);
            _loc3_ = int(_loc3_ - 16);
            _loc4_ = li32(_loc7_);
            si32(_loc4_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs6_M_repEv();
            _loc3_ = int(_loc3_ + 16);
            _loc20_ = eax;
            _loc3_ = int(_loc3_ - 16);
            _loc19_ = li32(_loc7_ + 4);
            si32(_loc19_,_loc3_);
            ESP = _loc3_;
            F__ZNKSs6_M_repEv();
            _loc3_ = int(_loc3_ + 16);
            _loc18_ = eax;
            si32(L_LSDA_71,_loc7_ - 28);
            si32(___gxx_personality_sj0,_loc7_ - 32);
            _loc17_ = _loc7_;
            si32(_loc17_,_loc7_ - 24);
            _loc17_ = _loc3_;
            si32(_loc17_,_loc7_ - 16);
            _loc16_ = _loc7_ - 56;
            _loc15_ = _loc16_ + 32;
            eax = setjmp(_loc15_,1,_loc3_);
         }
         else if(int(_loc12_) - 1)
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
            if(_loc20_ != _loc18_)
            {
               _loc14_ = _loc16_ | 4;
               si32(-1,_loc14_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc4_,_loc3_ + 4);
               _loc13_ = _loc7_ - 72;
               si32(_loc13_,_loc3_);
               ESP = _loc3_;
               F__ZNKSs13get_allocatorEv();
               _loc3_ = int(_loc3_ + 16);
               si32(1,_loc14_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc19_,_loc3_);
               ESP = _loc3_;
               F__ZNKSs6_M_repEv();
               _loc3_ = int(_loc3_ + 16);
               _loc1_ = eax;
               si32(2,_loc14_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc19_,_loc3_ + 4);
               _loc8_ = _loc7_ - 64;
               si32(_loc8_,_loc3_);
               ESP = _loc3_;
               F__ZNKSs13get_allocatorEv();
               _loc3_ = int(_loc3_ + 16);
               si32(3,_loc14_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc8_,_loc3_ + 8);
               si32(_loc13_,_loc3_ + 4);
               si32(_loc1_,_loc3_);
               ESP = _loc3_;
               F__ZNSs4_Rep7_M_grabERKSaIcES2_();
               _loc3_ = int(_loc3_ + 16);
               _loc9_ = eax;
               _loc3_ = int(_loc3_ - 16);
               si32(_loc8_,_loc3_);
               ESP = _loc3_;
               F__ZNSaIcED1Ev();
               _loc3_ = int(_loc3_ + 16);
               si32(4,_loc14_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc4_,_loc3_);
               ESP = _loc3_;
               F__ZNKSs6_M_repEv();
               _loc3_ = int(_loc3_ + 16);
               _loc10_ = eax;
               si32(5,_loc14_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc13_,_loc3_ + 4);
               si32(_loc10_,_loc3_);
               ESP = _loc3_;
               F__ZNSs4_Rep10_M_disposeERKSaIcE();
               _loc3_ = int(_loc3_ + 16);
               si32(6,_loc14_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc9_,_loc3_ + 4);
               si32(_loc4_,_loc3_);
               ESP = _loc3_;
               F__ZNSs7_M_dataEPc();
               _loc3_ = int(_loc3_ + 16);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc13_,_loc3_);
               ESP = _loc3_;
               F__ZNSaIcED1Ev();
               _loc3_ = int(_loc3_ + 16);
            }
            _loc3_ = int(_loc3_ - 16);
            si32(_loc16_,_loc3_);
            ESP = _loc3_;
            F__Unwind_SjLj_Unregister();
            _loc3_ = int(_loc3_ + 16);
            eax = _loc4_;
            _loc3_ = _loc7_;
            ESP = _loc3_;
            return;
         }
         while(true)
         {
            _loc17_ = _loc16_ | 4;
            _loc6_ = li32(_loc17_);
            if(uint(_loc6_) <= 5)
            {
               _loc17_ = 1 << _loc6_;
               _loc17_ = _loc17_ & 59;
               if(_loc17_ == 0)
               {
                  if(_loc6_ != 2)
                  {
                     break;
                  }
                  _loc11_ = li32(_loc7_ - 48);
                  _loc5_ = li32(_loc7_ - 44);
                  _loc3_ = int(_loc3_ - 16);
                  _loc17_ = int(_loc7_ - 64);
                  si32(_loc17_,_loc3_);
                  ESP = _loc3_;
                  F__ZNSaIcED1Ev();
                  _loc3_ = int(_loc3_ + 16);
               }
               else
               {
                  _loc11_ = li32(_loc7_ - 48);
                  _loc2_ = li32(_loc7_ - 44);
               }
               _loc3_ = int(_loc3_ - 16);
               _loc17_ = int(_loc7_ - 72);
               si32(_loc17_,_loc3_);
               ESP = _loc3_;
               F__ZNSaIcED1Ev();
               _loc3_ = int(_loc3_ + 16);
               _loc17_ = _loc16_ | 4;
               si32(-1,_loc17_);
               _loc3_ = int(_loc3_ - 16);
               si32(_loc11_,_loc3_);
               ESP = _loc3_;
               F__Unwind_SjLj_Resume();
               _loc3_ = int(_loc3_ + 16);
               continue;
            }
            break;
         }
         while(true)
         {
         }
      }
   }
}
