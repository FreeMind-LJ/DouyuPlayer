package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F___divdc3() : void
   {
      var _loc8_:* = 0;
      var _loc26_:* = 0;
      var _loc13_:* = NaN;
      var _loc14_:* = NaN;
      var _loc27_:* = 0;
      var _loc21_:* = 0;
      var _loc12_:* = NaN;
      var _loc10_:* = NaN;
      var _loc5_:Number = NaN;
      var _loc22_:int = 0;
      var _loc16_:* = 0;
      var _loc25_:* = 0;
      var _loc23_:int = 0;
      var _loc9_:* = NaN;
      var _loc1_:* = NaN;
      var _loc20_:int = 0;
      var _loc15_:int = 0;
      var _loc17_:int = 0;
      var _loc18_:int = 0;
      var _loc19_:int = 0;
      var _loc11_:Number = NaN;
      var _loc7_:* = int(ESP);
      _loc8_ = _loc7_;
      _loc7_ = int(_loc7_ - 176);
      _loc10_ = lf64(_loc8_ + 20);
      _loc9_ = Number(Math.abs(_loc10_));
      sf64(_loc9_,_loc8_ - 16);
      sf64(_loc9_,_loc8_ - 24);
      _loc12_ = lf64(_loc8_ + 28);
      _loc11_ = Math.abs(_loc12_);
      sf64(_loc11_,_loc8_ - 32);
      sf64(_loc11_,_loc8_ - 8);
      _loc16_ = int(_loc8_ - 24);
      _loc16_ = _loc16_ | 4;
      _loc27_ = li32(_loc16_);
      _loc16_ = int(_loc27_ >>> 20);
      _loc16_ = _loc16_ & 2047;
      _loc14_ = lf64(_loc8_ + 12);
      _loc13_ = lf64(_loc8_ + 4);
      _loc26_ = li32(_loc8_);
      _loc25_ = li32(_loc8_ - 32);
      if(_loc16_ == 2047)
      {
         _loc16_ = _loc27_ & 1048575;
         _loc1_ = _loc11_;
         if((_loc16_ | li32(_loc8_ - 24)) == 0)
         {
         }
         addr251:
         sf64(_loc1_,_loc8_ - 40);
         _loc16_ = int(_loc8_ - 40);
         _loc16_ = _loc16_ | 4;
         _loc16_ = li32(_loc16_);
         _loc21_ = _loc16_ & 2147483647;
         _loc16_ = li32(_loc8_ - 40);
         _loc16_ = _loc21_ | _loc16_;
         if(_loc16_ == 0)
         {
            _loc9_ = Number(-1 / Math.abs(_loc1_));
         }
         else if(uint(_loc21_) >= 2146435072)
         {
            _loc9_ = Number(_loc1_ * _loc1_);
         }
         else if(uint(_loc21_) <= 1048575)
         {
            sf64(Number(_loc1_ * 18014398509482000),_loc8_ - 48);
            _loc16_ = int(_loc8_ - 48);
            _loc16_ = _loc16_ | 4;
            _loc16_ = li32(_loc16_);
            _loc16_ = int(_loc16_ >>> 20);
            _loc16_ = _loc16_ & 2047;
            _loc16_ = int(_loc16_ + -1077);
            _loc9_ = Number(_loc16_);
         }
         else
         {
            _loc16_ = int(_loc21_ >>> 20);
            _loc16_ = int(_loc16_ + -1023);
            _loc9_ = Number(_loc16_);
         }
         sf64(_loc9_,_loc8_ - 56);
         _loc16_ = int(_loc8_ - 56);
         _loc16_ = _loc16_ | 4;
         _loc16_ = li32(_loc16_);
         _loc16_ = int(_loc16_ >>> 20);
         _loc16_ = _loc16_ & 2047;
         _loc20_ = 0;
         if(_loc16_ != 2047)
         {
            _loc7_ = int(_loc7_ - 16);
            sf64(_loc10_,_loc7_);
            _loc20_ = _loc9_;
            _loc16_ = int(0 - _loc20_);
            si32(_loc16_,_loc7_ + 8);
            ESP = _loc7_;
            F_scalbn();
            _loc7_ = int(_loc7_ + 16);
            _loc10_ = Number(st0);
            _loc7_ = int(_loc7_ - 16);
            si32(_loc16_,_loc7_ + 8);
            sf64(_loc12_,_loc7_);
            ESP = _loc7_;
            F_scalbn();
            _loc7_ = int(_loc7_ + 16);
            _loc12_ = Number(st0);
         }
         _loc7_ = int(_loc7_ - 16);
         _loc16_ = int(0 - _loc20_);
         si32(_loc16_,_loc7_ + 8);
         var _loc3_:Number = _loc12_ * _loc14_;
         var _loc4_:* = Number(_loc10_ * _loc13_);
         _loc4_ = Number(_loc4_ + _loc3_);
         _loc3_ = _loc12_ * _loc12_;
         var _loc6_:Number = _loc10_ * _loc10_;
         _loc5_ = _loc6_ + _loc3_;
         _loc4_ = Number(_loc4_ / _loc5_);
         sf64(_loc4_,_loc7_);
         ESP = _loc7_;
         F_scalbn();
         _loc7_ = int(_loc7_ + 16);
         _loc11_ = st0;
         _loc7_ = int(_loc7_ - 16);
         si32(_loc16_,_loc7_ + 8);
         var _loc2_:* = Number(_loc12_ * _loc13_);
         _loc4_ = Number(_loc10_ * _loc14_);
         _loc2_ = Number(_loc4_ - _loc2_);
         _loc2_ = Number(_loc2_ / _loc5_);
         sf64(_loc2_,_loc7_);
         ESP = _loc7_;
         F_scalbn();
         _loc7_ = int(_loc7_ + 16);
         _loc1_ = Number(st0);
         if(!(_loc11_ == _loc11_ & _loc11_ == _loc11_))
         {
            if(!(_loc1_ == _loc1_ & _loc1_ == _loc1_))
            {
               if(!(_loc5_ != 0 | _loc5_ != _loc5_ | false))
               {
                  if(!(_loc13_ == _loc13_ & _loc13_ == _loc13_))
                  {
                     if(_loc14_ != _loc14_ | _loc14_ != _loc14_)
                     {
                     }
                  }
                  sf64(_loc10_,_loc8_ - 64);
                  _loc16_ = int(_loc8_ - 72);
                  _loc16_ = _loc16_ | 4;
                  var _loc24_:* = int(_loc8_ - 64);
                  _loc24_ = _loc24_ | 4;
                  _loc24_ = li32(_loc24_);
                  _loc24_ = _loc24_ & -2147483648;
                  _loc24_ = _loc24_ | 2146435072;
                  si32(_loc24_,_loc16_);
                  si32(0,_loc8_ - 72);
                  _loc2_ = lf64(_loc8_ - 72);
                  _loc1_ = Number(_loc2_ * _loc14_);
                  _loc11_ = _loc2_ * _loc13_;
               }
               _loc7_ = int(_loc7_ - 16);
               sf64(_loc13_,_loc7_);
               ESP = _loc7_;
               F_isinf();
               _loc7_ = int(_loc7_ + 16);
               _loc27_ = int(eax);
               if(_loc27_ == 0)
               {
                  _loc7_ = int(_loc7_ - 16);
                  sf64(_loc14_,_loc7_);
                  ESP = _loc7_;
                  F_isinf();
                  _loc7_ = int(_loc7_ + 16);
                  _loc16_ = int(eax);
                  if(_loc16_ != 0)
                  {
                  }
                  addr971:
                  _loc7_ = int(_loc7_ - 16);
                  sf64(_loc9_,_loc7_);
                  ESP = _loc7_;
                  F_isinf();
                  _loc7_ = int(_loc7_ + 16);
                  _loc16_ = int(eax);
                  if(_loc16_ != 0)
                  {
                     if(!(_loc9_ <= 0 | _loc9_ != _loc9_ | false))
                     {
                        sf64(_loc13_,_loc8_ - 128);
                        _loc16_ = int(_loc8_ - 128);
                        _loc16_ = _loc16_ | 4;
                        _loc16_ = li32(_loc16_);
                        _loc16_ = int(_loc16_ >>> 20);
                        _loc16_ = _loc16_ & 2047;
                        if(_loc16_ != 2047)
                        {
                           sf64(_loc14_,_loc8_ - 136);
                           _loc16_ = int(_loc8_ - 136);
                           _loc16_ = _loc16_ | 4;
                           _loc16_ = li32(_loc16_);
                           _loc16_ = int(_loc16_ >>> 20);
                           _loc16_ = _loc16_ & 2047;
                           if(_loc16_ != 2047)
                           {
                              _loc7_ = int(_loc7_ - 16);
                              sf64(_loc10_,_loc7_);
                              sf64(_loc10_,_loc8_ - 144);
                              ESP = _loc7_;
                              F_isinf();
                              _loc7_ = int(_loc7_ + 16);
                              _loc18_ = 0;
                              if(int(eax) != 0)
                              {
                                 _loc18_ = 1072693248;
                              }
                              _loc16_ = int(_loc8_ - 144);
                              _loc16_ = _loc16_ | 4;
                              _loc16_ = li32(_loc16_);
                              _loc16_ = _loc16_ & -2147483648;
                              _loc16_ = _loc18_ | _loc16_;
                              _loc24_ = int(_loc8_ - 152);
                              _loc24_ = _loc24_ | 4;
                              si32(_loc16_,_loc24_);
                              sf64(_loc12_,_loc8_ - 160);
                              _loc7_ = int(_loc7_ - 16);
                              sf64(_loc12_,_loc7_);
                              ESP = _loc7_;
                              F_isinf();
                              _loc7_ = int(_loc7_ + 16);
                              _loc16_ = int(eax);
                              _loc19_ = 0;
                              if(_loc16_ != 0)
                              {
                                 _loc19_ = 1072693248;
                              }
                              _loc16_ = int(_loc8_ - 160);
                              _loc16_ = _loc16_ | 4;
                              _loc16_ = li32(_loc16_);
                              _loc16_ = _loc16_ & -2147483648;
                              _loc16_ = _loc19_ | _loc16_;
                              _loc24_ = int(_loc8_ - 168);
                              _loc24_ = _loc24_ | 4;
                              si32(_loc16_,_loc24_);
                              si32(0,_loc8_ - 152);
                              si32(0,_loc8_ - 168);
                              _loc4_ = lf64(_loc8_ - 152);
                              _loc3_ = _loc4_ * _loc14_;
                              _loc2_ = lf64(_loc8_ - 168);
                              _loc6_ = _loc2_ * _loc13_;
                              _loc3_ = _loc3_ - _loc6_;
                              _loc1_ = Number(_loc3_ * 0);
                              _loc4_ = Number(_loc4_ * _loc13_);
                              _loc2_ = Number(_loc2_ * _loc14_);
                              _loc2_ = Number(_loc4_ + _loc2_);
                              _loc11_ = _loc2_ * 0;
                           }
                        }
                     }
                  }
               }
               sf64(_loc10_,_loc8_ - 80);
               _loc16_ = int(_loc8_ - 80);
               _loc16_ = _loc16_ | 4;
               _loc16_ = li32(_loc16_);
               _loc16_ = int(_loc16_ >>> 20);
               _loc16_ = _loc16_ & 2047;
               if(_loc16_ != 2047)
               {
                  sf64(_loc12_,_loc8_ - 88);
                  _loc16_ = int(_loc8_ - 88);
                  _loc16_ = _loc16_ | 4;
                  _loc16_ = li32(_loc16_);
                  _loc16_ = int(_loc16_ >>> 20);
                  _loc16_ = _loc16_ & 2047;
                  if(_loc16_ != 2047)
                  {
                     sf64(_loc13_,_loc8_ - 96);
                     _loc15_ = 0;
                     if(_loc27_ != 0)
                     {
                        _loc15_ = 1072693248;
                     }
                     _loc16_ = int(_loc8_ - 96);
                     _loc16_ = _loc16_ | 4;
                     _loc16_ = li32(_loc16_);
                     _loc16_ = _loc16_ & -2147483648;
                     _loc16_ = _loc15_ | _loc16_;
                     _loc24_ = int(_loc8_ - 104);
                     _loc24_ = _loc24_ | 4;
                     si32(_loc16_,_loc24_);
                     _loc7_ = int(_loc7_ - 16);
                     sf64(_loc14_,_loc7_);
                     sf64(_loc14_,_loc8_ - 112);
                     ESP = _loc7_;
                     F_isinf();
                     _loc7_ = int(_loc7_ + 16);
                     _loc16_ = int(eax);
                     _loc17_ = 0;
                     if(_loc16_ != 0)
                     {
                        _loc17_ = 1072693248;
                     }
                     _loc16_ = int(_loc8_ - 112);
                     _loc16_ = _loc16_ | 4;
                     _loc16_ = li32(_loc16_);
                     _loc16_ = _loc16_ & -2147483648;
                     _loc16_ = _loc17_ | _loc16_;
                     _loc24_ = int(_loc8_ - 120);
                     _loc24_ = _loc24_ | 4;
                     si32(_loc16_,_loc24_);
                     si32(0,_loc8_ - 104);
                     si32(0,_loc8_ - 120);
                     _loc4_ = lf64(_loc8_ - 104);
                     _loc6_ = _loc4_ * _loc12_;
                     _loc2_ = lf64(_loc8_ - 120);
                     _loc3_ = _loc2_ * _loc10_;
                     _loc3_ = _loc3_ - _loc6_;
                     _loc1_ = Number(_loc3_ * inf);
                     _loc4_ = Number(_loc4_ * _loc10_);
                     _loc2_ = Number(_loc2_ * _loc12_);
                     _loc2_ = Number(_loc4_ + _loc2_);
                     _loc11_ = _loc2_ * inf;
                  }
               }
               §§goto(addr971);
            }
         }
         sf64(_loc11_,_loc26_);
         sf64(_loc1_,_loc26_ + 8);
         _loc7_ = _loc8_;
         ESP = _loc7_;
         return;
      }
      _loc27_ = li32(_loc8_ - 4);
      _loc16_ = int(_loc27_ >>> 20);
      _loc16_ = _loc16_ & 2047;
      if(_loc16_ == 2047)
      {
         _loc16_ = _loc27_ & 1048575;
         _loc1_ = _loc9_;
         if((_loc16_ | _loc25_) == 0)
         {
         }
         §§goto(addr251);
      }
      _loc23_ = 1;
      _loc25_ = _loc23_;
      if(_loc27_ >= 0)
      {
         _loc25_ = 0;
      }
      _loc22_ = _loc8_ - 16;
      _loc16_ = _loc22_ | 4;
      _loc27_ = li32(_loc16_);
      if(_loc27_ >= 0)
      {
         _loc23_ = 0;
      }
      _loc16_ = _loc23_ ^ _loc25_;
      _loc16_ = _loc16_ & 1;
      if(_loc16_ != 0)
      {
         _loc16_ = _loc27_ & -2147483648;
         _loc16_ = int(_loc22_ + (int(_loc16_ >>> 28)));
         _loc1_ = lf64(_loc16_);
      }
      else
      {
         if(_loc9_ <= _loc11_)
         {
            _loc9_ = _loc11_;
         }
         _loc1_ = _loc9_;
      }
      §§goto(addr251);
   }
}
