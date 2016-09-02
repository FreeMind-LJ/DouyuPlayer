package sample.xx
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_h_personality_2E_o_3A_246EC6CE_2D_7C5E_2D_4C25_2D_9319_2D_758033CD1562.*;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sxi8;
   
   public function F___cxa_call_unexpected() : void
   {
      var _loc2_:* = 0;
      var _loc7_:int = 0;
      var _loc24_:* = 0;
      var _loc50_:int = 0;
      var _loc16_:* = 0;
      var _loc48_:* = 0;
      var _loc43_:* = 0;
      var _loc40_:* = 0;
      var _loc38_:int = 0;
      var _loc36_:int = 0;
      var _loc34_:* = 0;
      var _loc14_:* = 0;
      var _loc17_:int = 0;
      var _loc21_:int = 0;
      var _loc12_:* = 0;
      var _loc29_:* = 0;
      var _loc13_:* = 0;
      var _loc28_:int = 0;
      var _loc26_:* = 0;
      var _loc22_:int = 0;
      var _loc20_:int = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc41_:* = 0;
      var _loc4_:* = 0;
      var _loc42_:* = 0;
      var _loc39_:* = 0;
      var _loc37_:* = 0;
      var _loc35_:* = 0;
      var _loc32_:* = 0;
      var _loc30_:* = 0;
      var _loc15_:* = 0;
      var _loc19_:* = 0;
      var _loc23_:* = 0;
      var _loc27_:int = 0;
      var _loc25_:* = 0;
      var _loc3_:* = 0;
      var _loc31_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc18_:int = 0;
      var _loc51_:* = 0;
      var _loc44_:* = 0;
      var _loc47_:int = 0;
      var _loc45_:int = 0;
      var _loc49_:int = 0;
      var _loc46_:* = 0;
      var _loc33_:int = 0;
      var _loc1_:int = ESP;
      while(true)
      {
         if(!_loc7_)
         {
            _loc2_ = _loc1_;
            _loc1_ = _loc1_ - 112;
            _loc1_ = _loc1_ - 16;
            _loc13_ = li32(_loc2_);
            si32(_loc13_,_loc1_);
            ESP = _loc1_;
            F___cxa_begin_catch();
            _loc1_ = _loc1_ + 16;
            _loc30_ = li32(_loc13_ - 16);
            si32(_loc30_,_loc2_ - 72);
            _loc30_ = li32(_loc13_ - 24);
            si32(_loc30_,_loc2_ - 68);
            _loc30_ = li32(_loc13_ - 36);
            si32(_loc30_,_loc2_ - 64);
            _loc30_ = li32(_loc13_ - 12);
            _loc28_ = _loc2_ - 112;
            _loc26_ = int(_loc28_ + 8);
            si32(_loc26_,_loc2_ - 60);
            _loc26_ = li32(_loc2_ - 60);
            si32(_loc30_,_loc26_);
            _loc24_ = li32(_loc13_ - 40);
            si32(L_LSDA_3,_loc2_ - 28);
            si32(___gxx_personality_sj0,_loc2_ - 32);
            _loc30_ = _loc2_;
            si32(_loc30_,_loc2_ - 24);
            _loc30_ = _loc1_;
            si32(_loc30_,_loc2_ - 16);
            _loc22_ = _loc2_ - 56;
            _loc20_ = _loc22_ + 32;
            _loc18_ = 0;
            eax = setjmp(_loc20_,1,_loc1_);
         }
         else if(int(_loc7_) - 1)
         {
            throw "bad longjmp";
         }
         _loc30_ = int(eax);
         if(_loc30_ == 0)
         {
            _loc1_ = _loc1_ - 16;
            si32(_loc22_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Register();
            _loc1_ = _loc1_ + 16;
            _loc30_ = _loc22_ | 4;
            si32(1,_loc30_);
            _loc1_ = _loc1_ - 16;
            si32(_loc24_,_loc1_);
            ESP = _loc1_;
            F__ZN10__cxxabiv112__unexpectedEPFvvE();
            _loc1_ = _loc1_ + 16;
            addr304:
            while(true)
            {
               _loc16_ = li32(_loc12_);
               _loc48_ = li32(_loc2_ - 100);
               _loc30_ = li32(_loc2_ - 68);
               _loc30_ = _loc30_ ^ -1;
               _loc49_ = _loc48_ + _loc30_;
               _loc50_ = _loc12_ + 80;
               _loc51_ = _loc49_;
               _loc44_ = _loc18_;
               while(true)
               {
                  _loc30_ = si8(li8(_loc51_));
                  _loc26_ = _loc30_ & 127;
                  _loc26_ = _loc26_ << _loc18_;
                  _loc44_ = _loc26_ | _loc44_;
                  _loc18_ = _loc18_ + 7;
                  _loc51_ = int(_loc51_ + 1);
                  if(_loc30_ >= 0)
                  {
                     _loc45_ = 0;
                     _loc46_ = _loc45_;
                     if(_loc44_ != 0)
                     {
                        _loc47_ = 0;
                        _loc43_ = li8(_loc2_ - 92);
                        if(_loc43_ != 255)
                        {
                           _loc42_ = _loc43_ & 7;
                           if(_loc42_ <= 2)
                           {
                              _loc47_ = 4;
                              if(_loc42_ != 0)
                              {
                                 if(_loc42_ != 2)
                                 {
                                    addr423:
                                    si32(2,_loc41_);
                                    ESP = _loc1_;
                                    F_abort();
                                 }
                                 else
                                 {
                                    _loc47_ = 2;
                                 }
                              }
                           }
                           else
                           {
                              _loc47_ = 4;
                              if(_loc42_ != 3)
                              {
                                 if(_loc42_ != 4)
                                 {
                                    §§goto(addr423);
                                 }
                                 else
                                 {
                                    _loc47_ = 8;
                                 }
                              }
                           }
                        }
                        _loc30_ = li32(_loc2_ - 60);
                        _loc39_ = li32(_loc30_);
                        si32(3,_loc41_);
                        _loc1_ = _loc1_ - 16;
                        _loc30_ = int(_loc2_ - 88);
                        si32(_loc30_,_loc1_ + 12);
                        _loc30_ = int(0 - _loc44_);
                        _loc30_ = int(_loc47_ * _loc30_);
                        _loc30_ = int(_loc48_ + _loc30_);
                        si32(_loc30_,_loc1_ + 8);
                        si32(_loc39_,_loc1_ + 4);
                        si32(_loc43_,_loc1_);
                        ESP = _loc1_;
                        F__ZL28read_encoded_value_with_basehjPKhPj();
                        _loc1_ = _loc1_ + 16;
                        _loc40_ = li32(_loc2_ - 88);
                        si32(_loc50_,_loc2_ - 80);
                        _loc30_ = li32(_loc16_);
                        _loc37_ = li32(_loc30_ + 8);
                        si32(4,_loc41_);
                        _loc1_ = _loc1_ - 16;
                        si32(_loc16_,_loc1_);
                        ESP = _loc1_;
                        ptr2fun[_loc37_]();
                        _loc1_ = _loc1_ + 16;
                        _loc38_ = eax;
                        if(_loc38_ != 0)
                        {
                           _loc30_ = li32(_loc2_ - 80);
                           _loc30_ = li32(_loc30_);
                           si32(_loc30_,_loc2_ - 80);
                        }
                        _loc30_ = li32(_loc40_);
                        _loc35_ = li32(_loc30_ + 16);
                        si32(5,_loc41_);
                        _loc1_ = _loc1_ - 16;
                        si32(1,_loc1_ + 12);
                        _loc30_ = int(_loc2_ - 80);
                        si32(_loc30_,_loc1_ + 8);
                        si32(_loc16_,_loc1_ + 4);
                        si32(_loc40_,_loc1_);
                        ESP = _loc1_;
                        ptr2fun[_loc35_]();
                        _loc1_ = _loc1_ + 16;
                        _loc36_ = eax;
                        _loc18_ = 0;
                        _loc44_ = _loc18_;
                        if(_loc36_ != 0)
                        {
                           si32(6,_loc41_);
                           ESP = _loc1_;
                           F___cxa_rethrow();
                           break;
                        }
                        continue;
                     }
                     break;
                  }
               }
               while(true)
               {
                  _loc30_ = si8(li8(_loc49_));
                  _loc26_ = _loc30_ & 127;
                  _loc26_ = _loc26_ << _loc45_;
                  _loc46_ = _loc26_ | _loc46_;
                  _loc45_ = _loc45_ + 7;
                  _loc49_ = _loc49_ + 1;
                  if(_loc30_ >= 0)
                  {
                     if(_loc46_ != 0)
                     {
                        _loc33_ = 0;
                        _loc34_ = li8(_loc2_ - 92);
                        if(_loc34_ != 255)
                        {
                           _loc32_ = _loc34_ & 7;
                           _loc33_ = 4;
                           if(_loc32_ <= 2)
                           {
                              if(_loc32_ != 0)
                              {
                                 if(_loc32_ != 2)
                                 {
                                    addr736:
                                    si32(7,_loc41_);
                                    ESP = _loc1_;
                                    F_abort();
                                 }
                                 else
                                 {
                                    _loc33_ = 2;
                                 }
                              }
                           }
                           else if(_loc32_ != 3)
                           {
                              if(_loc32_ != 4)
                              {
                                 §§goto(addr736);
                              }
                              else
                              {
                                 _loc33_ = 8;
                              }
                           }
                        }
                        _loc30_ = li32(_loc2_ - 60);
                        _loc15_ = li32(_loc30_);
                        si32(8,_loc41_);
                        _loc1_ = _loc1_ - 16;
                        _loc30_ = int(_loc2_ - 84);
                        si32(_loc30_,_loc1_ + 12);
                        _loc30_ = int(0 - _loc46_);
                        _loc30_ = int(_loc33_ * _loc30_);
                        _loc30_ = int(_loc48_ + _loc30_);
                        si32(_loc30_,_loc1_ + 8);
                        si32(_loc15_,_loc1_ + 4);
                        si32(_loc34_,_loc1_);
                        ESP = _loc1_;
                        F__ZL28read_encoded_value_with_basehjPKhPj();
                        _loc1_ = _loc1_ + 16;
                        _loc14_ = li32(_loc2_ - 84);
                        _loc45_ = 0;
                        si32(_loc45_,_loc2_ - 76);
                        _loc30_ = li32(__ZTISt13bad_exception);
                        _loc19_ = li32(_loc30_ + 8);
                        si32(9,_loc41_);
                        _loc1_ = _loc1_ - 16;
                        si32(__ZTISt13bad_exception,_loc1_);
                        ESP = _loc1_;
                        ptr2fun[_loc19_]();
                        _loc1_ = _loc1_ + 16;
                        _loc17_ = eax;
                        if(_loc17_ != 0)
                        {
                           _loc30_ = li32(_loc2_ - 76);
                           _loc30_ = li32(_loc30_);
                           si32(_loc30_,_loc2_ - 76);
                        }
                        _loc30_ = li32(_loc14_);
                        _loc23_ = li32(_loc30_ + 16);
                        si32(10,_loc41_);
                        _loc1_ = _loc1_ - 16;
                        si32(1,_loc1_ + 12);
                        _loc30_ = int(_loc2_ - 76);
                        si32(_loc30_,_loc1_ + 8);
                        si32(__ZTISt13bad_exception,_loc1_ + 4);
                        si32(_loc14_,_loc1_);
                        ESP = _loc1_;
                        ptr2fun[_loc23_]();
                        _loc1_ = _loc1_ + 16;
                        _loc21_ = eax;
                        _loc46_ = _loc45_;
                        if(_loc21_ != 0)
                        {
                           _loc1_ = _loc1_ - 16;
                           si32(4,_loc1_);
                           ESP = _loc1_;
                           F___cxa_allocate_exception();
                           _loc30_ = int(__ZTVSt13bad_exception + 8);
                           _loc1_ = _loc1_ + 16;
                           _loc27_ = eax;
                           si32(_loc30_,_loc27_);
                           si32(11,_loc41_);
                           _loc1_ = _loc1_ - 16;
                           si32(__ZNSt13bad_exceptionD1Ev,_loc1_ + 8);
                           si32(__ZTISt13bad_exception,_loc1_ + 4);
                           si32(_loc27_,_loc1_);
                           ESP = _loc1_;
                           F___cxa_throw();
                           _loc1_ = _loc1_ + 16;
                           break;
                        }
                        continue;
                     }
                     break;
                  }
               }
               _loc25_ = li32(_loc2_ - 64);
               si32(12,_loc41_);
               _loc1_ = _loc1_ - 16;
               si32(_loc25_,_loc1_);
               ESP = _loc1_;
               F__ZN10__cxxabiv111__terminateEPFvvE();
               _loc1_ = _loc1_ + 16;
            }
         }
         else
         {
            while(true)
            {
               _loc30_ = _loc22_ | 4;
               _loc11_ = li32(_loc30_);
               if(_loc11_ <= 11)
               {
                  if(_loc11_ != 0)
                  {
                     _loc30_ = int(_loc11_ + -1);
                     if(uint(_loc30_) < 11)
                     {
                        break;
                     }
                  }
                  addr1087:
                  while(true)
                  {
                     _loc30_ = li32(_loc2_ - 48);
                     _loc5_ = li32(_loc2_ - 44);
                     _loc1_ = _loc1_ - 16;
                     si32(_loc30_,_loc1_);
                     ESP = _loc1_;
                     F___cxa_begin_catch();
                     _loc1_ = _loc1_ + 16;
                     ESP = _loc1_;
                     F___cxa_get_globals_fast();
                     _loc30_ = int(eax);
                     _loc12_ = li32(_loc30_);
                     _loc41_ = _loc22_ | 4;
                     _loc4_ = li32(_loc2_ - 72);
                     si32(14,_loc41_);
                     _loc1_ = _loc1_ - 16;
                     si32(_loc28_,_loc1_ + 8);
                     si32(_loc4_,_loc1_ + 4);
                     si32(_loc18_,_loc1_);
                     ESP = _loc1_;
                     F__ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info();
                     _loc1_ = _loc1_ + 16;
                     §§goto(addr304);
                  }
               }
               else
               {
                  if(_loc11_ != 12)
                  {
                     if(_loc11_ != 13)
                     {
                        if(_loc11_ == 14)
                        {
                           _loc10_ = li32(_loc2_ - 48);
                           _loc9_ = li32(_loc2_ - 44);
                           ESP = _loc1_;
                           F__ZSt9terminatev();
                        }
                     }
                     else
                     {
                        break;
                     }
                  }
                  _loc8_ = li32(_loc2_ - 48);
                  _loc6_ = li32(_loc2_ - 44);
                  ESP = _loc1_;
                  F__ZSt9terminatev();
                  continue;
               }
               while(true)
               {
               }
            }
            _loc29_ = li32(_loc2_ - 48);
            _loc3_ = li32(_loc2_ - 44);
            _loc31_ = _loc22_ | 4;
            si32(15,_loc31_);
            ESP = _loc1_;
            F___cxa_end_catch();
         }
         while(true)
         {
            si32(13,_loc31_);
            ESP = _loc1_;
            F___cxa_end_catch();
            si32(-1,_loc31_);
            _loc1_ = _loc1_ - 16;
            si32(_loc29_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Resume();
            _loc1_ = _loc1_ + 16;
            §§goto(addr1087);
         }
      }
   }
}
