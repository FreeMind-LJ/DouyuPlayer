package sample.xx
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.li32;
   import sample.xx_2F_Users_2F_Shared_2F_Jenkins_2F_Home_2F_jobs_2F_Alchemy2_OSX_2F_workspace_2F_alchemy_2F_sdk_2F_usr_2F_lib_2F_libm_2E_o_3A_11042948_2D_CF1A_2D_4ECE_2D_A3CD_2D_0B18D0B9641F.*;
   
   public function F_j0() : void
   {
      var _loc16_:* = 0;
      var _loc18_:* = NaN;
      var _loc28_:* = 0;
      var _loc22_:* = NaN;
      var _loc19_:Number = NaN;
      var _loc1_:Number = NaN;
      var _loc27_:* = 0;
      var _loc20_:* = NaN;
      var _loc2_:* = NaN;
      var _loc3_:* = NaN;
      var _loc4_:* = NaN;
      var _loc7_:* = NaN;
      var _loc6_:* = NaN;
      var _loc5_:* = NaN;
      var _loc11_:* = NaN;
      var _loc10_:* = NaN;
      var _loc9_:* = NaN;
      var _loc8_:* = NaN;
      var _loc25_:int = 0;
      var _loc26_:int = 0;
      var _loc24_:int = 0;
      var _loc15_:* = int(ESP);
      _loc16_ = _loc15_;
      _loc15_ = int(_loc15_ - 16);
      _loc18_ = lf64(_loc16_);
      sf64(_loc18_,_loc16_ - 8);
      var _loc23_:* = int(_loc16_ - 8);
      _loc23_ = _loc23_ | 4;
      _loc23_ = li32(_loc23_);
      _loc28_ = _loc23_ & 2147483647;
      if(uint(_loc28_) >= 2146435072)
      {
         _loc20_ = Number(1 / (Number(_loc18_ * _loc18_)));
      }
      else
      {
         _loc18_ = Number(Math.abs(_loc18_));
         if(uint(_loc28_) >= 1073741824)
         {
            _loc19_ = Math.cos(_loc18_);
            _loc22_ = Number(Math.sin(_loc18_));
            _loc20_ = Number(_loc22_ + _loc19_);
            if(uint(_loc28_) <= 2145386495)
            {
               var _loc17_:Number = _loc22_ * _loc19_;
               var _loc21_:Number = Math.cos(Number(_loc18_ + _loc18_));
               _loc1_ = -_loc21_;
               if(!(_loc17_ >= 0 | _loc17_ != _loc17_ | false))
               {
                  _loc19_ = _loc22_ - _loc19_;
                  _loc20_ = Number(_loc1_ / _loc19_);
               }
               else
               {
                  _loc19_ = _loc1_ / _loc20_;
               }
               if(uint(_loc28_) < 1207959553)
               {
                  sf64(_loc18_,_loc16_ - 16);
                  _loc23_ = int(_loc16_ - 16);
                  _loc23_ = _loc23_ | 4;
                  _loc23_ = li32(_loc23_);
                  _loc27_ = _loc23_ & 2147483647;
                  _loc26_ = _pS8;
                  _loc25_ = _pR8;
                  if(uint(_loc27_) <= 1075838975)
                  {
                     _loc26_ = _pS5;
                     _loc25_ = _pR5;
                     if(uint(_loc27_) <= 1074933386)
                     {
                        _loc26_ = _pS3;
                        _loc25_ = _pR3;
                        if(uint(_loc27_) <= 1074191212)
                        {
                           if(uint(_loc27_) >= 1073741824)
                           {
                              _loc26_ = _pS2;
                              _loc25_ = _pR2;
                           }
                        }
                     }
                  }
                  _loc2_ = lf64(_loc25_ + 40);
                  _loc3_ = lf64(_loc25_ + 32);
                  _loc4_ = lf64(_loc25_ + 24);
                  _loc22_ = lf64(_loc25_ + 16);
                  _loc7_ = lf64(_loc25_ + 8);
                  _loc6_ = lf64(_loc25_);
                  _loc5_ = lf64(_loc26_ + 32);
                  _loc11_ = lf64(_loc26_ + 24);
                  _loc10_ = lf64(_loc26_ + 16);
                  _loc9_ = lf64(_loc26_ + 8);
                  _loc8_ = lf64(_loc26_);
                  _loc26_ = _qS8;
                  _loc24_ = _qR8;
                  if(uint(_loc27_) <= 1075838975)
                  {
                     _loc26_ = _qS5;
                     _loc24_ = _qR5;
                     if(uint(_loc27_) <= 1074933386)
                     {
                        _loc26_ = _qS3;
                        _loc24_ = _qR3;
                        if(uint(_loc27_) <= 1074191212)
                        {
                           if(uint(_loc27_) >= 1073741824)
                           {
                              _loc26_ = _qS2;
                              _loc24_ = _qR2;
                           }
                        }
                     }
                  }
                  _loc17_ = _loc18_ * _loc18_;
                  _loc17_ = 1 / _loc17_;
                  _loc21_ = _loc2_ * _loc17_;
                  _loc21_ = _loc3_ + _loc21_;
                  _loc21_ = _loc21_ * _loc17_;
                  _loc21_ = _loc4_ + _loc21_;
                  _loc21_ = _loc21_ * _loc17_;
                  _loc21_ = _loc22_ + _loc21_;
                  _loc21_ = _loc21_ * _loc17_;
                  _loc21_ = _loc7_ + _loc21_;
                  _loc21_ = _loc21_ * _loc17_;
                  _loc21_ = _loc6_ + _loc21_;
                  var _loc14_:* = Number(_loc5_ * _loc17_);
                  _loc14_ = Number(_loc11_ + _loc14_);
                  _loc14_ = Number(_loc14_ * _loc17_);
                  _loc14_ = Number(_loc10_ + _loc14_);
                  _loc14_ = Number(_loc14_ * _loc17_);
                  _loc14_ = Number(_loc9_ + _loc14_);
                  _loc14_ = Number(_loc14_ * _loc17_);
                  _loc14_ = Number(_loc8_ + _loc14_);
                  _loc14_ = Number(_loc14_ * _loc17_);
                  _loc14_ = Number(_loc14_ + 1);
                  _loc21_ = _loc21_ / _loc14_;
                  _loc21_ = _loc21_ + 1;
                  _loc14_ = lf64(_loc24_ + 40);
                  _loc14_ = Number(_loc14_ * _loc17_);
                  var _loc13_:* = lf64(_loc24_ + 32);
                  _loc14_ = Number(_loc13_ + _loc14_);
                  _loc14_ = Number(_loc14_ * _loc17_);
                  _loc13_ = lf64(_loc24_ + 24);
                  _loc14_ = Number(_loc13_ + _loc14_);
                  _loc14_ = Number(_loc14_ * _loc17_);
                  _loc13_ = lf64(_loc24_ + 16);
                  _loc14_ = Number(_loc13_ + _loc14_);
                  _loc14_ = Number(_loc14_ * _loc17_);
                  _loc13_ = lf64(_loc24_ + 8);
                  _loc14_ = Number(_loc13_ + _loc14_);
                  _loc14_ = Number(_loc14_ * _loc17_);
                  _loc13_ = lf64(_loc24_);
                  _loc14_ = Number(_loc13_ + _loc14_);
                  _loc13_ = lf64(_loc26_ + 40);
                  _loc13_ = Number(_loc13_ * _loc17_);
                  var _loc12_:* = lf64(_loc26_ + 32);
                  _loc13_ = Number(_loc12_ + _loc13_);
                  _loc13_ = Number(_loc13_ * _loc17_);
                  _loc12_ = lf64(_loc26_ + 24);
                  _loc13_ = Number(_loc12_ + _loc13_);
                  _loc13_ = Number(_loc13_ * _loc17_);
                  _loc12_ = lf64(_loc26_ + 16);
                  _loc13_ = Number(_loc12_ + _loc13_);
                  _loc13_ = Number(_loc13_ * _loc17_);
                  _loc12_ = lf64(_loc26_ + 8);
                  _loc13_ = Number(_loc12_ + _loc13_);
                  _loc13_ = Number(_loc13_ * _loc17_);
                  _loc12_ = lf64(_loc26_);
                  _loc13_ = Number(_loc12_ + _loc13_);
                  _loc17_ = _loc13_ * _loc17_;
                  _loc17_ = _loc17_ + 1;
                  _loc17_ = _loc14_ / _loc17_;
                  _loc17_ = _loc17_ + -0.125;
                  _loc15_ = int(_loc15_ - 16);
                  sf64(_loc18_,_loc15_);
                  _loc17_ = _loc17_ / _loc18_;
                  _loc17_ = _loc17_ * _loc19_;
                  _loc21_ = _loc21_ * _loc20_;
                  _loc17_ = _loc21_ - _loc17_;
                  _loc21_ = _loc17_ * 0.564189583547756;
                  ESP = _loc15_;
                  F_sqrt();
                  _loc15_ = int(_loc15_ + 16);
                  _loc17_ = st0;
                  _loc20_ = Number(_loc21_ / _loc17_);
               }
            }
            _loc15_ = int(_loc15_ - 16);
            sf64(_loc18_,_loc15_);
            ESP = _loc15_;
            F_sqrt();
            _loc17_ = _loc20_ * 0.564189583547756;
            _loc15_ = int(_loc15_ + 16);
            _loc21_ = st0;
            _loc20_ = Number(_loc17_ / _loc21_);
         }
         else
         {
            if(uint(_loc28_) <= 1059061759)
            {
               _loc17_ = _loc18_ + 1.0e300;
               _loc20_ = 1;
               if(!(_loc17_ <= _loc20_ | _loc17_ != _loc17_ | _loc20_ != _loc20_))
               {
                  if(uint(_loc28_) >= 1044381696)
                  {
                     _loc17_ = _loc18_ * -0.25;
                     _loc17_ = _loc17_ * _loc18_;
                     _loc20_ = Number(_loc17_ + 1);
                  }
               }
            }
            _loc1_ = _loc18_ * _loc18_;
            _loc17_ = _loc1_ * -4.61832688532103e-9;
            _loc17_ = _loc17_ + 1.82954049532701e-6;
            _loc17_ = _loc17_ * _loc1_;
            _loc17_ = _loc17_ + -0.000189979294238855;
            _loc17_ = _loc17_ * _loc1_;
            _loc17_ = _loc17_ + 0.015625;
            _loc19_ = _loc17_ * _loc1_;
            _loc17_ = _loc1_ * 1.1661400333379e-9;
            _loc17_ = _loc17_ + 5.13546550207318e-7;
            _loc17_ = _loc17_ * _loc1_;
            _loc17_ = _loc17_ + 0.000116926784663337;
            _loc17_ = _loc17_ * _loc1_;
            _loc17_ = _loc17_ + 0.015619102946489;
            _loc17_ = _loc17_ * _loc1_;
            _loc20_ = Number(_loc17_ + 1);
            if(uint(_loc28_) <= 1072693247)
            {
               _loc17_ = _loc19_ / _loc20_;
               _loc17_ = _loc17_ + -0.25;
               _loc17_ = _loc17_ * _loc1_;
               _loc20_ = Number(_loc17_ + 1);
            }
            else
            {
               _loc17_ = _loc19_ / _loc20_;
               _loc14_ = Number(_loc18_ * 0.5);
               _loc14_ = Number(_loc14_ + 1);
               _loc21_ = _loc14_ * (1 - _loc14_);
               _loc20_ = Number(_loc21_ + Number(_loc17_ * _loc1_));
            }
         }
      }
      st0 = _loc20_;
      _loc15_ = _loc16_;
      ESP = _loc15_;
   }
}
