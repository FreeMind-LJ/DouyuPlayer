package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F___divxc3() : void
   {
      var _loc9_:* = 0;
      var _loc22_:* = 0;
      var _loc21_:* = NaN;
      var _loc23_:* = NaN;
      var _loc19_:* = 0;
      var _loc15_:* = NaN;
      var _loc18_:* = NaN;
      var _loc8_:* = 0;
      var _loc13_:* = NaN;
      var _loc16_:* = NaN;
      var _loc17_:* = 0;
      var _loc12_:int = 0;
      var _loc20_:* = 0;
      var _loc11_:int = 0;
      var _loc10_:int = 0;
      var _loc5_:Number = NaN;
      var _loc6_:Number = NaN;
      var _loc7_:* = int(ESP);
      _loc9_ = _loc7_;
      _loc7_ = int(_loc7_ - 160);
      _loc15_ = lf64(_loc9_ + 28);
      _loc13_ = Number(Math.abs(_loc15_));
      sf64(_loc13_,_loc9_ - 16);
      _loc18_ = lf64(_loc9_ + 20);
      _loc16_ = Number(Math.abs(_loc18_));
      sf64(_loc16_,_loc9_ - 8);
      _loc8_ = int(_loc9_ - 16);
      _loc8_ = _loc8_ | 4;
      _loc8_ = li32(_loc8_);
      _loc22_ = 1;
      _loc20_ = _loc22_;
      if(_loc8_ >= 0)
      {
         _loc20_ = 0;
      }
      _loc8_ = int(_loc9_ - 8);
      _loc8_ = _loc8_ | 4;
      _loc19_ = li32(_loc8_);
      if(_loc19_ >= 0)
      {
         _loc22_ = 0;
      }
      _loc8_ = _loc22_ ^ _loc20_;
      _loc8_ = _loc8_ & 1;
      _loc23_ = lf64(_loc9_ + 12);
      _loc21_ = lf64(_loc9_ + 4);
      _loc22_ = li32(_loc9_);
      if(_loc8_ != 0)
      {
         if(_loc19_ >= 0)
         {
            _loc13_ = _loc16_;
         }
      }
      else
      {
         if(_loc16_ <= _loc13_)
         {
            _loc16_ = _loc13_;
         }
         _loc13_ = _loc16_;
      }
      sf64(_loc13_,_loc9_ - 24);
      _loc8_ = int(_loc9_ - 24);
      _loc8_ = _loc8_ | 4;
      _loc8_ = li32(_loc8_);
      _loc17_ = _loc8_ & 2147483647;
      _loc8_ = li32(_loc9_ - 24);
      _loc8_ = _loc17_ | _loc8_;
      if(_loc8_ == 0)
      {
         _loc13_ = Number(-1 / Math.abs(_loc13_));
      }
      else if(uint(_loc17_) >= 2146435072)
      {
         _loc13_ = Number(_loc13_ * _loc13_);
      }
      else if(uint(_loc17_) <= 1048575)
      {
         sf64(Number(_loc13_ * 18014398509482000),_loc9_ - 32);
         _loc8_ = int(_loc9_ - 32);
         _loc8_ = _loc8_ | 4;
         _loc8_ = li32(_loc8_);
         _loc8_ = int(_loc8_ >>> 20);
         _loc8_ = _loc8_ & 2047;
         _loc8_ = int(_loc8_ + -1077);
         _loc13_ = Number(_loc8_);
      }
      else
      {
         _loc8_ = int(_loc17_ >>> 20);
         _loc8_ = int(_loc8_ + -1023);
         _loc13_ = Number(_loc8_);
      }
      sf64(_loc13_,_loc9_ - 40);
      _loc8_ = int(_loc9_ - 40);
      _loc8_ = _loc8_ | 4;
      _loc8_ = li32(_loc8_);
      _loc8_ = int(_loc8_ >>> 20);
      _loc8_ = _loc8_ & 2047;
      _loc17_ = 0;
      if(_loc8_ != 2047)
      {
         _loc7_ = int(_loc7_ - 16);
         sf64(_loc18_,_loc7_);
         _loc17_ = int(_loc13_);
         _loc8_ = int(0 - _loc17_);
         si32(_loc8_,_loc7_ + 8);
         ESP = _loc7_;
         F_scalbn();
         _loc7_ = int(_loc7_ + 16);
         _loc18_ = Number(st0);
         _loc7_ = int(_loc7_ - 16);
         si32(_loc8_,_loc7_ + 8);
         sf64(_loc15_,_loc7_);
         ESP = _loc7_;
         F_scalbn();
         _loc7_ = int(_loc7_ + 16);
         _loc15_ = Number(st0);
      }
      _loc7_ = int(_loc7_ - 16);
      _loc8_ = int(0 - _loc17_);
      si32(_loc8_,_loc7_ + 8);
      var _loc2_:Number = _loc15_ * _loc23_;
      var _loc3_:* = Number(_loc18_ * _loc21_);
      var _loc4_:Number = _loc3_ + _loc2_;
      _loc2_ = _loc15_ * _loc15_;
      _loc3_ = Number(_loc18_ * _loc18_);
      _loc16_ = Number(_loc3_ + _loc2_);
      _loc3_ = Number(_loc4_ / _loc16_);
      sf64(_loc3_,_loc7_);
      ESP = _loc7_;
      F_scalbn();
      _loc7_ = int(_loc7_ + 16);
      _loc6_ = st0;
      _loc7_ = int(_loc7_ - 16);
      si32(_loc8_,_loc7_ + 8);
      _loc3_ = Number(_loc15_ * _loc21_);
      var _loc1_:* = Number(_loc18_ * _loc23_);
      _loc1_ = Number(_loc1_ - _loc3_);
      _loc1_ = Number(_loc1_ / _loc16_);
      sf64(_loc1_,_loc7_);
      ESP = _loc7_;
      F_scalbn();
      _loc7_ = int(_loc7_ + 16);
      _loc5_ = st0;
      if(!(_loc6_ == _loc6_ & _loc6_ == _loc6_))
      {
         if(!(_loc5_ == _loc5_ & _loc5_ == _loc5_))
         {
            if(!(_loc16_ != 0 | _loc16_ != _loc16_ | false))
            {
               if(!(_loc21_ == _loc21_ & _loc21_ == _loc21_))
               {
                  if(_loc23_ != _loc23_ | _loc23_ != _loc23_)
                  {
                  }
               }
               sf64(_loc18_,_loc9_ - 48);
               _loc8_ = int(_loc9_ - 56);
               _loc8_ = _loc8_ | 4;
               var _loc14_:* = int(_loc9_ - 48);
               _loc14_ = _loc14_ | 4;
               _loc14_ = li32(_loc14_);
               _loc14_ = _loc14_ & -2147483648;
               _loc14_ = _loc14_ | 2146435072;
               si32(_loc14_,_loc8_);
               si32(0,_loc9_ - 56);
               _loc1_ = lf64(_loc9_ - 56);
               _loc5_ = _loc1_ * _loc23_;
               _loc6_ = _loc1_ * _loc21_;
            }
            _loc7_ = int(_loc7_ - 16);
            sf64(_loc21_,_loc7_);
            ESP = _loc7_;
            F_isinf();
            _loc7_ = int(_loc7_ + 16);
            _loc17_ = int(eax);
            if(_loc17_ == 0)
            {
               _loc7_ = int(_loc7_ - 16);
               sf64(_loc23_,_loc7_);
               ESP = _loc7_;
               F_isinf();
               _loc7_ = int(_loc7_ + 16);
               _loc8_ = int(eax);
               if(_loc8_ != 0)
               {
               }
               addr879:
               _loc7_ = int(_loc7_ - 16);
               sf64(_loc13_,_loc7_);
               ESP = _loc7_;
               F_isinf();
               _loc7_ = int(_loc7_ + 16);
               _loc8_ = int(eax);
               if(_loc8_ != 0)
               {
                  if(!(_loc13_ <= 0 | _loc13_ != _loc13_ | false))
                  {
                     sf64(_loc21_,_loc9_ - 112);
                     _loc8_ = int(_loc9_ - 112);
                     _loc8_ = _loc8_ | 4;
                     _loc8_ = li32(_loc8_);
                     _loc8_ = int(_loc8_ >>> 20);
                     _loc8_ = _loc8_ & 2047;
                     if(_loc8_ != 2047)
                     {
                        sf64(_loc23_,_loc9_ - 120);
                        _loc8_ = int(_loc9_ - 120);
                        _loc8_ = _loc8_ | 4;
                        _loc8_ = li32(_loc8_);
                        _loc8_ = int(_loc8_ >>> 20);
                        _loc8_ = _loc8_ & 2047;
                        if(_loc8_ != 2047)
                        {
                           _loc7_ = int(_loc7_ - 16);
                           sf64(_loc18_,_loc7_);
                           sf64(_loc18_,_loc9_ - 128);
                           ESP = _loc7_;
                           F_isinf();
                           _loc7_ = int(_loc7_ + 16);
                           _loc11_ = 0;
                           if(int(eax) != 0)
                           {
                              _loc11_ = 1072693248;
                           }
                           _loc8_ = int(_loc9_ - 128);
                           _loc8_ = _loc8_ | 4;
                           _loc8_ = li32(_loc8_);
                           _loc8_ = _loc8_ & -2147483648;
                           _loc8_ = _loc11_ | _loc8_;
                           _loc14_ = int(_loc9_ - 136);
                           _loc14_ = _loc14_ | 4;
                           si32(_loc8_,_loc14_);
                           sf64(_loc15_,_loc9_ - 144);
                           _loc7_ = int(_loc7_ - 16);
                           sf64(_loc15_,_loc7_);
                           ESP = _loc7_;
                           F_isinf();
                           _loc7_ = int(_loc7_ + 16);
                           _loc8_ = int(eax);
                           _loc10_ = 0;
                           if(_loc8_ != 0)
                           {
                              _loc10_ = 1072693248;
                           }
                           _loc8_ = int(_loc9_ - 144);
                           _loc8_ = _loc8_ | 4;
                           _loc8_ = li32(_loc8_);
                           _loc8_ = _loc8_ & -2147483648;
                           _loc8_ = _loc10_ | _loc8_;
                           _loc14_ = int(_loc9_ - 152);
                           _loc14_ = _loc14_ | 4;
                           si32(_loc8_,_loc14_);
                           si32(0,_loc9_ - 136);
                           si32(0,_loc9_ - 152);
                           _loc3_ = lf64(_loc9_ - 136);
                           _loc2_ = _loc3_ * _loc23_;
                           _loc1_ = lf64(_loc9_ - 152);
                           _loc4_ = _loc1_ * _loc21_;
                           _loc2_ = _loc2_ - _loc4_;
                           _loc5_ = _loc2_ * 0;
                           _loc3_ = Number(_loc3_ * _loc21_);
                           _loc1_ = Number(_loc1_ * _loc23_);
                           _loc1_ = Number(_loc3_ + _loc1_);
                           _loc6_ = _loc1_ * 0;
                        }
                     }
                  }
               }
            }
            sf64(_loc18_,_loc9_ - 64);
            _loc8_ = int(_loc9_ - 64);
            _loc8_ = _loc8_ | 4;
            _loc8_ = li32(_loc8_);
            _loc8_ = int(_loc8_ >>> 20);
            _loc8_ = _loc8_ & 2047;
            if(_loc8_ != 2047)
            {
               sf64(_loc15_,_loc9_ - 72);
               _loc8_ = int(_loc9_ - 72);
               _loc8_ = _loc8_ | 4;
               _loc8_ = li32(_loc8_);
               _loc8_ = int(_loc8_ >>> 20);
               _loc8_ = _loc8_ & 2047;
               if(_loc8_ != 2047)
               {
                  sf64(_loc21_,_loc9_ - 80);
                  _loc12_ = 0;
                  if(_loc17_ != 0)
                  {
                     _loc12_ = 1072693248;
                  }
                  _loc8_ = int(_loc9_ - 80);
                  _loc8_ = _loc8_ | 4;
                  _loc8_ = li32(_loc8_);
                  _loc8_ = _loc8_ & -2147483648;
                  _loc8_ = _loc12_ | _loc8_;
                  _loc14_ = int(_loc9_ - 88);
                  _loc14_ = _loc14_ | 4;
                  si32(_loc8_,_loc14_);
                  _loc7_ = int(_loc7_ - 16);
                  sf64(_loc23_,_loc7_);
                  sf64(_loc23_,_loc9_ - 96);
                  ESP = _loc7_;
                  F_isinf();
                  _loc7_ = int(_loc7_ + 16);
                  _loc8_ = int(eax);
                  _loc20_ = 0;
                  if(_loc8_ != 0)
                  {
                     _loc20_ = 1072693248;
                  }
                  _loc8_ = int(_loc9_ - 96);
                  _loc8_ = _loc8_ | 4;
                  _loc8_ = li32(_loc8_);
                  _loc8_ = _loc8_ & -2147483648;
                  _loc8_ = _loc20_ | _loc8_;
                  _loc14_ = int(_loc9_ - 104);
                  _loc14_ = _loc14_ | 4;
                  si32(_loc8_,_loc14_);
                  si32(0,_loc9_ - 88);
                  si32(0,_loc9_ - 104);
                  _loc3_ = lf64(_loc9_ - 88);
                  _loc4_ = _loc3_ * _loc15_;
                  _loc1_ = lf64(_loc9_ - 104);
                  _loc2_ = _loc1_ * _loc18_;
                  _loc2_ = _loc2_ - _loc4_;
                  _loc5_ = _loc2_ * inf;
                  _loc3_ = Number(_loc3_ * _loc18_);
                  _loc1_ = Number(_loc1_ * _loc15_);
                  _loc1_ = Number(_loc3_ + _loc1_);
                  _loc6_ = _loc1_ * inf;
               }
            }
            §§goto(addr879);
         }
      }
      sf64(_loc6_,_loc22_);
      sf64(_loc5_,_loc22_ + 8);
      _loc7_ = _loc9_;
      ESP = _loc7_;
   }
}
