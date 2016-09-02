package sample.xx
{
   import sample.xx_h_catch_2E_o_3A_10AD40DF_2D_77B4_2D_4E8F_2D_8C4E_2D_E570C00524BE.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___cxa_begin_catch() : void
   {
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc13_:* = 0;
      var _loc3_:int = 0;
      var _loc10_:* = 0;
      var _loc7_:int = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         if(!_loc5_)
         {
            _loc4_ = _loc2_;
            _loc2_ = int(_loc2_ - 64);
            ESP = _loc2_;
            F___cxa_get_globals();
            _loc3_ = eax;
            _loc13_ = li32(_loc4_);
            _loc12_ = li32(_loc13_ + 4);
            _loc11_ = li32(_loc13_);
            _loc10_ = li32(_loc3_);
            si32(L_LSDA_3,_loc4_ - 28);
            si32(___gxx_personality_sj0,_loc4_ - 32);
            _loc9_ = _loc4_;
            si32(_loc9_,_loc4_ - 24);
            _loc9_ = _loc2_;
            si32(_loc9_,_loc4_ - 16);
            _loc8_ = int(_loc4_ - 56);
            _loc7_ = _loc8_ + 32;
            _loc6_ = 0;
            eax = setjmp(_loc7_,1,_loc2_);
         }
         else if(int(_loc5_) - 1)
         {
            throw "bad longjmp";
         }
         _loc9_ = int(eax);
         if(_loc9_ == 0)
         {
            _loc7_ = _loc13_ + -48;
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            _loc9_ = _loc11_ ^ 1126902528;
            _loc1_ = _loc12_ ^ 1196315971;
            _loc9_ = _loc9_ | _loc1_;
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ = int(_loc2_ + 16);
            if(_loc9_ != 0)
            {
               if(_loc10_ != 0)
               {
                  _loc9_ = _loc8_ | 4;
                  si32(1,_loc9_);
                  ESP = _loc2_;
                  F__ZSt9terminatev();
               }
               si32(_loc7_,_loc3_);
            }
            else
            {
               _loc1_ = li32(_loc13_ - 28);
               _loc9_ = _loc1_ >> 31;
               _loc1_ = int(_loc1_ + _loc9_);
               _loc9_ = _loc1_ ^ _loc9_;
               _loc9_ = int(_loc9_ + 1);
               si32(_loc9_,_loc13_ - 28);
               _loc9_ = li32(_loc3_ + 4);
               _loc9_ = int(_loc9_ + -1);
               si32(_loc9_,_loc3_ + 4);
               if(_loc7_ != _loc10_)
               {
                  si32(_loc10_,_loc13_ - 32);
                  si32(_loc7_,_loc3_);
               }
               _loc6_ = li32(_loc13_ - 8);
            }
            _loc2_ = int(_loc2_ - 16);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Unregister();
            _loc2_ = int(_loc2_ + 16);
            eax = _loc6_;
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
         while(true)
         {
            _loc9_ = _loc8_ | 4;
            _loc9_ = li32(_loc9_);
            if(_loc9_ != 0)
            {
               break;
            }
            _loc9_ = li32(_loc4_ - 48);
            _loc8_ = li32(_loc4_ - 44);
            _loc2_ = int(_loc2_ - 16);
            si32(_loc9_,_loc2_);
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
