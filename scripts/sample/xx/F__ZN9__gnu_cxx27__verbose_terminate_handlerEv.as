package sample.xx
{
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.xx_terminate_2E_o_3A_9A4559D6_2D_E746_2D_4758_2D_832D_2D_239BFD7CAF74.*;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN9__gnu_cxx27__verbose_terminate_handlerEv() : void
   {
      var _loc10_:* = 0;
      var _loc15_:int = 0;
      var _loc6_:* = 0;
      var _loc19_:int = 0;
      var _loc18_:* = 0;
      var _loc17_:int = 0;
      var _loc16_:* = 0;
      var _loc4_:* = 0;
      var _loc22_:int = 0;
      var _loc21_:int = 0;
      var _loc2_:* = 0;
      var _loc20_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:int = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:int = 0;
      var _loc8_:* = 0;
      var _loc14_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:* = 0;
      var _loc23_:* = 0;
      var _loc5_:int = ESP;
      while(true)
      {
         if(!_loc15_)
         {
            _loc10_ = _loc5_;
            _loc5_ = _loc5_ - 64;
            _loc6_ = li8(__ZZN9__gnu_cxx27__verbose_terminate_handlerEvE11terminating_2E_b);
            si32(L_LSDA_0,_loc10_ - 28);
            si32(___gxx_personality_sj0,_loc10_ - 32);
            _loc23_ = _loc10_;
            si32(_loc23_,_loc10_ - 24);
            _loc23_ = _loc5_;
            si32(_loc23_,_loc10_ - 16);
            _loc22_ = _loc10_ - 56;
            _loc21_ = _loc22_ + 32;
            eax = setjmp(_loc21_,1,_loc5_);
         }
         else if(int(_loc15_) - 1)
         {
            throw "bad longjmp";
         }
         _loc23_ = int(eax);
         if(_loc23_ == 0)
         {
            _loc5_ = _loc5_ - 16;
            si32(_loc22_,_loc5_);
            ESP = _loc5_;
            F__Unwind_SjLj_Register();
            _loc5_ = _loc5_ + 16;
            _loc23_ = _loc6_ & 1;
            if(_loc23_ != 0)
            {
               _loc23_ = li32(___stderrp);
               _loc5_ = _loc5_ - 16;
               si32(_loc23_,_loc5_ + 12);
               si32(29,_loc5_ + 8);
               si32(1,_loc5_ + 4);
               si32(L__2E_str,_loc5_);
               ESP = _loc5_;
               F_fwrite();
               _loc5_ = _loc5_ + 16;
               _loc23_ = _loc22_ | 4;
               si32(-1,_loc23_);
               ESP = _loc5_;
               F_abort();
            }
            si8(1,__ZZN9__gnu_cxx27__verbose_terminate_handlerEvE11terminating_2E_b);
            _loc20_ = _loc22_ | 4;
            si32(-1,_loc20_);
            ESP = _loc5_;
            F___cxa_current_exception_type();
            _loc19_ = eax;
            if(_loc19_ != 0)
            {
               _loc18_ = li32(_loc19_ + 4);
               si32(-1,_loc10_ - 60);
               si32(-1,_loc20_);
               _loc5_ = _loc5_ - 16;
               _loc23_ = int(_loc10_ - 60);
               si32(_loc23_,_loc5_ + 12);
               si32(0,_loc5_ + 8);
               si32(0,_loc5_ + 4);
               si32(_loc18_,_loc5_);
               ESP = _loc5_;
               F___cxa_demangle();
               _loc5_ = _loc5_ + 16;
               _loc17_ = eax;
               _loc23_ = li32(___stderrp);
               _loc5_ = _loc5_ - 16;
               si32(_loc23_,_loc5_ + 12);
               si32(48,_loc5_ + 8);
               si32(1,_loc5_ + 4);
               si32(L__2E_str1,_loc5_);
               ESP = _loc5_;
               F_fwrite();
               _loc5_ = _loc5_ + 16;
               _loc16_ = li32(___stderrp);
               _loc23_ = li32(_loc10_ - 60);
               if(_loc23_ == 0)
               {
                  _loc5_ = _loc5_ - 16;
                  si32(_loc16_,_loc5_ + 4);
                  si32(_loc17_,_loc5_);
                  ESP = _loc5_;
                  F_fputs();
                  _loc5_ = _loc5_ + 16;
               }
               else
               {
                  _loc5_ = _loc5_ - 16;
                  si32(_loc16_,_loc5_ + 4);
                  si32(_loc18_,_loc5_);
                  ESP = _loc5_;
                  F_fputs();
                  _loc5_ = _loc5_ + 16;
               }
               _loc23_ = li32(___stderrp);
               _loc5_ = _loc5_ - 16;
               si32(_loc23_,_loc5_ + 12);
               si32(2,_loc5_ + 8);
               si32(1,_loc5_ + 4);
               si32(L__2E_str2,_loc5_);
               ESP = _loc5_;
               F_fwrite();
               _loc5_ = _loc5_ + 16;
               _loc23_ = li32(_loc10_ - 60);
               if(_loc23_ == 0)
               {
                  _loc5_ = _loc5_ - 16;
                  si32(_loc17_,_loc5_);
                  ESP = _loc5_;
                  F_free();
                  _loc5_ = _loc5_ + 16;
               }
               si32(1,_loc20_);
               ESP = _loc5_;
               F___cxa_rethrow();
               addr450:
               while(true)
               {
                  _loc23_ = li32(_loc1_);
                  _loc11_ = li32(_loc23_ + 8);
                  _loc12_ = _loc22_ | 4;
                  si32(2,_loc12_);
                  _loc5_ = _loc5_ - 16;
                  si32(_loc1_,_loc5_);
                  ESP = _loc5_;
                  ptr2fun[_loc11_]();
                  _loc5_ = _loc5_ + 16;
                  _loc13_ = eax;
                  addr519:
                  while(true)
                  {
                     _loc23_ = li32(___stderrp);
                     _loc5_ = _loc5_ - 16;
                     si32(_loc23_,_loc5_ + 12);
                     si32(11,_loc5_ + 8);
                     si32(1,_loc5_ + 4);
                     si32(L__2E_str3,_loc5_);
                     ESP = _loc5_;
                     F_fwrite();
                     _loc5_ = _loc5_ + 16;
                     _loc23_ = li32(___stderrp);
                     _loc5_ = _loc5_ - 16;
                     si32(_loc23_,_loc5_ + 4);
                     si32(_loc13_,_loc5_);
                     ESP = _loc5_;
                     F_fputs();
                     _loc5_ = _loc5_ + 16;
                     _loc23_ = li32(___stderrp);
                     _loc5_ = _loc5_ - 16;
                     si32(_loc23_,_loc5_ + 4);
                     si32(10,_loc5_);
                     ESP = _loc5_;
                     F_fputc();
                     _loc5_ = _loc5_ + 16;
                     si32(-1,_loc12_);
                     ESP = _loc5_;
                     F___cxa_end_catch();
                  }
               }
            }
            else
            {
               _loc23_ = li32(___stderrp);
               _loc5_ = _loc5_ - 16;
               si32(_loc23_,_loc5_ + 12);
               si32(45,_loc5_ + 8);
               si32(1,_loc5_ + 4);
               si32(L__2E_str4,_loc5_);
               ESP = _loc5_;
               F_fwrite();
               _loc5_ = _loc5_ + 16;
            }
            addr659:
            while(true)
            {
               _loc23_ = _loc22_ | 4;
               si32(-1,_loc23_);
               ESP = _loc5_;
               F_abort();
            }
         }
         else
         {
            _loc23_ = _loc22_ | 4;
            _loc2_ = li32(_loc23_);
            if(_loc2_ != 0)
            {
               if(_loc2_ != 1)
               {
                  if(_loc2_ != 2)
                  {
                     while(true)
                     {
                     }
                  }
                  else
                  {
                     _loc9_ = li32(_loc10_ - 48);
                     _loc3_ = li32(_loc10_ - 44);
                     ESP = _loc5_;
                     F__ZSt9terminatev();
                     addr757:
                     while(true)
                     {
                        _loc23_ = _loc22_ | 4;
                        si32(-1,_loc23_);
                        ESP = _loc5_;
                        F___cxa_end_catch();
                        §§goto(addr659);
                     }
                  }
               }
               else
               {
                  _loc4_ = li32(_loc10_ - 48);
                  _loc8_ = li32(_loc10_ - 44);
                  _loc14_ = _loc22_ | 4;
                  si32(3,_loc14_);
                  ESP = _loc5_;
                  F___cxa_end_catch();
                  si32(-1,_loc14_);
                  _loc5_ = _loc5_ - 16;
                  si32(_loc4_,_loc5_);
                  ESP = _loc5_;
                  F__Unwind_SjLj_Resume();
                  _loc5_ = _loc5_ + 16;
               }
               §§goto(addr519);
            }
         }
         while(true)
         {
            _loc23_ = li32(_loc10_ - 48);
            _loc7_ = li32(_loc10_ - 44);
            _loc5_ = _loc5_ - 16;
            si32(_loc23_,_loc5_);
            ESP = _loc5_;
            F___cxa_begin_catch();
            _loc5_ = _loc5_ + 16;
            _loc1_ = eax;
            if(_loc7_ != 2)
            {
               §§goto(addr757);
            }
            else
            {
               §§goto(addr450);
            }
            §§goto(addr659);
         }
      }
   }
}
